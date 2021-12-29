const std = @import("std");
const json = std.json;

const str = []const u8;

const FlatInterface = struct {
    callback_structs: []CallbackStruct,
    consts: []Const,
    enums: []Enum,
    interfaces: []Interface,
    structs: []Struct,
    typedefs: []Typedef,
};

const CallbackStruct = struct {
    callback_id: u64,
    fields: []Field,
    @"struct": str,
    enums: ?[]Enum = null,
    consts: ?[]Const = null,
};

const Field = struct {
    fieldname: str,
    fieldtype: str,
    private: ?bool = null,
};

const Const = struct {
    constname: str,
    consttype: str,
    constval: str,
};

const Enum = struct {
    enumname: str,
    values: []Value,
    fqname: ?str = null,
};

const Value = struct {
    name: str,
    value: str,
};

const Interface = struct {
    accessors: ?[]Accessor = null,
    classname: str,
    fields: []Field,
    methods: []Method,
    enums: ?[]Enum = null,
    version_string: ?str = null,
};

const Accessor = struct {
    kind: str,
    name: str,
    name_flat: str,
};

const Method = struct {
    methodname: str,
    methodname_flat: str,
    params: []Param,
    returntype: str,
    returntype_flat: ?str = null,
    callback: ?str = null,
    callresult: ?str = null,
};

const Param = struct {
    paramname: str,
    paramtype: str,
    paramtype_flat: ?str = null,
    desc: ?str = null,
    array_count: ?str = null,
    buffer_count: ?str = null,
    out_struct: ?str = null,
    out_array_count: ?str = null,
    out_array_call: ?str = null,
    out_buffer_count: ?str = null,
    out_string: ?str = null,
    out_string_count: ?str = null,
};

const Struct = struct {
    consts: ?[]Const = null,
    fields: []Field,
    methods: ?[]Method = null,
    @"struct": str,
};

const Typedef = struct {
    typedef: str,
    type: str,
};

fn pEql(a: []const u8, b: []const u8) bool {
    const max = @minimum(a.len, b.len);
    return std.mem.eql(u8, a[0..max], b);
}

fn last(a: []const u8) u8 {
    return a[a.len-1];
}

fn concatAndFree(allocator: std.mem.Allocator, slices: []const []const u8, free: []const u8) ![]u8 {
    var result = std.mem.concat(allocator, u8, slices) catch unreachable;
    allocator.free(free);
    return result;
}

