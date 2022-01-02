const std = @import("std");
const builtin = @import("builtin");
const steam_api = @import("steam_api.zig");

var file_mutex = std.Thread.Mutex{};
var file: ?std.fs.File = null;

pub fn log(comptime level: std.log.Level, comptime scope: @TypeOf(.EnumLiteral), comptime format: []const u8, args: anytype) void {
    const scope_prefix = "(" ++ @tagName(scope) ++ "): ";
    const prefix = "[" ++ level.asText() ++ "] " ++ scope_prefix;

    file_mutex.lock();
    defer file_mutex.unlock();

    const f = if (file) |f| f else blk: {
        file = std.fs.cwd().createFile("log.txt", .{ }) catch unreachable;
        break :blk file.?;
    };

    f.writer().print(prefix ++ format ++ "\n", args) catch return;
}

comptime {
    _ = steam_api;
}
