const std = @import("std");
const t = @import("steam_api.zig");
const log = std.log;

pub const ISteamClient = struct {
    pub fn CreateSteamPipe() t.HSteamPipe {
        log.info("Hello from CreateSteamPipe", .{});
        return undefined;
    }
};

pub const SteamAPI = struct {
    pub fn Init() callconv(.C) bool {
        log.info("Init", .{});
        return true;
    }

    pub fn ReleaseCurrentThreadMemory() callconv(.C) void {
        log.info("ReleaseCurrentThreadMemory", .{});
    }

    pub fn RestartAppIfNecessary(unOwnAppID: u32) callconv(.C) bool {
        log.info("RestartAppIfNecessary", .{});
        _ = unOwnAppID;
        return false;
    }

    pub fn RunCallbacks() callconv(.C) void {
        log.info("RunCallbacks", .{});
    }

    pub fn SetMiniDumpComment(pchMsg: [*c]const u8) callconv(.C) void {
        log.info("SetMiniDumpComment", .{});
        _ = pchMsg;
    }

    pub fn Shutdown() callconv(.C) void {
        log.info("Shutdown", .{});
    }

    pub fn WriteMiniDump(uStructuredExceptionCode: u32, pvExceptionInfo: ?*anyopaque, uBuildID: u32) callconv(.C) void {
        log.info("WriteMiniDump", .{});
        _ = uStructuredExceptionCode;
        _ = pvExceptionInfo;
        _ = uBuildID;
    }

    pub fn RegisterCallback(pCallback: ?*anyopaque, iCallback: c_int) callconv(.C) void {
        log.info("RegisterCallback", .{});
        _ = pCallback;
        _ = iCallback;
    }

    pub fn UnregisterCallback(pCallback: ?*anyopaque) callconv(.C) void {
        log.info("UnregisterCallback", .{});
        _ = pCallback;
    }

    pub fn RegisterCallResult(pCallback: ?*anyopaque, hAPICall: t.SteamAPICall_t) callconv(.C) void {
        log.info("RegisterCallResult", .{});
        _ = pCallback;
        _ = hAPICall;

    }

    pub fn UnregisterCallResult(pCallback: ?*anyopaque, hAPICall: t.SteamAPICall_t ) callconv(.C) void {
        log.info("UnregisterCallResult", .{});
        _ = pCallback;
        _ = hAPICall;
    }

    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        log.info("GetHSteamUser", .{});
        return 1;
    }

    pub fn GetHSteamPipe() callconv(.C) t.HSteamPipe {
        log.info("GetHSteamPipe", .{});
        return 1;
    }
};

pub const SteamGameServer = struct {
    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        log.info("SGS GetHSteamUser", .{});
        return 1;
    }

    pub fn GetHSteamPipe() callconv(.C) t.HSteamPipe {
        log.info("SGS GetHSteamPipe", .{});
        return 1;
    }

    pub fn RunCallbacks() callconv(.C) void {
        log.info("SGS RunCallbacks", .{});
    }

    pub fn Shutdown() callconv(.C) void {
        log.info("SGS Shutdown", .{});
    }
};

pub const SteamInternal = struct {
    pub const GameServer = struct {
        pub fn Init(unIP: u32, usLegacySteamPort: u16, usGamePort: u16, usQueryPort: u16, eServerMode: t.EServerMode, pchVersionString: [*c]const u8) callconv(.C) bool {
            _ = unIP;
            _ = usLegacySteamPort;
            _ = usGamePort;
            _ = usQueryPort;
            _ = eServerMode;
            _ = pchVersionString;
            return true;
        }
    };

    pub fn ContextInit(pContextInitData: ?*anyopaque) callconv(.C) ?*anyopaque {
        log.info("ContextInit", .{});
        _ = pContextInitData;
        return undefined;
    }

    pub fn CreateInterface(ver: [*c]const u8) callconv(.C) ?*anyopaque {
        log.info("CreateInterface", .{});
        _ = ver;
        return undefined;
    }

    pub fn FindOrCreateUserInterface(hSteamUser: t.HSteamUser, pszVersion: [*c]const u8) callconv(.C) ?*anyopaque {
        log.info("FindOrCreateUserInterface", .{});
        _ = hSteamUser;
        _ = pszVersion;
        return undefined;
    }

    pub fn FindOrCreateGameServerInterface(hSteamUser: t.HSteamUser, pszVersion: [*c]const u8) callconv(.C) ?*anyopaque {
        log.info("FindOrCreateGameServerInterface", .{});
        _ = hSteamUser;
        _ = pszVersion;
        return undefined;
    }

};

comptime {
    t.exportAll(SteamAPI, [_][]const u8{"SteamAPI"});
    t.exportAll(SteamGameServer, [_][]const u8{"SteamGameServer"});
    t.exportAll(SteamInternal, [_][]const u8{"SteamInternal"});
}
