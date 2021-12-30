const std = @import("std");
const t = @import("steam_api.zig");

pub const ISteamClient = struct {
    pub fn CreateSteamPipe() callconv(.C) t.HSteamPipe {
        std.debug.print("YES IMPLEMENTED SteamAPI_ISteamClient_CreateSteamPipe\n", .{});
        return undefined;
    }
};
