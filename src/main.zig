const std = @import("std");
const builtin = @import("builtin");
const steam_api = @import("steam_api.zig");
const options = @import("options.zig");

var file_mutex = std.Thread.Mutex{};
var file: ?std.fs.File = null;

fn getFileWriter() std.fs.File.Writer {
    var open_file = blk: {
        if (file) |f| {
            break :blk f;
        } else {
            file = std.fs.cwd().createFile("log.txt", .{ }) catch unreachable;
            break :blk file.?;
        }
    };

    return open_file.writer();
}

pub fn log(comptime level: std.log.Level, comptime scope: @TypeOf(.EnumLiteral), comptime format: []const u8, args: anytype) void {
    if (!options.verbose and level == .debug) return;

    const scope_prefix = "(" ++ @tagName(scope) ++ "): ";
    const prefix = "[" ++ level.asText() ++ "] " ++ scope_prefix;

    file_mutex.lock();
    defer file_mutex.unlock();

    getFileWriter().print(prefix ++ format ++ "\n", args) catch return;
}

comptime {
    _ = steam_api;
}
