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

const Generator = struct {
    interface: FlatInterface,
    out_dir_path: []const u8,
    allocator: std.mem.Allocator,

    const Self = @This();

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
