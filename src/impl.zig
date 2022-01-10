const std = @import("std");
const t = @import("steam_api.zig");
const o = @import("options.zig");

pub const ISteamClient = struct {
    const l = std.log.scoped(.ISteamClient);

    pub fn CreateSteamPipe() t.HSteamPipe {
        l.info("Hello from CreateSteamPipe", .{});
        return undefined;
    }
};

comptime {
    @compileLog(o.OptionManager.getFileName(.AppID));
}

pub const SteamAPI = struct {
    const l = std.log.scoped(.SteamAPI);

    pub fn Init() callconv(.C) bool {
        l.info("Init", .{});
        return true;
    }

    pub fn ReleaseCurrentThreadMemory() callconv(.C) void {
        l.info("ReleaseCurrentThreadMemory", .{});
    }

    pub fn RestartAppIfNecessary(unOwnAppID: u32) callconv(.C) bool {
        l.info("RestartAppIfNecessary", .{});
        _ = unOwnAppID;
        return false;
    }

    pub fn RunCallbacks() callconv(.C) void {
        l.info("RunCallbacks", .{});
    }

    pub fn SetMiniDumpComment(pchMsg: [*c]const u8) callconv(.C) void {
        l.info("SetMiniDumpComment", .{});
        _ = pchMsg;
    }

    pub fn Shutdown() callconv(.C) void {
        l.info("Shutdown", .{});
    }

    pub fn WriteMiniDump(uStructuredExceptionCode: u32, pvExceptionInfo: ?*anyopaque, uBuildID: u32) callconv(.C) void {
        l.info("WriteMiniDump", .{});
        _ = uStructuredExceptionCode;
        _ = pvExceptionInfo;
        _ = uBuildID;
    }

    pub fn RegisterCallback(pCallback: ?*anyopaque, iCallback: c_int) callconv(.C) void {
        l.info("RegisterCallback", .{});
        _ = pCallback;
        _ = iCallback;
    }

    pub fn UnregisterCallback(pCallback: ?*anyopaque) callconv(.C) void {
        l.info("UnregisterCallback", .{});
        _ = pCallback;
    }

    pub fn RegisterCallResult(pCallback: ?*anyopaque, hAPICall: t.SteamAPICall_t) callconv(.C) void {
        l.info("RegisterCallResult", .{});
        _ = pCallback;
        _ = hAPICall;

    }

    pub fn UnregisterCallResult(pCallback: ?*anyopaque, hAPICall: t.SteamAPICall_t ) callconv(.C) void {
        l.info("UnregisterCallResult", .{});
        _ = pCallback;
        _ = hAPICall;
    }

    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        l.info("GetHSteamUser", .{});
        return 1;
    }

    pub fn GetHSteamPipe() callconv(.C) t.HSteamPipe {
        l.info("GetHSteamPipe", .{});
        return 1;
    }
};

pub const SteamGameServer = struct {
    const l = std.log.scoped(.SteamGameServer);

    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        l.info("GetHSteamUser", .{});
        return 1;
    }

    pub fn GetHSteamPipe() callconv(.C) t.HSteamPipe {
        l.info("GetHSteamPipe", .{});
        return 1;
    }

    pub fn RunCallbacks() callconv(.C) void {
        l.info("RunCallbacks", .{});
    }

    pub fn Shutdown() callconv(.C) void {
        l.info("Shutdown", .{});
    }
};

pub const SteamInternal = struct {
    const l = std.log.scoped(.SteamInternal);

    pub const GameServer = struct {
        const l1 = std.log.scoped(.SteamInternalGameServer);

        pub fn Init(unIP: u32, usLegacySteamPort: u16, usGamePort: u16, usQueryPort: u16, eServerMode: t.EServerMode, pchVersionString: [*c]const u8) callconv(.C) bool {
            l1.info("Init", .{});
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
        l.info("ContextInit", .{});
        _ = pContextInitData;
        return undefined;
    }

    pub fn CreateInterface(ver: [*c]const u8) callconv(.C) ?*anyopaque {
        l.info("CreateInterface", .{});
        _ = ver;
        return undefined;
    }

    pub fn FindOrCreateUserInterface(hSteamUser: t.HSteamUser, pszVersion: [*c]const u8) callconv(.C) ?*anyopaque {
        l.info("FindOrCreateUserInterface", .{});
        _ = hSteamUser;
        _ = pszVersion;
        return undefined;
    }

    pub fn FindOrCreateGameServerInterface(hSteamUser: t.HSteamUser, pszVersion: [*c]const u8) callconv(.C) ?*anyopaque {
        l.info("FindOrCreateGameServerInterface", .{});
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
