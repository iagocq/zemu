const bo = @import("build_options");
const std = @import("std");

pub const verbose = !bo.force_disable_verbose and bo.force_verbose;

pub const OptionManager = struct {
    allocator: std.mem.Allocator,
    search_dirs: []const []const u8,

    pub fn init(allocator: std.mem.Allocator, search_dirs: []const []const u8) OptionManager {
        return OptionManager{ .allocator = allocator, .search_dirs = search_dirs };
    }

    pub fn get(self: *OptionManager, comptime option: @TypeOf(.EnumLiteral)) !Option {
        const cwd = std.fs.cwd();
        const file_name = getFileName(option);
        const env_name = getEnvName(option);

        var buffer: ?[]const u8 = null;
        for (self.search_dirs) |search_dir| {
            const dir = try cwd.openDir(search_dir);
            if (dir.openFile(file_name, .{})) |f| {
                defer f.close();
                const stat = try f.stat();
                buffer = self.allocator.alloc(u8, stat.size);
                f.readAll(buffer);
                break;
            } else |_| {
                continue;
            }
        }

        if (buffer) |b| {
            return Option{ .allocator = self.allocator, .val = b };
        } else if (std.os.getenv(env_name)) |b| {
            return Option{ .val = b };
        }
    }

    fn optionToName(comptime option: @TypeOf(.EnumLiteral)) []const u8 {
        return switch (option) {
            .AppID => "steam_appid",
            else => @tagName(option)
        };
    }

    fn getFileName(comptime option: @TypeOf(.EnumLiteral)) []const u8 {
        const name = optionToName(option);
        comptime var out: [name.len]u8 = undefined;
        return std.ascii.lowerString(out[0..], name) ++ ".txt";
    }

    fn getEnvName(option: @TypeOf(.EnumLiteral)) []const u8 {
        const prefix = "ZEMU_";
        const name = optionToName(option);
        comptime var out: [name.len]u8 = undefined;
        return prefix ++ std.ascii.upperString(out[0..], name);
    }

    const Option = struct {
        allocator: ?std.mem.Allocator = null,
        val: ?[]const u8,

        pub fn free(self: *Option) void {
            if (self.val) |v| {
                if (self.allocator) |a| {
                    a.free(v);
                }
            }
            self.val = null;
            self.allocator = null;
        }

        pub fn parse(self: *Option, T: type) !T {
            const v = self.val orelse return error.NullVal;
            if (T == @TypeOf(v)) return v;
            return switch (@typeInfo(T)) {
                .Int => std.fmt.parseInt(T, v, 0),
                .Float => std.fmt.parseFloat(T, v),
                else => return error.InvalidType,
            };
        }

        const as = parse;
    };
};

var manager: ?OptionManager = null;

pub fn init(allocator: std.mem.Allocator) void {
    manager = OptionManager.init(allocator, &([_][]const u8{ ".", "zemu_settings", "steam_settings" }));
}

pub fn getManager() OptionManager {
    if (manager) |m| {
        return m;
    } else {
        @panic("Option manager wasn't initialized");
    }
}
