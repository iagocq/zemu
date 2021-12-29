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

const eql = std.mem.eql;
fn pEql(a: []const u8, b: []const u8) bool {
    const max = @minimum(a.len, b.len);
    return eql(u8, a[0..max], b);
}

fn last(a: []const u8) u8 {
    return a[a.len-1];
}

const Generator = struct {
    interface: FlatInterface,
    out_dir_path: []const u8,
    allocator: std.mem.Allocator,

    const Self = @This();
    const common_header = "const t = @import(\"../types.zig\");\n";

    pub fn init(allocator: std.mem.Allocator, in_file_path: []const u8, out_dir_path: []const u8) !Self {
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

    pub fn deinit(self: *Self) void {
        json.parseFree(FlatInterface, self.interface, .{ .allocator = self.allocator });
    }

    pub fn destroy(self: *Self) !void {
        _ = self;
        const cwd = std.fs.cwd();
        const files = .{ "typedefs.zig", "enums.zig", "consts.zig", "callback_structs.zig", "structs.zig", "interfaces.zig" };
        for (files) |file| {
            cwd.deleteFile(file) catch |err| {
                std.log.err("Failed to delete file {s}: {any}\n", .{ file, err });
                return err;
            };
        }
    }

    pub fn generate(self: *Self) !void {
        const cwd = std.fs.cwd();
        try cwd.makePath(self.out_dir_path);
        var out_dir = try cwd.openDir(self.out_dir_path, .{});
        defer out_dir.close();

        try self.generateTypedefs(out_dir, "typedefs.zig");
        try self.generateEnums(out_dir, "enums.zig");
        try self.generateConsts(out_dir, "consts.zig");
        try self.generateCallbackStructs(out_dir, "callback_structs.zig");
        try self.generateStructs(out_dir, "structs.zig");
        try self.generateInterfaces(out_dir, "interfaces.zig");
    }

    fn generateTypedefs(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();
        for (self.interface.typedefs) |typedef| {
            try writeTypedef(writer, typedef, 0);
        }
    }

    fn writeTypedef(writer: anytype, typedef: Typedef, l: usize) !void {
        try format(writer, "pub const {s} = ", .{ typedef.typedef }, l);
        writeType(writer, typedef.@"type") catch |err| {
            std.log.err("Failed to write type {s}: {any}", .{ typedef.@"type", err });
        };
        _ = try writer.write(";\n");
    }

    fn generateEnums(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();
        for (self.interface.enums) |enum_def| {
            try writeEnum(writer, enum_def, 0);
        }
    }

    fn writeEnum(writer: anytype, enum_def: Enum, l: usize) !void {
        try format(writer, "pub const {s} = enum(c_int) {{\n", .{ enum_def.enumname }, l);
        for (enum_def.values) |value| {
            if (eql(u8, "k_EWorkshopFileTypeFirst", value.name)) continue;
            try format(writer, "{s} = {s},\n", .{ value.name, value.value }, l + 1);
        }
        try format(writer, "}};\n", .{}, l);
    }

    fn generateConsts(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();
        for (self.interface.consts) |const_def| {
            try writeConst(writer, const_def, 0);
        }
    }

    fn writeConst(writer: anytype, const_def: Const, l: usize) !void {
        try format(writer, "pub const {s}: ", .{ const_def.constname }, l);
        try writeType(writer, const_def.consttype);
        const v = const_def.constval;
        const n = const_def.constname;
        const constval = if (false) ""
            else if (v.len >= 3 and pEql(v[v.len-3..], "ull")) v[0..v.len-3]
            else if (eql(u8, "k_SteamItemInstanceIDInvalid", n)) "~@intCast(u64, 0)"
            else if (eql(u8, "k_nSteamNetworkingSend_UnreliableNoNagle", n)) "t.k_nSteamNetworkingSend_Unreliable | t.k_nSteamNetworkingSend_NoNagle"
            else if (eql(u8, "k_nSteamNetworkingSend_UnreliableNoDelay", n)) "t.k_nSteamNetworkingSend_Unreliable | t.k_nSteamNetworkingSend_NoDelay | t.k_nSteamNetworkingSend_NoNagle"
            else if (eql(u8, "k_nSteamNetworkingSend_ReliableNoNagle", n)) "t.k_nSteamNetworkingSend_Reliable | t.k_nSteamNetworkingSend_NoNagle"
            else if (eql(u8, "k_SteamDatagramPOPID_dev", n)) "('d' << 16) | ('e' << 8) | 'v'"
            else if (eql(u8, "MASTERSERVERUPDATERPORT_USEGAMESOCKETSHARE", n)) "t.STEAMGAMESERVER_QUERY_PORT_SHARED"
            else v
        ;
        try format(writer, " = {s};\n", .{ constval }, 0);
    }

    fn generateCallbackStructs(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();
        for (self.interface.callback_structs) |callback_struct| {
            try writeCallbackStruct(writer, callback_struct, 0);
        }
    }

    fn writeCallbackStruct(writer: anytype, callback_struct: CallbackStruct, l: usize) !void {
        try format(writer, "pub const {s} = extern struct {{\n", .{ callback_struct.@"struct" }, l);
        try format(writer, "pub const callback_id = {d};\n", .{ callback_struct.callback_id }, l+1);
        for (callback_struct.consts orelse &[_]Const{}) |const_def| {
            try writeConst(writer, const_def, l+1);
        }
        for (callback_struct.enums orelse &[_]Enum{}) |enum_def| {
            try writeEnum(writer, enum_def, l+1);
        }
        for (callback_struct.fields) |field| {
            try writeField(writer, field, l+1);
        }
        try format(writer, "}};\n", .{}, l);
    }

    fn writeField(writer: anytype, field: Field, l: usize) !void {
        // const modifier = if (field.private orelse false) "" else "pub ";
        const modifier = "";
        try format(writer, "{s}{s}: ", .{ modifier, field.fieldname }, l);
        try writeType(writer, field.fieldtype);
        try format(writer, ",\n", .{}, 0);
    }

    fn generateStructs(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();

        try format(writer, "const p = @import(\"std\").debug.print;\n", .{}, 0);
        for (self.interface.structs) |struct_def| {
            try writeStruct(writer, struct_def, 0);
        }
    }

    fn writeStruct(writer: anytype, struct_def: Struct, l: usize) !void {
        if (eql(u8, "SteamInputActionEvent_t", struct_def.@"struct")) return;

        try format(writer, "pub const {s} = extern struct {{\n", .{ struct_def.@"struct" }, l);
        for (struct_def.fields) |field| {
            try writeField(writer, field, l+1);
        }
        for (struct_def.consts orelse &[_]Const{}) |const_def| {
            try writeConst(writer, const_def, l+1);
        }
        for (struct_def.methods orelse &[_]Method{}) |method| {
            try writeMethodNotImplemented(writer, method, struct_def.@"struct", l+1);
        }
        try format(writer, "}};\n", .{}, l);
    }

    fn writeMethodNotImplemented(writer: anytype, method: Method, struct_name: []const u8, l: usize) !void {
        const m = method.methodname;
        const name = if (false) ""
            else if (eql(u8, "operator<", m)) "IsLessThan"
            else if (eql(u8, "operator=", m)) "Assign"
            else if (eql(u8, "operator==", m)) "IsEqualTo"
            else m
        ;
        try format(writer, "pub const {s} = t.getImplFn(\"{s}\", \"{s}\", fn(", .{ name, struct_name, name }, l);
        for (method.params) |param, i| {
            try writeType(writer, param.paramtype);
            if (i < method.params.len-1) {
                _ = try writer.write(", ");
            }
        }
        _ = try writer.write(") callconv(.C) ");
        try writeType(writer, method.returntype);
        _ = try writer.write(") orelse (struct {\n");

        try format(writer, "fn noImpl(", .{}, l+1);
        for (method.params) |param, i| {
            try writeParam(writer, param, l+2);
            if (i < method.params.len-1) {
                try format(writer, ", ", .{}, 0);
            }
        }
        _ = try writer.write(") callconv(.C) ");
        try writeType(writer, method.returntype);
        try format(writer, " {{\n", .{}, 0);
        try writeFnBodyNotImplemented(writer, method, l+2);
        try format(writer, "}}\n", .{}, l+1);
        try format(writer, "}}).noImpl;\n", .{}, l);
    }

    fn writeParam(writer: anytype, param: Param, l: usize) !void {
        _ = l;
        try writeParamName(writer, param, l);
        _ = try writer.write(": ");
        try writeType(writer, param.paramtype);
    }

    fn writeParamName(writer: anytype, param: Param, l: usize) !void {
        _ = l;
        const name = param.paramname;
        if (eql(u8, name, "type")) {
            _ = try writer.write("@\"type\"");
        } else {
            _ = try writer.write(name);
        }
    }

    fn writeFnBodyNotImplemented(writer: anytype, method: Method, l: usize) !void {
        const colon = if (method.params.len > 0) ":" else "";

        try format(writer, "p(\"NOT IMPLEMENTED {s}{s}\\n", .{ method.methodname_flat, colon }, l);
        for (method.params) |param| {
            try format(writer, "\\t- {s} = {{any}}\\n", .{ param.paramname }, 0);
        }
        try format(writer, "\\n\", .{{ ", .{}, 0);
        for (method.params) |param, i| {
            try writeParamName(writer, param, 0);
            if (i < method.params.len-1) {
                try format(writer, ", ", .{}, 0);
            }
        }
        try format(writer, " }});\n", .{}, 0);
        try format(writer, "return undefined;\n", .{}, l);
    }

    fn generateInterfaces(self: *Self, dir: std.fs.Dir, file_name: []const u8) !void {
        var file = try createFileWithHeader(dir, file_name);
        defer file.close();

        var writer = file.writer();

        try format(writer, "const p = @import(\"std\").debug.print;\n", .{}, 0);
        for (self.interface.interfaces) |interface| {
            try writeInterface(writer, interface, 0);
        }
    }

    fn writeInterface(writer: anytype, interface: Interface, l: usize) !void {
        try format(writer, "pub const {s} = struct {{\n", .{ interface.classname }, l);
        for (interface.fields) |field| {
            try writeField(writer, field, l+1);
        }

        if (interface.version_string) |version| {
            try format(writer, "pub const version = \"{s}\";\n", .{ version }, l+1);
        }

        for (interface.enums orelse &[_]Enum{}) |enum_def| {
            try writeEnum(writer, enum_def, l+1);
        }
        const skip_len = "SteamAPI_".len + interface.classname.len + 1;
        for (interface.methods) |method| {
            var flat_method = method;
            flat_method.methodname = method.methodname_flat[skip_len..];
            try writeMethodNotImplemented(writer, flat_method, interface.classname, l+1);
        }
        try format(writer, "}};\n", .{}, l);

        for (interface.accessors orelse &[_]Accessor{}) |accessor| {
            try writeAccessor(writer, accessor, interface, l);
        }
    }

    fn writeAccessor(writer: anytype, accessor: Accessor, interface: Interface, l: usize) !void {
        var returntype: [128]u8 = undefined;
        std.mem.copy(u8, returntype[0..], interface.classname);
        std.mem.copy(u8, returntype[interface.classname.len..], " *");
        const skip_len = "SteamAPI_".len + accessor.name.len + 1;
        var method_name = accessor.name_flat[skip_len..];
        var method = Method{
            .methodname = method_name,
            .methodname_flat = accessor.name_flat,
            .params = &[_]Param{},
            .returntype = returntype[0..interface.classname.len+2]
        };
        try format(writer, "const {s} = struct {{\n", .{ accessor.name }, l);
        try writeMethodNotImplemented(writer, method, accessor.name, l+1);        
        try format(writer, "}};\n", .{}, l);
    }

    fn createFileWithHeader(dir: std.fs.Dir, file_name: []const u8) !std.fs.File {
        var file = dir.createFile(file_name, .{}) catch |err| {
            std.log.err("Failed to create file {s}: {any}", .{ file_name, err });
            return err;
        };

        _ = try file.write(common_header);
        return file;
    }

    const formatNoIndent = std.fmt.format;

    fn format(writer: anytype, comptime fmt: []const u8, args: anytype, indentLevel: usize) !void {
        var i = indentLevel;
        while (i > 0) : (i -= 1) {
            _ = try writer.write("    ");
        }
        try formatNoIndent(writer, fmt, args);
    }

    const WriteError = error {
        InvalidArray,
        InvalidFunction,
    } || std.os.WriteError;

    fn writePointer(writer: anytype, type_name: *[]const u8) WriteError!void {
        type_name.* = std.mem.trim(u8, type_name.*, " ");
        var t = type_name.*;

        if (t.len == 0 or !(last(t) == '*' or last(t) == '&')) {
            return;
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

        const void_ptr = (std.mem.indexOf(u8, type_name.*, "void") orelse 10000) < 10000;

        while (t.len > 0) {
            if (last(t) == '*' or last(t) == '&') {
                // remove last * or &
                t = t[0..t.len-1];
                const ptr = if (void_ptr) "?*" else "[*c]";
                _ = try writer.write(ptr);
            } else if (last(t) == ' ') {
                t = t[0..t.len-1];
            } else if (pEql(t[t.len-c_len..], "const")) {
                t = t[0..t.len-c_len];
                _ = try writer.write("const ");
            }
        }

        if (start_const) {
            _ = try writer.write("const ");
        }

        if (last(type_name.*) == ' ') {
            type_name.* = type_name.*[0..type_name.*.len-1];
        }
    }

    fn writeArray(writer: anytype, type_name: *[]const u8) WriteError!void {
        type_name.* = std.mem.trim(u8, type_name.*, " ");
        var t = type_name.*;

        if (t.len == 0 or last(t) != ']') {
            return;
        }

        const start_idx = std.mem.indexOfScalar(u8, t, '[') orelse return error.InvalidArray;
        t = t[start_idx..t.len];
        type_name.* = type_name.*[0..start_idx];

        _ = try writer.write(t);
    }

    fn writeFn(writer: anytype, type_name: *[]const u8) WriteError!void {
        type_name.* = std.mem.trim(u8, type_name.*, " ");
        var t = type_name.*;

        if (!pEql(t, "void (*)(") or last(t) != ')') {
            std.log.err("Invalid function type definition: {s}", .{ type_name });
            return error.InvalidFunction;
        }

        t = t["void (*)(".len..t.len-1];

        _ = try writer.write("?fn(");

        var args = std.mem.count(u8, t, ",") + 1;
        while (args > 0) : (args -= 1) {
            var end_idx = std.mem.indexOfScalar(u8, t, ',') orelse t.len;
            try writeType(writer, t[0..end_idx]);

            end_idx = if (args != 1) end_idx + 1 else end_idx;
            t = t[end_idx..];

            const comma = if (args != 1) ", " else "";
            _ = try writer.write(comma);
        }

        _ = try writer.write(") callconv(.C) void");
    }

    fn writeType(writer: anytype, type_name: []const u8) WriteError!void {
        var t = type_name;
        t = std.mem.trim(u8, t, " ");

        try writeArray(writer, &t);
        try writePointer(writer, &t);

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
            else if (pEql(t, "float")) "f32"
            else if (pEql(t, "double")) "f64"
            else if (pEql(t, "bool")) "bool"
            else if (pEql(t, "void (*)")) blk: {
                try writeFn(writer, &t);
                break :blk "";
            } else if (pEql(t, "void")) "anyopaque"
            else if (std.mem.indexOf(u8, t, "::")) |_| blk: {
                _ = try writer.write("t.");
                while (std.mem.indexOf(u8, t, "::")) |idx| {
                    _ = try writer.write(t[0..idx]);
                    _ = try writer.write(".");
                    t = t[idx+2..];
                }
                break :blk t;
            } else blk: {
                _ = try writer.write("t.");
                _ = try writer.write(t);
                break :blk "";
            };

        _ = try writer.write(zig_type_name);
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
    var action = if (args.len > 3) args[3] else "";

    var cwd = std.fs.cwd();

    var should_generate = eql(u8, "force", action);
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