const Generator = struct {
    interface: FlatInterface,
    out_dir_path: []const u8,
    allocator: std.mem.Allocator,

    const Self = @This();
    const common_header = "const t = @import(\"../types.zig\")\n";

    fn init(allocator: std.mem.Allocator, in_file_path: []const u8, out_dir_path: []const u8) !Self {
        var file_content: []u8 = init: {
            var in_file = try std.fs.cwd().openFile(in_file_path, .{});
            defer in_file.close();

            break :init try in_file.readToEndAlloc(allocator, 8 * 1024 * 1024);
        };
        defer allocator.free(file_content);

        var stream = json.TokenStream.init(file_content);
        @setEvalBranchQuota(8000);
        const interface = try json.parse(FlatInterface, &stream, .{ .allocator = allocator });

        return Self{
            .interface = interface,
            .out_dir_path = out_dir_path,
            .allocator = allocator,
        };
    }

    fn deinit(self: *Self) void {
        json.parseFree(FlatInterface, self.interface, .{ .allocator = self.allocator });
    }

    fn generate(self: *Self) !void {
        const cwd = std.fs.cwd();
        try cwd.makePath(self.out_dir_path);
        var out_dir = try cwd.openDir(self.out_dir_path, .{});
        defer out_dir.close();

        // self.generateCallbackStructs(out_dir, "callback_structs.zig");
        // self.generateConsts(out_dir, "consts.zig");
        // self.generateEnums(out_dir, "enums.zig");
        // self.generateInterfaces(out_dir, "interfaces.zig");
        // self.generateStructs(out_dir, "structs.zig");
        // self.generateTypedefs(out_dir, "typedefs.zig");
        try self.generateTypedefs(out_dir, "typedefs.zig");
    }

    fn createFile(dir: std.fs.Dir, file_name: []const u8) !std.fs.File {
        return dir.createFile(file_name, .{}) catch |err| blk: {
            std.log.err("Failed to create file {s}: {any}", .{ file_name, err });
            break :blk err;
        };
    }

    pub fn parsePointer(self: *Self, type_name: *[]const u8) []const u8 {
        var t = type_name.*;
        var result = self.allocator.alloc(u8, 0) catch unreachable;

        if (t.len == 0 or !(last(t) == '*' or last(t) == '&')) {
            return result;
        }

        const start_const = pEql(t, "const ");
        const c_len = "const".len;

        if (start_const) {
            // skip first const
            t = t[c_len+1..];
            type_name.* = type_name.*[c_len+1..];
        }


        {
            // skip to after type name
            var const_idx = std.mem.indexOf(u8, t, "const");
            var star_idx = std.mem.indexOfScalar(u8, t, '*') orelse std.mem.indexOfScalar(u8, t, '&') orelse unreachable;
            var idx = @minimum(const_idx orelse star_idx, star_idx); 

            t = t[idx..];
            type_name.* = type_name.*[0..idx];
        }

        while (t.len > 0) {
            if (last(t) == '*' or last(t) == '&') {
                // remove last * or &
                t = t[0..t.len-1];

                result = concatAndFree(self.allocator, &.{ result, "[*c]" }, result) catch unreachable;
            } else if (last(t) == ' ') {
                t = t[0..t.len-1];
            } else if (pEql(t[t.len-c_len..], "const")) {
                t = t[0..t.len-c_len];
                result = concatAndFree(self.allocator, &.{ result, "const " }, result) catch unreachable;
            }
        }

        if (start_const) {
            result = concatAndFree(self.allocator, &.{ result, "const " }, result) catch unreachable;
        }

        if (last(type_name.*) == ' ') {
            type_name.* = type_name.*[0..type_name.*.len-1];
        }

        return result;
    }

    pub fn parseArray(self: *Self, type_name: *[]const u8) []const u8 {
        var t = type_name.*;
        var result = self.allocator.alloc(u8, 0) catch unreachable;

        if (t.len == 0 or last(t) != ']') {
            return result;
        }

        const start_idx = std.mem.indexOfScalar(u8, t, '[') orelse return result;
        t = t[start_idx..t.len];
        type_name.* = type_name.*[0..start_idx];

        return std.mem.concat(self.allocator, u8, &.{ t }) catch unreachable;
    }

    pub fn transformFn(self: *Self, type_name: []const u8) []const u8 {
        var t = type_name;

        var result = self.allocator.alloc(u8, 0) catch unreachable;

        if (!pEql(t, "void (*)(") or last(t) != ')') {
            std.log.err("Invalid function type definition {s}", .{ type_name });
            return result;
        }

        t = t["void (*)(".len..t.len-1];

        result = concatAndFree(self.allocator, &.{ result, "fn(" }, result) catch unreachable;

        var args = std.mem.count(u8, t, ",") + 1;
        while (args > 0) : (args -= 1) {
            var end_idx = std.mem.indexOfScalar(u8, t, ',') orelse t.len;
            var arg_type = self.transformType(t[0..end_idx]);
            defer self.allocator.free(arg_type);

            end_idx = if (args != 1) end_idx + 1 else end_idx;
            t = t[end_idx..];

            var comma = if (args != 1) ", " else "";

            result = concatAndFree(self.allocator, &.{ result, arg_type, comma }, result) catch unreachable;
        }

        result = concatAndFree(self.allocator, &.{ result, ") callconv(.C) void" }, result) catch unreachable;
        return result;
    }

    pub fn transformType(self: *Self, type_name: []const u8) []const u8 {
        var t = type_name;

        while (t.len > 0 and t[0] == ' ') {
            t = t[1..];
        }

        while (t.len > 0 and t[t.len-1] == ' ') {
            t = t[0..t.len-1];
        }

        const array = self.parseArray(&t);
        const ptr = self.parsePointer(&t);
        defer self.allocator.free(ptr);
        defer self.allocator.free(array);

        const ref = last(t) == '&';
        if (ref) {
            // remove last & char and space
            t = t[0..t.len-2];
        }

        var free_type_name = false;
        const zig_type_name = if (false) ""
            else if (pEql(t, "signed char")) "i8"
            else if (pEql(t, "short")) "i16"
            else if (pEql(t, "int")) "i32"
            else if (pEql(t, "long long")) "i64"
            else if (pEql(t, "char")) "u8"
            else if (pEql(t, "unsigned char")) "u8"
            else if (pEql(t, "unsigned short")) "u16"
            else if (pEql(t, "unsigned int")) "u32"
            else if (pEql(t, "unsigned long long")) "u64"
            else if (pEql(t, "void (*)")) blk: {
                free_type_name = true;
                break :blk self.transformFn(t);
            } else if (pEql(t, "void")) "anyopaque"
            else blk: {
                free_type_name = true;
                break :blk std.mem.concat(self.allocator, u8, &.{ "t.", t }) catch unreachable;
            };
        defer if (free_type_name) self.allocator.free(zig_type_name);

        return std.mem.concat(self.allocator, u8, &.{ array, ptr, zig_type_name }) catch unreachable;
    }

    fn generateTypedefs(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try Self.createFile(dir, file_name);
        for (self.interface.typedefs) |typedef| {
            _ = try file.write("const ");
            _ = try file.write(typedef.typedef);
            _ = try file.write(" = ");
            var transformed = self.transformType(typedef.@"type");
            defer self.allocator.free(transformed);
            _ = try file.write(transformed);
            _ = try file.write(";\n");
        }
    }
};

pub fn main() void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    var args = std.process.argsAlloc(allocator) catch unreachable;
    defer std.process.argsFree(allocator, args);

    var in_file_path = if (args.len > 1) args[1] else "src/generator/steam_api.json";
    var out_dir_path = if (args.len > 2) args[2] else "src/generated";

    var cwd = std.fs.cwd();

    var should_generate = false;
    if (cwd.openFile(in_file_path, .{})) |in_file| {
        var callback_path = std.fs.path.join(allocator, &.{ out_dir_path, "callback_structs.zig" }) catch unreachable;
        defer allocator.free(callback_path);

        if (cwd.openFile(callback_path, .{})) |out_file| {
            var in_stat = in_file.stat() catch unreachable;
            var out_stat = out_file.stat() catch unreachable;

            if (in_stat.mtime > out_stat.mtime) {
                // Source is newer than generated files
                should_generate = true;
            }
        } else |_| {
            // Generated files don't exist
            should_generate = true;
        }
    } else |err| {
        std.log.err("Could not open {s}: {any}", .{ in_file_path, err });
        std.process.exit(1);
    }

    if (should_generate) {
        var generator = Generator.init(allocator, in_file_path, out_dir_path) catch |err| {
            std.log.err("Could not initialize generator: {any}", .{ err });
            std.process.exit(1);
        };
        defer generator.deinit();

        generator.generate() catch |err| {
            std.log.err("Could not generate bindings: {any}", .{ err });
            std.process.exit(1);
        };
    } else {
        std.log.info("Skipped bindings generation", .{});
    }
}
