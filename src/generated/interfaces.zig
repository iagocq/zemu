const t = @import("../steam_api.zig");
const p = @import("std").debug.print;
pub const ISteamClient = extern struct {
    _: u8 = 1,
    pub const CreateSteamPipe = t.getImplFn("ISteamClient", "CreateSteamPipe", fn() callconv(.C) t.HSteamPipe) orelse (struct {
        fn noImpl() callconv(.C) t.HSteamPipe {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_CreateSteamPipe\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateSteamPipe, .{ .name = "SteamAPI_ISteamClient_CreateSteamPipe", .linkage = .Strong }); }
    pub const BReleaseSteamPipe = t.getImplFn("ISteamClient", "BReleaseSteamPipe", fn(t.HSteamPipe) callconv(.C) bool) orelse (struct {
        fn noImpl(hSteamPipe: t.HSteamPipe) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_BReleaseSteamPipe:\n\t- hSteamPipe = {any}\n\n", .{ hSteamPipe });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BReleaseSteamPipe, .{ .name = "SteamAPI_ISteamClient_BReleaseSteamPipe", .linkage = .Strong }); }
    pub const ConnectToGlobalUser = t.getImplFn("ISteamClient", "ConnectToGlobalUser", fn(t.HSteamPipe) callconv(.C) t.HSteamUser) orelse (struct {
        fn noImpl(hSteamPipe: t.HSteamPipe) callconv(.C) t.HSteamUser {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_ConnectToGlobalUser:\n\t- hSteamPipe = {any}\n\n", .{ hSteamPipe });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConnectToGlobalUser, .{ .name = "SteamAPI_ISteamClient_ConnectToGlobalUser", .linkage = .Strong }); }
    pub const CreateLocalUser = t.getImplFn("ISteamClient", "CreateLocalUser", fn([*c]t.HSteamPipe, t.EAccountType) callconv(.C) t.HSteamUser) orelse (struct {
        fn noImpl(phSteamPipe: [*c]t.HSteamPipe, eAccountType: t.EAccountType) callconv(.C) t.HSteamUser {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_CreateLocalUser:\n\t- phSteamPipe = {any}\n\t- eAccountType = {any}\n\n", .{ phSteamPipe, eAccountType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateLocalUser, .{ .name = "SteamAPI_ISteamClient_CreateLocalUser", .linkage = .Strong }); }
    pub const ReleaseUser = t.getImplFn("ISteamClient", "ReleaseUser", fn(t.HSteamPipe, t.HSteamUser) callconv(.C) void) orelse (struct {
        fn noImpl(hSteamPipe: t.HSteamPipe, hUser: t.HSteamUser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_ReleaseUser:\n\t- hSteamPipe = {any}\n\t- hUser = {any}\n\n", .{ hSteamPipe, hUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReleaseUser, .{ .name = "SteamAPI_ISteamClient_ReleaseUser", .linkage = .Strong }); }
    pub const GetISteamUser = t.getImplFn("ISteamClient", "GetISteamUser", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamUser) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUser {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUser:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamUser, .{ .name = "SteamAPI_ISteamClient_GetISteamUser", .linkage = .Strong }); }
    pub const GetISteamGameServer = t.getImplFn("ISteamClient", "GetISteamGameServer", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamGameServer) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameServer {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameServer:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamGameServer, .{ .name = "SteamAPI_ISteamClient_GetISteamGameServer", .linkage = .Strong }); }
    pub const SetLocalIPBinding = t.getImplFn("ISteamClient", "SetLocalIPBinding", fn([*c]const t.SteamIPAddress_t, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(unIP: [*c]const t.SteamIPAddress_t, usPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_SetLocalIPBinding:\n\t- unIP = {any}\n\t- usPort = {any}\n\n", .{ unIP, usPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLocalIPBinding, .{ .name = "SteamAPI_ISteamClient_SetLocalIPBinding", .linkage = .Strong }); }
    pub const GetISteamFriends = t.getImplFn("ISteamClient", "GetISteamFriends", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamFriends) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamFriends {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamFriends:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamFriends, .{ .name = "SteamAPI_ISteamClient_GetISteamFriends", .linkage = .Strong }); }
    pub const GetISteamUtils = t.getImplFn("ISteamClient", "GetISteamUtils", fn(t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamUtils) orelse (struct {
        fn noImpl(hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUtils {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUtils:\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamUtils, .{ .name = "SteamAPI_ISteamClient_GetISteamUtils", .linkage = .Strong }); }
    pub const GetISteamMatchmaking = t.getImplFn("ISteamClient", "GetISteamMatchmaking", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamMatchmaking) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMatchmaking {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMatchmaking:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamMatchmaking, .{ .name = "SteamAPI_ISteamClient_GetISteamMatchmaking", .linkage = .Strong }); }
    pub const GetISteamMatchmakingServers = t.getImplFn("ISteamClient", "GetISteamMatchmakingServers", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamMatchmakingServers) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMatchmakingServers {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMatchmakingServers:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamMatchmakingServers, .{ .name = "SteamAPI_ISteamClient_GetISteamMatchmakingServers", .linkage = .Strong }); }
    pub const GetISteamGenericInterface = t.getImplFn("ISteamClient", "GetISteamGenericInterface", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) ?*anyopaque) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) ?*anyopaque {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGenericInterface:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamGenericInterface, .{ .name = "SteamAPI_ISteamClient_GetISteamGenericInterface", .linkage = .Strong }); }
    pub const GetISteamUserStats = t.getImplFn("ISteamClient", "GetISteamUserStats", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamUserStats) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUserStats {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUserStats:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamUserStats, .{ .name = "SteamAPI_ISteamClient_GetISteamUserStats", .linkage = .Strong }); }
    pub const GetISteamGameServerStats = t.getImplFn("ISteamClient", "GetISteamGameServerStats", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamGameServerStats) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameServerStats {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameServerStats:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamGameServerStats, .{ .name = "SteamAPI_ISteamClient_GetISteamGameServerStats", .linkage = .Strong }); }
    pub const GetISteamApps = t.getImplFn("ISteamClient", "GetISteamApps", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamApps) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamApps {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamApps:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamApps, .{ .name = "SteamAPI_ISteamClient_GetISteamApps", .linkage = .Strong }); }
    pub const GetISteamNetworking = t.getImplFn("ISteamClient", "GetISteamNetworking", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamNetworking) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamNetworking {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamNetworking:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamNetworking, .{ .name = "SteamAPI_ISteamClient_GetISteamNetworking", .linkage = .Strong }); }
    pub const GetISteamRemoteStorage = t.getImplFn("ISteamClient", "GetISteamRemoteStorage", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamRemoteStorage) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamRemoteStorage {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamRemoteStorage:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamRemoteStorage, .{ .name = "SteamAPI_ISteamClient_GetISteamRemoteStorage", .linkage = .Strong }); }
    pub const GetISteamScreenshots = t.getImplFn("ISteamClient", "GetISteamScreenshots", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamScreenshots) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamScreenshots {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamScreenshots:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamScreenshots, .{ .name = "SteamAPI_ISteamClient_GetISteamScreenshots", .linkage = .Strong }); }
    pub const GetISteamGameSearch = t.getImplFn("ISteamClient", "GetISteamGameSearch", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamGameSearch) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameSearch {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameSearch:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamGameSearch, .{ .name = "SteamAPI_ISteamClient_GetISteamGameSearch", .linkage = .Strong }); }
    pub const GetIPCCallCount = t.getImplFn("ISteamClient", "GetIPCCallCount", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetIPCCallCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPCCallCount, .{ .name = "SteamAPI_ISteamClient_GetIPCCallCount", .linkage = .Strong }); }
    pub const SetWarningMessageHook = t.getImplFn("ISteamClient", "SetWarningMessageHook", fn(t.SteamAPIWarningMessageHook_t) callconv(.C) void) orelse (struct {
        fn noImpl(pFunction: t.SteamAPIWarningMessageHook_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_SetWarningMessageHook:\n\t- pFunction = {any}\n\n", .{ pFunction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetWarningMessageHook, .{ .name = "SteamAPI_ISteamClient_SetWarningMessageHook", .linkage = .Strong }); }
    pub const BShutdownIfAllPipesClosed = t.getImplFn("ISteamClient", "BShutdownIfAllPipesClosed", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_BShutdownIfAllPipesClosed\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BShutdownIfAllPipesClosed, .{ .name = "SteamAPI_ISteamClient_BShutdownIfAllPipesClosed", .linkage = .Strong }); }
    pub const GetISteamHTTP = t.getImplFn("ISteamClient", "GetISteamHTTP", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamHTTP) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamHTTP {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamHTTP:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamHTTP, .{ .name = "SteamAPI_ISteamClient_GetISteamHTTP", .linkage = .Strong }); }
    pub const GetISteamController = t.getImplFn("ISteamClient", "GetISteamController", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamController) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamController {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamController:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamController, .{ .name = "SteamAPI_ISteamClient_GetISteamController", .linkage = .Strong }); }
    pub const GetISteamUGC = t.getImplFn("ISteamClient", "GetISteamUGC", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamUGC) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUGC {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUGC:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamUGC, .{ .name = "SteamAPI_ISteamClient_GetISteamUGC", .linkage = .Strong }); }
    pub const GetISteamAppList = t.getImplFn("ISteamClient", "GetISteamAppList", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamAppList) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamAppList {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamAppList:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamAppList, .{ .name = "SteamAPI_ISteamClient_GetISteamAppList", .linkage = .Strong }); }
    pub const GetISteamMusic = t.getImplFn("ISteamClient", "GetISteamMusic", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamMusic) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMusic {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMusic:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamMusic, .{ .name = "SteamAPI_ISteamClient_GetISteamMusic", .linkage = .Strong }); }
    pub const GetISteamMusicRemote = t.getImplFn("ISteamClient", "GetISteamMusicRemote", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamMusicRemote) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMusicRemote {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMusicRemote:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamMusicRemote, .{ .name = "SteamAPI_ISteamClient_GetISteamMusicRemote", .linkage = .Strong }); }
    pub const GetISteamHTMLSurface = t.getImplFn("ISteamClient", "GetISteamHTMLSurface", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamHTMLSurface) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamHTMLSurface {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamHTMLSurface:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamHTMLSurface, .{ .name = "SteamAPI_ISteamClient_GetISteamHTMLSurface", .linkage = .Strong }); }
    pub const GetISteamInventory = t.getImplFn("ISteamClient", "GetISteamInventory", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamInventory) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamInventory {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamInventory:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamInventory, .{ .name = "SteamAPI_ISteamClient_GetISteamInventory", .linkage = .Strong }); }
    pub const GetISteamVideo = t.getImplFn("ISteamClient", "GetISteamVideo", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamVideo) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamVideo {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamVideo:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamVideo, .{ .name = "SteamAPI_ISteamClient_GetISteamVideo", .linkage = .Strong }); }
    pub const GetISteamParentalSettings = t.getImplFn("ISteamClient", "GetISteamParentalSettings", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamParentalSettings) orelse (struct {
        fn noImpl(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamParentalSettings {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamParentalSettings:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamParentalSettings, .{ .name = "SteamAPI_ISteamClient_GetISteamParentalSettings", .linkage = .Strong }); }
    pub const GetISteamInput = t.getImplFn("ISteamClient", "GetISteamInput", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamInput) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamInput {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamInput:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamInput, .{ .name = "SteamAPI_ISteamClient_GetISteamInput", .linkage = .Strong }); }
    pub const GetISteamParties = t.getImplFn("ISteamClient", "GetISteamParties", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamParties) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamParties {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamParties:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamParties, .{ .name = "SteamAPI_ISteamClient_GetISteamParties", .linkage = .Strong }); }
    pub const GetISteamRemotePlay = t.getImplFn("ISteamClient", "GetISteamRemotePlay", fn(t.HSteamUser, t.HSteamPipe, [*c]const u8) callconv(.C) [*c]t.ISteamRemotePlay) orelse (struct {
        fn noImpl(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamRemotePlay {
            p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamRemotePlay:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetISteamRemotePlay, .{ .name = "SteamAPI_ISteamClient_GetISteamRemotePlay", .linkage = .Strong }); }
};
comptime { _ = ISteamClient; }
pub const ISteamUser = extern struct {
    _: u8 = 1,
    pub const version = "SteamUser021";
    pub const GetHSteamUser = t.getImplFn("ISteamUser", "GetHSteamUser", fn() callconv(.C) t.HSteamUser) orelse (struct {
        fn noImpl() callconv(.C) t.HSteamUser {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetHSteamUser\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHSteamUser, .{ .name = "SteamAPI_ISteamUser_GetHSteamUser", .linkage = .Strong }); }
    pub const BLoggedOn = t.getImplFn("ISteamUser", "BLoggedOn", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BLoggedOn\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BLoggedOn, .{ .name = "SteamAPI_ISteamUser_BLoggedOn", .linkage = .Strong }); }
    pub const GetSteamID = t.getImplFn("ISteamUser", "GetSteamID", fn() callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl() callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetSteamID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSteamID, .{ .name = "SteamAPI_ISteamUser_GetSteamID", .linkage = .Strong }); }
    pub const InitiateGameConnection_DEPRECATED = t.getImplFn("ISteamUser", "InitiateGameConnection_DEPRECATED", fn(?*anyopaque, i32, t.CSteamID, t.uint32, t.uint16, bool) callconv(.C) i32) orelse (struct {
        fn noImpl(pAuthBlob: ?*anyopaque, cbMaxAuthBlob: i32, steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, bSecure: bool) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED:\n\t- pAuthBlob = {any}\n\t- cbMaxAuthBlob = {any}\n\t- steamIDGameServer = {any}\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\t- bSecure = {any}\n\n", .{ pAuthBlob, cbMaxAuthBlob, steamIDGameServer, unIPServer, usPortServer, bSecure });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InitiateGameConnection_DEPRECATED, .{ .name = "SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED", .linkage = .Strong }); }
    pub const TerminateGameConnection_DEPRECATED = t.getImplFn("ISteamUser", "TerminateGameConnection_DEPRECATED", fn(t.uint32, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(unIPServer: t.uint32, usPortServer: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED:\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\n", .{ unIPServer, usPortServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TerminateGameConnection_DEPRECATED, .{ .name = "SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED", .linkage = .Strong }); }
    pub const TrackAppUsageEvent = t.getImplFn("ISteamUser", "TrackAppUsageEvent", fn(t.CGameID, i32, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(gameID: t.CGameID, eAppUsageEvent: i32, pchExtraInfo: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_TrackAppUsageEvent:\n\t- gameID = {any}\n\t- eAppUsageEvent = {any}\n\t- pchExtraInfo = {any}\n\n", .{ gameID, eAppUsageEvent, pchExtraInfo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TrackAppUsageEvent, .{ .name = "SteamAPI_ISteamUser_TrackAppUsageEvent", .linkage = .Strong }); }
    pub const GetUserDataFolder = t.getImplFn("ISteamUser", "GetUserDataFolder", fn([*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchBuffer: [*c]u8, cubBuffer: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetUserDataFolder:\n\t- pchBuffer = {any}\n\t- cubBuffer = {any}\n\n", .{ pchBuffer, cubBuffer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserDataFolder, .{ .name = "SteamAPI_ISteamUser_GetUserDataFolder", .linkage = .Strong }); }
    pub const StartVoiceRecording = t.getImplFn("ISteamUser", "StartVoiceRecording", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_StartVoiceRecording\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartVoiceRecording, .{ .name = "SteamAPI_ISteamUser_StartVoiceRecording", .linkage = .Strong }); }
    pub const StopVoiceRecording = t.getImplFn("ISteamUser", "StopVoiceRecording", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_StopVoiceRecording\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopVoiceRecording, .{ .name = "SteamAPI_ISteamUser_StopVoiceRecording", .linkage = .Strong }); }
    pub const GetAvailableVoice = t.getImplFn("ISteamUser", "GetAvailableVoice", fn([*c]t.uint32, [*c]t.uint32, t.uint32) callconv(.C) t.EVoiceResult) orelse (struct {
        fn noImpl(pcbCompressed: [*c]t.uint32, pcbUncompressed_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32) callconv(.C) t.EVoiceResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetAvailableVoice:\n\t- pcbCompressed = {any}\n\t- pcbUncompressed_Deprecated = {any}\n\t- nUncompressedVoiceDesiredSampleRate_Deprecated = {any}\n\n", .{ pcbCompressed, pcbUncompressed_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAvailableVoice, .{ .name = "SteamAPI_ISteamUser_GetAvailableVoice", .linkage = .Strong }); }
    pub const GetVoice = t.getImplFn("ISteamUser", "GetVoice", fn(bool, ?*anyopaque, t.uint32, [*c]t.uint32, bool, ?*anyopaque, t.uint32, [*c]t.uint32, t.uint32) callconv(.C) t.EVoiceResult) orelse (struct {
        fn noImpl(bWantCompressed: bool, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: ?*anyopaque, cbUncompressedDestBufferSize_Deprecated: t.uint32, nUncompressBytesWritten_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32) callconv(.C) t.EVoiceResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetVoice:\n\t- bWantCompressed = {any}\n\t- pDestBuffer = {any}\n\t- cbDestBufferSize = {any}\n\t- nBytesWritten = {any}\n\t- bWantUncompressed_Deprecated = {any}\n\t- pUncompressedDestBuffer_Deprecated = {any}\n\t- cbUncompressedDestBufferSize_Deprecated = {any}\n\t- nUncompressBytesWritten_Deprecated = {any}\n\t- nUncompressedVoiceDesiredSampleRate_Deprecated = {any}\n\n", .{ bWantCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, bWantUncompressed_Deprecated, pUncompressedDestBuffer_Deprecated, cbUncompressedDestBufferSize_Deprecated, nUncompressBytesWritten_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetVoice, .{ .name = "SteamAPI_ISteamUser_GetVoice", .linkage = .Strong }); }
    pub const DecompressVoice = t.getImplFn("ISteamUser", "DecompressVoice", fn(?*const anyopaque, t.uint32, ?*anyopaque, t.uint32, [*c]t.uint32, t.uint32) callconv(.C) t.EVoiceResult) orelse (struct {
        fn noImpl(pCompressed: ?*const anyopaque, cbCompressed: t.uint32, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, nDesiredSampleRate: t.uint32) callconv(.C) t.EVoiceResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_DecompressVoice:\n\t- pCompressed = {any}\n\t- cbCompressed = {any}\n\t- pDestBuffer = {any}\n\t- cbDestBufferSize = {any}\n\t- nBytesWritten = {any}\n\t- nDesiredSampleRate = {any}\n\n", .{ pCompressed, cbCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, nDesiredSampleRate });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DecompressVoice, .{ .name = "SteamAPI_ISteamUser_DecompressVoice", .linkage = .Strong }); }
    pub const GetVoiceOptimalSampleRate = t.getImplFn("ISteamUser", "GetVoiceOptimalSampleRate", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetVoiceOptimalSampleRate\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetVoiceOptimalSampleRate, .{ .name = "SteamAPI_ISteamUser_GetVoiceOptimalSampleRate", .linkage = .Strong }); }
    pub const GetAuthSessionTicket = t.getImplFn("ISteamUser", "GetAuthSessionTicket", fn(?*anyopaque, i32, [*c]t.uint32) callconv(.C) t.HAuthTicket) orelse (struct {
        fn noImpl(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) t.HAuthTicket {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetAuthSessionTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAuthSessionTicket, .{ .name = "SteamAPI_ISteamUser_GetAuthSessionTicket", .linkage = .Strong }); }
    pub const BeginAuthSession = t.getImplFn("ISteamUser", "BeginAuthSession", fn(?*const anyopaque, i32, t.CSteamID) callconv(.C) t.EBeginAuthSessionResult) orelse (struct {
        fn noImpl(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID) callconv(.C) t.EBeginAuthSessionResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BeginAuthSession:\n\t- pAuthTicket = {any}\n\t- cbAuthTicket = {any}\n\t- steamID = {any}\n\n", .{ pAuthTicket, cbAuthTicket, steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BeginAuthSession, .{ .name = "SteamAPI_ISteamUser_BeginAuthSession", .linkage = .Strong }); }
    pub const EndAuthSession = t.getImplFn("ISteamUser", "EndAuthSession", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_EndAuthSession:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EndAuthSession, .{ .name = "SteamAPI_ISteamUser_EndAuthSession", .linkage = .Strong }); }
    pub const CancelAuthTicket = t.getImplFn("ISteamUser", "CancelAuthTicket", fn(t.HAuthTicket) callconv(.C) void) orelse (struct {
        fn noImpl(hAuthTicket: t.HAuthTicket) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_CancelAuthTicket:\n\t- hAuthTicket = {any}\n\n", .{ hAuthTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelAuthTicket, .{ .name = "SteamAPI_ISteamUser_CancelAuthTicket", .linkage = .Strong }); }
    pub const UserHasLicenseForApp = t.getImplFn("ISteamUser", "UserHasLicenseForApp", fn(t.CSteamID, t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult) orelse (struct {
        fn noImpl(steamID: t.CSteamID, appID: t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_UserHasLicenseForApp:\n\t- steamID = {any}\n\t- appID = {any}\n\n", .{ steamID, appID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UserHasLicenseForApp, .{ .name = "SteamAPI_ISteamUser_UserHasLicenseForApp", .linkage = .Strong }); }
    pub const BIsBehindNAT = t.getImplFn("ISteamUser", "BIsBehindNAT", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsBehindNAT\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsBehindNAT, .{ .name = "SteamAPI_ISteamUser_BIsBehindNAT", .linkage = .Strong }); }
    pub const AdvertiseGame = t.getImplFn("ISteamUser", "AdvertiseGame", fn(t.CSteamID, t.uint32, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_AdvertiseGame:\n\t- steamIDGameServer = {any}\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\n", .{ steamIDGameServer, unIPServer, usPortServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AdvertiseGame, .{ .name = "SteamAPI_ISteamUser_AdvertiseGame", .linkage = .Strong }); }
    pub const RequestEncryptedAppTicket = t.getImplFn("ISteamUser", "RequestEncryptedAppTicket", fn(?*anyopaque, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pDataToInclude: ?*anyopaque, cbDataToInclude: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_RequestEncryptedAppTicket:\n\t- pDataToInclude = {any}\n\t- cbDataToInclude = {any}\n\n", .{ pDataToInclude, cbDataToInclude });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestEncryptedAppTicket, .{ .name = "SteamAPI_ISteamUser_RequestEncryptedAppTicket", .linkage = .Strong }); }
    pub const GetEncryptedAppTicket = t.getImplFn("ISteamUser", "GetEncryptedAppTicket", fn(?*anyopaque, i32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetEncryptedAppTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetEncryptedAppTicket, .{ .name = "SteamAPI_ISteamUser_GetEncryptedAppTicket", .linkage = .Strong }); }
    pub const GetGameBadgeLevel = t.getImplFn("ISteamUser", "GetGameBadgeLevel", fn(i32, bool) callconv(.C) i32) orelse (struct {
        fn noImpl(nSeries: i32, bFoil: bool) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetGameBadgeLevel:\n\t- nSeries = {any}\n\t- bFoil = {any}\n\n", .{ nSeries, bFoil });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGameBadgeLevel, .{ .name = "SteamAPI_ISteamUser_GetGameBadgeLevel", .linkage = .Strong }); }
    pub const GetPlayerSteamLevel = t.getImplFn("ISteamUser", "GetPlayerSteamLevel", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetPlayerSteamLevel\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPlayerSteamLevel, .{ .name = "SteamAPI_ISteamUser_GetPlayerSteamLevel", .linkage = .Strong }); }
    pub const RequestStoreAuthURL = t.getImplFn("ISteamUser", "RequestStoreAuthURL", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchRedirectURL: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_RequestStoreAuthURL:\n\t- pchRedirectURL = {any}\n\n", .{ pchRedirectURL });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestStoreAuthURL, .{ .name = "SteamAPI_ISteamUser_RequestStoreAuthURL", .linkage = .Strong }); }
    pub const BIsPhoneVerified = t.getImplFn("ISteamUser", "BIsPhoneVerified", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneVerified\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsPhoneVerified, .{ .name = "SteamAPI_ISteamUser_BIsPhoneVerified", .linkage = .Strong }); }
    pub const BIsTwoFactorEnabled = t.getImplFn("ISteamUser", "BIsTwoFactorEnabled", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsTwoFactorEnabled\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsTwoFactorEnabled, .{ .name = "SteamAPI_ISteamUser_BIsTwoFactorEnabled", .linkage = .Strong }); }
    pub const BIsPhoneIdentifying = t.getImplFn("ISteamUser", "BIsPhoneIdentifying", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneIdentifying\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsPhoneIdentifying, .{ .name = "SteamAPI_ISteamUser_BIsPhoneIdentifying", .linkage = .Strong }); }
    pub const BIsPhoneRequiringVerification = t.getImplFn("ISteamUser", "BIsPhoneRequiringVerification", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneRequiringVerification\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsPhoneRequiringVerification, .{ .name = "SteamAPI_ISteamUser_BIsPhoneRequiringVerification", .linkage = .Strong }); }
    pub const GetMarketEligibility = t.getImplFn("ISteamUser", "GetMarketEligibility", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetMarketEligibility\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMarketEligibility, .{ .name = "SteamAPI_ISteamUser_GetMarketEligibility", .linkage = .Strong }); }
    pub const GetDurationControl = t.getImplFn("ISteamUser", "GetDurationControl", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetDurationControl\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDurationControl, .{ .name = "SteamAPI_ISteamUser_GetDurationControl", .linkage = .Strong }); }
    pub const BSetDurationControlOnlineState = t.getImplFn("ISteamUser", "BSetDurationControlOnlineState", fn(t.EDurationControlOnlineState) callconv(.C) bool) orelse (struct {
        fn noImpl(eNewState: t.EDurationControlOnlineState) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUser_BSetDurationControlOnlineState:\n\t- eNewState = {any}\n\n", .{ eNewState });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BSetDurationControlOnlineState, .{ .name = "SteamAPI_ISteamUser_BSetDurationControlOnlineState", .linkage = .Strong }); }
};
comptime { _ = ISteamUser; }
const SteamUser = struct {
    pub const v021 = t.getImplFn("SteamUser", "v021", fn() callconv(.C) [*c]t.ISteamUser) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUser {
            p("NOT IMPLEMENTED SteamAPI_SteamUser_v021\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v021, .{ .name = "SteamAPI_SteamUser_v021", .linkage = .Strong }); }
};
comptime { _ = SteamUser; }
pub const ISteamFriends = extern struct {
    _: u8 = 1,
    pub const version = "SteamFriends017";
    pub const GetPersonaName = t.getImplFn("ISteamFriends", "GetPersonaName", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPersonaName\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPersonaName, .{ .name = "SteamAPI_ISteamFriends_GetPersonaName", .linkage = .Strong }); }
    pub const SetPersonaName = t.getImplFn("ISteamFriends", "SetPersonaName", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchPersonaName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetPersonaName:\n\t- pchPersonaName = {any}\n\n", .{ pchPersonaName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPersonaName, .{ .name = "SteamAPI_ISteamFriends_SetPersonaName", .linkage = .Strong }); }
    pub const GetPersonaState = t.getImplFn("ISteamFriends", "GetPersonaState", fn() callconv(.C) t.EPersonaState) orelse (struct {
        fn noImpl() callconv(.C) t.EPersonaState {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPersonaState\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPersonaState, .{ .name = "SteamAPI_ISteamFriends_GetPersonaState", .linkage = .Strong }); }
    pub const GetFriendCount = t.getImplFn("ISteamFriends", "GetFriendCount", fn(i32) callconv(.C) i32) orelse (struct {
        fn noImpl(iFriendFlags: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCount:\n\t- iFriendFlags = {any}\n\n", .{ iFriendFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendCount", .linkage = .Strong }); }
    pub const GetFriendByIndex = t.getImplFn("ISteamFriends", "GetFriendByIndex", fn(i32, i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(iFriend: i32, iFriendFlags: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendByIndex:\n\t- iFriend = {any}\n\t- iFriendFlags = {any}\n\n", .{ iFriend, iFriendFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendByIndex", .linkage = .Strong }); }
    pub const GetFriendRelationship = t.getImplFn("ISteamFriends", "GetFriendRelationship", fn(t.CSteamID) callconv(.C) t.EFriendRelationship) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) t.EFriendRelationship {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRelationship:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendRelationship, .{ .name = "SteamAPI_ISteamFriends_GetFriendRelationship", .linkage = .Strong }); }
    pub const GetFriendPersonaState = t.getImplFn("ISteamFriends", "GetFriendPersonaState", fn(t.CSteamID) callconv(.C) t.EPersonaState) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) t.EPersonaState {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaState:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendPersonaState, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaState", .linkage = .Strong }); }
    pub const GetFriendPersonaName = t.getImplFn("ISteamFriends", "GetFriendPersonaName", fn(t.CSteamID) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaName:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendPersonaName, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaName", .linkage = .Strong }); }
    pub const GetFriendGamePlayed = t.getImplFn("ISteamFriends", "GetFriendGamePlayed", fn(t.CSteamID, [*c]t.FriendGameInfo_t) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, pFriendGameInfo: [*c]t.FriendGameInfo_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendGamePlayed:\n\t- steamIDFriend = {any}\n\t- pFriendGameInfo = {any}\n\n", .{ steamIDFriend, pFriendGameInfo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendGamePlayed, .{ .name = "SteamAPI_ISteamFriends_GetFriendGamePlayed", .linkage = .Strong }); }
    pub const GetFriendPersonaNameHistory = t.getImplFn("ISteamFriends", "GetFriendPersonaNameHistory", fn(t.CSteamID, i32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, iPersonaName: i32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaNameHistory:\n\t- steamIDFriend = {any}\n\t- iPersonaName = {any}\n\n", .{ steamIDFriend, iPersonaName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendPersonaNameHistory, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaNameHistory", .linkage = .Strong }); }
    pub const GetFriendSteamLevel = t.getImplFn("ISteamFriends", "GetFriendSteamLevel", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendSteamLevel:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendSteamLevel, .{ .name = "SteamAPI_ISteamFriends_GetFriendSteamLevel", .linkage = .Strong }); }
    pub const GetPlayerNickname = t.getImplFn("ISteamFriends", "GetPlayerNickname", fn(t.CSteamID) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDPlayer: t.CSteamID) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPlayerNickname:\n\t- steamIDPlayer = {any}\n\n", .{ steamIDPlayer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPlayerNickname, .{ .name = "SteamAPI_ISteamFriends_GetPlayerNickname", .linkage = .Strong }); }
    pub const GetFriendsGroupCount = t.getImplFn("ISteamFriends", "GetFriendsGroupCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendsGroupCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupCount", .linkage = .Strong }); }
    pub const GetFriendsGroupIDByIndex = t.getImplFn("ISteamFriends", "GetFriendsGroupIDByIndex", fn(i32) callconv(.C) t.FriendsGroupID_t) orelse (struct {
        fn noImpl(iFG: i32) callconv(.C) t.FriendsGroupID_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex:\n\t- iFG = {any}\n\n", .{ iFG });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendsGroupIDByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex", .linkage = .Strong }); }
    pub const GetFriendsGroupName = t.getImplFn("ISteamFriends", "GetFriendsGroupName", fn(t.FriendsGroupID_t) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(friendsGroupID: t.FriendsGroupID_t) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupName:\n\t- friendsGroupID = {any}\n\n", .{ friendsGroupID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendsGroupName, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupName", .linkage = .Strong }); }
    pub const GetFriendsGroupMembersCount = t.getImplFn("ISteamFriends", "GetFriendsGroupMembersCount", fn(t.FriendsGroupID_t) callconv(.C) i32) orelse (struct {
        fn noImpl(friendsGroupID: t.FriendsGroupID_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupMembersCount:\n\t- friendsGroupID = {any}\n\n", .{ friendsGroupID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendsGroupMembersCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupMembersCount", .linkage = .Strong }); }
    pub const GetFriendsGroupMembersList = t.getImplFn("ISteamFriends", "GetFriendsGroupMembersList", fn(t.FriendsGroupID_t, [*c]t.CSteamID, i32) callconv(.C) void) orelse (struct {
        fn noImpl(friendsGroupID: t.FriendsGroupID_t, pOutSteamIDMembers: [*c]t.CSteamID, nMembersCount: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupMembersList:\n\t- friendsGroupID = {any}\n\t- pOutSteamIDMembers = {any}\n\t- nMembersCount = {any}\n\n", .{ friendsGroupID, pOutSteamIDMembers, nMembersCount });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendsGroupMembersList, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupMembersList", .linkage = .Strong }); }
    pub const HasFriend = t.getImplFn("ISteamFriends", "HasFriend", fn(t.CSteamID, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, iFriendFlags: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_HasFriend:\n\t- steamIDFriend = {any}\n\t- iFriendFlags = {any}\n\n", .{ steamIDFriend, iFriendFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(HasFriend, .{ .name = "SteamAPI_ISteamFriends_HasFriend", .linkage = .Strong }); }
    pub const GetClanCount = t.getImplFn("ISteamFriends", "GetClanCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanCount, .{ .name = "SteamAPI_ISteamFriends_GetClanCount", .linkage = .Strong }); }
    pub const GetClanByIndex = t.getImplFn("ISteamFriends", "GetClanByIndex", fn(i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(iClan: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanByIndex:\n\t- iClan = {any}\n\n", .{ iClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanByIndex, .{ .name = "SteamAPI_ISteamFriends_GetClanByIndex", .linkage = .Strong }); }
    pub const GetClanName = t.getImplFn("ISteamFriends", "GetClanName", fn(t.CSteamID) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanName:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanName, .{ .name = "SteamAPI_ISteamFriends_GetClanName", .linkage = .Strong }); }
    pub const GetClanTag = t.getImplFn("ISteamFriends", "GetClanTag", fn(t.CSteamID) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanTag:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanTag, .{ .name = "SteamAPI_ISteamFriends_GetClanTag", .linkage = .Strong }); }
    pub const GetClanActivityCounts = t.getImplFn("ISteamFriends", "GetClanActivityCounts", fn(t.CSteamID, [*c]i32, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID, pnOnline: [*c]i32, pnInGame: [*c]i32, pnChatting: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanActivityCounts:\n\t- steamIDClan = {any}\n\t- pnOnline = {any}\n\t- pnInGame = {any}\n\t- pnChatting = {any}\n\n", .{ steamIDClan, pnOnline, pnInGame, pnChatting });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanActivityCounts, .{ .name = "SteamAPI_ISteamFriends_GetClanActivityCounts", .linkage = .Strong }); }
    pub const DownloadClanActivityCounts = t.getImplFn("ISteamFriends", "DownloadClanActivityCounts", fn([*c]t.CSteamID, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(psteamIDClans: [*c]t.CSteamID, cClansToRequest: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_DownloadClanActivityCounts:\n\t- psteamIDClans = {any}\n\t- cClansToRequest = {any}\n\n", .{ psteamIDClans, cClansToRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DownloadClanActivityCounts, .{ .name = "SteamAPI_ISteamFriends_DownloadClanActivityCounts", .linkage = .Strong }); }
    pub const GetFriendCountFromSource = t.getImplFn("ISteamFriends", "GetFriendCountFromSource", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDSource: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCountFromSource:\n\t- steamIDSource = {any}\n\n", .{ steamIDSource });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendCountFromSource, .{ .name = "SteamAPI_ISteamFriends_GetFriendCountFromSource", .linkage = .Strong }); }
    pub const GetFriendFromSourceByIndex = t.getImplFn("ISteamFriends", "GetFriendFromSourceByIndex", fn(t.CSteamID, i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDSource: t.CSteamID, iFriend: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendFromSourceByIndex:\n\t- steamIDSource = {any}\n\t- iFriend = {any}\n\n", .{ steamIDSource, iFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendFromSourceByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendFromSourceByIndex", .linkage = .Strong }); }
    pub const IsUserInSource = t.getImplFn("ISteamFriends", "IsUserInSource", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, steamIDSource: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsUserInSource:\n\t- steamIDUser = {any}\n\t- steamIDSource = {any}\n\n", .{ steamIDUser, steamIDSource });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsUserInSource, .{ .name = "SteamAPI_ISteamFriends_IsUserInSource", .linkage = .Strong }); }
    pub const SetInGameVoiceSpeaking = t.getImplFn("ISteamFriends", "SetInGameVoiceSpeaking", fn(t.CSteamID, bool) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, bSpeaking: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetInGameVoiceSpeaking:\n\t- steamIDUser = {any}\n\t- bSpeaking = {any}\n\n", .{ steamIDUser, bSpeaking });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetInGameVoiceSpeaking, .{ .name = "SteamAPI_ISteamFriends_SetInGameVoiceSpeaking", .linkage = .Strong }); }
    pub const ActivateGameOverlay = t.getImplFn("ISteamFriends", "ActivateGameOverlay", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pchDialog: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlay:\n\t- pchDialog = {any}\n\n", .{ pchDialog });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlay, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlay", .linkage = .Strong }); }
    pub const ActivateGameOverlayToUser = t.getImplFn("ISteamFriends", "ActivateGameOverlayToUser", fn([*c]const u8, t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(pchDialog: [*c]const u8, steamID: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToUser:\n\t- pchDialog = {any}\n\t- steamID = {any}\n\n", .{ pchDialog, steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayToUser, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToUser", .linkage = .Strong }); }
    pub const ActivateGameOverlayToWebPage = t.getImplFn("ISteamFriends", "ActivateGameOverlayToWebPage", fn([*c]const u8, t.EActivateGameOverlayToWebPageMode) callconv(.C) void) orelse (struct {
        fn noImpl(pchURL: [*c]const u8, eMode: t.EActivateGameOverlayToWebPageMode) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage:\n\t- pchURL = {any}\n\t- eMode = {any}\n\n", .{ pchURL, eMode });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayToWebPage, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage", .linkage = .Strong }); }
    pub const ActivateGameOverlayToStore = t.getImplFn("ISteamFriends", "ActivateGameOverlayToStore", fn(t.AppId_t, t.EOverlayToStoreFlag) callconv(.C) void) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, eFlag: t.EOverlayToStoreFlag) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToStore:\n\t- nAppID = {any}\n\t- eFlag = {any}\n\n", .{ nAppID, eFlag });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayToStore, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToStore", .linkage = .Strong }); }
    pub const SetPlayedWith = t.getImplFn("ISteamFriends", "SetPlayedWith", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDUserPlayedWith: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetPlayedWith:\n\t- steamIDUserPlayedWith = {any}\n\n", .{ steamIDUserPlayedWith });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPlayedWith, .{ .name = "SteamAPI_ISteamFriends_SetPlayedWith", .linkage = .Strong }); }
    pub const ActivateGameOverlayInviteDialog = t.getImplFn("ISteamFriends", "ActivateGameOverlayInviteDialog", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayInviteDialog, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog", .linkage = .Strong }); }
    pub const GetSmallFriendAvatar = t.getImplFn("ISteamFriends", "GetSmallFriendAvatar", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetSmallFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSmallFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetSmallFriendAvatar", .linkage = .Strong }); }
    pub const GetMediumFriendAvatar = t.getImplFn("ISteamFriends", "GetMediumFriendAvatar", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetMediumFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMediumFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetMediumFriendAvatar", .linkage = .Strong }); }
    pub const GetLargeFriendAvatar = t.getImplFn("ISteamFriends", "GetLargeFriendAvatar", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetLargeFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLargeFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetLargeFriendAvatar", .linkage = .Strong }); }
    pub const RequestUserInformation = t.getImplFn("ISteamFriends", "RequestUserInformation", fn(t.CSteamID, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, bRequireNameOnly: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestUserInformation:\n\t- steamIDUser = {any}\n\t- bRequireNameOnly = {any}\n\n", .{ steamIDUser, bRequireNameOnly });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestUserInformation, .{ .name = "SteamAPI_ISteamFriends_RequestUserInformation", .linkage = .Strong }); }
    pub const RequestClanOfficerList = t.getImplFn("ISteamFriends", "RequestClanOfficerList", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestClanOfficerList:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestClanOfficerList, .{ .name = "SteamAPI_ISteamFriends_RequestClanOfficerList", .linkage = .Strong }); }
    pub const GetClanOwner = t.getImplFn("ISteamFriends", "GetClanOwner", fn(t.CSteamID) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOwner:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanOwner, .{ .name = "SteamAPI_ISteamFriends_GetClanOwner", .linkage = .Strong }); }
    pub const GetClanOfficerCount = t.getImplFn("ISteamFriends", "GetClanOfficerCount", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOfficerCount:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanOfficerCount, .{ .name = "SteamAPI_ISteamFriends_GetClanOfficerCount", .linkage = .Strong }); }
    pub const GetClanOfficerByIndex = t.getImplFn("ISteamFriends", "GetClanOfficerByIndex", fn(t.CSteamID, i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID, iOfficer: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOfficerByIndex:\n\t- steamIDClan = {any}\n\t- iOfficer = {any}\n\n", .{ steamIDClan, iOfficer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanOfficerByIndex, .{ .name = "SteamAPI_ISteamFriends_GetClanOfficerByIndex", .linkage = .Strong }); }
    pub const GetUserRestrictions = t.getImplFn("ISteamFriends", "GetUserRestrictions", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetUserRestrictions\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserRestrictions, .{ .name = "SteamAPI_ISteamFriends_GetUserRestrictions", .linkage = .Strong }); }
    pub const SetRichPresence = t.getImplFn("ISteamFriends", "SetRichPresence", fn([*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetRichPresence:\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetRichPresence, .{ .name = "SteamAPI_ISteamFriends_SetRichPresence", .linkage = .Strong }); }
    pub const ClearRichPresence = t.getImplFn("ISteamFriends", "ClearRichPresence", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ClearRichPresence\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ClearRichPresence, .{ .name = "SteamAPI_ISteamFriends_ClearRichPresence", .linkage = .Strong }); }
    pub const GetFriendRichPresence = t.getImplFn("ISteamFriends", "GetFriendRichPresence", fn(t.CSteamID, [*c]const u8) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresence:\n\t- steamIDFriend = {any}\n\t- pchKey = {any}\n\n", .{ steamIDFriend, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendRichPresence, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresence", .linkage = .Strong }); }
    pub const GetFriendRichPresenceKeyCount = t.getImplFn("ISteamFriends", "GetFriendRichPresenceKeyCount", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendRichPresenceKeyCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount", .linkage = .Strong }); }
    pub const GetFriendRichPresenceKeyByIndex = t.getImplFn("ISteamFriends", "GetFriendRichPresenceKeyByIndex", fn(t.CSteamID, i32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, iKey: i32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex:\n\t- steamIDFriend = {any}\n\t- iKey = {any}\n\n", .{ steamIDFriend, iKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendRichPresenceKeyByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex", .linkage = .Strong }); }
    pub const RequestFriendRichPresence = t.getImplFn("ISteamFriends", "RequestFriendRichPresence", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestFriendRichPresence:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestFriendRichPresence, .{ .name = "SteamAPI_ISteamFriends_RequestFriendRichPresence", .linkage = .Strong }); }
    pub const InviteUserToGame = t.getImplFn("ISteamFriends", "InviteUserToGame", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, pchConnectString: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_InviteUserToGame:\n\t- steamIDFriend = {any}\n\t- pchConnectString = {any}\n\n", .{ steamIDFriend, pchConnectString });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InviteUserToGame, .{ .name = "SteamAPI_ISteamFriends_InviteUserToGame", .linkage = .Strong }); }
    pub const GetCoplayFriendCount = t.getImplFn("ISteamFriends", "GetCoplayFriendCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetCoplayFriendCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCoplayFriendCount, .{ .name = "SteamAPI_ISteamFriends_GetCoplayFriendCount", .linkage = .Strong }); }
    pub const GetCoplayFriend = t.getImplFn("ISteamFriends", "GetCoplayFriend", fn(i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(iCoplayFriend: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetCoplayFriend:\n\t- iCoplayFriend = {any}\n\n", .{ iCoplayFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCoplayFriend, .{ .name = "SteamAPI_ISteamFriends_GetCoplayFriend", .linkage = .Strong }); }
    pub const GetFriendCoplayTime = t.getImplFn("ISteamFriends", "GetFriendCoplayTime", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCoplayTime:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendCoplayTime, .{ .name = "SteamAPI_ISteamFriends_GetFriendCoplayTime", .linkage = .Strong }); }
    pub const GetFriendCoplayGame = t.getImplFn("ISteamFriends", "GetFriendCoplayGame", fn(t.CSteamID) callconv(.C) t.AppId_t) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) t.AppId_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCoplayGame:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendCoplayGame, .{ .name = "SteamAPI_ISteamFriends_GetFriendCoplayGame", .linkage = .Strong }); }
    pub const JoinClanChatRoom = t.getImplFn("ISteamFriends", "JoinClanChatRoom", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_JoinClanChatRoom:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(JoinClanChatRoom, .{ .name = "SteamAPI_ISteamFriends_JoinClanChatRoom", .linkage = .Strong }); }
    pub const LeaveClanChatRoom = t.getImplFn("ISteamFriends", "LeaveClanChatRoom", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_LeaveClanChatRoom:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LeaveClanChatRoom, .{ .name = "SteamAPI_ISteamFriends_LeaveClanChatRoom", .linkage = .Strong }); }
    pub const GetClanChatMemberCount = t.getImplFn("ISteamFriends", "GetClanChatMemberCount", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanChatMemberCount:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanChatMemberCount, .{ .name = "SteamAPI_ISteamFriends_GetClanChatMemberCount", .linkage = .Strong }); }
    pub const GetChatMemberByIndex = t.getImplFn("ISteamFriends", "GetChatMemberByIndex", fn(t.CSteamID, i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID, iUser: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetChatMemberByIndex:\n\t- steamIDClan = {any}\n\t- iUser = {any}\n\n", .{ steamIDClan, iUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetChatMemberByIndex, .{ .name = "SteamAPI_ISteamFriends_GetChatMemberByIndex", .linkage = .Strong }); }
    pub const SendClanChatMessage = t.getImplFn("ISteamFriends", "SendClanChatMessage", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID, pchText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SendClanChatMessage:\n\t- steamIDClanChat = {any}\n\t- pchText = {any}\n\n", .{ steamIDClanChat, pchText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendClanChatMessage, .{ .name = "SteamAPI_ISteamFriends_SendClanChatMessage", .linkage = .Strong }); }
    pub const GetClanChatMessage = t.getImplFn("ISteamFriends", "GetClanChatMessage", fn(t.CSteamID, i32, ?*anyopaque, i32, [*c]t.EChatEntryType, [*c]t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID, iMessage: i32, prgchText: ?*anyopaque, cchTextMax: i32, peChatEntryType: [*c]t.EChatEntryType, psteamidChatter: [*c]t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanChatMessage:\n\t- steamIDClanChat = {any}\n\t- iMessage = {any}\n\t- prgchText = {any}\n\t- cchTextMax = {any}\n\t- peChatEntryType = {any}\n\t- psteamidChatter = {any}\n\n", .{ steamIDClanChat, iMessage, prgchText, cchTextMax, peChatEntryType, psteamidChatter });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetClanChatMessage, .{ .name = "SteamAPI_ISteamFriends_GetClanChatMessage", .linkage = .Strong }); }
    pub const IsClanChatAdmin = t.getImplFn("ISteamFriends", "IsClanChatAdmin", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID, steamIDUser: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanChatAdmin:\n\t- steamIDClanChat = {any}\n\t- steamIDUser = {any}\n\n", .{ steamIDClanChat, steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsClanChatAdmin, .{ .name = "SteamAPI_ISteamFriends_IsClanChatAdmin", .linkage = .Strong }); }
    pub const IsClanChatWindowOpenInSteam = t.getImplFn("ISteamFriends", "IsClanChatWindowOpenInSteam", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsClanChatWindowOpenInSteam, .{ .name = "SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam", .linkage = .Strong }); }
    pub const OpenClanChatWindowInSteam = t.getImplFn("ISteamFriends", "OpenClanChatWindowInSteam", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_OpenClanChatWindowInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
            return undefined;
        }
    }).noImpl;
    comptime { @export(OpenClanChatWindowInSteam, .{ .name = "SteamAPI_ISteamFriends_OpenClanChatWindowInSteam", .linkage = .Strong }); }
    pub const CloseClanChatWindowInSteam = t.getImplFn("ISteamFriends", "CloseClanChatWindowInSteam", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClanChat: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_CloseClanChatWindowInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseClanChatWindowInSteam, .{ .name = "SteamAPI_ISteamFriends_CloseClanChatWindowInSteam", .linkage = .Strong }); }
    pub const SetListenForFriendsMessages = t.getImplFn("ISteamFriends", "SetListenForFriendsMessages", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bInterceptEnabled: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetListenForFriendsMessages:\n\t- bInterceptEnabled = {any}\n\n", .{ bInterceptEnabled });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetListenForFriendsMessages, .{ .name = "SteamAPI_ISteamFriends_SetListenForFriendsMessages", .linkage = .Strong }); }
    pub const ReplyToFriendMessage = t.getImplFn("ISteamFriends", "ReplyToFriendMessage", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, pchMsgToSend: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ReplyToFriendMessage:\n\t- steamIDFriend = {any}\n\t- pchMsgToSend = {any}\n\n", .{ steamIDFriend, pchMsgToSend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReplyToFriendMessage, .{ .name = "SteamAPI_ISteamFriends_ReplyToFriendMessage", .linkage = .Strong }); }
    pub const GetFriendMessage = t.getImplFn("ISteamFriends", "GetFriendMessage", fn(t.CSteamID, i32, ?*anyopaque, i32, [*c]t.EChatEntryType) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID, iMessageID: i32, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendMessage:\n\t- steamIDFriend = {any}\n\t- iMessageID = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\t- peChatEntryType = {any}\n\n", .{ steamIDFriend, iMessageID, pvData, cubData, peChatEntryType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFriendMessage, .{ .name = "SteamAPI_ISteamFriends_GetFriendMessage", .linkage = .Strong }); }
    pub const GetFollowerCount = t.getImplFn("ISteamFriends", "GetFollowerCount", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFollowerCount:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFollowerCount, .{ .name = "SteamAPI_ISteamFriends_GetFollowerCount", .linkage = .Strong }); }
    pub const IsFollowing = t.getImplFn("ISteamFriends", "IsFollowing", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsFollowing:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsFollowing, .{ .name = "SteamAPI_ISteamFriends_IsFollowing", .linkage = .Strong }); }
    pub const EnumerateFollowingList = t.getImplFn("ISteamFriends", "EnumerateFollowingList", fn(t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_EnumerateFollowingList:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumerateFollowingList, .{ .name = "SteamAPI_ISteamFriends_EnumerateFollowingList", .linkage = .Strong }); }
    pub const IsClanPublic = t.getImplFn("ISteamFriends", "IsClanPublic", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanPublic:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsClanPublic, .{ .name = "SteamAPI_ISteamFriends_IsClanPublic", .linkage = .Strong }); }
    pub const IsClanOfficialGameGroup = t.getImplFn("ISteamFriends", "IsClanOfficialGameGroup", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanOfficialGameGroup:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsClanOfficialGameGroup, .{ .name = "SteamAPI_ISteamFriends_IsClanOfficialGameGroup", .linkage = .Strong }); }
    pub const GetNumChatsWithUnreadPriorityMessages = t.getImplFn("ISteamFriends", "GetNumChatsWithUnreadPriorityMessages", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumChatsWithUnreadPriorityMessages, .{ .name = "SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages", .linkage = .Strong }); }
    pub const ActivateGameOverlayRemotePlayTogetherInviteDialog = t.getImplFn("ISteamFriends", "ActivateGameOverlayRemotePlayTogetherInviteDialog", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayRemotePlayTogetherInviteDialog, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog", .linkage = .Strong }); }
    pub const RegisterProtocolInOverlayBrowser = t.getImplFn("ISteamFriends", "RegisterProtocolInOverlayBrowser", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchProtocol: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser:\n\t- pchProtocol = {any}\n\n", .{ pchProtocol });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RegisterProtocolInOverlayBrowser, .{ .name = "SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser", .linkage = .Strong }); }
    pub const ActivateGameOverlayInviteDialogConnectString = t.getImplFn("ISteamFriends", "ActivateGameOverlayInviteDialogConnectString", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pchConnectString: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString:\n\t- pchConnectString = {any}\n\n", .{ pchConnectString });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateGameOverlayInviteDialogConnectString, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString", .linkage = .Strong }); }
};
comptime { _ = ISteamFriends; }
const SteamFriends = struct {
    pub const v017 = t.getImplFn("SteamFriends", "v017", fn() callconv(.C) [*c]t.ISteamFriends) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamFriends {
            p("NOT IMPLEMENTED SteamAPI_SteamFriends_v017\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v017, .{ .name = "SteamAPI_SteamFriends_v017", .linkage = .Strong }); }
};
comptime { _ = SteamFriends; }
pub const ISteamUtils = extern struct {
    _: u8 = 1,
    pub const version = "SteamUtils010";
    pub const GetSecondsSinceAppActive = t.getImplFn("ISteamUtils", "GetSecondsSinceAppActive", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSecondsSinceAppActive\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSecondsSinceAppActive, .{ .name = "SteamAPI_ISteamUtils_GetSecondsSinceAppActive", .linkage = .Strong }); }
    pub const GetSecondsSinceComputerActive = t.getImplFn("ISteamUtils", "GetSecondsSinceComputerActive", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSecondsSinceComputerActive\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSecondsSinceComputerActive, .{ .name = "SteamAPI_ISteamUtils_GetSecondsSinceComputerActive", .linkage = .Strong }); }
    pub const GetConnectedUniverse = t.getImplFn("ISteamUtils", "GetConnectedUniverse", fn() callconv(.C) t.EUniverse) orelse (struct {
        fn noImpl() callconv(.C) t.EUniverse {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetConnectedUniverse\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectedUniverse, .{ .name = "SteamAPI_ISteamUtils_GetConnectedUniverse", .linkage = .Strong }); }
    pub const GetServerRealTime = t.getImplFn("ISteamUtils", "GetServerRealTime", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetServerRealTime\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetServerRealTime, .{ .name = "SteamAPI_ISteamUtils_GetServerRealTime", .linkage = .Strong }); }
    pub const GetIPCountry = t.getImplFn("ISteamUtils", "GetIPCountry", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPCountry\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPCountry, .{ .name = "SteamAPI_ISteamUtils_GetIPCountry", .linkage = .Strong }); }
    pub const GetImageSize = t.getImplFn("ISteamUtils", "GetImageSize", fn(i32, [*c]t.uint32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(iImage: i32, pnWidth: [*c]t.uint32, pnHeight: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetImageSize:\n\t- iImage = {any}\n\t- pnWidth = {any}\n\t- pnHeight = {any}\n\n", .{ iImage, pnWidth, pnHeight });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetImageSize, .{ .name = "SteamAPI_ISteamUtils_GetImageSize", .linkage = .Strong }); }
    pub const GetImageRGBA = t.getImplFn("ISteamUtils", "GetImageRGBA", fn(i32, [*c]t.uint8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(iImage: i32, pubDest: [*c]t.uint8, nDestBufferSize: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetImageRGBA:\n\t- iImage = {any}\n\t- pubDest = {any}\n\t- nDestBufferSize = {any}\n\n", .{ iImage, pubDest, nDestBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetImageRGBA, .{ .name = "SteamAPI_ISteamUtils_GetImageRGBA", .linkage = .Strong }); }
    pub const GetCurrentBatteryPower = t.getImplFn("ISteamUtils", "GetCurrentBatteryPower", fn() callconv(.C) t.uint8) orelse (struct {
        fn noImpl() callconv(.C) t.uint8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetCurrentBatteryPower\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCurrentBatteryPower, .{ .name = "SteamAPI_ISteamUtils_GetCurrentBatteryPower", .linkage = .Strong }); }
    pub const GetAppID = t.getImplFn("ISteamUtils", "GetAppID", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAppID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppID, .{ .name = "SteamAPI_ISteamUtils_GetAppID", .linkage = .Strong }); }
    pub const SetOverlayNotificationPosition = t.getImplFn("ISteamUtils", "SetOverlayNotificationPosition", fn(t.ENotificationPosition) callconv(.C) void) orelse (struct {
        fn noImpl(eNotificationPosition: t.ENotificationPosition) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetOverlayNotificationPosition:\n\t- eNotificationPosition = {any}\n\n", .{ eNotificationPosition });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetOverlayNotificationPosition, .{ .name = "SteamAPI_ISteamUtils_SetOverlayNotificationPosition", .linkage = .Strong }); }
    pub const IsAPICallCompleted = t.getImplFn("ISteamUtils", "IsAPICallCompleted", fn(t.SteamAPICall_t, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hSteamAPICall: t.SteamAPICall_t, pbFailed: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsAPICallCompleted:\n\t- hSteamAPICall = {any}\n\t- pbFailed = {any}\n\n", .{ hSteamAPICall, pbFailed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsAPICallCompleted, .{ .name = "SteamAPI_ISteamUtils_IsAPICallCompleted", .linkage = .Strong }); }
    pub const GetAPICallFailureReason = t.getImplFn("ISteamUtils", "GetAPICallFailureReason", fn(t.SteamAPICall_t) callconv(.C) t.ESteamAPICallFailure) orelse (struct {
        fn noImpl(hSteamAPICall: t.SteamAPICall_t) callconv(.C) t.ESteamAPICallFailure {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAPICallFailureReason:\n\t- hSteamAPICall = {any}\n\n", .{ hSteamAPICall });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAPICallFailureReason, .{ .name = "SteamAPI_ISteamUtils_GetAPICallFailureReason", .linkage = .Strong }); }
    pub const GetAPICallResult = t.getImplFn("ISteamUtils", "GetAPICallResult", fn(t.SteamAPICall_t, ?*anyopaque, i32, i32, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hSteamAPICall: t.SteamAPICall_t, pCallback: ?*anyopaque, cubCallback: i32, iCallbackExpected: i32, pbFailed: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAPICallResult:\n\t- hSteamAPICall = {any}\n\t- pCallback = {any}\n\t- cubCallback = {any}\n\t- iCallbackExpected = {any}\n\t- pbFailed = {any}\n\n", .{ hSteamAPICall, pCallback, cubCallback, iCallbackExpected, pbFailed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAPICallResult, .{ .name = "SteamAPI_ISteamUtils_GetAPICallResult", .linkage = .Strong }); }
    pub const GetIPCCallCount = t.getImplFn("ISteamUtils", "GetIPCCallCount", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPCCallCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPCCallCount, .{ .name = "SteamAPI_ISteamUtils_GetIPCCallCount", .linkage = .Strong }); }
    pub const SetWarningMessageHook = t.getImplFn("ISteamUtils", "SetWarningMessageHook", fn(t.SteamAPIWarningMessageHook_t) callconv(.C) void) orelse (struct {
        fn noImpl(pFunction: t.SteamAPIWarningMessageHook_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetWarningMessageHook:\n\t- pFunction = {any}\n\n", .{ pFunction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetWarningMessageHook, .{ .name = "SteamAPI_ISteamUtils_SetWarningMessageHook", .linkage = .Strong }); }
    pub const IsOverlayEnabled = t.getImplFn("ISteamUtils", "IsOverlayEnabled", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsOverlayEnabled\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsOverlayEnabled, .{ .name = "SteamAPI_ISteamUtils_IsOverlayEnabled", .linkage = .Strong }); }
    pub const BOverlayNeedsPresent = t.getImplFn("ISteamUtils", "BOverlayNeedsPresent", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_BOverlayNeedsPresent\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BOverlayNeedsPresent, .{ .name = "SteamAPI_ISteamUtils_BOverlayNeedsPresent", .linkage = .Strong }); }
    pub const CheckFileSignature = t.getImplFn("ISteamUtils", "CheckFileSignature", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(szFileName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_CheckFileSignature:\n\t- szFileName = {any}\n\n", .{ szFileName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CheckFileSignature, .{ .name = "SteamAPI_ISteamUtils_CheckFileSignature", .linkage = .Strong }); }
    pub const ShowGamepadTextInput = t.getImplFn("ISteamUtils", "ShowGamepadTextInput", fn(t.EGamepadTextInputMode, t.EGamepadTextInputLineMode, [*c]const u8, t.uint32, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(eInputMode: t.EGamepadTextInputMode, eLineInputMode: t.EGamepadTextInputLineMode, pchDescription: [*c]const u8, unCharMax: t.uint32, pchExistingText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_ShowGamepadTextInput:\n\t- eInputMode = {any}\n\t- eLineInputMode = {any}\n\t- pchDescription = {any}\n\t- unCharMax = {any}\n\t- pchExistingText = {any}\n\n", .{ eInputMode, eLineInputMode, pchDescription, unCharMax, pchExistingText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ShowGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_ShowGamepadTextInput", .linkage = .Strong }); }
    pub const GetEnteredGamepadTextLength = t.getImplFn("ISteamUtils", "GetEnteredGamepadTextLength", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetEnteredGamepadTextLength\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetEnteredGamepadTextLength, .{ .name = "SteamAPI_ISteamUtils_GetEnteredGamepadTextLength", .linkage = .Strong }); }
    pub const GetEnteredGamepadTextInput = t.getImplFn("ISteamUtils", "GetEnteredGamepadTextInput", fn([*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchText: [*c]u8, cchText: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetEnteredGamepadTextInput:\n\t- pchText = {any}\n\t- cchText = {any}\n\n", .{ pchText, cchText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetEnteredGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_GetEnteredGamepadTextInput", .linkage = .Strong }); }
    pub const GetSteamUILanguage = t.getImplFn("ISteamUtils", "GetSteamUILanguage", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSteamUILanguage\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSteamUILanguage, .{ .name = "SteamAPI_ISteamUtils_GetSteamUILanguage", .linkage = .Strong }); }
    pub const IsSteamRunningInVR = t.getImplFn("ISteamUtils", "IsSteamRunningInVR", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamRunningInVR\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsSteamRunningInVR, .{ .name = "SteamAPI_ISteamUtils_IsSteamRunningInVR", .linkage = .Strong }); }
    pub const SetOverlayNotificationInset = t.getImplFn("ISteamUtils", "SetOverlayNotificationInset", fn(i32, i32) callconv(.C) void) orelse (struct {
        fn noImpl(nHorizontalInset: i32, nVerticalInset: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetOverlayNotificationInset:\n\t- nHorizontalInset = {any}\n\t- nVerticalInset = {any}\n\n", .{ nHorizontalInset, nVerticalInset });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetOverlayNotificationInset, .{ .name = "SteamAPI_ISteamUtils_SetOverlayNotificationInset", .linkage = .Strong }); }
    pub const IsSteamInBigPictureMode = t.getImplFn("ISteamUtils", "IsSteamInBigPictureMode", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamInBigPictureMode\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsSteamInBigPictureMode, .{ .name = "SteamAPI_ISteamUtils_IsSteamInBigPictureMode", .linkage = .Strong }); }
    pub const StartVRDashboard = t.getImplFn("ISteamUtils", "StartVRDashboard", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_StartVRDashboard\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartVRDashboard, .{ .name = "SteamAPI_ISteamUtils_StartVRDashboard", .linkage = .Strong }); }
    pub const IsVRHeadsetStreamingEnabled = t.getImplFn("ISteamUtils", "IsVRHeadsetStreamingEnabled", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsVRHeadsetStreamingEnabled, .{ .name = "SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled", .linkage = .Strong }); }
    pub const SetVRHeadsetStreamingEnabled = t.getImplFn("ISteamUtils", "SetVRHeadsetStreamingEnabled", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bEnabled: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled:\n\t- bEnabled = {any}\n\n", .{ bEnabled });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetVRHeadsetStreamingEnabled, .{ .name = "SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled", .linkage = .Strong }); }
    pub const IsSteamChinaLauncher = t.getImplFn("ISteamUtils", "IsSteamChinaLauncher", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamChinaLauncher\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsSteamChinaLauncher, .{ .name = "SteamAPI_ISteamUtils_IsSteamChinaLauncher", .linkage = .Strong }); }
    pub const InitFilterText = t.getImplFn("ISteamUtils", "InitFilterText", fn(t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(unFilterOptions: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_InitFilterText:\n\t- unFilterOptions = {any}\n\n", .{ unFilterOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InitFilterText, .{ .name = "SteamAPI_ISteamUtils_InitFilterText", .linkage = .Strong }); }
    pub const FilterText = t.getImplFn("ISteamUtils", "FilterText", fn(t.ETextFilteringContext, t.CSteamID, [*c]const u8, [*c]u8, t.uint32) callconv(.C) i32) orelse (struct {
        fn noImpl(eContext: t.ETextFilteringContext, sourceSteamID: t.CSteamID, pchInputMessage: [*c]const u8, pchOutFilteredText: [*c]u8, nByteSizeOutFilteredText: t.uint32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_FilterText:\n\t- eContext = {any}\n\t- sourceSteamID = {any}\n\t- pchInputMessage = {any}\n\t- pchOutFilteredText = {any}\n\t- nByteSizeOutFilteredText = {any}\n\n", .{ eContext, sourceSteamID, pchInputMessage, pchOutFilteredText, nByteSizeOutFilteredText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FilterText, .{ .name = "SteamAPI_ISteamUtils_FilterText", .linkage = .Strong }); }
    pub const GetIPv6ConnectivityState = t.getImplFn("ISteamUtils", "GetIPv6ConnectivityState", fn(t.ESteamIPv6ConnectivityProtocol) callconv(.C) t.ESteamIPv6ConnectivityState) orelse (struct {
        fn noImpl(eProtocol: t.ESteamIPv6ConnectivityProtocol) callconv(.C) t.ESteamIPv6ConnectivityState {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPv6ConnectivityState:\n\t- eProtocol = {any}\n\n", .{ eProtocol });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPv6ConnectivityState, .{ .name = "SteamAPI_ISteamUtils_GetIPv6ConnectivityState", .linkage = .Strong }); }
    pub const IsSteamRunningOnSteamDeck = t.getImplFn("ISteamUtils", "IsSteamRunningOnSteamDeck", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsSteamRunningOnSteamDeck, .{ .name = "SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck", .linkage = .Strong }); }
    pub const ShowFloatingGamepadTextInput = t.getImplFn("ISteamUtils", "ShowFloatingGamepadTextInput", fn(t.EFloatingGamepadTextInputMode, i32, i32, i32, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(eKeyboardMode: t.EFloatingGamepadTextInputMode, nTextFieldXPosition: i32, nTextFieldYPosition: i32, nTextFieldWidth: i32, nTextFieldHeight: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput:\n\t- eKeyboardMode = {any}\n\t- nTextFieldXPosition = {any}\n\t- nTextFieldYPosition = {any}\n\t- nTextFieldWidth = {any}\n\t- nTextFieldHeight = {any}\n\n", .{ eKeyboardMode, nTextFieldXPosition, nTextFieldYPosition, nTextFieldWidth, nTextFieldHeight });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ShowFloatingGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput", .linkage = .Strong }); }
    pub const SetGameLauncherMode = t.getImplFn("ISteamUtils", "SetGameLauncherMode", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bLauncherMode: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetGameLauncherMode:\n\t- bLauncherMode = {any}\n\n", .{ bLauncherMode });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGameLauncherMode, .{ .name = "SteamAPI_ISteamUtils_SetGameLauncherMode", .linkage = .Strong }); }
    pub const DismissFloatingGamepadTextInput = t.getImplFn("ISteamUtils", "DismissFloatingGamepadTextInput", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DismissFloatingGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput", .linkage = .Strong }); }
};
comptime { _ = ISteamUtils; }
const SteamUtils = struct {
    pub const v010 = t.getImplFn("SteamUtils", "v010", fn() callconv(.C) [*c]t.ISteamUtils) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUtils {
            p("NOT IMPLEMENTED SteamAPI_SteamUtils_v010\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v010, .{ .name = "SteamAPI_SteamUtils_v010", .linkage = .Strong }); }
};
comptime { _ = SteamUtils; }
const SteamGameServerUtils = struct {
    pub const v010 = t.getImplFn("SteamGameServerUtils", "v010", fn() callconv(.C) [*c]t.ISteamUtils) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUtils {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerUtils_v010\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v010, .{ .name = "SteamAPI_SteamGameServerUtils_v010", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerUtils; }
pub const ISteamMatchmaking = extern struct {
    _: u8 = 1,
    pub const version = "SteamMatchMaking009";
    pub const GetFavoriteGameCount = t.getImplFn("ISteamMatchmaking", "GetFavoriteGameCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetFavoriteGameCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFavoriteGameCount, .{ .name = "SteamAPI_ISteamMatchmaking_GetFavoriteGameCount", .linkage = .Strong }); }
    pub const GetFavoriteGame = t.getImplFn("ISteamMatchmaking", "GetFavoriteGame", fn(i32, [*c]t.AppId_t, [*c]t.uint32, [*c]t.uint16, [*c]t.uint16, [*c]t.uint32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(iGame: i32, pnAppID: [*c]t.AppId_t, pnIP: [*c]t.uint32, pnConnPort: [*c]t.uint16, pnQueryPort: [*c]t.uint16, punFlags: [*c]t.uint32, pRTime32LastPlayedOnServer: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetFavoriteGame:\n\t- iGame = {any}\n\t- pnAppID = {any}\n\t- pnIP = {any}\n\t- pnConnPort = {any}\n\t- pnQueryPort = {any}\n\t- punFlags = {any}\n\t- pRTime32LastPlayedOnServer = {any}\n\n", .{ iGame, pnAppID, pnIP, pnConnPort, pnQueryPort, punFlags, pRTime32LastPlayedOnServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_GetFavoriteGame", .linkage = .Strong }); }
    pub const AddFavoriteGame = t.getImplFn("ISteamMatchmaking", "AddFavoriteGame", fn(t.AppId_t, t.uint32, t.uint16, t.uint16, t.uint32, t.uint32) callconv(.C) i32) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, rTime32LastPlayedOnServer: t.uint32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddFavoriteGame:\n\t- nAppID = {any}\n\t- nIP = {any}\n\t- nConnPort = {any}\n\t- nQueryPort = {any}\n\t- unFlags = {any}\n\t- rTime32LastPlayedOnServer = {any}\n\n", .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, rTime32LastPlayedOnServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_AddFavoriteGame", .linkage = .Strong }); }
    pub const RemoveFavoriteGame = t.getImplFn("ISteamMatchmaking", "RemoveFavoriteGame", fn(t.AppId_t, t.uint32, t.uint16, t.uint16, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RemoveFavoriteGame:\n\t- nAppID = {any}\n\t- nIP = {any}\n\t- nConnPort = {any}\n\t- nQueryPort = {any}\n\t- unFlags = {any}\n\n", .{ nAppID, nIP, nConnPort, nQueryPort, unFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_RemoveFavoriteGame", .linkage = .Strong }); }
    pub const RequestLobbyList = t.getImplFn("ISteamMatchmaking", "RequestLobbyList", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RequestLobbyList\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestLobbyList, .{ .name = "SteamAPI_ISteamMatchmaking_RequestLobbyList", .linkage = .Strong }); }
    pub const AddRequestLobbyListStringFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListStringFilter", fn([*c]const u8, [*c]const u8, t.ELobbyComparison) callconv(.C) void) orelse (struct {
        fn noImpl(pchKeyToMatch: [*c]const u8, pchValueToMatch: [*c]const u8, eComparisonType: t.ELobbyComparison) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter:\n\t- pchKeyToMatch = {any}\n\t- pchValueToMatch = {any}\n\t- eComparisonType = {any}\n\n", .{ pchKeyToMatch, pchValueToMatch, eComparisonType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListStringFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter", .linkage = .Strong }); }
    pub const AddRequestLobbyListNumericalFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListNumericalFilter", fn([*c]const u8, i32, t.ELobbyComparison) callconv(.C) void) orelse (struct {
        fn noImpl(pchKeyToMatch: [*c]const u8, nValueToMatch: i32, eComparisonType: t.ELobbyComparison) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter:\n\t- pchKeyToMatch = {any}\n\t- nValueToMatch = {any}\n\t- eComparisonType = {any}\n\n", .{ pchKeyToMatch, nValueToMatch, eComparisonType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListNumericalFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter", .linkage = .Strong }); }
    pub const AddRequestLobbyListNearValueFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListNearValueFilter", fn([*c]const u8, i32) callconv(.C) void) orelse (struct {
        fn noImpl(pchKeyToMatch: [*c]const u8, nValueToBeCloseTo: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter:\n\t- pchKeyToMatch = {any}\n\t- nValueToBeCloseTo = {any}\n\n", .{ pchKeyToMatch, nValueToBeCloseTo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListNearValueFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter", .linkage = .Strong }); }
    pub const AddRequestLobbyListFilterSlotsAvailable = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListFilterSlotsAvailable", fn(i32) callconv(.C) void) orelse (struct {
        fn noImpl(nSlotsAvailable: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable:\n\t- nSlotsAvailable = {any}\n\n", .{ nSlotsAvailable });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListFilterSlotsAvailable, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable", .linkage = .Strong }); }
    pub const AddRequestLobbyListDistanceFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListDistanceFilter", fn(t.ELobbyDistanceFilter) callconv(.C) void) orelse (struct {
        fn noImpl(eLobbyDistanceFilter: t.ELobbyDistanceFilter) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter:\n\t- eLobbyDistanceFilter = {any}\n\n", .{ eLobbyDistanceFilter });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListDistanceFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter", .linkage = .Strong }); }
    pub const AddRequestLobbyListResultCountFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListResultCountFilter", fn(i32) callconv(.C) void) orelse (struct {
        fn noImpl(cMaxResults: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter:\n\t- cMaxResults = {any}\n\n", .{ cMaxResults });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListResultCountFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter", .linkage = .Strong }); }
    pub const AddRequestLobbyListCompatibleMembersFilter = t.getImplFn("ISteamMatchmaking", "AddRequestLobbyListCompatibleMembersFilter", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequestLobbyListCompatibleMembersFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter", .linkage = .Strong }); }
    pub const GetLobbyByIndex = t.getImplFn("ISteamMatchmaking", "GetLobbyByIndex", fn(i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(iLobby: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyByIndex:\n\t- iLobby = {any}\n\n", .{ iLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyByIndex", .linkage = .Strong }); }
    pub const CreateLobby = t.getImplFn("ISteamMatchmaking", "CreateLobby", fn(t.ELobbyType, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(eLobbyType: t.ELobbyType, cMaxMembers: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_CreateLobby:\n\t- eLobbyType = {any}\n\t- cMaxMembers = {any}\n\n", .{ eLobbyType, cMaxMembers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateLobby, .{ .name = "SteamAPI_ISteamMatchmaking_CreateLobby", .linkage = .Strong }); }
    pub const JoinLobby = t.getImplFn("ISteamMatchmaking", "JoinLobby", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_JoinLobby:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(JoinLobby, .{ .name = "SteamAPI_ISteamMatchmaking_JoinLobby", .linkage = .Strong }); }
    pub const LeaveLobby = t.getImplFn("ISteamMatchmaking", "LeaveLobby", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_LeaveLobby:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LeaveLobby, .{ .name = "SteamAPI_ISteamMatchmaking_LeaveLobby", .linkage = .Strong }); }
    pub const InviteUserToLobby = t.getImplFn("ISteamMatchmaking", "InviteUserToLobby", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, steamIDInvitee: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_InviteUserToLobby:\n\t- steamIDLobby = {any}\n\t- steamIDInvitee = {any}\n\n", .{ steamIDLobby, steamIDInvitee });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InviteUserToLobby, .{ .name = "SteamAPI_ISteamMatchmaking_InviteUserToLobby", .linkage = .Strong }); }
    pub const GetNumLobbyMembers = t.getImplFn("ISteamMatchmaking", "GetNumLobbyMembers", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetNumLobbyMembers:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumLobbyMembers, .{ .name = "SteamAPI_ISteamMatchmaking_GetNumLobbyMembers", .linkage = .Strong }); }
    pub const GetLobbyMemberByIndex = t.getImplFn("ISteamMatchmaking", "GetLobbyMemberByIndex", fn(t.CSteamID, i32) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, iMember: i32) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex:\n\t- steamIDLobby = {any}\n\t- iMember = {any}\n\n", .{ steamIDLobby, iMember });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyMemberByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex", .linkage = .Strong }); }
    pub const GetLobbyData = t.getImplFn("ISteamMatchmaking", "GetLobbyData", fn(t.CSteamID, [*c]const u8) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyData", .linkage = .Strong }); }
    pub const SetLobbyData = t.getImplFn("ISteamMatchmaking", "SetLobbyData", fn(t.CSteamID, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ steamIDLobby, pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyData", .linkage = .Strong }); }
    pub const GetLobbyDataCount = t.getImplFn("ISteamMatchmaking", "GetLobbyDataCount", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyDataCount:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyDataCount, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyDataCount", .linkage = .Strong }); }
    pub const GetLobbyDataByIndex = t.getImplFn("ISteamMatchmaking", "GetLobbyDataByIndex", fn(t.CSteamID, i32, [*c]u8, i32, [*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, iLobbyData: i32, pchKey: [*c]u8, cchKeyBufferSize: i32, pchValue: [*c]u8, cchValueBufferSize: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex:\n\t- steamIDLobby = {any}\n\t- iLobbyData = {any}\n\t- pchKey = {any}\n\t- cchKeyBufferSize = {any}\n\t- pchValue = {any}\n\t- cchValueBufferSize = {any}\n\n", .{ steamIDLobby, iLobbyData, pchKey, cchKeyBufferSize, pchValue, cchValueBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyDataByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex", .linkage = .Strong }); }
    pub const DeleteLobbyData = t.getImplFn("ISteamMatchmaking", "DeleteLobbyData", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, pchKey: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_DeleteLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeleteLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_DeleteLobbyData", .linkage = .Strong }); }
    pub const GetLobbyMemberData = t.getImplFn("ISteamMatchmaking", "GetLobbyMemberData", fn(t.CSteamID, t.CSteamID, [*c]const u8) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, steamIDUser: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberData:\n\t- steamIDLobby = {any}\n\t- steamIDUser = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, steamIDUser, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyMemberData, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberData", .linkage = .Strong }); }
    pub const SetLobbyMemberData = t.getImplFn("ISteamMatchmaking", "SetLobbyMemberData", fn(t.CSteamID, [*c]const u8, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyMemberData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ steamIDLobby, pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyMemberData, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyMemberData", .linkage = .Strong }); }
    pub const SendLobbyChatMsg = t.getImplFn("ISteamMatchmaking", "SendLobbyChatMsg", fn(t.CSteamID, ?*const anyopaque, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, pvMsgBody: ?*const anyopaque, cubMsgBody: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SendLobbyChatMsg:\n\t- steamIDLobby = {any}\n\t- pvMsgBody = {any}\n\t- cubMsgBody = {any}\n\n", .{ steamIDLobby, pvMsgBody, cubMsgBody });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendLobbyChatMsg, .{ .name = "SteamAPI_ISteamMatchmaking_SendLobbyChatMsg", .linkage = .Strong }); }
    pub const GetLobbyChatEntry = t.getImplFn("ISteamMatchmaking", "GetLobbyChatEntry", fn(t.CSteamID, i32, [*c]t.CSteamID, ?*anyopaque, i32, [*c]t.EChatEntryType) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, iChatID: i32, pSteamIDUser: [*c]t.CSteamID, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyChatEntry:\n\t- steamIDLobby = {any}\n\t- iChatID = {any}\n\t- pSteamIDUser = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\t- peChatEntryType = {any}\n\n", .{ steamIDLobby, iChatID, pSteamIDUser, pvData, cubData, peChatEntryType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyChatEntry, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyChatEntry", .linkage = .Strong }); }
    pub const RequestLobbyData = t.getImplFn("ISteamMatchmaking", "RequestLobbyData", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RequestLobbyData:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_RequestLobbyData", .linkage = .Strong }); }
    pub const SetLobbyGameServer = t.getImplFn("ISteamMatchmaking", "SetLobbyGameServer", fn(t.CSteamID, t.uint32, t.uint16, t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, unGameServerIP: t.uint32, unGameServerPort: t.uint16, steamIDGameServer: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyGameServer:\n\t- steamIDLobby = {any}\n\t- unGameServerIP = {any}\n\t- unGameServerPort = {any}\n\t- steamIDGameServer = {any}\n\n", .{ steamIDLobby, unGameServerIP, unGameServerPort, steamIDGameServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyGameServer, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyGameServer", .linkage = .Strong }); }
    pub const GetLobbyGameServer = t.getImplFn("ISteamMatchmaking", "GetLobbyGameServer", fn(t.CSteamID, [*c]t.uint32, [*c]t.uint16, [*c]t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, punGameServerIP: [*c]t.uint32, punGameServerPort: [*c]t.uint16, psteamIDGameServer: [*c]t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyGameServer:\n\t- steamIDLobby = {any}\n\t- punGameServerIP = {any}\n\t- punGameServerPort = {any}\n\t- psteamIDGameServer = {any}\n\n", .{ steamIDLobby, punGameServerIP, punGameServerPort, psteamIDGameServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyGameServer, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyGameServer", .linkage = .Strong }); }
    pub const SetLobbyMemberLimit = t.getImplFn("ISteamMatchmaking", "SetLobbyMemberLimit", fn(t.CSteamID, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, cMaxMembers: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit:\n\t- steamIDLobby = {any}\n\t- cMaxMembers = {any}\n\n", .{ steamIDLobby, cMaxMembers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyMemberLimit, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit", .linkage = .Strong }); }
    pub const GetLobbyMemberLimit = t.getImplFn("ISteamMatchmaking", "GetLobbyMemberLimit", fn(t.CSteamID) callconv(.C) i32) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyMemberLimit, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit", .linkage = .Strong }); }
    pub const SetLobbyType = t.getImplFn("ISteamMatchmaking", "SetLobbyType", fn(t.CSteamID, t.ELobbyType) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, eLobbyType: t.ELobbyType) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyType:\n\t- steamIDLobby = {any}\n\t- eLobbyType = {any}\n\n", .{ steamIDLobby, eLobbyType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyType, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyType", .linkage = .Strong }); }
    pub const SetLobbyJoinable = t.getImplFn("ISteamMatchmaking", "SetLobbyJoinable", fn(t.CSteamID, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, bLobbyJoinable: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyJoinable:\n\t- steamIDLobby = {any}\n\t- bLobbyJoinable = {any}\n\n", .{ steamIDLobby, bLobbyJoinable });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyJoinable, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyJoinable", .linkage = .Strong }); }
    pub const GetLobbyOwner = t.getImplFn("ISteamMatchmaking", "GetLobbyOwner", fn(t.CSteamID) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyOwner:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLobbyOwner, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyOwner", .linkage = .Strong }); }
    pub const SetLobbyOwner = t.getImplFn("ISteamMatchmaking", "SetLobbyOwner", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, steamIDNewOwner: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyOwner:\n\t- steamIDLobby = {any}\n\t- steamIDNewOwner = {any}\n\n", .{ steamIDLobby, steamIDNewOwner });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLobbyOwner, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyOwner", .linkage = .Strong }); }
    pub const SetLinkedLobby = t.getImplFn("ISteamMatchmaking", "SetLinkedLobby", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, steamIDLobbyDependent: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLinkedLobby:\n\t- steamIDLobby = {any}\n\t- steamIDLobbyDependent = {any}\n\n", .{ steamIDLobby, steamIDLobbyDependent });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLinkedLobby, .{ .name = "SteamAPI_ISteamMatchmaking_SetLinkedLobby", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmaking; }
const SteamMatchmaking = struct {
    pub const v009 = t.getImplFn("SteamMatchmaking", "v009", fn() callconv(.C) [*c]t.ISteamMatchmaking) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamMatchmaking {
            p("NOT IMPLEMENTED SteamAPI_SteamMatchmaking_v009\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v009, .{ .name = "SteamAPI_SteamMatchmaking_v009", .linkage = .Strong }); }
};
comptime { _ = SteamMatchmaking; }
pub const ISteamMatchmakingServerListResponse = extern struct {
    _: u8 = 1,
    pub const ServerResponded = t.getImplFn("ISteamMatchmakingServerListResponse", "ServerResponded", fn(t.HServerListRequest, i32) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ServerResponded, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded", .linkage = .Strong }); }
    pub const ServerFailedToRespond = t.getImplFn("ISteamMatchmakingServerListResponse", "ServerFailedToRespond", fn(t.HServerListRequest, i32) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ServerFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond", .linkage = .Strong }); }
    pub const RefreshComplete = t.getImplFn("ISteamMatchmakingServerListResponse", "RefreshComplete", fn(t.HServerListRequest, t.EMatchMakingServerResponse) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest, response: t.EMatchMakingServerResponse) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete:\n\t- hRequest = {any}\n\t- response = {any}\n\n", .{ hRequest, response });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingServerListResponse; }
pub const ISteamMatchmakingPingResponse = extern struct {
    _: u8 = 1,
    pub const ServerResponded = t.getImplFn("ISteamMatchmakingPingResponse", "ServerResponded", fn([*c]t.gameserveritem_t) callconv(.C) void) orelse (struct {
        fn noImpl(server: [*c]t.gameserveritem_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPingResponse_ServerResponded:\n\t- server = {any}\n\n", .{ server });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ServerResponded, .{ .name = "SteamAPI_ISteamMatchmakingPingResponse_ServerResponded", .linkage = .Strong }); }
    pub const ServerFailedToRespond = t.getImplFn("ISteamMatchmakingPingResponse", "ServerFailedToRespond", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ServerFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingPingResponse; }
pub const ISteamMatchmakingPlayersResponse = extern struct {
    _: u8 = 1,
    pub const AddPlayerToList = t.getImplFn("ISteamMatchmakingPlayersResponse", "AddPlayerToList", fn([*c]const u8, i32, f32) callconv(.C) void) orelse (struct {
        fn noImpl(pchName: [*c]const u8, nScore: i32, flTimePlayed: f32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList:\n\t- pchName = {any}\n\t- nScore = {any}\n\t- flTimePlayed = {any}\n\n", .{ pchName, nScore, flTimePlayed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddPlayerToList, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList", .linkage = .Strong }); }
    pub const PlayersFailedToRespond = t.getImplFn("ISteamMatchmakingPlayersResponse", "PlayersFailedToRespond", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlayersFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond", .linkage = .Strong }); }
    pub const PlayersRefreshComplete = t.getImplFn("ISteamMatchmakingPlayersResponse", "PlayersRefreshComplete", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlayersRefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingPlayersResponse; }
pub const ISteamMatchmakingRulesResponse = extern struct {
    _: u8 = 1,
    pub const RulesResponded = t.getImplFn("ISteamMatchmakingRulesResponse", "RulesResponded", fn([*c]const u8, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pchRule: [*c]const u8, pchValue: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded:\n\t- pchRule = {any}\n\t- pchValue = {any}\n\n", .{ pchRule, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RulesResponded, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded", .linkage = .Strong }); }
    pub const RulesFailedToRespond = t.getImplFn("ISteamMatchmakingRulesResponse", "RulesFailedToRespond", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RulesFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond", .linkage = .Strong }); }
    pub const RulesRefreshComplete = t.getImplFn("ISteamMatchmakingRulesResponse", "RulesRefreshComplete", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RulesRefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingRulesResponse; }
pub const ISteamMatchmakingServers = extern struct {
    _: u8 = 1,
    pub const version = "SteamMatchMakingServers002";
    pub const RequestInternetServerList = t.getImplFn("ISteamMatchmakingServers", "RequestInternetServerList", fn(t.AppId_t, [*c][*c]t.MatchMakingKeyValuePair_t, t.uint32, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestInternetServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestInternetServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestInternetServerList", .linkage = .Strong }); }
    pub const RequestLANServerList = t.getImplFn("ISteamMatchmakingServers", "RequestLANServerList", fn(t.AppId_t, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestLANServerList:\n\t- iApp = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestLANServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestLANServerList", .linkage = .Strong }); }
    pub const RequestFriendsServerList = t.getImplFn("ISteamMatchmakingServers", "RequestFriendsServerList", fn(t.AppId_t, [*c][*c]t.MatchMakingKeyValuePair_t, t.uint32, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestFriendsServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList", .linkage = .Strong }); }
    pub const RequestFavoritesServerList = t.getImplFn("ISteamMatchmakingServers", "RequestFavoritesServerList", fn(t.AppId_t, [*c][*c]t.MatchMakingKeyValuePair_t, t.uint32, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestFavoritesServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList", .linkage = .Strong }); }
    pub const RequestHistoryServerList = t.getImplFn("ISteamMatchmakingServers", "RequestHistoryServerList", fn(t.AppId_t, [*c][*c]t.MatchMakingKeyValuePair_t, t.uint32, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestHistoryServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList", .linkage = .Strong }); }
    pub const RequestSpectatorServerList = t.getImplFn("ISteamMatchmakingServers", "RequestSpectatorServerList", fn(t.AppId_t, [*c][*c]t.MatchMakingKeyValuePair_t, t.uint32, [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest) orelse (struct {
        fn noImpl(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestSpectatorServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList", .linkage = .Strong }); }
    pub const ReleaseRequest = t.getImplFn("ISteamMatchmakingServers", "ReleaseRequest", fn(t.HServerListRequest) callconv(.C) void) orelse (struct {
        fn noImpl(hServerListRequest: t.HServerListRequest) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_ReleaseRequest:\n\t- hServerListRequest = {any}\n\n", .{ hServerListRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReleaseRequest, .{ .name = "SteamAPI_ISteamMatchmakingServers_ReleaseRequest", .linkage = .Strong }); }
    pub const GetServerDetails = t.getImplFn("ISteamMatchmakingServers", "GetServerDetails", fn(t.HServerListRequest, i32) callconv(.C) [*c]t.gameserveritem_t) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) [*c]t.gameserveritem_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_GetServerDetails:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetServerDetails, .{ .name = "SteamAPI_ISteamMatchmakingServers_GetServerDetails", .linkage = .Strong }); }
    pub const CancelQuery = t.getImplFn("ISteamMatchmakingServers", "CancelQuery", fn(t.HServerListRequest) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_CancelQuery:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_CancelQuery", .linkage = .Strong }); }
    pub const RefreshQuery = t.getImplFn("ISteamMatchmakingServers", "RefreshQuery", fn(t.HServerListRequest) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RefreshQuery:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RefreshQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_RefreshQuery", .linkage = .Strong }); }
    pub const IsRefreshing = t.getImplFn("ISteamMatchmakingServers", "IsRefreshing", fn(t.HServerListRequest) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_IsRefreshing:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsRefreshing, .{ .name = "SteamAPI_ISteamMatchmakingServers_IsRefreshing", .linkage = .Strong }); }
    pub const GetServerCount = t.getImplFn("ISteamMatchmakingServers", "GetServerCount", fn(t.HServerListRequest) callconv(.C) i32) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_GetServerCount:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetServerCount, .{ .name = "SteamAPI_ISteamMatchmakingServers_GetServerCount", .linkage = .Strong }); }
    pub const RefreshServer = t.getImplFn("ISteamMatchmakingServers", "RefreshServer", fn(t.HServerListRequest, i32) callconv(.C) void) orelse (struct {
        fn noImpl(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RefreshServer:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RefreshServer, .{ .name = "SteamAPI_ISteamMatchmakingServers_RefreshServer", .linkage = .Strong }); }
    pub const PingServer = t.getImplFn("ISteamMatchmakingServers", "PingServer", fn(t.uint32, t.uint16, [*c]t.ISteamMatchmakingPingResponse) callconv(.C) t.HServerQuery) orelse (struct {
        fn noImpl(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPingResponse) callconv(.C) t.HServerQuery {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_PingServer:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PingServer, .{ .name = "SteamAPI_ISteamMatchmakingServers_PingServer", .linkage = .Strong }); }
    pub const PlayerDetails = t.getImplFn("ISteamMatchmakingServers", "PlayerDetails", fn(t.uint32, t.uint16, [*c]t.ISteamMatchmakingPlayersResponse) callconv(.C) t.HServerQuery) orelse (struct {
        fn noImpl(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPlayersResponse) callconv(.C) t.HServerQuery {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_PlayerDetails:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlayerDetails, .{ .name = "SteamAPI_ISteamMatchmakingServers_PlayerDetails", .linkage = .Strong }); }
    pub const ServerRules = t.getImplFn("ISteamMatchmakingServers", "ServerRules", fn(t.uint32, t.uint16, [*c]t.ISteamMatchmakingRulesResponse) callconv(.C) t.HServerQuery) orelse (struct {
        fn noImpl(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingRulesResponse) callconv(.C) t.HServerQuery {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_ServerRules:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ServerRules, .{ .name = "SteamAPI_ISteamMatchmakingServers_ServerRules", .linkage = .Strong }); }
    pub const CancelServerQuery = t.getImplFn("ISteamMatchmakingServers", "CancelServerQuery", fn(t.HServerQuery) callconv(.C) void) orelse (struct {
        fn noImpl(hServerQuery: t.HServerQuery) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_CancelServerQuery:\n\t- hServerQuery = {any}\n\n", .{ hServerQuery });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelServerQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_CancelServerQuery", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingServers; }
const SteamMatchmakingServers = struct {
    pub const v002 = t.getImplFn("SteamMatchmakingServers", "v002", fn() callconv(.C) [*c]t.ISteamMatchmakingServers) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamMatchmakingServers {
            p("NOT IMPLEMENTED SteamAPI_SteamMatchmakingServers_v002\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v002, .{ .name = "SteamAPI_SteamMatchmakingServers_v002", .linkage = .Strong }); }
};
comptime { _ = SteamMatchmakingServers; }
pub const ISteamGameSearch = extern struct {
    _: u8 = 1,
    pub const version = "SteamMatchGameSearch001";
    pub const AddGameSearchParams = t.getImplFn("ISteamGameSearch", "AddGameSearchParams", fn([*c]const u8, [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(pchKeyToFind: [*c]const u8, pchValuesToFind: [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_AddGameSearchParams:\n\t- pchKeyToFind = {any}\n\t- pchValuesToFind = {any}\n\n", .{ pchKeyToFind, pchValuesToFind });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddGameSearchParams, .{ .name = "SteamAPI_ISteamGameSearch_AddGameSearchParams", .linkage = .Strong }); }
    pub const SearchForGameWithLobby = t.getImplFn("ISteamGameSearch", "SearchForGameWithLobby", fn(t.CSteamID, i32, i32) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(steamIDLobby: t.CSteamID, nPlayerMin: i32, nPlayerMax: i32) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SearchForGameWithLobby:\n\t- steamIDLobby = {any}\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\n", .{ steamIDLobby, nPlayerMin, nPlayerMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SearchForGameWithLobby, .{ .name = "SteamAPI_ISteamGameSearch_SearchForGameWithLobby", .linkage = .Strong }); }
    pub const SearchForGameSolo = t.getImplFn("ISteamGameSearch", "SearchForGameSolo", fn(i32, i32) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(nPlayerMin: i32, nPlayerMax: i32) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SearchForGameSolo:\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\n", .{ nPlayerMin, nPlayerMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SearchForGameSolo, .{ .name = "SteamAPI_ISteamGameSearch_SearchForGameSolo", .linkage = .Strong }); }
    pub const AcceptGame = t.getImplFn("ISteamGameSearch", "AcceptGame", fn() callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl() callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_AcceptGame\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AcceptGame, .{ .name = "SteamAPI_ISteamGameSearch_AcceptGame", .linkage = .Strong }); }
    pub const DeclineGame = t.getImplFn("ISteamGameSearch", "DeclineGame", fn() callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl() callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_DeclineGame\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeclineGame, .{ .name = "SteamAPI_ISteamGameSearch_DeclineGame", .linkage = .Strong }); }
    pub const RetrieveConnectionDetails = t.getImplFn("ISteamGameSearch", "RetrieveConnectionDetails", fn(t.CSteamID, [*c]u8, i32) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(steamIDHost: t.CSteamID, pchConnectionDetails: [*c]u8, cubConnectionDetails: i32) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_RetrieveConnectionDetails:\n\t- steamIDHost = {any}\n\t- pchConnectionDetails = {any}\n\t- cubConnectionDetails = {any}\n\n", .{ steamIDHost, pchConnectionDetails, cubConnectionDetails });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RetrieveConnectionDetails, .{ .name = "SteamAPI_ISteamGameSearch_RetrieveConnectionDetails", .linkage = .Strong }); }
    pub const EndGameSearch = t.getImplFn("ISteamGameSearch", "EndGameSearch", fn() callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl() callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_EndGameSearch\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EndGameSearch, .{ .name = "SteamAPI_ISteamGameSearch_EndGameSearch", .linkage = .Strong }); }
    pub const SetGameHostParams = t.getImplFn("ISteamGameSearch", "SetGameHostParams", fn([*c]const u8, [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SetGameHostParams:\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGameHostParams, .{ .name = "SteamAPI_ISteamGameSearch_SetGameHostParams", .linkage = .Strong }); }
    pub const SetConnectionDetails = t.getImplFn("ISteamGameSearch", "SetConnectionDetails", fn([*c]const u8, i32) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(pchConnectionDetails: [*c]const u8, cubConnectionDetails: i32) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SetConnectionDetails:\n\t- pchConnectionDetails = {any}\n\t- cubConnectionDetails = {any}\n\n", .{ pchConnectionDetails, cubConnectionDetails });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionDetails, .{ .name = "SteamAPI_ISteamGameSearch_SetConnectionDetails", .linkage = .Strong }); }
    pub const RequestPlayersForGame = t.getImplFn("ISteamGameSearch", "RequestPlayersForGame", fn(i32, i32, i32) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(nPlayerMin: i32, nPlayerMax: i32, nMaxTeamSize: i32) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_RequestPlayersForGame:\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\t- nMaxTeamSize = {any}\n\n", .{ nPlayerMin, nPlayerMax, nMaxTeamSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestPlayersForGame, .{ .name = "SteamAPI_ISteamGameSearch_RequestPlayersForGame", .linkage = .Strong }); }
    pub const HostConfirmGameStart = t.getImplFn("ISteamGameSearch", "HostConfirmGameStart", fn(t.uint64) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(ullUniqueGameID: t.uint64) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_HostConfirmGameStart:\n\t- ullUniqueGameID = {any}\n\n", .{ ullUniqueGameID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(HostConfirmGameStart, .{ .name = "SteamAPI_ISteamGameSearch_HostConfirmGameStart", .linkage = .Strong }); }
    pub const CancelRequestPlayersForGame = t.getImplFn("ISteamGameSearch", "CancelRequestPlayersForGame", fn() callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl() callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelRequestPlayersForGame, .{ .name = "SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame", .linkage = .Strong }); }
    pub const SubmitPlayerResult = t.getImplFn("ISteamGameSearch", "SubmitPlayerResult", fn(t.uint64, t.CSteamID, t.EPlayerResult_t) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(ullUniqueGameID: t.uint64, steamIDPlayer: t.CSteamID, EPlayerResult: t.EPlayerResult_t) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SubmitPlayerResult:\n\t- ullUniqueGameID = {any}\n\t- steamIDPlayer = {any}\n\t- EPlayerResult = {any}\n\n", .{ ullUniqueGameID, steamIDPlayer, EPlayerResult });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SubmitPlayerResult, .{ .name = "SteamAPI_ISteamGameSearch_SubmitPlayerResult", .linkage = .Strong }); }
    pub const EndGame = t.getImplFn("ISteamGameSearch", "EndGame", fn(t.uint64) callconv(.C) t.EGameSearchErrorCode_t) orelse (struct {
        fn noImpl(ullUniqueGameID: t.uint64) callconv(.C) t.EGameSearchErrorCode_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_EndGame:\n\t- ullUniqueGameID = {any}\n\n", .{ ullUniqueGameID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EndGame, .{ .name = "SteamAPI_ISteamGameSearch_EndGame", .linkage = .Strong }); }
};
comptime { _ = ISteamGameSearch; }
const SteamGameSearch = struct {
    pub const v001 = t.getImplFn("SteamGameSearch", "v001", fn() callconv(.C) [*c]t.ISteamGameSearch) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamGameSearch {
            p("NOT IMPLEMENTED SteamAPI_SteamGameSearch_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamGameSearch_v001", .linkage = .Strong }); }
};
comptime { _ = SteamGameSearch; }
pub const ISteamParties = extern struct {
    _: u8 = 1,
    pub const version = "SteamParties002";
    pub const GetNumActiveBeacons = t.getImplFn("ISteamParties", "GetNumActiveBeacons", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetNumActiveBeacons\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumActiveBeacons, .{ .name = "SteamAPI_ISteamParties_GetNumActiveBeacons", .linkage = .Strong }); }
    pub const GetBeaconByIndex = t.getImplFn("ISteamParties", "GetBeaconByIndex", fn(t.uint32) callconv(.C) t.PartyBeaconID_t) orelse (struct {
        fn noImpl(unIndex: t.uint32) callconv(.C) t.PartyBeaconID_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconByIndex:\n\t- unIndex = {any}\n\n", .{ unIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetBeaconByIndex, .{ .name = "SteamAPI_ISteamParties_GetBeaconByIndex", .linkage = .Strong }); }
    pub const GetBeaconDetails = t.getImplFn("ISteamParties", "GetBeaconDetails", fn(t.PartyBeaconID_t, [*c]t.CSteamID, [*c]t.SteamPartyBeaconLocation_t, [*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(ulBeaconID: t.PartyBeaconID_t, pSteamIDBeaconOwner: [*c]t.CSteamID, pLocation: [*c]t.SteamPartyBeaconLocation_t, pchMetadata: [*c]u8, cchMetadata: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconDetails:\n\t- ulBeaconID = {any}\n\t- pSteamIDBeaconOwner = {any}\n\t- pLocation = {any}\n\t- pchMetadata = {any}\n\t- cchMetadata = {any}\n\n", .{ ulBeaconID, pSteamIDBeaconOwner, pLocation, pchMetadata, cchMetadata });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetBeaconDetails, .{ .name = "SteamAPI_ISteamParties_GetBeaconDetails", .linkage = .Strong }); }
    pub const JoinParty = t.getImplFn("ISteamParties", "JoinParty", fn(t.PartyBeaconID_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(ulBeaconID: t.PartyBeaconID_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_JoinParty:\n\t- ulBeaconID = {any}\n\n", .{ ulBeaconID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(JoinParty, .{ .name = "SteamAPI_ISteamParties_JoinParty", .linkage = .Strong }); }
    pub const GetNumAvailableBeaconLocations = t.getImplFn("ISteamParties", "GetNumAvailableBeaconLocations", fn([*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(puNumLocations: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetNumAvailableBeaconLocations:\n\t- puNumLocations = {any}\n\n", .{ puNumLocations });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumAvailableBeaconLocations, .{ .name = "SteamAPI_ISteamParties_GetNumAvailableBeaconLocations", .linkage = .Strong }); }
    pub const GetAvailableBeaconLocations = t.getImplFn("ISteamParties", "GetAvailableBeaconLocations", fn([*c]t.SteamPartyBeaconLocation_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pLocationList: [*c]t.SteamPartyBeaconLocation_t, uMaxNumLocations: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetAvailableBeaconLocations:\n\t- pLocationList = {any}\n\t- uMaxNumLocations = {any}\n\n", .{ pLocationList, uMaxNumLocations });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAvailableBeaconLocations, .{ .name = "SteamAPI_ISteamParties_GetAvailableBeaconLocations", .linkage = .Strong }); }
    pub const CreateBeacon = t.getImplFn("ISteamParties", "CreateBeacon", fn(t.uint32, [*c]t.SteamPartyBeaconLocation_t, [*c]const u8, [*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unOpenSlots: t.uint32, pBeaconLocation: [*c]t.SteamPartyBeaconLocation_t, pchConnectString: [*c]const u8, pchMetadata: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_CreateBeacon:\n\t- unOpenSlots = {any}\n\t- pBeaconLocation = {any}\n\t- pchConnectString = {any}\n\t- pchMetadata = {any}\n\n", .{ unOpenSlots, pBeaconLocation, pchConnectString, pchMetadata });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateBeacon, .{ .name = "SteamAPI_ISteamParties_CreateBeacon", .linkage = .Strong }); }
    pub const OnReservationCompleted = t.getImplFn("ISteamParties", "OnReservationCompleted", fn(t.PartyBeaconID_t, t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_OnReservationCompleted:\n\t- ulBeacon = {any}\n\t- steamIDUser = {any}\n\n", .{ ulBeacon, steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(OnReservationCompleted, .{ .name = "SteamAPI_ISteamParties_OnReservationCompleted", .linkage = .Strong }); }
    pub const CancelReservation = t.getImplFn("ISteamParties", "CancelReservation", fn(t.PartyBeaconID_t, t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_CancelReservation:\n\t- ulBeacon = {any}\n\t- steamIDUser = {any}\n\n", .{ ulBeacon, steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelReservation, .{ .name = "SteamAPI_ISteamParties_CancelReservation", .linkage = .Strong }); }
    pub const ChangeNumOpenSlots = t.getImplFn("ISteamParties", "ChangeNumOpenSlots", fn(t.PartyBeaconID_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(ulBeacon: t.PartyBeaconID_t, unOpenSlots: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_ChangeNumOpenSlots:\n\t- ulBeacon = {any}\n\t- unOpenSlots = {any}\n\n", .{ ulBeacon, unOpenSlots });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ChangeNumOpenSlots, .{ .name = "SteamAPI_ISteamParties_ChangeNumOpenSlots", .linkage = .Strong }); }
    pub const DestroyBeacon = t.getImplFn("ISteamParties", "DestroyBeacon", fn(t.PartyBeaconID_t) callconv(.C) bool) orelse (struct {
        fn noImpl(ulBeacon: t.PartyBeaconID_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_DestroyBeacon:\n\t- ulBeacon = {any}\n\n", .{ ulBeacon });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroyBeacon, .{ .name = "SteamAPI_ISteamParties_DestroyBeacon", .linkage = .Strong }); }
    pub const GetBeaconLocationData = t.getImplFn("ISteamParties", "GetBeaconLocationData", fn(t.SteamPartyBeaconLocation_t, t.ESteamPartyBeaconLocationData, [*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(BeaconLocation: t.SteamPartyBeaconLocation_t, eData: t.ESteamPartyBeaconLocationData, pchDataStringOut: [*c]u8, cchDataStringOut: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconLocationData:\n\t- BeaconLocation = {any}\n\t- eData = {any}\n\t- pchDataStringOut = {any}\n\t- cchDataStringOut = {any}\n\n", .{ BeaconLocation, eData, pchDataStringOut, cchDataStringOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetBeaconLocationData, .{ .name = "SteamAPI_ISteamParties_GetBeaconLocationData", .linkage = .Strong }); }
};
comptime { _ = ISteamParties; }
const SteamParties = struct {
    pub const v002 = t.getImplFn("SteamParties", "v002", fn() callconv(.C) [*c]t.ISteamParties) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamParties {
            p("NOT IMPLEMENTED SteamAPI_SteamParties_v002\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v002, .{ .name = "SteamAPI_SteamParties_v002", .linkage = .Strong }); }
};
comptime { _ = SteamParties; }
pub const ISteamRemoteStorage = extern struct {
    _: u8 = 1,
    pub const version = "STEAMREMOTESTORAGE_INTERFACE_VERSION016";
    pub const FileWrite = t.getImplFn("ISteamRemoteStorage", "FileWrite", fn([*c]const u8, ?*const anyopaque, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWrite:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ pchFile, pvData, cubData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWrite, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWrite", .linkage = .Strong }); }
    pub const FileRead = t.getImplFn("ISteamRemoteStorage", "FileRead", fn([*c]const u8, ?*anyopaque, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, pvData: ?*anyopaque, cubDataToRead: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileRead:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubDataToRead = {any}\n\n", .{ pchFile, pvData, cubDataToRead });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileRead, .{ .name = "SteamAPI_ISteamRemoteStorage_FileRead", .linkage = .Strong }); }
    pub const FileWriteAsync = t.getImplFn("ISteamRemoteStorage", "FileWriteAsync", fn([*c]const u8, ?*const anyopaque, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteAsync:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ pchFile, pvData, cubData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWriteAsync, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteAsync", .linkage = .Strong }); }
    pub const FileReadAsync = t.getImplFn("ISteamRemoteStorage", "FileReadAsync", fn([*c]const u8, t.uint32, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, nOffset: t.uint32, cubToRead: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileReadAsync:\n\t- pchFile = {any}\n\t- nOffset = {any}\n\t- cubToRead = {any}\n\n", .{ pchFile, nOffset, cubToRead });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileReadAsync, .{ .name = "SteamAPI_ISteamRemoteStorage_FileReadAsync", .linkage = .Strong }); }
    pub const FileReadAsyncComplete = t.getImplFn("ISteamRemoteStorage", "FileReadAsyncComplete", fn(t.SteamAPICall_t, ?*anyopaque, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hReadCall: t.SteamAPICall_t, pvBuffer: ?*anyopaque, cubToRead: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete:\n\t- hReadCall = {any}\n\t- pvBuffer = {any}\n\t- cubToRead = {any}\n\n", .{ hReadCall, pvBuffer, cubToRead });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileReadAsyncComplete, .{ .name = "SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete", .linkage = .Strong }); }
    pub const FileForget = t.getImplFn("ISteamRemoteStorage", "FileForget", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileForget:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileForget, .{ .name = "SteamAPI_ISteamRemoteStorage_FileForget", .linkage = .Strong }); }
    pub const FileDelete = t.getImplFn("ISteamRemoteStorage", "FileDelete", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileDelete:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileDelete, .{ .name = "SteamAPI_ISteamRemoteStorage_FileDelete", .linkage = .Strong }); }
    pub const FileShare = t.getImplFn("ISteamRemoteStorage", "FileShare", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileShare:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileShare, .{ .name = "SteamAPI_ISteamRemoteStorage_FileShare", .linkage = .Strong }); }
    pub const SetSyncPlatforms = t.getImplFn("ISteamRemoteStorage", "SetSyncPlatforms", fn([*c]const u8, t.ERemoteStoragePlatform) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, eRemoteStoragePlatform: t.ERemoteStoragePlatform) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetSyncPlatforms:\n\t- pchFile = {any}\n\t- eRemoteStoragePlatform = {any}\n\n", .{ pchFile, eRemoteStoragePlatform });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSyncPlatforms, .{ .name = "SteamAPI_ISteamRemoteStorage_SetSyncPlatforms", .linkage = .Strong }); }
    pub const FileWriteStreamOpen = t.getImplFn("ISteamRemoteStorage", "FileWriteStreamOpen", fn([*c]const u8) callconv(.C) t.UGCFileWriteStreamHandle_t) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) t.UGCFileWriteStreamHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWriteStreamOpen, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen", .linkage = .Strong }); }
    pub const FileWriteStreamWriteChunk = t.getImplFn("ISteamRemoteStorage", "FileWriteStreamWriteChunk", fn(t.UGCFileWriteStreamHandle_t, ?*const anyopaque, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(writeHandle: t.UGCFileWriteStreamHandle_t, pvData: ?*const anyopaque, cubData: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk:\n\t- writeHandle = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ writeHandle, pvData, cubData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWriteStreamWriteChunk, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk", .linkage = .Strong }); }
    pub const FileWriteStreamClose = t.getImplFn("ISteamRemoteStorage", "FileWriteStreamClose", fn(t.UGCFileWriteStreamHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(writeHandle: t.UGCFileWriteStreamHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamClose:\n\t- writeHandle = {any}\n\n", .{ writeHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWriteStreamClose, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamClose", .linkage = .Strong }); }
    pub const FileWriteStreamCancel = t.getImplFn("ISteamRemoteStorage", "FileWriteStreamCancel", fn(t.UGCFileWriteStreamHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(writeHandle: t.UGCFileWriteStreamHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel:\n\t- writeHandle = {any}\n\n", .{ writeHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileWriteStreamCancel, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel", .linkage = .Strong }); }
    pub const FileExists = t.getImplFn("ISteamRemoteStorage", "FileExists", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileExists:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileExists, .{ .name = "SteamAPI_ISteamRemoteStorage_FileExists", .linkage = .Strong }); }
    pub const FilePersisted = t.getImplFn("ISteamRemoteStorage", "FilePersisted", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FilePersisted:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FilePersisted, .{ .name = "SteamAPI_ISteamRemoteStorage_FilePersisted", .linkage = .Strong }); }
    pub const GetFileSize = t.getImplFn("ISteamRemoteStorage", "GetFileSize", fn([*c]const u8) callconv(.C) i32) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileSize:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFileSize, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileSize", .linkage = .Strong }); }
    pub const GetFileTimestamp = t.getImplFn("ISteamRemoteStorage", "GetFileTimestamp", fn([*c]const u8) callconv(.C) i32) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileTimestamp:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFileTimestamp, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileTimestamp", .linkage = .Strong }); }
    pub const GetSyncPlatforms = t.getImplFn("ISteamRemoteStorage", "GetSyncPlatforms", fn([*c]const u8) callconv(.C) t.ERemoteStoragePlatform) orelse (struct {
        fn noImpl(pchFile: [*c]const u8) callconv(.C) t.ERemoteStoragePlatform {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetSyncPlatforms:\n\t- pchFile = {any}\n\n", .{ pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSyncPlatforms, .{ .name = "SteamAPI_ISteamRemoteStorage_GetSyncPlatforms", .linkage = .Strong }); }
    pub const GetFileCount = t.getImplFn("ISteamRemoteStorage", "GetFileCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFileCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileCount", .linkage = .Strong }); }
    pub const GetFileNameAndSize = t.getImplFn("ISteamRemoteStorage", "GetFileNameAndSize", fn(i32, [*c]i32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(iFile: i32, pnFileSizeInBytes: [*c]i32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileNameAndSize:\n\t- iFile = {any}\n\t- pnFileSizeInBytes = {any}\n\n", .{ iFile, pnFileSizeInBytes });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFileNameAndSize, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileNameAndSize", .linkage = .Strong }); }
    pub const GetQuota = t.getImplFn("ISteamRemoteStorage", "GetQuota", fn([*c]t.uint64, [*c]t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(pnTotalBytes: [*c]t.uint64, puAvailableBytes: [*c]t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetQuota:\n\t- pnTotalBytes = {any}\n\t- puAvailableBytes = {any}\n\n", .{ pnTotalBytes, puAvailableBytes });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQuota, .{ .name = "SteamAPI_ISteamRemoteStorage_GetQuota", .linkage = .Strong }); }
    pub const IsCloudEnabledForAccount = t.getImplFn("ISteamRemoteStorage", "IsCloudEnabledForAccount", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsCloudEnabledForAccount, .{ .name = "SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount", .linkage = .Strong }); }
    pub const IsCloudEnabledForApp = t.getImplFn("ISteamRemoteStorage", "IsCloudEnabledForApp", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsCloudEnabledForApp, .{ .name = "SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp", .linkage = .Strong }); }
    pub const SetCloudEnabledForApp = t.getImplFn("ISteamRemoteStorage", "SetCloudEnabledForApp", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bEnabled: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp:\n\t- bEnabled = {any}\n\n", .{ bEnabled });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCloudEnabledForApp, .{ .name = "SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp", .linkage = .Strong }); }
    pub const UGCDownload = t.getImplFn("ISteamRemoteStorage", "UGCDownload", fn(t.UGCHandle_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hContent: t.UGCHandle_t, unPriority: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCDownload:\n\t- hContent = {any}\n\t- unPriority = {any}\n\n", .{ hContent, unPriority });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UGCDownload, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCDownload", .linkage = .Strong }); }
    pub const GetUGCDownloadProgress = t.getImplFn("ISteamRemoteStorage", "GetUGCDownloadProgress", fn(t.UGCHandle_t, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(hContent: t.UGCHandle_t, pnBytesDownloaded: [*c]i32, pnBytesExpected: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress:\n\t- hContent = {any}\n\t- pnBytesDownloaded = {any}\n\t- pnBytesExpected = {any}\n\n", .{ hContent, pnBytesDownloaded, pnBytesExpected });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUGCDownloadProgress, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress", .linkage = .Strong }); }
    pub const GetUGCDetails = t.getImplFn("ISteamRemoteStorage", "GetUGCDetails", fn(t.UGCHandle_t, [*c]t.AppId_t, [*c][*c]u8, [*c]i32, [*c]t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(hContent: t.UGCHandle_t, pnAppID: [*c]t.AppId_t, ppchName: [*c][*c]u8, pnFileSizeInBytes: [*c]i32, pSteamIDOwner: [*c]t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUGCDetails:\n\t- hContent = {any}\n\t- pnAppID = {any}\n\t- ppchName = {any}\n\t- pnFileSizeInBytes = {any}\n\t- pSteamIDOwner = {any}\n\n", .{ hContent, pnAppID, ppchName, pnFileSizeInBytes, pSteamIDOwner });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUGCDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUGCDetails", .linkage = .Strong }); }
    pub const UGCRead = t.getImplFn("ISteamRemoteStorage", "UGCRead", fn(t.UGCHandle_t, ?*anyopaque, i32, t.uint32, t.EUGCReadAction) callconv(.C) i32) orelse (struct {
        fn noImpl(hContent: t.UGCHandle_t, pvData: ?*anyopaque, cubDataToRead: i32, cOffset: t.uint32, eAction: t.EUGCReadAction) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCRead:\n\t- hContent = {any}\n\t- pvData = {any}\n\t- cubDataToRead = {any}\n\t- cOffset = {any}\n\t- eAction = {any}\n\n", .{ hContent, pvData, cubDataToRead, cOffset, eAction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UGCRead, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCRead", .linkage = .Strong }); }
    pub const GetCachedUGCCount = t.getImplFn("ISteamRemoteStorage", "GetCachedUGCCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetCachedUGCCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCachedUGCCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetCachedUGCCount", .linkage = .Strong }); }
    pub const GetCachedUGCHandle = t.getImplFn("ISteamRemoteStorage", "GetCachedUGCHandle", fn(i32) callconv(.C) t.UGCHandle_t) orelse (struct {
        fn noImpl(iCachedContent: i32) callconv(.C) t.UGCHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle:\n\t- iCachedContent = {any}\n\n", .{ iCachedContent });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCachedUGCHandle, .{ .name = "SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle", .linkage = .Strong }); }
    pub const PublishWorkshopFile = t.getImplFn("ISteamRemoteStorage", "PublishWorkshopFile", fn([*c]const u8, [*c]const u8, t.AppId_t, [*c]const u8, [*c]const u8, t.ERemoteStoragePublishedFileVisibility, [*c]t.SteamParamStringArray_t, t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchFile: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, eWorkshopFileType: t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_PublishWorkshopFile:\n\t- pchFile = {any}\n\t- pchPreviewFile = {any}\n\t- nConsumerAppId = {any}\n\t- pchTitle = {any}\n\t- pchDescription = {any}\n\t- eVisibility = {any}\n\t- pTags = {any}\n\t- eWorkshopFileType = {any}\n\n", .{ pchFile, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, eWorkshopFileType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PublishWorkshopFile, .{ .name = "SteamAPI_ISteamRemoteStorage_PublishWorkshopFile", .linkage = .Strong }); }
    pub const CreatePublishedFileUpdateRequest = t.getImplFn("ISteamRemoteStorage", "CreatePublishedFileUpdateRequest", fn(t.PublishedFileId_t) callconv(.C) t.PublishedFileUpdateHandle_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.PublishedFileUpdateHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreatePublishedFileUpdateRequest, .{ .name = "SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest", .linkage = .Strong }); }
    pub const UpdatePublishedFileFile = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileFile", fn(t.PublishedFileUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pchFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile:\n\t- updateHandle = {any}\n\t- pchFile = {any}\n\n", .{ updateHandle, pchFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile", .linkage = .Strong }); }
    pub const UpdatePublishedFilePreviewFile = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFilePreviewFile", fn(t.PublishedFileUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pchPreviewFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile:\n\t- updateHandle = {any}\n\t- pchPreviewFile = {any}\n\n", .{ updateHandle, pchPreviewFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFilePreviewFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile", .linkage = .Strong }); }
    pub const UpdatePublishedFileTitle = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileTitle", fn(t.PublishedFileUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pchTitle: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle:\n\t- updateHandle = {any}\n\t- pchTitle = {any}\n\n", .{ updateHandle, pchTitle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileTitle, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle", .linkage = .Strong }); }
    pub const UpdatePublishedFileDescription = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileDescription", fn(t.PublishedFileUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pchDescription: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription:\n\t- updateHandle = {any}\n\t- pchDescription = {any}\n\n", .{ updateHandle, pchDescription });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileDescription, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription", .linkage = .Strong }); }
    pub const UpdatePublishedFileVisibility = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileVisibility", fn(t.PublishedFileUpdateHandle_t, t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility:\n\t- updateHandle = {any}\n\t- eVisibility = {any}\n\n", .{ updateHandle, eVisibility });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileVisibility, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility", .linkage = .Strong }); }
    pub const UpdatePublishedFileTags = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileTags", fn(t.PublishedFileUpdateHandle_t, [*c]t.SteamParamStringArray_t) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pTags: [*c]t.SteamParamStringArray_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags:\n\t- updateHandle = {any}\n\t- pTags = {any}\n\n", .{ updateHandle, pTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileTags, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags", .linkage = .Strong }); }
    pub const CommitPublishedFileUpdate = t.getImplFn("ISteamRemoteStorage", "CommitPublishedFileUpdate", fn(t.PublishedFileUpdateHandle_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate:\n\t- updateHandle = {any}\n\n", .{ updateHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CommitPublishedFileUpdate, .{ .name = "SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate", .linkage = .Strong }); }
    pub const GetPublishedFileDetails = t.getImplFn("ISteamRemoteStorage", "GetPublishedFileDetails", fn(t.PublishedFileId_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t, unMaxSecondsOld: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails:\n\t- unPublishedFileId = {any}\n\t- unMaxSecondsOld = {any}\n\n", .{ unPublishedFileId, unMaxSecondsOld });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPublishedFileDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails", .linkage = .Strong }); }
    pub const DeletePublishedFile = t.getImplFn("ISteamRemoteStorage", "DeletePublishedFile", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_DeletePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeletePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_DeletePublishedFile", .linkage = .Strong }); }
    pub const EnumerateUserPublishedFiles = t.getImplFn("ISteamRemoteStorage", "EnumerateUserPublishedFiles", fn(t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumerateUserPublishedFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles", .linkage = .Strong }); }
    pub const SubscribePublishedFile = t.getImplFn("ISteamRemoteStorage", "SubscribePublishedFile", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SubscribePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SubscribePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_SubscribePublishedFile", .linkage = .Strong }); }
    pub const EnumerateUserSubscribedFiles = t.getImplFn("ISteamRemoteStorage", "EnumerateUserSubscribedFiles", fn(t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumerateUserSubscribedFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles", .linkage = .Strong }); }
    pub const UnsubscribePublishedFile = t.getImplFn("ISteamRemoteStorage", "UnsubscribePublishedFile", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UnsubscribePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile", .linkage = .Strong }); }
    pub const UpdatePublishedFileSetChangeDescription = t.getImplFn("ISteamRemoteStorage", "UpdatePublishedFileSetChangeDescription", fn(t.PublishedFileUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.PublishedFileUpdateHandle_t, pchChangeDescription: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription:\n\t- updateHandle = {any}\n\t- pchChangeDescription = {any}\n\n", .{ updateHandle, pchChangeDescription });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePublishedFileSetChangeDescription, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription", .linkage = .Strong }); }
    pub const GetPublishedItemVoteDetails = t.getImplFn("ISteamRemoteStorage", "GetPublishedItemVoteDetails", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPublishedItemVoteDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails", .linkage = .Strong }); }
    pub const UpdateUserPublishedItemVote = t.getImplFn("ISteamRemoteStorage", "UpdateUserPublishedItemVote", fn(t.PublishedFileId_t, bool) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t, bVoteUp: bool) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote:\n\t- unPublishedFileId = {any}\n\t- bVoteUp = {any}\n\n", .{ unPublishedFileId, bVoteUp });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateUserPublishedItemVote, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote", .linkage = .Strong }); }
    pub const GetUserPublishedItemVoteDetails = t.getImplFn("ISteamRemoteStorage", "GetUserPublishedItemVoteDetails", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserPublishedItemVoteDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails", .linkage = .Strong }); }
    pub const EnumerateUserSharedWorkshopFiles = t.getImplFn("ISteamRemoteStorage", "EnumerateUserSharedWorkshopFiles", fn(t.CSteamID, t.uint32, [*c]t.SteamParamStringArray_t, [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamId: t.CSteamID, unStartIndex: t.uint32, pRequiredTags: [*c]t.SteamParamStringArray_t, pExcludedTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles:\n\t- steamId = {any}\n\t- unStartIndex = {any}\n\t- pRequiredTags = {any}\n\t- pExcludedTags = {any}\n\n", .{ steamId, unStartIndex, pRequiredTags, pExcludedTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumerateUserSharedWorkshopFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles", .linkage = .Strong }); }
    pub const PublishVideo = t.getImplFn("ISteamRemoteStorage", "PublishVideo", fn(t.EWorkshopVideoProvider, [*c]const u8, [*c]const u8, [*c]const u8, t.AppId_t, [*c]const u8, [*c]const u8, t.ERemoteStoragePublishedFileVisibility, [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(eVideoProvider: t.EWorkshopVideoProvider, pchVideoAccount: [*c]const u8, pchVideoIdentifier: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_PublishVideo:\n\t- eVideoProvider = {any}\n\t- pchVideoAccount = {any}\n\t- pchVideoIdentifier = {any}\n\t- pchPreviewFile = {any}\n\t- nConsumerAppId = {any}\n\t- pchTitle = {any}\n\t- pchDescription = {any}\n\t- eVisibility = {any}\n\t- pTags = {any}\n\n", .{ eVideoProvider, pchVideoAccount, pchVideoIdentifier, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PublishVideo, .{ .name = "SteamAPI_ISteamRemoteStorage_PublishVideo", .linkage = .Strong }); }
    pub const SetUserPublishedFileAction = t.getImplFn("ISteamRemoteStorage", "SetUserPublishedFileAction", fn(t.PublishedFileId_t, t.EWorkshopFileAction) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(unPublishedFileId: t.PublishedFileId_t, eAction: t.EWorkshopFileAction) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction:\n\t- unPublishedFileId = {any}\n\t- eAction = {any}\n\n", .{ unPublishedFileId, eAction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetUserPublishedFileAction, .{ .name = "SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction", .linkage = .Strong }); }
    pub const EnumeratePublishedFilesByUserAction = t.getImplFn("ISteamRemoteStorage", "EnumeratePublishedFilesByUserAction", fn(t.EWorkshopFileAction, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(eAction: t.EWorkshopFileAction, unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction:\n\t- eAction = {any}\n\t- unStartIndex = {any}\n\n", .{ eAction, unStartIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumeratePublishedFilesByUserAction, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction", .linkage = .Strong }); }
    pub const EnumeratePublishedWorkshopFiles = t.getImplFn("ISteamRemoteStorage", "EnumeratePublishedWorkshopFiles", fn(t.EWorkshopEnumerationType, t.uint32, t.uint32, t.uint32, [*c]t.SteamParamStringArray_t, [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(eEnumerationType: t.EWorkshopEnumerationType, unStartIndex: t.uint32, unCount: t.uint32, unDays: t.uint32, pTags: [*c]t.SteamParamStringArray_t, pUserTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles:\n\t- eEnumerationType = {any}\n\t- unStartIndex = {any}\n\t- unCount = {any}\n\t- unDays = {any}\n\t- pTags = {any}\n\t- pUserTags = {any}\n\n", .{ eEnumerationType, unStartIndex, unCount, unDays, pTags, pUserTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnumeratePublishedWorkshopFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles", .linkage = .Strong }); }
    pub const UGCDownloadToLocation = t.getImplFn("ISteamRemoteStorage", "UGCDownloadToLocation", fn(t.UGCHandle_t, [*c]const u8, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hContent: t.UGCHandle_t, pchLocation: [*c]const u8, unPriority: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation:\n\t- hContent = {any}\n\t- pchLocation = {any}\n\t- unPriority = {any}\n\n", .{ hContent, pchLocation, unPriority });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UGCDownloadToLocation, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation", .linkage = .Strong }); }
    pub const GetLocalFileChangeCount = t.getImplFn("ISteamRemoteStorage", "GetLocalFileChangeCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLocalFileChangeCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount", .linkage = .Strong }); }
    pub const GetLocalFileChange = t.getImplFn("ISteamRemoteStorage", "GetLocalFileChange", fn(i32, [*c]t.ERemoteStorageLocalFileChange, [*c]t.ERemoteStorageFilePathType) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(iFile: i32, pEChangeType: [*c]t.ERemoteStorageLocalFileChange, pEFilePathType: [*c]t.ERemoteStorageFilePathType) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetLocalFileChange:\n\t- iFile = {any}\n\t- pEChangeType = {any}\n\t- pEFilePathType = {any}\n\n", .{ iFile, pEChangeType, pEFilePathType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLocalFileChange, .{ .name = "SteamAPI_ISteamRemoteStorage_GetLocalFileChange", .linkage = .Strong }); }
    pub const BeginFileWriteBatch = t.getImplFn("ISteamRemoteStorage", "BeginFileWriteBatch", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BeginFileWriteBatch, .{ .name = "SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch", .linkage = .Strong }); }
    pub const EndFileWriteBatch = t.getImplFn("ISteamRemoteStorage", "EndFileWriteBatch", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EndFileWriteBatch\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EndFileWriteBatch, .{ .name = "SteamAPI_ISteamRemoteStorage_EndFileWriteBatch", .linkage = .Strong }); }
};
comptime { _ = ISteamRemoteStorage; }
const SteamRemoteStorage = struct {
    pub const v016 = t.getImplFn("SteamRemoteStorage", "v016", fn() callconv(.C) [*c]t.ISteamRemoteStorage) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamRemoteStorage {
            p("NOT IMPLEMENTED SteamAPI_SteamRemoteStorage_v016\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v016, .{ .name = "SteamAPI_SteamRemoteStorage_v016", .linkage = .Strong }); }
};
comptime { _ = SteamRemoteStorage; }
pub const ISteamUserStats = extern struct {
    _: u8 = 1,
    pub const version = "STEAMUSERSTATS_INTERFACE_VERSION012";
    pub const RequestCurrentStats = t.getImplFn("ISteamUserStats", "RequestCurrentStats", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestCurrentStats\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestCurrentStats, .{ .name = "SteamAPI_ISteamUserStats_RequestCurrentStats", .linkage = .Strong }); }
    pub const GetStatInt32 = t.getImplFn("ISteamUserStats", "GetStatInt32", fn([*c]const u8, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetStatInt32:\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStatInt32, .{ .name = "SteamAPI_ISteamUserStats_GetStatInt32", .linkage = .Strong }); }
    pub const GetStatFloat = t.getImplFn("ISteamUserStats", "GetStatFloat", fn([*c]const u8, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetStatFloat:\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStatFloat, .{ .name = "SteamAPI_ISteamUserStats_GetStatFloat", .linkage = .Strong }); }
    pub const SetStatInt32 = t.getImplFn("ISteamUserStats", "SetStatInt32", fn([*c]const u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, nData: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetStatInt32:\n\t- pchName = {any}\n\t- nData = {any}\n\n", .{ pchName, nData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetStatInt32, .{ .name = "SteamAPI_ISteamUserStats_SetStatInt32", .linkage = .Strong }); }
    pub const SetStatFloat = t.getImplFn("ISteamUserStats", "SetStatFloat", fn([*c]const u8, f32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, fData: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetStatFloat:\n\t- pchName = {any}\n\t- fData = {any}\n\n", .{ pchName, fData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetStatFloat, .{ .name = "SteamAPI_ISteamUserStats_SetStatFloat", .linkage = .Strong }); }
    pub const UpdateAvgRateStat = t.getImplFn("ISteamUserStats", "UpdateAvgRateStat", fn([*c]const u8, f32, f64) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_UpdateAvgRateStat:\n\t- pchName = {any}\n\t- flCountThisSession = {any}\n\t- dSessionLength = {any}\n\n", .{ pchName, flCountThisSession, dSessionLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateAvgRateStat, .{ .name = "SteamAPI_ISteamUserStats_UpdateAvgRateStat", .linkage = .Strong }); }
    pub const GetAchievement = t.getImplFn("ISteamUserStats", "GetAchievement", fn([*c]const u8, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievement:\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ pchName, pbAchieved });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievement, .{ .name = "SteamAPI_ISteamUserStats_GetAchievement", .linkage = .Strong }); }
    pub const SetAchievement = t.getImplFn("ISteamUserStats", "SetAchievement", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetAchievement:\n\t- pchName = {any}\n\n", .{ pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetAchievement, .{ .name = "SteamAPI_ISteamUserStats_SetAchievement", .linkage = .Strong }); }
    pub const ClearAchievement = t.getImplFn("ISteamUserStats", "ClearAchievement", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_ClearAchievement:\n\t- pchName = {any}\n\n", .{ pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ClearAchievement, .{ .name = "SteamAPI_ISteamUserStats_ClearAchievement", .linkage = .Strong }); }
    pub const GetAchievementAndUnlockTime = t.getImplFn("ISteamUserStats", "GetAchievementAndUnlockTime", fn([*c]const u8, [*c]bool, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime:\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\t- punUnlockTime = {any}\n\n", .{ pchName, pbAchieved, punUnlockTime });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementAndUnlockTime, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime", .linkage = .Strong }); }
    pub const StoreStats = t.getImplFn("ISteamUserStats", "StoreStats", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_StoreStats\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StoreStats, .{ .name = "SteamAPI_ISteamUserStats_StoreStats", .linkage = .Strong }); }
    pub const GetAchievementIcon = t.getImplFn("ISteamUserStats", "GetAchievementIcon", fn([*c]const u8) callconv(.C) i32) orelse (struct {
        fn noImpl(pchName: [*c]const u8) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementIcon:\n\t- pchName = {any}\n\n", .{ pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementIcon, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementIcon", .linkage = .Strong }); }
    pub const GetAchievementDisplayAttribute = t.getImplFn("ISteamUserStats", "GetAchievementDisplayAttribute", fn([*c]const u8, [*c]const u8) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute:\n\t- pchName = {any}\n\t- pchKey = {any}\n\n", .{ pchName, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementDisplayAttribute, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute", .linkage = .Strong }); }
    pub const IndicateAchievementProgress = t.getImplFn("ISteamUserStats", "IndicateAchievementProgress", fn([*c]const u8, t.uint32, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, nCurProgress: t.uint32, nMaxProgress: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_IndicateAchievementProgress:\n\t- pchName = {any}\n\t- nCurProgress = {any}\n\t- nMaxProgress = {any}\n\n", .{ pchName, nCurProgress, nMaxProgress });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IndicateAchievementProgress, .{ .name = "SteamAPI_ISteamUserStats_IndicateAchievementProgress", .linkage = .Strong }); }
    pub const GetNumAchievements = t.getImplFn("ISteamUserStats", "GetNumAchievements", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNumAchievements\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumAchievements, .{ .name = "SteamAPI_ISteamUserStats_GetNumAchievements", .linkage = .Strong }); }
    pub const GetAchievementName = t.getImplFn("ISteamUserStats", "GetAchievementName", fn(t.uint32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(iAchievement: t.uint32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementName:\n\t- iAchievement = {any}\n\n", .{ iAchievement });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementName, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementName", .linkage = .Strong }); }
    pub const RequestUserStats = t.getImplFn("ISteamUserStats", "RequestUserStats", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestUserStats, .{ .name = "SteamAPI_ISteamUserStats_RequestUserStats", .linkage = .Strong }); }
    pub const GetUserStatInt32 = t.getImplFn("ISteamUserStats", "GetUserStatInt32", fn(t.CSteamID, [*c]const u8, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserStatInt32, .{ .name = "SteamAPI_ISteamUserStats_GetUserStatInt32", .linkage = .Strong }); }
    pub const GetUserStatFloat = t.getImplFn("ISteamUserStats", "GetUserStatFloat", fn(t.CSteamID, [*c]const u8, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserStatFloat, .{ .name = "SteamAPI_ISteamUserStats_GetUserStatFloat", .linkage = .Strong }); }
    pub const GetUserAchievement = t.getImplFn("ISteamUserStats", "GetUserAchievement", fn(t.CSteamID, [*c]const u8, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ steamIDUser, pchName, pbAchieved });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserAchievement, .{ .name = "SteamAPI_ISteamUserStats_GetUserAchievement", .linkage = .Strong }); }
    pub const GetUserAchievementAndUnlockTime = t.getImplFn("ISteamUserStats", "GetUserAchievementAndUnlockTime", fn(t.CSteamID, [*c]const u8, [*c]bool, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\t- punUnlockTime = {any}\n\n", .{ steamIDUser, pchName, pbAchieved, punUnlockTime });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserAchievementAndUnlockTime, .{ .name = "SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime", .linkage = .Strong }); }
    pub const ResetAllStats = t.getImplFn("ISteamUserStats", "ResetAllStats", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bAchievementsToo: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_ResetAllStats:\n\t- bAchievementsToo = {any}\n\n", .{ bAchievementsToo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ResetAllStats, .{ .name = "SteamAPI_ISteamUserStats_ResetAllStats", .linkage = .Strong }); }
    pub const FindOrCreateLeaderboard = t.getImplFn("ISteamUserStats", "FindOrCreateLeaderboard", fn([*c]const u8, t.ELeaderboardSortMethod, t.ELeaderboardDisplayType) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchLeaderboardName: [*c]const u8, eLeaderboardSortMethod: t.ELeaderboardSortMethod, eLeaderboardDisplayType: t.ELeaderboardDisplayType) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_FindOrCreateLeaderboard:\n\t- pchLeaderboardName = {any}\n\t- eLeaderboardSortMethod = {any}\n\t- eLeaderboardDisplayType = {any}\n\n", .{ pchLeaderboardName, eLeaderboardSortMethod, eLeaderboardDisplayType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FindOrCreateLeaderboard, .{ .name = "SteamAPI_ISteamUserStats_FindOrCreateLeaderboard", .linkage = .Strong }); }
    pub const FindLeaderboard = t.getImplFn("ISteamUserStats", "FindLeaderboard", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchLeaderboardName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_FindLeaderboard:\n\t- pchLeaderboardName = {any}\n\n", .{ pchLeaderboardName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FindLeaderboard, .{ .name = "SteamAPI_ISteamUserStats_FindLeaderboard", .linkage = .Strong }); }
    pub const GetLeaderboardName = t.getImplFn("ISteamUserStats", "GetLeaderboardName", fn(t.SteamLeaderboard_t) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardName:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLeaderboardName, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardName", .linkage = .Strong }); }
    pub const GetLeaderboardEntryCount = t.getImplFn("ISteamUserStats", "GetLeaderboardEntryCount", fn(t.SteamLeaderboard_t) callconv(.C) i32) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardEntryCount:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLeaderboardEntryCount, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardEntryCount", .linkage = .Strong }); }
    pub const GetLeaderboardSortMethod = t.getImplFn("ISteamUserStats", "GetLeaderboardSortMethod", fn(t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardSortMethod) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardSortMethod {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardSortMethod:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLeaderboardSortMethod, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardSortMethod", .linkage = .Strong }); }
    pub const GetLeaderboardDisplayType = t.getImplFn("ISteamUserStats", "GetLeaderboardDisplayType", fn(t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardDisplayType) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardDisplayType {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardDisplayType:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLeaderboardDisplayType, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardDisplayType", .linkage = .Strong }); }
    pub const DownloadLeaderboardEntries = t.getImplFn("ISteamUserStats", "DownloadLeaderboardEntries", fn(t.SteamLeaderboard_t, t.ELeaderboardDataRequest, i32, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardDataRequest: t.ELeaderboardDataRequest, nRangeStart: i32, nRangeEnd: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_DownloadLeaderboardEntries:\n\t- hSteamLeaderboard = {any}\n\t- eLeaderboardDataRequest = {any}\n\t- nRangeStart = {any}\n\t- nRangeEnd = {any}\n\n", .{ hSteamLeaderboard, eLeaderboardDataRequest, nRangeStart, nRangeEnd });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DownloadLeaderboardEntries, .{ .name = "SteamAPI_ISteamUserStats_DownloadLeaderboardEntries", .linkage = .Strong }); }
    pub const DownloadLeaderboardEntriesForUsers = t.getImplFn("ISteamUserStats", "DownloadLeaderboardEntriesForUsers", fn(t.SteamLeaderboard_t, [*c]t.CSteamID, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t, prgUsers: [*c]t.CSteamID, cUsers: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers:\n\t- hSteamLeaderboard = {any}\n\t- prgUsers = {any}\n\t- cUsers = {any}\n\n", .{ hSteamLeaderboard, prgUsers, cUsers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DownloadLeaderboardEntriesForUsers, .{ .name = "SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers", .linkage = .Strong }); }
    pub const GetDownloadedLeaderboardEntry = t.getImplFn("ISteamUserStats", "GetDownloadedLeaderboardEntry", fn(t.SteamLeaderboardEntries_t, i32, [*c]t.LeaderboardEntry_t, [*c]i32, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(hSteamLeaderboardEntries: t.SteamLeaderboardEntries_t, index: i32, pLeaderboardEntry: [*c]t.LeaderboardEntry_t, pDetails: [*c]i32, cDetailsMax: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry:\n\t- hSteamLeaderboardEntries = {any}\n\t- index = {any}\n\t- pLeaderboardEntry = {any}\n\t- pDetails = {any}\n\t- cDetailsMax = {any}\n\n", .{ hSteamLeaderboardEntries, index, pLeaderboardEntry, pDetails, cDetailsMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDownloadedLeaderboardEntry, .{ .name = "SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry", .linkage = .Strong }); }
    pub const UploadLeaderboardScore = t.getImplFn("ISteamUserStats", "UploadLeaderboardScore", fn(t.SteamLeaderboard_t, t.ELeaderboardUploadScoreMethod, i32, [*c]const i32, i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardUploadScoreMethod: t.ELeaderboardUploadScoreMethod, nScore: i32, pScoreDetails: [*c]const i32, cScoreDetailsCount: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_UploadLeaderboardScore:\n\t- hSteamLeaderboard = {any}\n\t- eLeaderboardUploadScoreMethod = {any}\n\t- nScore = {any}\n\t- pScoreDetails = {any}\n\t- cScoreDetailsCount = {any}\n\n", .{ hSteamLeaderboard, eLeaderboardUploadScoreMethod, nScore, pScoreDetails, cScoreDetailsCount });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UploadLeaderboardScore, .{ .name = "SteamAPI_ISteamUserStats_UploadLeaderboardScore", .linkage = .Strong }); }
    pub const AttachLeaderboardUGC = t.getImplFn("ISteamUserStats", "AttachLeaderboardUGC", fn(t.SteamLeaderboard_t, t.UGCHandle_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(hSteamLeaderboard: t.SteamLeaderboard_t, hUGC: t.UGCHandle_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_AttachLeaderboardUGC:\n\t- hSteamLeaderboard = {any}\n\t- hUGC = {any}\n\n", .{ hSteamLeaderboard, hUGC });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AttachLeaderboardUGC, .{ .name = "SteamAPI_ISteamUserStats_AttachLeaderboardUGC", .linkage = .Strong }); }
    pub const GetNumberOfCurrentPlayers = t.getImplFn("ISteamUserStats", "GetNumberOfCurrentPlayers", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumberOfCurrentPlayers, .{ .name = "SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers", .linkage = .Strong }); }
    pub const RequestGlobalAchievementPercentages = t.getImplFn("ISteamUserStats", "RequestGlobalAchievementPercentages", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestGlobalAchievementPercentages, .{ .name = "SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages", .linkage = .Strong }); }
    pub const GetMostAchievedAchievementInfo = t.getImplFn("ISteamUserStats", "GetMostAchievedAchievementInfo", fn([*c]u8, t.uint32, [*c]f32, [*c]bool) callconv(.C) i32) orelse (struct {
        fn noImpl(pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo:\n\t- pchName = {any}\n\t- unNameBufLen = {any}\n\t- pflPercent = {any}\n\t- pbAchieved = {any}\n\n", .{ pchName, unNameBufLen, pflPercent, pbAchieved });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMostAchievedAchievementInfo, .{ .name = "SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo", .linkage = .Strong }); }
    pub const GetNextMostAchievedAchievementInfo = t.getImplFn("ISteamUserStats", "GetNextMostAchievedAchievementInfo", fn(i32, [*c]u8, t.uint32, [*c]f32, [*c]bool) callconv(.C) i32) orelse (struct {
        fn noImpl(iIteratorPrevious: i32, pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo:\n\t- iIteratorPrevious = {any}\n\t- pchName = {any}\n\t- unNameBufLen = {any}\n\t- pflPercent = {any}\n\t- pbAchieved = {any}\n\n", .{ iIteratorPrevious, pchName, unNameBufLen, pflPercent, pbAchieved });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNextMostAchievedAchievementInfo, .{ .name = "SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo", .linkage = .Strong }); }
    pub const GetAchievementAchievedPercent = t.getImplFn("ISteamUserStats", "GetAchievementAchievedPercent", fn([*c]const u8, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pflPercent: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementAchievedPercent:\n\t- pchName = {any}\n\t- pflPercent = {any}\n\n", .{ pchName, pflPercent });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementAchievedPercent, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementAchievedPercent", .linkage = .Strong }); }
    pub const RequestGlobalStats = t.getImplFn("ISteamUserStats", "RequestGlobalStats", fn(i32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nHistoryDays: i32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestGlobalStats:\n\t- nHistoryDays = {any}\n\n", .{ nHistoryDays });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestGlobalStats, .{ .name = "SteamAPI_ISteamUserStats_RequestGlobalStats", .linkage = .Strong }); }
    pub const GetGlobalStatInt64 = t.getImplFn("ISteamUserStats", "GetGlobalStatInt64", fn([*c]const u8, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchStatName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatInt64:\n\t- pchStatName = {any}\n\t- pData = {any}\n\n", .{ pchStatName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlobalStatInt64, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatInt64", .linkage = .Strong }); }
    pub const GetGlobalStatDouble = t.getImplFn("ISteamUserStats", "GetGlobalStatDouble", fn([*c]const u8, [*c]f64) callconv(.C) bool) orelse (struct {
        fn noImpl(pchStatName: [*c]const u8, pData: [*c]f64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatDouble:\n\t- pchStatName = {any}\n\t- pData = {any}\n\n", .{ pchStatName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlobalStatDouble, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatDouble", .linkage = .Strong }); }
    pub const GetGlobalStatHistoryInt64 = t.getImplFn("ISteamUserStats", "GetGlobalStatHistoryInt64", fn([*c]const u8, [*c]i32, t.uint32) callconv(.C) i32) orelse (struct {
        fn noImpl(pchStatName: [*c]const u8, pData: [*c]i32, cubData: t.uint32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64:\n\t- pchStatName = {any}\n\t- pData = {any}\n\t- cubData = {any}\n\n", .{ pchStatName, pData, cubData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlobalStatHistoryInt64, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64", .linkage = .Strong }); }
    pub const GetGlobalStatHistoryDouble = t.getImplFn("ISteamUserStats", "GetGlobalStatHistoryDouble", fn([*c]const u8, [*c]f64, t.uint32) callconv(.C) i32) orelse (struct {
        fn noImpl(pchStatName: [*c]const u8, pData: [*c]f64, cubData: t.uint32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble:\n\t- pchStatName = {any}\n\t- pData = {any}\n\t- cubData = {any}\n\n", .{ pchStatName, pData, cubData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlobalStatHistoryDouble, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble", .linkage = .Strong }); }
    pub const GetAchievementProgressLimitsInt32 = t.getImplFn("ISteamUserStats", "GetAchievementProgressLimitsInt32", fn([*c]const u8, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pnMinProgress: [*c]i32, pnMaxProgress: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32:\n\t- pchName = {any}\n\t- pnMinProgress = {any}\n\t- pnMaxProgress = {any}\n\n", .{ pchName, pnMinProgress, pnMaxProgress });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementProgressLimitsInt32, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32", .linkage = .Strong }); }
    pub const GetAchievementProgressLimitsFloat = t.getImplFn("ISteamUserStats", "GetAchievementProgressLimitsFloat", fn([*c]const u8, [*c]f32, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8, pfMinProgress: [*c]f32, pfMaxProgress: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat:\n\t- pchName = {any}\n\t- pfMinProgress = {any}\n\t- pfMaxProgress = {any}\n\n", .{ pchName, pfMinProgress, pfMaxProgress });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAchievementProgressLimitsFloat, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat", .linkage = .Strong }); }
};
comptime { _ = ISteamUserStats; }
const SteamUserStats = struct {
    pub const v012 = t.getImplFn("SteamUserStats", "v012", fn() callconv(.C) [*c]t.ISteamUserStats) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUserStats {
            p("NOT IMPLEMENTED SteamAPI_SteamUserStats_v012\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v012, .{ .name = "SteamAPI_SteamUserStats_v012", .linkage = .Strong }); }
};
comptime { _ = SteamUserStats; }
pub const ISteamApps = extern struct {
    _: u8 = 1,
    pub const version = "STEAMAPPS_INTERFACE_VERSION008";
    pub const BIsSubscribed = t.getImplFn("ISteamApps", "BIsSubscribed", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribed\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsSubscribed, .{ .name = "SteamAPI_ISteamApps_BIsSubscribed", .linkage = .Strong }); }
    pub const BIsLowViolence = t.getImplFn("ISteamApps", "BIsLowViolence", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsLowViolence\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsLowViolence, .{ .name = "SteamAPI_ISteamApps_BIsLowViolence", .linkage = .Strong }); }
    pub const BIsCybercafe = t.getImplFn("ISteamApps", "BIsCybercafe", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsCybercafe\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsCybercafe, .{ .name = "SteamAPI_ISteamApps_BIsCybercafe", .linkage = .Strong }); }
    pub const BIsVACBanned = t.getImplFn("ISteamApps", "BIsVACBanned", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsVACBanned\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsVACBanned, .{ .name = "SteamAPI_ISteamApps_BIsVACBanned", .linkage = .Strong }); }
    pub const GetCurrentGameLanguage = t.getImplFn("ISteamApps", "GetCurrentGameLanguage", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetCurrentGameLanguage\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCurrentGameLanguage, .{ .name = "SteamAPI_ISteamApps_GetCurrentGameLanguage", .linkage = .Strong }); }
    pub const GetAvailableGameLanguages = t.getImplFn("ISteamApps", "GetAvailableGameLanguages", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAvailableGameLanguages\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAvailableGameLanguages, .{ .name = "SteamAPI_ISteamApps_GetAvailableGameLanguages", .linkage = .Strong }); }
    pub const BIsSubscribedApp = t.getImplFn("ISteamApps", "BIsSubscribedApp", fn(t.AppId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(appID: t.AppId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedApp:\n\t- appID = {any}\n\n", .{ appID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsSubscribedApp, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedApp", .linkage = .Strong }); }
    pub const BIsDlcInstalled = t.getImplFn("ISteamApps", "BIsDlcInstalled", fn(t.AppId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(appID: t.AppId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsDlcInstalled:\n\t- appID = {any}\n\n", .{ appID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsDlcInstalled, .{ .name = "SteamAPI_ISteamApps_BIsDlcInstalled", .linkage = .Strong }); }
    pub const GetEarliestPurchaseUnixTime = t.getImplFn("ISteamApps", "GetEarliestPurchaseUnixTime", fn(t.AppId_t) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetEarliestPurchaseUnixTime, .{ .name = "SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime", .linkage = .Strong }); }
    pub const BIsSubscribedFromFreeWeekend = t.getImplFn("ISteamApps", "BIsSubscribedFromFreeWeekend", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsSubscribedFromFreeWeekend, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend", .linkage = .Strong }); }
    pub const GetDLCCount = t.getImplFn("ISteamApps", "GetDLCCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetDLCCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDLCCount, .{ .name = "SteamAPI_ISteamApps_GetDLCCount", .linkage = .Strong }); }
    pub const BGetDLCDataByIndex = t.getImplFn("ISteamApps", "BGetDLCDataByIndex", fn(i32, [*c]t.AppId_t, [*c]bool, [*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(iDLC: i32, pAppID: [*c]t.AppId_t, pbAvailable: [*c]bool, pchName: [*c]u8, cchNameBufferSize: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BGetDLCDataByIndex:\n\t- iDLC = {any}\n\t- pAppID = {any}\n\t- pbAvailable = {any}\n\t- pchName = {any}\n\t- cchNameBufferSize = {any}\n\n", .{ iDLC, pAppID, pbAvailable, pchName, cchNameBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BGetDLCDataByIndex, .{ .name = "SteamAPI_ISteamApps_BGetDLCDataByIndex", .linkage = .Strong }); }
    pub const InstallDLC = t.getImplFn("ISteamApps", "InstallDLC", fn(t.AppId_t) callconv(.C) void) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_InstallDLC:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InstallDLC, .{ .name = "SteamAPI_ISteamApps_InstallDLC", .linkage = .Strong }); }
    pub const UninstallDLC = t.getImplFn("ISteamApps", "UninstallDLC", fn(t.AppId_t) callconv(.C) void) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_UninstallDLC:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UninstallDLC, .{ .name = "SteamAPI_ISteamApps_UninstallDLC", .linkage = .Strong }); }
    pub const RequestAppProofOfPurchaseKey = t.getImplFn("ISteamApps", "RequestAppProofOfPurchaseKey", fn(t.AppId_t) callconv(.C) void) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestAppProofOfPurchaseKey, .{ .name = "SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey", .linkage = .Strong }); }
    pub const GetCurrentBetaName = t.getImplFn("ISteamApps", "GetCurrentBetaName", fn([*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]u8, cchNameBufferSize: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetCurrentBetaName:\n\t- pchName = {any}\n\t- cchNameBufferSize = {any}\n\n", .{ pchName, cchNameBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCurrentBetaName, .{ .name = "SteamAPI_ISteamApps_GetCurrentBetaName", .linkage = .Strong }); }
    pub const MarkContentCorrupt = t.getImplFn("ISteamApps", "MarkContentCorrupt", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bMissingFilesOnly: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_MarkContentCorrupt:\n\t- bMissingFilesOnly = {any}\n\n", .{ bMissingFilesOnly });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MarkContentCorrupt, .{ .name = "SteamAPI_ISteamApps_MarkContentCorrupt", .linkage = .Strong }); }
    pub const GetInstalledDepots = t.getImplFn("ISteamApps", "GetInstalledDepots", fn(t.AppId_t, [*c]t.DepotId_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(appID: t.AppId_t, pvecDepots: [*c]t.DepotId_t, cMaxDepots: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetInstalledDepots:\n\t- appID = {any}\n\t- pvecDepots = {any}\n\t- cMaxDepots = {any}\n\n", .{ appID, pvecDepots, cMaxDepots });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetInstalledDepots, .{ .name = "SteamAPI_ISteamApps_GetInstalledDepots", .linkage = .Strong }); }
    pub const GetAppInstallDir = t.getImplFn("ISteamApps", "GetAppInstallDir", fn(t.AppId_t, [*c]u8, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(appID: t.AppId_t, pchFolder: [*c]u8, cchFolderBufferSize: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppInstallDir:\n\t- appID = {any}\n\t- pchFolder = {any}\n\t- cchFolderBufferSize = {any}\n\n", .{ appID, pchFolder, cchFolderBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppInstallDir, .{ .name = "SteamAPI_ISteamApps_GetAppInstallDir", .linkage = .Strong }); }
    pub const BIsAppInstalled = t.getImplFn("ISteamApps", "BIsAppInstalled", fn(t.AppId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(appID: t.AppId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsAppInstalled:\n\t- appID = {any}\n\n", .{ appID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsAppInstalled, .{ .name = "SteamAPI_ISteamApps_BIsAppInstalled", .linkage = .Strong }); }
    pub const GetAppOwner = t.getImplFn("ISteamApps", "GetAppOwner", fn() callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl() callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppOwner\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppOwner, .{ .name = "SteamAPI_ISteamApps_GetAppOwner", .linkage = .Strong }); }
    pub const GetLaunchQueryParam = t.getImplFn("ISteamApps", "GetLaunchQueryParam", fn([*c]const u8) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetLaunchQueryParam:\n\t- pchKey = {any}\n\n", .{ pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLaunchQueryParam, .{ .name = "SteamAPI_ISteamApps_GetLaunchQueryParam", .linkage = .Strong }); }
    pub const GetDlcDownloadProgress = t.getImplFn("ISteamApps", "GetDlcDownloadProgress", fn(t.AppId_t, [*c]t.uint64, [*c]t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetDlcDownloadProgress:\n\t- nAppID = {any}\n\t- punBytesDownloaded = {any}\n\t- punBytesTotal = {any}\n\n", .{ nAppID, punBytesDownloaded, punBytesTotal });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDlcDownloadProgress, .{ .name = "SteamAPI_ISteamApps_GetDlcDownloadProgress", .linkage = .Strong }); }
    pub const GetAppBuildId = t.getImplFn("ISteamApps", "GetAppBuildId", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppBuildId\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppBuildId, .{ .name = "SteamAPI_ISteamApps_GetAppBuildId", .linkage = .Strong }); }
    pub const RequestAllProofOfPurchaseKeys = t.getImplFn("ISteamApps", "RequestAllProofOfPurchaseKeys", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestAllProofOfPurchaseKeys, .{ .name = "SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys", .linkage = .Strong }); }
    pub const GetFileDetails = t.getImplFn("ISteamApps", "GetFileDetails", fn([*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pszFileName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetFileDetails:\n\t- pszFileName = {any}\n\n", .{ pszFileName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFileDetails, .{ .name = "SteamAPI_ISteamApps_GetFileDetails", .linkage = .Strong }); }
    pub const GetLaunchCommandLine = t.getImplFn("ISteamApps", "GetLaunchCommandLine", fn([*c]u8, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(pszCommandLine: [*c]u8, cubCommandLine: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetLaunchCommandLine:\n\t- pszCommandLine = {any}\n\t- cubCommandLine = {any}\n\n", .{ pszCommandLine, cubCommandLine });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLaunchCommandLine, .{ .name = "SteamAPI_ISteamApps_GetLaunchCommandLine", .linkage = .Strong }); }
    pub const BIsSubscribedFromFamilySharing = t.getImplFn("ISteamApps", "BIsSubscribedFromFamilySharing", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsSubscribedFromFamilySharing, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing", .linkage = .Strong }); }
    pub const BIsTimedTrial = t.getImplFn("ISteamApps", "BIsTimedTrial", fn([*c]t.uint32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(punSecondsAllowed: [*c]t.uint32, punSecondsPlayed: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsTimedTrial:\n\t- punSecondsAllowed = {any}\n\t- punSecondsPlayed = {any}\n\n", .{ punSecondsAllowed, punSecondsPlayed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsTimedTrial, .{ .name = "SteamAPI_ISteamApps_BIsTimedTrial", .linkage = .Strong }); }
};
comptime { _ = ISteamApps; }
const SteamApps = struct {
    pub const v008 = t.getImplFn("SteamApps", "v008", fn() callconv(.C) [*c]t.ISteamApps) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamApps {
            p("NOT IMPLEMENTED SteamAPI_SteamApps_v008\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v008, .{ .name = "SteamAPI_SteamApps_v008", .linkage = .Strong }); }
};
comptime { _ = SteamApps; }
pub const ISteamNetworking = extern struct {
    _: u8 = 1,
    pub const version = "SteamNetworking006";
    pub const SendP2PPacket = t.getImplFn("ISteamNetworking", "SendP2PPacket", fn(t.CSteamID, ?*const anyopaque, t.uint32, t.EP2PSend, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDRemote: t.CSteamID, pubData: ?*const anyopaque, cubData: t.uint32, eP2PSendType: t.EP2PSend, nChannel: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_SendP2PPacket:\n\t- steamIDRemote = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- eP2PSendType = {any}\n\t- nChannel = {any}\n\n", .{ steamIDRemote, pubData, cubData, eP2PSendType, nChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendP2PPacket, .{ .name = "SteamAPI_ISteamNetworking_SendP2PPacket", .linkage = .Strong }); }
    pub const IsP2PPacketAvailable = t.getImplFn("ISteamNetworking", "IsP2PPacketAvailable", fn([*c]t.uint32, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pcubMsgSize: [*c]t.uint32, nChannel: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsP2PPacketAvailable:\n\t- pcubMsgSize = {any}\n\t- nChannel = {any}\n\n", .{ pcubMsgSize, nChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsP2PPacketAvailable, .{ .name = "SteamAPI_ISteamNetworking_IsP2PPacketAvailable", .linkage = .Strong }); }
    pub const ReadP2PPacket = t.getImplFn("ISteamNetworking", "ReadP2PPacket", fn(?*anyopaque, t.uint32, [*c]t.uint32, [*c]t.CSteamID, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, psteamIDRemote: [*c]t.CSteamID, nChannel: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_ReadP2PPacket:\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\t- psteamIDRemote = {any}\n\t- nChannel = {any}\n\n", .{ pubDest, cubDest, pcubMsgSize, psteamIDRemote, nChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReadP2PPacket, .{ .name = "SteamAPI_ISteamNetworking_ReadP2PPacket", .linkage = .Strong }); }
    pub const AcceptP2PSessionWithUser = t.getImplFn("ISteamNetworking", "AcceptP2PSessionWithUser", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDRemote: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser:\n\t- steamIDRemote = {any}\n\n", .{ steamIDRemote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AcceptP2PSessionWithUser, .{ .name = "SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser", .linkage = .Strong }); }
    pub const CloseP2PSessionWithUser = t.getImplFn("ISteamNetworking", "CloseP2PSessionWithUser", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDRemote: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CloseP2PSessionWithUser:\n\t- steamIDRemote = {any}\n\n", .{ steamIDRemote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseP2PSessionWithUser, .{ .name = "SteamAPI_ISteamNetworking_CloseP2PSessionWithUser", .linkage = .Strong }); }
    pub const CloseP2PChannelWithUser = t.getImplFn("ISteamNetworking", "CloseP2PChannelWithUser", fn(t.CSteamID, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDRemote: t.CSteamID, nChannel: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CloseP2PChannelWithUser:\n\t- steamIDRemote = {any}\n\t- nChannel = {any}\n\n", .{ steamIDRemote, nChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseP2PChannelWithUser, .{ .name = "SteamAPI_ISteamNetworking_CloseP2PChannelWithUser", .linkage = .Strong }); }
    pub const GetP2PSessionState = t.getImplFn("ISteamNetworking", "GetP2PSessionState", fn(t.CSteamID, [*c]t.P2PSessionState_t) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDRemote: t.CSteamID, pConnectionState: [*c]t.P2PSessionState_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetP2PSessionState:\n\t- steamIDRemote = {any}\n\t- pConnectionState = {any}\n\n", .{ steamIDRemote, pConnectionState });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetP2PSessionState, .{ .name = "SteamAPI_ISteamNetworking_GetP2PSessionState", .linkage = .Strong }); }
    pub const AllowP2PPacketRelay = t.getImplFn("ISteamNetworking", "AllowP2PPacketRelay", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bAllow: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_AllowP2PPacketRelay:\n\t- bAllow = {any}\n\n", .{ bAllow });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AllowP2PPacketRelay, .{ .name = "SteamAPI_ISteamNetworking_AllowP2PPacketRelay", .linkage = .Strong }); }
    pub const CreateListenSocket = t.getImplFn("ISteamNetworking", "CreateListenSocket", fn(i32, t.SteamIPAddress_t, t.uint16, bool) callconv(.C) t.SNetListenSocket_t) orelse (struct {
        fn noImpl(nVirtualP2PPort: i32, nIP: t.SteamIPAddress_t, nPort: t.uint16, bAllowUseOfPacketRelay: bool) callconv(.C) t.SNetListenSocket_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateListenSocket:\n\t- nVirtualP2PPort = {any}\n\t- nIP = {any}\n\t- nPort = {any}\n\t- bAllowUseOfPacketRelay = {any}\n\n", .{ nVirtualP2PPort, nIP, nPort, bAllowUseOfPacketRelay });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateListenSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateListenSocket", .linkage = .Strong }); }
    pub const CreateP2PConnectionSocket = t.getImplFn("ISteamNetworking", "CreateP2PConnectionSocket", fn(t.CSteamID, i32, i32, bool) callconv(.C) t.SNetSocket_t) orelse (struct {
        fn noImpl(steamIDTarget: t.CSteamID, nVirtualPort: i32, nTimeoutSec: i32, bAllowUseOfPacketRelay: bool) callconv(.C) t.SNetSocket_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateP2PConnectionSocket:\n\t- steamIDTarget = {any}\n\t- nVirtualPort = {any}\n\t- nTimeoutSec = {any}\n\t- bAllowUseOfPacketRelay = {any}\n\n", .{ steamIDTarget, nVirtualPort, nTimeoutSec, bAllowUseOfPacketRelay });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateP2PConnectionSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateP2PConnectionSocket", .linkage = .Strong }); }
    pub const CreateConnectionSocket = t.getImplFn("ISteamNetworking", "CreateConnectionSocket", fn(t.SteamIPAddress_t, t.uint16, i32) callconv(.C) t.SNetSocket_t) orelse (struct {
        fn noImpl(nIP: t.SteamIPAddress_t, nPort: t.uint16, nTimeoutSec: i32) callconv(.C) t.SNetSocket_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateConnectionSocket:\n\t- nIP = {any}\n\t- nPort = {any}\n\t- nTimeoutSec = {any}\n\n", .{ nIP, nPort, nTimeoutSec });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateConnectionSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateConnectionSocket", .linkage = .Strong }); }
    pub const DestroySocket = t.getImplFn("ISteamNetworking", "DestroySocket", fn(t.SNetSocket_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t, bNotifyRemoteEnd: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_DestroySocket:\n\t- hSocket = {any}\n\t- bNotifyRemoteEnd = {any}\n\n", .{ hSocket, bNotifyRemoteEnd });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroySocket, .{ .name = "SteamAPI_ISteamNetworking_DestroySocket", .linkage = .Strong }); }
    pub const DestroyListenSocket = t.getImplFn("ISteamNetworking", "DestroyListenSocket", fn(t.SNetListenSocket_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetListenSocket_t, bNotifyRemoteEnd: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_DestroyListenSocket:\n\t- hSocket = {any}\n\t- bNotifyRemoteEnd = {any}\n\n", .{ hSocket, bNotifyRemoteEnd });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroyListenSocket, .{ .name = "SteamAPI_ISteamNetworking_DestroyListenSocket", .linkage = .Strong }); }
    pub const SendDataOnSocket = t.getImplFn("ISteamNetworking", "SendDataOnSocket", fn(t.SNetSocket_t, ?*anyopaque, t.uint32, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t, pubData: ?*anyopaque, cubData: t.uint32, bReliable: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_SendDataOnSocket:\n\t- hSocket = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- bReliable = {any}\n\n", .{ hSocket, pubData, cubData, bReliable });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendDataOnSocket, .{ .name = "SteamAPI_ISteamNetworking_SendDataOnSocket", .linkage = .Strong }); }
    pub const IsDataAvailableOnSocket = t.getImplFn("ISteamNetworking", "IsDataAvailableOnSocket", fn(t.SNetSocket_t, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t, pcubMsgSize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsDataAvailableOnSocket:\n\t- hSocket = {any}\n\t- pcubMsgSize = {any}\n\n", .{ hSocket, pcubMsgSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsDataAvailableOnSocket, .{ .name = "SteamAPI_ISteamNetworking_IsDataAvailableOnSocket", .linkage = .Strong }); }
    pub const RetrieveDataFromSocket = t.getImplFn("ISteamNetworking", "RetrieveDataFromSocket", fn(t.SNetSocket_t, ?*anyopaque, t.uint32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_RetrieveDataFromSocket:\n\t- hSocket = {any}\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\n", .{ hSocket, pubDest, cubDest, pcubMsgSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RetrieveDataFromSocket, .{ .name = "SteamAPI_ISteamNetworking_RetrieveDataFromSocket", .linkage = .Strong }); }
    pub const IsDataAvailable = t.getImplFn("ISteamNetworking", "IsDataAvailable", fn(t.SNetListenSocket_t, [*c]t.uint32, [*c]t.SNetSocket_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hListenSocket: t.SNetListenSocket_t, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsDataAvailable:\n\t- hListenSocket = {any}\n\t- pcubMsgSize = {any}\n\t- phSocket = {any}\n\n", .{ hListenSocket, pcubMsgSize, phSocket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsDataAvailable, .{ .name = "SteamAPI_ISteamNetworking_IsDataAvailable", .linkage = .Strong }); }
    pub const RetrieveData = t.getImplFn("ISteamNetworking", "RetrieveData", fn(t.SNetListenSocket_t, ?*anyopaque, t.uint32, [*c]t.uint32, [*c]t.SNetSocket_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hListenSocket: t.SNetListenSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_RetrieveData:\n\t- hListenSocket = {any}\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\t- phSocket = {any}\n\n", .{ hListenSocket, pubDest, cubDest, pcubMsgSize, phSocket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RetrieveData, .{ .name = "SteamAPI_ISteamNetworking_RetrieveData", .linkage = .Strong }); }
    pub const GetSocketInfo = t.getImplFn("ISteamNetworking", "GetSocketInfo", fn(t.SNetSocket_t, [*c]t.CSteamID, [*c]i32, [*c]t.SteamIPAddress_t, [*c]t.uint16) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t, pSteamIDRemote: [*c]t.CSteamID, peSocketStatus: [*c]i32, punIPRemote: [*c]t.SteamIPAddress_t, punPortRemote: [*c]t.uint16) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetSocketInfo:\n\t- hSocket = {any}\n\t- pSteamIDRemote = {any}\n\t- peSocketStatus = {any}\n\t- punIPRemote = {any}\n\t- punPortRemote = {any}\n\n", .{ hSocket, pSteamIDRemote, peSocketStatus, punIPRemote, punPortRemote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSocketInfo, .{ .name = "SteamAPI_ISteamNetworking_GetSocketInfo", .linkage = .Strong }); }
    pub const GetListenSocketInfo = t.getImplFn("ISteamNetworking", "GetListenSocketInfo", fn(t.SNetListenSocket_t, [*c]t.SteamIPAddress_t, [*c]t.uint16) callconv(.C) bool) orelse (struct {
        fn noImpl(hListenSocket: t.SNetListenSocket_t, pnIP: [*c]t.SteamIPAddress_t, pnPort: [*c]t.uint16) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetListenSocketInfo:\n\t- hListenSocket = {any}\n\t- pnIP = {any}\n\t- pnPort = {any}\n\n", .{ hListenSocket, pnIP, pnPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetListenSocketInfo, .{ .name = "SteamAPI_ISteamNetworking_GetListenSocketInfo", .linkage = .Strong }); }
    pub const GetSocketConnectionType = t.getImplFn("ISteamNetworking", "GetSocketConnectionType", fn(t.SNetSocket_t) callconv(.C) t.ESNetSocketConnectionType) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t) callconv(.C) t.ESNetSocketConnectionType {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetSocketConnectionType:\n\t- hSocket = {any}\n\n", .{ hSocket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSocketConnectionType, .{ .name = "SteamAPI_ISteamNetworking_GetSocketConnectionType", .linkage = .Strong }); }
    pub const GetMaxPacketSize = t.getImplFn("ISteamNetworking", "GetMaxPacketSize", fn(t.SNetSocket_t) callconv(.C) i32) orelse (struct {
        fn noImpl(hSocket: t.SNetSocket_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetMaxPacketSize:\n\t- hSocket = {any}\n\n", .{ hSocket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMaxPacketSize, .{ .name = "SteamAPI_ISteamNetworking_GetMaxPacketSize", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworking; }
const SteamNetworking = struct {
    pub const v006 = t.getImplFn("SteamNetworking", "v006", fn() callconv(.C) [*c]t.ISteamNetworking) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworking {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworking_v006\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v006, .{ .name = "SteamAPI_SteamNetworking_v006", .linkage = .Strong }); }
};
comptime { _ = SteamNetworking; }
const SteamGameServerNetworking = struct {
    pub const v006 = t.getImplFn("SteamGameServerNetworking", "v006", fn() callconv(.C) [*c]t.ISteamNetworking) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworking {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworking_v006\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v006, .{ .name = "SteamAPI_SteamGameServerNetworking_v006", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworking; }
pub const ISteamScreenshots = extern struct {
    _: u8 = 1,
    pub const version = "STEAMSCREENSHOTS_INTERFACE_VERSION003";
    pub const WriteScreenshot = t.getImplFn("ISteamScreenshots", "WriteScreenshot", fn(?*anyopaque, t.uint32, i32, i32) callconv(.C) t.ScreenshotHandle) orelse (struct {
        fn noImpl(pubRGB: ?*anyopaque, cubRGB: t.uint32, nWidth: i32, nHeight: i32) callconv(.C) t.ScreenshotHandle {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_WriteScreenshot:\n\t- pubRGB = {any}\n\t- cubRGB = {any}\n\t- nWidth = {any}\n\t- nHeight = {any}\n\n", .{ pubRGB, cubRGB, nWidth, nHeight });
            return undefined;
        }
    }).noImpl;
    comptime { @export(WriteScreenshot, .{ .name = "SteamAPI_ISteamScreenshots_WriteScreenshot", .linkage = .Strong }); }
    pub const AddScreenshotToLibrary = t.getImplFn("ISteamScreenshots", "AddScreenshotToLibrary", fn([*c]const u8, [*c]const u8, i32, i32) callconv(.C) t.ScreenshotHandle) orelse (struct {
        fn noImpl(pchFilename: [*c]const u8, pchThumbnailFilename: [*c]const u8, nWidth: i32, nHeight: i32) callconv(.C) t.ScreenshotHandle {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_AddScreenshotToLibrary:\n\t- pchFilename = {any}\n\t- pchThumbnailFilename = {any}\n\t- nWidth = {any}\n\t- nHeight = {any}\n\n", .{ pchFilename, pchThumbnailFilename, nWidth, nHeight });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddScreenshotToLibrary, .{ .name = "SteamAPI_ISteamScreenshots_AddScreenshotToLibrary", .linkage = .Strong }); }
    pub const TriggerScreenshot = t.getImplFn("ISteamScreenshots", "TriggerScreenshot", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TriggerScreenshot\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerScreenshot, .{ .name = "SteamAPI_ISteamScreenshots_TriggerScreenshot", .linkage = .Strong }); }
    pub const HookScreenshots = t.getImplFn("ISteamScreenshots", "HookScreenshots", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bHook: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_HookScreenshots:\n\t- bHook = {any}\n\n", .{ bHook });
            return undefined;
        }
    }).noImpl;
    comptime { @export(HookScreenshots, .{ .name = "SteamAPI_ISteamScreenshots_HookScreenshots", .linkage = .Strong }); }
    pub const SetLocation = t.getImplFn("ISteamScreenshots", "SetLocation", fn(t.ScreenshotHandle, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hScreenshot: t.ScreenshotHandle, pchLocation: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_SetLocation:\n\t- hScreenshot = {any}\n\t- pchLocation = {any}\n\n", .{ hScreenshot, pchLocation });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLocation, .{ .name = "SteamAPI_ISteamScreenshots_SetLocation", .linkage = .Strong }); }
    pub const TagUser = t.getImplFn("ISteamScreenshots", "TagUser", fn(t.ScreenshotHandle, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(hScreenshot: t.ScreenshotHandle, steamID: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TagUser:\n\t- hScreenshot = {any}\n\t- steamID = {any}\n\n", .{ hScreenshot, steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TagUser, .{ .name = "SteamAPI_ISteamScreenshots_TagUser", .linkage = .Strong }); }
    pub const TagPublishedFile = t.getImplFn("ISteamScreenshots", "TagPublishedFile", fn(t.ScreenshotHandle, t.PublishedFileId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hScreenshot: t.ScreenshotHandle, unPublishedFileID: t.PublishedFileId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TagPublishedFile:\n\t- hScreenshot = {any}\n\t- unPublishedFileID = {any}\n\n", .{ hScreenshot, unPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TagPublishedFile, .{ .name = "SteamAPI_ISteamScreenshots_TagPublishedFile", .linkage = .Strong }); }
    pub const IsScreenshotsHooked = t.getImplFn("ISteamScreenshots", "IsScreenshotsHooked", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_IsScreenshotsHooked\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsScreenshotsHooked, .{ .name = "SteamAPI_ISteamScreenshots_IsScreenshotsHooked", .linkage = .Strong }); }
    pub const AddVRScreenshotToLibrary = t.getImplFn("ISteamScreenshots", "AddVRScreenshotToLibrary", fn(t.EVRScreenshotType, [*c]const u8, [*c]const u8) callconv(.C) t.ScreenshotHandle) orelse (struct {
        fn noImpl(eType: t.EVRScreenshotType, pchFilename: [*c]const u8, pchVRFilename: [*c]const u8) callconv(.C) t.ScreenshotHandle {
            p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary:\n\t- eType = {any}\n\t- pchFilename = {any}\n\t- pchVRFilename = {any}\n\n", .{ eType, pchFilename, pchVRFilename });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddVRScreenshotToLibrary, .{ .name = "SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary", .linkage = .Strong }); }
};
comptime { _ = ISteamScreenshots; }
const SteamScreenshots = struct {
    pub const v003 = t.getImplFn("SteamScreenshots", "v003", fn() callconv(.C) [*c]t.ISteamScreenshots) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamScreenshots {
            p("NOT IMPLEMENTED SteamAPI_SteamScreenshots_v003\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v003, .{ .name = "SteamAPI_SteamScreenshots_v003", .linkage = .Strong }); }
};
comptime { _ = SteamScreenshots; }
pub const ISteamMusic = extern struct {
    _: u8 = 1,
    pub const version = "STEAMMUSIC_INTERFACE_VERSION001";
    pub const BIsEnabled = t.getImplFn("ISteamMusic", "BIsEnabled", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_BIsEnabled\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsEnabled, .{ .name = "SteamAPI_ISteamMusic_BIsEnabled", .linkage = .Strong }); }
    pub const BIsPlaying = t.getImplFn("ISteamMusic", "BIsPlaying", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_BIsPlaying\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsPlaying, .{ .name = "SteamAPI_ISteamMusic_BIsPlaying", .linkage = .Strong }); }
    pub const GetPlaybackStatus = t.getImplFn("ISteamMusic", "GetPlaybackStatus", fn() callconv(.C) t.AudioPlayback_Status) orelse (struct {
        fn noImpl() callconv(.C) t.AudioPlayback_Status {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_GetPlaybackStatus\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPlaybackStatus, .{ .name = "SteamAPI_ISteamMusic_GetPlaybackStatus", .linkage = .Strong }); }
    pub const Play = t.getImplFn("ISteamMusic", "Play", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_Play\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Play, .{ .name = "SteamAPI_ISteamMusic_Play", .linkage = .Strong }); }
    pub const Pause = t.getImplFn("ISteamMusic", "Pause", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_Pause\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Pause, .{ .name = "SteamAPI_ISteamMusic_Pause", .linkage = .Strong }); }
    pub const PlayPrevious = t.getImplFn("ISteamMusic", "PlayPrevious", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_PlayPrevious\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlayPrevious, .{ .name = "SteamAPI_ISteamMusic_PlayPrevious", .linkage = .Strong }); }
    pub const PlayNext = t.getImplFn("ISteamMusic", "PlayNext", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_PlayNext\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlayNext, .{ .name = "SteamAPI_ISteamMusic_PlayNext", .linkage = .Strong }); }
    pub const SetVolume = t.getImplFn("ISteamMusic", "SetVolume", fn(f32) callconv(.C) void) orelse (struct {
        fn noImpl(flVolume: f32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_SetVolume:\n\t- flVolume = {any}\n\n", .{ flVolume });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetVolume, .{ .name = "SteamAPI_ISteamMusic_SetVolume", .linkage = .Strong }); }
    pub const GetVolume = t.getImplFn("ISteamMusic", "GetVolume", fn() callconv(.C) f32) orelse (struct {
        fn noImpl() callconv(.C) f32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusic_GetVolume\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetVolume, .{ .name = "SteamAPI_ISteamMusic_GetVolume", .linkage = .Strong }); }
};
comptime { _ = ISteamMusic; }
const SteamMusic = struct {
    pub const v001 = t.getImplFn("SteamMusic", "v001", fn() callconv(.C) [*c]t.ISteamMusic) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamMusic {
            p("NOT IMPLEMENTED SteamAPI_SteamMusic_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamMusic_v001", .linkage = .Strong }); }
};
comptime { _ = SteamMusic; }
pub const ISteamMusicRemote = extern struct {
    _: u8 = 1,
    pub const version = "STEAMMUSICREMOTE_INTERFACE_VERSION001";
    pub const RegisterSteamMusicRemote = t.getImplFn("ISteamMusicRemote", "RegisterSteamMusicRemote", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote:\n\t- pchName = {any}\n\n", .{ pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RegisterSteamMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote", .linkage = .Strong }); }
    pub const DeregisterSteamMusicRemote = t.getImplFn("ISteamMusicRemote", "DeregisterSteamMusicRemote", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeregisterSteamMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote", .linkage = .Strong }); }
    pub const BIsCurrentMusicRemote = t.getImplFn("ISteamMusicRemote", "BIsCurrentMusicRemote", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsCurrentMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote", .linkage = .Strong }); }
    pub const BActivationSuccess = t.getImplFn("ISteamMusicRemote", "BActivationSuccess", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_BActivationSuccess:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BActivationSuccess, .{ .name = "SteamAPI_ISteamMusicRemote_BActivationSuccess", .linkage = .Strong }); }
    pub const SetDisplayName = t.getImplFn("ISteamMusicRemote", "SetDisplayName", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchDisplayName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetDisplayName:\n\t- pchDisplayName = {any}\n\n", .{ pchDisplayName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetDisplayName, .{ .name = "SteamAPI_ISteamMusicRemote_SetDisplayName", .linkage = .Strong }); }
    pub const SetPNGIcon_64x64 = t.getImplFn("ISteamMusicRemote", "SetPNGIcon_64x64", fn(?*anyopaque, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64:\n\t- pvBuffer = {any}\n\t- cbBufferLength = {any}\n\n", .{ pvBuffer, cbBufferLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPNGIcon_64x64, .{ .name = "SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64", .linkage = .Strong }); }
    pub const EnablePlayPrevious = t.getImplFn("ISteamMusicRemote", "EnablePlayPrevious", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlayPrevious:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnablePlayPrevious, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlayPrevious", .linkage = .Strong }); }
    pub const EnablePlayNext = t.getImplFn("ISteamMusicRemote", "EnablePlayNext", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlayNext:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnablePlayNext, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlayNext", .linkage = .Strong }); }
    pub const EnableShuffled = t.getImplFn("ISteamMusicRemote", "EnableShuffled", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableShuffled:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnableShuffled, .{ .name = "SteamAPI_ISteamMusicRemote_EnableShuffled", .linkage = .Strong }); }
    pub const EnableLooped = t.getImplFn("ISteamMusicRemote", "EnableLooped", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableLooped:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnableLooped, .{ .name = "SteamAPI_ISteamMusicRemote_EnableLooped", .linkage = .Strong }); }
    pub const EnableQueue = t.getImplFn("ISteamMusicRemote", "EnableQueue", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableQueue:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnableQueue, .{ .name = "SteamAPI_ISteamMusicRemote_EnableQueue", .linkage = .Strong }); }
    pub const EnablePlaylists = t.getImplFn("ISteamMusicRemote", "EnablePlaylists", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlaylists:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnablePlaylists, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlaylists", .linkage = .Strong }); }
    pub const UpdatePlaybackStatus = t.getImplFn("ISteamMusicRemote", "UpdatePlaybackStatus", fn(t.AudioPlayback_Status) callconv(.C) bool) orelse (struct {
        fn noImpl(nStatus: t.AudioPlayback_Status) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus:\n\t- nStatus = {any}\n\n", .{ nStatus });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdatePlaybackStatus, .{ .name = "SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus", .linkage = .Strong }); }
    pub const UpdateShuffled = t.getImplFn("ISteamMusicRemote", "UpdateShuffled", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateShuffled:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateShuffled, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateShuffled", .linkage = .Strong }); }
    pub const UpdateLooped = t.getImplFn("ISteamMusicRemote", "UpdateLooped", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateLooped:\n\t- bValue = {any}\n\n", .{ bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateLooped, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateLooped", .linkage = .Strong }); }
    pub const UpdateVolume = t.getImplFn("ISteamMusicRemote", "UpdateVolume", fn(f32) callconv(.C) bool) orelse (struct {
        fn noImpl(flValue: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateVolume:\n\t- flValue = {any}\n\n", .{ flValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateVolume, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateVolume", .linkage = .Strong }); }
    pub const CurrentEntryWillChange = t.getImplFn("ISteamMusicRemote", "CurrentEntryWillChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryWillChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CurrentEntryWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryWillChange", .linkage = .Strong }); }
    pub const CurrentEntryIsAvailable = t.getImplFn("ISteamMusicRemote", "CurrentEntryIsAvailable", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bAvailable: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable:\n\t- bAvailable = {any}\n\n", .{ bAvailable });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CurrentEntryIsAvailable, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable", .linkage = .Strong }); }
    pub const UpdateCurrentEntryText = t.getImplFn("ISteamMusicRemote", "UpdateCurrentEntryText", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText:\n\t- pchText = {any}\n\n", .{ pchText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateCurrentEntryText, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText", .linkage = .Strong }); }
    pub const UpdateCurrentEntryElapsedSeconds = t.getImplFn("ISteamMusicRemote", "UpdateCurrentEntryElapsedSeconds", fn(i32) callconv(.C) bool) orelse (struct {
        fn noImpl(nValue: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds:\n\t- nValue = {any}\n\n", .{ nValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateCurrentEntryElapsedSeconds, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds", .linkage = .Strong }); }
    pub const UpdateCurrentEntryCoverArt = t.getImplFn("ISteamMusicRemote", "UpdateCurrentEntryCoverArt", fn(?*anyopaque, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt:\n\t- pvBuffer = {any}\n\t- cbBufferLength = {any}\n\n", .{ pvBuffer, cbBufferLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateCurrentEntryCoverArt, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt", .linkage = .Strong }); }
    pub const CurrentEntryDidChange = t.getImplFn("ISteamMusicRemote", "CurrentEntryDidChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryDidChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CurrentEntryDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryDidChange", .linkage = .Strong }); }
    pub const QueueWillChange = t.getImplFn("ISteamMusicRemote", "QueueWillChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_QueueWillChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(QueueWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_QueueWillChange", .linkage = .Strong }); }
    pub const ResetQueueEntries = t.getImplFn("ISteamMusicRemote", "ResetQueueEntries", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_ResetQueueEntries\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ResetQueueEntries, .{ .name = "SteamAPI_ISteamMusicRemote_ResetQueueEntries", .linkage = .Strong }); }
    pub const SetQueueEntry = t.getImplFn("ISteamMusicRemote", "SetQueueEntry", fn(i32, i32, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(nID: i32, nPosition: i32, pchEntryText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetQueueEntry:\n\t- nID = {any}\n\t- nPosition = {any}\n\t- pchEntryText = {any}\n\n", .{ nID, nPosition, pchEntryText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetQueueEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetQueueEntry", .linkage = .Strong }); }
    pub const SetCurrentQueueEntry = t.getImplFn("ISteamMusicRemote", "SetCurrentQueueEntry", fn(i32) callconv(.C) bool) orelse (struct {
        fn noImpl(nID: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry:\n\t- nID = {any}\n\n", .{ nID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCurrentQueueEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry", .linkage = .Strong }); }
    pub const QueueDidChange = t.getImplFn("ISteamMusicRemote", "QueueDidChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_QueueDidChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(QueueDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_QueueDidChange", .linkage = .Strong }); }
    pub const PlaylistWillChange = t.getImplFn("ISteamMusicRemote", "PlaylistWillChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_PlaylistWillChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlaylistWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_PlaylistWillChange", .linkage = .Strong }); }
    pub const ResetPlaylistEntries = t.getImplFn("ISteamMusicRemote", "ResetPlaylistEntries", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_ResetPlaylistEntries\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ResetPlaylistEntries, .{ .name = "SteamAPI_ISteamMusicRemote_ResetPlaylistEntries", .linkage = .Strong }); }
    pub const SetPlaylistEntry = t.getImplFn("ISteamMusicRemote", "SetPlaylistEntry", fn(i32, i32, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(nID: i32, nPosition: i32, pchEntryText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetPlaylistEntry:\n\t- nID = {any}\n\t- nPosition = {any}\n\t- pchEntryText = {any}\n\n", .{ nID, nPosition, pchEntryText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPlaylistEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetPlaylistEntry", .linkage = .Strong }); }
    pub const SetCurrentPlaylistEntry = t.getImplFn("ISteamMusicRemote", "SetCurrentPlaylistEntry", fn(i32) callconv(.C) bool) orelse (struct {
        fn noImpl(nID: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry:\n\t- nID = {any}\n\n", .{ nID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCurrentPlaylistEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry", .linkage = .Strong }); }
    pub const PlaylistDidChange = t.getImplFn("ISteamMusicRemote", "PlaylistDidChange", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_PlaylistDidChange\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PlaylistDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_PlaylistDidChange", .linkage = .Strong }); }
};
comptime { _ = ISteamMusicRemote; }
const SteamMusicRemote = struct {
    pub const v001 = t.getImplFn("SteamMusicRemote", "v001", fn() callconv(.C) [*c]t.ISteamMusicRemote) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamMusicRemote {
            p("NOT IMPLEMENTED SteamAPI_SteamMusicRemote_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamMusicRemote_v001", .linkage = .Strong }); }
};
comptime { _ = SteamMusicRemote; }
pub const ISteamHTTP = extern struct {
    _: u8 = 1,
    pub const version = "STEAMHTTP_INTERFACE_VERSION003";
    pub const CreateHTTPRequest = t.getImplFn("ISteamHTTP", "CreateHTTPRequest", fn(t.EHTTPMethod, [*c]const u8) callconv(.C) t.HTTPRequestHandle) orelse (struct {
        fn noImpl(eHTTPRequestMethod: t.EHTTPMethod, pchAbsoluteURL: [*c]const u8) callconv(.C) t.HTTPRequestHandle {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_CreateHTTPRequest:\n\t- eHTTPRequestMethod = {any}\n\t- pchAbsoluteURL = {any}\n\n", .{ eHTTPRequestMethod, pchAbsoluteURL });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_CreateHTTPRequest", .linkage = .Strong }); }
    pub const SetHTTPRequestContextValue = t.getImplFn("ISteamHTTP", "SetHTTPRequestContextValue", fn(t.HTTPRequestHandle, t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, ulContextValue: t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestContextValue:\n\t- hRequest = {any}\n\t- ulContextValue = {any}\n\n", .{ hRequest, ulContextValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestContextValue, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestContextValue", .linkage = .Strong }); }
    pub const SetHTTPRequestNetworkActivityTimeout = t.getImplFn("ISteamHTTP", "SetHTTPRequestNetworkActivityTimeout", fn(t.HTTPRequestHandle, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, unTimeoutSeconds: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout:\n\t- hRequest = {any}\n\t- unTimeoutSeconds = {any}\n\n", .{ hRequest, unTimeoutSeconds });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestNetworkActivityTimeout, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout", .linkage = .Strong }); }
    pub const SetHTTPRequestHeaderValue = t.getImplFn("ISteamHTTP", "SetHTTPRequestHeaderValue", fn(t.HTTPRequestHandle, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pchHeaderValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- pchHeaderValue = {any}\n\n", .{ hRequest, pchHeaderName, pchHeaderValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestHeaderValue, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue", .linkage = .Strong }); }
    pub const SetHTTPRequestGetOrPostParameter = t.getImplFn("ISteamHTTP", "SetHTTPRequestGetOrPostParameter", fn(t.HTTPRequestHandle, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchParamName: [*c]const u8, pchParamValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter:\n\t- hRequest = {any}\n\t- pchParamName = {any}\n\t- pchParamValue = {any}\n\n", .{ hRequest, pchParamName, pchParamValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestGetOrPostParameter, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter", .linkage = .Strong }); }
    pub const SendHTTPRequest = t.getImplFn("ISteamHTTP", "SendHTTPRequest", fn(t.HTTPRequestHandle, [*c]t.SteamAPICall_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SendHTTPRequest:\n\t- hRequest = {any}\n\t- pCallHandle = {any}\n\n", .{ hRequest, pCallHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_SendHTTPRequest", .linkage = .Strong }); }
    pub const SendHTTPRequestAndStreamResponse = t.getImplFn("ISteamHTTP", "SendHTTPRequestAndStreamResponse", fn(t.HTTPRequestHandle, [*c]t.SteamAPICall_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse:\n\t- hRequest = {any}\n\t- pCallHandle = {any}\n\n", .{ hRequest, pCallHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendHTTPRequestAndStreamResponse, .{ .name = "SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse", .linkage = .Strong }); }
    pub const DeferHTTPRequest = t.getImplFn("ISteamHTTP", "DeferHTTPRequest", fn(t.HTTPRequestHandle) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_DeferHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeferHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_DeferHTTPRequest", .linkage = .Strong }); }
    pub const PrioritizeHTTPRequest = t.getImplFn("ISteamHTTP", "PrioritizeHTTPRequest", fn(t.HTTPRequestHandle) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_PrioritizeHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PrioritizeHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_PrioritizeHTTPRequest", .linkage = .Strong }); }
    pub const GetHTTPResponseHeaderSize = t.getImplFn("ISteamHTTP", "GetHTTPResponseHeaderSize", fn(t.HTTPRequestHandle, [*c]const u8, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, unResponseHeaderSize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- unResponseHeaderSize = {any}\n\n", .{ hRequest, pchHeaderName, unResponseHeaderSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPResponseHeaderSize, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize", .linkage = .Strong }); }
    pub const GetHTTPResponseHeaderValue = t.getImplFn("ISteamHTTP", "GetHTTPResponseHeaderValue", fn(t.HTTPRequestHandle, [*c]const u8, [*c]t.uint8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pHeaderValueBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- pHeaderValueBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, pchHeaderName, pHeaderValueBuffer, unBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPResponseHeaderValue, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue", .linkage = .Strong }); }
    pub const GetHTTPResponseBodySize = t.getImplFn("ISteamHTTP", "GetHTTPResponseBodySize", fn(t.HTTPRequestHandle, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, unBodySize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseBodySize:\n\t- hRequest = {any}\n\t- unBodySize = {any}\n\n", .{ hRequest, unBodySize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPResponseBodySize, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseBodySize", .linkage = .Strong }); }
    pub const GetHTTPResponseBodyData = t.getImplFn("ISteamHTTP", "GetHTTPResponseBodyData", fn(t.HTTPRequestHandle, [*c]t.uint8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseBodyData:\n\t- hRequest = {any}\n\t- pBodyDataBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, pBodyDataBuffer, unBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPResponseBodyData, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseBodyData", .linkage = .Strong }); }
    pub const GetHTTPStreamingResponseBodyData = t.getImplFn("ISteamHTTP", "GetHTTPStreamingResponseBodyData", fn(t.HTTPRequestHandle, t.uint32, [*c]t.uint8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, cOffset: t.uint32, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData:\n\t- hRequest = {any}\n\t- cOffset = {any}\n\t- pBodyDataBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, cOffset, pBodyDataBuffer, unBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPStreamingResponseBodyData, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData", .linkage = .Strong }); }
    pub const ReleaseHTTPRequest = t.getImplFn("ISteamHTTP", "ReleaseHTTPRequest", fn(t.HTTPRequestHandle) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_ReleaseHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReleaseHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_ReleaseHTTPRequest", .linkage = .Strong }); }
    pub const GetHTTPDownloadProgressPct = t.getImplFn("ISteamHTTP", "GetHTTPDownloadProgressPct", fn(t.HTTPRequestHandle, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pflPercentOut: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct:\n\t- hRequest = {any}\n\t- pflPercentOut = {any}\n\n", .{ hRequest, pflPercentOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPDownloadProgressPct, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct", .linkage = .Strong }); }
    pub const SetHTTPRequestRawPostBody = t.getImplFn("ISteamHTTP", "SetHTTPRequestRawPostBody", fn(t.HTTPRequestHandle, [*c]const u8, [*c]t.uint8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchContentType: [*c]const u8, pubBody: [*c]t.uint8, unBodyLen: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody:\n\t- hRequest = {any}\n\t- pchContentType = {any}\n\t- pubBody = {any}\n\t- unBodyLen = {any}\n\n", .{ hRequest, pchContentType, pubBody, unBodyLen });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestRawPostBody, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody", .linkage = .Strong }); }
    pub const CreateCookieContainer = t.getImplFn("ISteamHTTP", "CreateCookieContainer", fn(bool) callconv(.C) t.HTTPCookieContainerHandle) orelse (struct {
        fn noImpl(bAllowResponsesToModify: bool) callconv(.C) t.HTTPCookieContainerHandle {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_CreateCookieContainer:\n\t- bAllowResponsesToModify = {any}\n\n", .{ bAllowResponsesToModify });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_CreateCookieContainer", .linkage = .Strong }); }
    pub const ReleaseCookieContainer = t.getImplFn("ISteamHTTP", "ReleaseCookieContainer", fn(t.HTTPCookieContainerHandle) callconv(.C) bool) orelse (struct {
        fn noImpl(hCookieContainer: t.HTTPCookieContainerHandle) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_ReleaseCookieContainer:\n\t- hCookieContainer = {any}\n\n", .{ hCookieContainer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReleaseCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_ReleaseCookieContainer", .linkage = .Strong }); }
    pub const SetCookie = t.getImplFn("ISteamHTTP", "SetCookie", fn(t.HTTPCookieContainerHandle, [*c]const u8, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hCookieContainer: t.HTTPCookieContainerHandle, pchHost: [*c]const u8, pchUrl: [*c]const u8, pchCookie: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetCookie:\n\t- hCookieContainer = {any}\n\t- pchHost = {any}\n\t- pchUrl = {any}\n\t- pchCookie = {any}\n\n", .{ hCookieContainer, pchHost, pchUrl, pchCookie });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCookie, .{ .name = "SteamAPI_ISteamHTTP_SetCookie", .linkage = .Strong }); }
    pub const SetHTTPRequestCookieContainer = t.getImplFn("ISteamHTTP", "SetHTTPRequestCookieContainer", fn(t.HTTPRequestHandle, t.HTTPCookieContainerHandle) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, hCookieContainer: t.HTTPCookieContainerHandle) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer:\n\t- hRequest = {any}\n\t- hCookieContainer = {any}\n\n", .{ hRequest, hCookieContainer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer", .linkage = .Strong }); }
    pub const SetHTTPRequestUserAgentInfo = t.getImplFn("ISteamHTTP", "SetHTTPRequestUserAgentInfo", fn(t.HTTPRequestHandle, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pchUserAgentInfo: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo:\n\t- hRequest = {any}\n\t- pchUserAgentInfo = {any}\n\n", .{ hRequest, pchUserAgentInfo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestUserAgentInfo, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo", .linkage = .Strong }); }
    pub const SetHTTPRequestRequiresVerifiedCertificate = t.getImplFn("ISteamHTTP", "SetHTTPRequestRequiresVerifiedCertificate", fn(t.HTTPRequestHandle, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, bRequireVerifiedCertificate: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate:\n\t- hRequest = {any}\n\t- bRequireVerifiedCertificate = {any}\n\n", .{ hRequest, bRequireVerifiedCertificate });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestRequiresVerifiedCertificate, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate", .linkage = .Strong }); }
    pub const SetHTTPRequestAbsoluteTimeoutMS = t.getImplFn("ISteamHTTP", "SetHTTPRequestAbsoluteTimeoutMS", fn(t.HTTPRequestHandle, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, unMilliseconds: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS:\n\t- hRequest = {any}\n\t- unMilliseconds = {any}\n\n", .{ hRequest, unMilliseconds });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHTTPRequestAbsoluteTimeoutMS, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS", .linkage = .Strong }); }
    pub const GetHTTPRequestWasTimedOut = t.getImplFn("ISteamHTTP", "GetHTTPRequestWasTimedOut", fn(t.HTTPRequestHandle, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hRequest: t.HTTPRequestHandle, pbWasTimedOut: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut:\n\t- hRequest = {any}\n\t- pbWasTimedOut = {any}\n\n", .{ hRequest, pbWasTimedOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHTTPRequestWasTimedOut, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut", .linkage = .Strong }); }
};
comptime { _ = ISteamHTTP; }
const SteamHTTP = struct {
    pub const v003 = t.getImplFn("SteamHTTP", "v003", fn() callconv(.C) [*c]t.ISteamHTTP) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamHTTP {
            p("NOT IMPLEMENTED SteamAPI_SteamHTTP_v003\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v003, .{ .name = "SteamAPI_SteamHTTP_v003", .linkage = .Strong }); }
};
comptime { _ = SteamHTTP; }
const SteamGameServerHTTP = struct {
    pub const v003 = t.getImplFn("SteamGameServerHTTP", "v003", fn() callconv(.C) [*c]t.ISteamHTTP) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamHTTP {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerHTTP_v003\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v003, .{ .name = "SteamAPI_SteamGameServerHTTP_v003", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerHTTP; }
pub const ISteamInput = extern struct {
    _: u8 = 1,
    pub const version = "SteamInput006";
    pub const Init = t.getImplFn("ISteamInput", "Init", fn(bool) callconv(.C) bool) orelse (struct {
        fn noImpl(bExplicitlyCallRunFrame: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_Init:\n\t- bExplicitlyCallRunFrame = {any}\n\n", .{ bExplicitlyCallRunFrame });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamInput_Init", .linkage = .Strong }); }
    pub const Shutdown = t.getImplFn("ISteamInput", "Shutdown", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_Shutdown\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamInput_Shutdown", .linkage = .Strong }); }
    pub const SetInputActionManifestFilePath = t.getImplFn("ISteamInput", "SetInputActionManifestFilePath", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pchInputActionManifestAbsolutePath: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_SetInputActionManifestFilePath:\n\t- pchInputActionManifestAbsolutePath = {any}\n\n", .{ pchInputActionManifestAbsolutePath });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetInputActionManifestFilePath, .{ .name = "SteamAPI_ISteamInput_SetInputActionManifestFilePath", .linkage = .Strong }); }
    pub const RunFrame = t.getImplFn("ISteamInput", "RunFrame", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bReservedValue: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_RunFrame:\n\t- bReservedValue = {any}\n\n", .{ bReservedValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RunFrame, .{ .name = "SteamAPI_ISteamInput_RunFrame", .linkage = .Strong }); }
    pub const BWaitForData = t.getImplFn("ISteamInput", "BWaitForData", fn(bool, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(bWaitForever: bool, unTimeout: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_BWaitForData:\n\t- bWaitForever = {any}\n\t- unTimeout = {any}\n\n", .{ bWaitForever, unTimeout });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BWaitForData, .{ .name = "SteamAPI_ISteamInput_BWaitForData", .linkage = .Strong }); }
    pub const BNewDataAvailable = t.getImplFn("ISteamInput", "BNewDataAvailable", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_BNewDataAvailable\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BNewDataAvailable, .{ .name = "SteamAPI_ISteamInput_BNewDataAvailable", .linkage = .Strong }); }
    pub const GetConnectedControllers = t.getImplFn("ISteamInput", "GetConnectedControllers", fn([*c]t.InputHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(handlesOut: [*c]t.InputHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetConnectedControllers:\n\t- handlesOut = {any}\n\n", .{ handlesOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectedControllers, .{ .name = "SteamAPI_ISteamInput_GetConnectedControllers", .linkage = .Strong }); }
    pub const EnableDeviceCallbacks = t.getImplFn("ISteamInput", "EnableDeviceCallbacks", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_EnableDeviceCallbacks\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnableDeviceCallbacks, .{ .name = "SteamAPI_ISteamInput_EnableDeviceCallbacks", .linkage = .Strong }); }
    pub const EnableActionEventCallbacks = t.getImplFn("ISteamInput", "EnableActionEventCallbacks", fn(t.SteamInputActionEventCallbackPointer) callconv(.C) void) orelse (struct {
        fn noImpl(pCallback: t.SteamInputActionEventCallbackPointer) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_EnableActionEventCallbacks:\n\t- pCallback = {any}\n\n", .{ pCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EnableActionEventCallbacks, .{ .name = "SteamAPI_ISteamInput_EnableActionEventCallbacks", .linkage = .Strong }); }
    pub const GetActionSetHandle = t.getImplFn("ISteamInput", "GetActionSetHandle", fn([*c]const u8) callconv(.C) t.InputActionSetHandle_t) orelse (struct {
        fn noImpl(pszActionSetName: [*c]const u8) callconv(.C) t.InputActionSetHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActionSetHandle:\n\t- pszActionSetName = {any}\n\n", .{ pszActionSetName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActionSetHandle, .{ .name = "SteamAPI_ISteamInput_GetActionSetHandle", .linkage = .Strong }); }
    pub const ActivateActionSet = t.getImplFn("ISteamInput", "ActivateActionSet", fn(t.InputHandle_t, t.InputActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_ActivateActionSet:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\n", .{ inputHandle, actionSetHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateActionSet, .{ .name = "SteamAPI_ISteamInput_ActivateActionSet", .linkage = .Strong }); }
    pub const GetCurrentActionSet = t.getImplFn("ISteamInput", "GetCurrentActionSet", fn(t.InputHandle_t) callconv(.C) t.InputActionSetHandle_t) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) t.InputActionSetHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetCurrentActionSet:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCurrentActionSet, .{ .name = "SteamAPI_ISteamInput_GetCurrentActionSet", .linkage = .Strong }); }
    pub const ActivateActionSetLayer = t.getImplFn("ISteamInput", "ActivateActionSetLayer", fn(t.InputHandle_t, t.InputActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_ActivateActionSetLayer:\n\t- inputHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ inputHandle, actionSetLayerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateActionSetLayer, .{ .name = "SteamAPI_ISteamInput_ActivateActionSetLayer", .linkage = .Strong }); }
    pub const DeactivateActionSetLayer = t.getImplFn("ISteamInput", "DeactivateActionSetLayer", fn(t.InputHandle_t, t.InputActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_DeactivateActionSetLayer:\n\t- inputHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ inputHandle, actionSetLayerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeactivateActionSetLayer, .{ .name = "SteamAPI_ISteamInput_DeactivateActionSetLayer", .linkage = .Strong }); }
    pub const DeactivateAllActionSetLayers = t.getImplFn("ISteamInput", "DeactivateAllActionSetLayers", fn(t.InputHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_DeactivateAllActionSetLayers:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeactivateAllActionSetLayers, .{ .name = "SteamAPI_ISteamInput_DeactivateAllActionSetLayers", .linkage = .Strong }); }
    pub const GetActiveActionSetLayers = t.getImplFn("ISteamInput", "GetActiveActionSetLayers", fn(t.InputHandle_t, [*c]t.InputActionSetHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, handlesOut: [*c]t.InputActionSetHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActiveActionSetLayers:\n\t- inputHandle = {any}\n\t- handlesOut = {any}\n\n", .{ inputHandle, handlesOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActiveActionSetLayers, .{ .name = "SteamAPI_ISteamInput_GetActiveActionSetLayers", .linkage = .Strong }); }
    pub const GetDigitalActionHandle = t.getImplFn("ISteamInput", "GetDigitalActionHandle", fn([*c]const u8) callconv(.C) t.InputDigitalActionHandle_t) orelse (struct {
        fn noImpl(pszActionName: [*c]const u8) callconv(.C) t.InputDigitalActionHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionHandle, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionHandle", .linkage = .Strong }); }
    pub const GetDigitalActionData = t.getImplFn("ISteamInput", "GetDigitalActionData", fn(t.InputHandle_t, t.InputDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionData:\n\t- inputHandle = {any}\n\t- digitalActionHandle = {any}\n\n", .{ inputHandle, digitalActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionData, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionData", .linkage = .Strong }); }
    pub const GetDigitalActionOrigins = t.getImplFn("ISteamInput", "GetDigitalActionOrigins", fn(t.InputHandle_t, t.InputActionSetHandle_t, t.InputDigitalActionHandle_t, [*c]t.EInputActionOrigin) callconv(.C) i32) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, originsOut: [*c]t.EInputActionOrigin) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionOrigins:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\t- digitalActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ inputHandle, actionSetHandle, digitalActionHandle, originsOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionOrigins, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionOrigins", .linkage = .Strong }); }
    pub const GetStringForDigitalActionName = t.getImplFn("ISteamInput", "GetStringForDigitalActionName", fn(t.InputDigitalActionHandle_t) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eActionHandle: t.InputDigitalActionHandle_t) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForDigitalActionName:\n\t- eActionHandle = {any}\n\n", .{ eActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForDigitalActionName, .{ .name = "SteamAPI_ISteamInput_GetStringForDigitalActionName", .linkage = .Strong }); }
    pub const GetAnalogActionHandle = t.getImplFn("ISteamInput", "GetAnalogActionHandle", fn([*c]const u8) callconv(.C) t.InputAnalogActionHandle_t) orelse (struct {
        fn noImpl(pszActionName: [*c]const u8) callconv(.C) t.InputAnalogActionHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionHandle, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionHandle", .linkage = .Strong }); }
    pub const GetAnalogActionData = t.getImplFn("ISteamInput", "GetAnalogActionData", fn(t.InputHandle_t, t.InputAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, analogActionHandle: t.InputAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionData:\n\t- inputHandle = {any}\n\t- analogActionHandle = {any}\n\n", .{ inputHandle, analogActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionData, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionData", .linkage = .Strong }); }
    pub const GetAnalogActionOrigins = t.getImplFn("ISteamInput", "GetAnalogActionOrigins", fn(t.InputHandle_t, t.InputActionSetHandle_t, t.InputAnalogActionHandle_t, [*c]t.EInputActionOrigin) callconv(.C) i32) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, originsOut: [*c]t.EInputActionOrigin) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionOrigins:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\t- analogActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ inputHandle, actionSetHandle, analogActionHandle, originsOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionOrigins, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionOrigins", .linkage = .Strong }); }
    pub const GetGlyphPNGForActionOrigin = t.getImplFn("ISteamInput", "GetGlyphPNGForActionOrigin", fn(t.EInputActionOrigin, t.ESteamInputGlyphSize, t.uint32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EInputActionOrigin, eSize: t.ESteamInputGlyphSize, unFlags: t.uint32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin:\n\t- eOrigin = {any}\n\t- eSize = {any}\n\t- unFlags = {any}\n\n", .{ eOrigin, eSize, unFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphPNGForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin", .linkage = .Strong }); }
    pub const GetGlyphSVGForActionOrigin = t.getImplFn("ISteamInput", "GetGlyphSVGForActionOrigin", fn(t.EInputActionOrigin, t.uint32) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EInputActionOrigin, unFlags: t.uint32) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin:\n\t- eOrigin = {any}\n\t- unFlags = {any}\n\n", .{ eOrigin, unFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphSVGForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin", .linkage = .Strong }); }
    pub const GetGlyphForActionOrigin_Legacy = t.getImplFn("ISteamInput", "GetGlyphForActionOrigin_Legacy", fn(t.EInputActionOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EInputActionOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphForActionOrigin_Legacy, .{ .name = "SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy", .linkage = .Strong }); }
    pub const GetStringForActionOrigin = t.getImplFn("ISteamInput", "GetStringForActionOrigin", fn(t.EInputActionOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EInputActionOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetStringForActionOrigin", .linkage = .Strong }); }
    pub const GetStringForAnalogActionName = t.getImplFn("ISteamInput", "GetStringForAnalogActionName", fn(t.InputAnalogActionHandle_t) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eActionHandle: t.InputAnalogActionHandle_t) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForAnalogActionName:\n\t- eActionHandle = {any}\n\n", .{ eActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForAnalogActionName, .{ .name = "SteamAPI_ISteamInput_GetStringForAnalogActionName", .linkage = .Strong }); }
    pub const StopAnalogActionMomentum = t.getImplFn("ISteamInput", "StopAnalogActionMomentum", fn(t.InputHandle_t, t.InputAnalogActionHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, eAction: t.InputAnalogActionHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_StopAnalogActionMomentum:\n\t- inputHandle = {any}\n\t- eAction = {any}\n\n", .{ inputHandle, eAction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopAnalogActionMomentum, .{ .name = "SteamAPI_ISteamInput_StopAnalogActionMomentum", .linkage = .Strong }); }
    pub const GetMotionData = t.getImplFn("ISteamInput", "GetMotionData", fn(t.InputHandle_t) callconv(.C) t.InputMotionData_t) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) t.InputMotionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetMotionData:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMotionData, .{ .name = "SteamAPI_ISteamInput_GetMotionData", .linkage = .Strong }); }
    pub const TriggerVibration = t.getImplFn("ISteamInput", "TriggerVibration", fn(t.InputHandle_t, u16, u16) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerVibration:\n\t- inputHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\n", .{ inputHandle, usLeftSpeed, usRightSpeed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerVibration, .{ .name = "SteamAPI_ISteamInput_TriggerVibration", .linkage = .Strong }); }
    pub const TriggerVibrationExtended = t.getImplFn("ISteamInput", "TriggerVibrationExtended", fn(t.InputHandle_t, u16, u16, u16, u16) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerVibrationExtended:\n\t- inputHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\t- usLeftTriggerSpeed = {any}\n\t- usRightTriggerSpeed = {any}\n\n", .{ inputHandle, usLeftSpeed, usRightSpeed, usLeftTriggerSpeed, usRightTriggerSpeed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerVibrationExtended, .{ .name = "SteamAPI_ISteamInput_TriggerVibrationExtended", .linkage = .Strong }); }
    pub const TriggerSimpleHapticEvent = t.getImplFn("ISteamInput", "TriggerSimpleHapticEvent", fn(t.InputHandle_t, t.EControllerHapticLocation, t.uint8, u8, t.uint8, u8) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, eHapticLocation: t.EControllerHapticLocation, nIntensity: t.uint8, nGainDB: u8, nOtherIntensity: t.uint8, nOtherGainDB: u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerSimpleHapticEvent:\n\t- inputHandle = {any}\n\t- eHapticLocation = {any}\n\t- nIntensity = {any}\n\t- nGainDB = {any}\n\t- nOtherIntensity = {any}\n\t- nOtherGainDB = {any}\n\n", .{ inputHandle, eHapticLocation, nIntensity, nGainDB, nOtherIntensity, nOtherGainDB });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerSimpleHapticEvent, .{ .name = "SteamAPI_ISteamInput_TriggerSimpleHapticEvent", .linkage = .Strong }); }
    pub const SetLEDColor = t.getImplFn("ISteamInput", "SetLEDColor", fn(t.InputHandle_t, t.uint8, t.uint8, t.uint8, u32) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_SetLEDColor:\n\t- inputHandle = {any}\n\t- nColorR = {any}\n\t- nColorG = {any}\n\t- nColorB = {any}\n\t- nFlags = {any}\n\n", .{ inputHandle, nColorR, nColorG, nColorB, nFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLEDColor, .{ .name = "SteamAPI_ISteamInput_SetLEDColor", .linkage = .Strong }); }
    pub const Legacy_TriggerHapticPulse = t.getImplFn("ISteamInput", "Legacy_TriggerHapticPulse", fn(t.InputHandle_t, t.ESteamControllerPad, u16) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_Legacy_TriggerHapticPulse:\n\t- inputHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\n", .{ inputHandle, eTargetPad, usDurationMicroSec });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Legacy_TriggerHapticPulse, .{ .name = "SteamAPI_ISteamInput_Legacy_TriggerHapticPulse", .linkage = .Strong }); }
    pub const Legacy_TriggerRepeatedHapticPulse = t.getImplFn("ISteamInput", "Legacy_TriggerRepeatedHapticPulse", fn(t.InputHandle_t, t.ESteamControllerPad, u16, u16, u16, u32) callconv(.C) void) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse:\n\t- inputHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\t- usOffMicroSec = {any}\n\t- unRepeat = {any}\n\t- nFlags = {any}\n\n", .{ inputHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Legacy_TriggerRepeatedHapticPulse, .{ .name = "SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse", .linkage = .Strong }); }
    pub const ShowBindingPanel = t.getImplFn("ISteamInput", "ShowBindingPanel", fn(t.InputHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_ShowBindingPanel:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ShowBindingPanel, .{ .name = "SteamAPI_ISteamInput_ShowBindingPanel", .linkage = .Strong }); }
    pub const GetInputTypeForHandle = t.getImplFn("ISteamInput", "GetInputTypeForHandle", fn(t.InputHandle_t) callconv(.C) t.ESteamInputType) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) t.ESteamInputType {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetInputTypeForHandle:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetInputTypeForHandle, .{ .name = "SteamAPI_ISteamInput_GetInputTypeForHandle", .linkage = .Strong }); }
    pub const GetControllerForGamepadIndex = t.getImplFn("ISteamInput", "GetControllerForGamepadIndex", fn(i32) callconv(.C) t.InputHandle_t) orelse (struct {
        fn noImpl(nIndex: i32) callconv(.C) t.InputHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetControllerForGamepadIndex:\n\t- nIndex = {any}\n\n", .{ nIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetControllerForGamepadIndex, .{ .name = "SteamAPI_ISteamInput_GetControllerForGamepadIndex", .linkage = .Strong }); }
    pub const GetGamepadIndexForController = t.getImplFn("ISteamInput", "GetGamepadIndexForController", fn(t.InputHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(ulinputHandle: t.InputHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGamepadIndexForController:\n\t- ulinputHandle = {any}\n\n", .{ ulinputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGamepadIndexForController, .{ .name = "SteamAPI_ISteamInput_GetGamepadIndexForController", .linkage = .Strong }); }
    pub const GetStringForXboxOrigin = t.getImplFn("ISteamInput", "GetStringForXboxOrigin", fn(t.EXboxOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetStringForXboxOrigin", .linkage = .Strong }); }
    pub const GetGlyphForXboxOrigin = t.getImplFn("ISteamInput", "GetGlyphForXboxOrigin", fn(t.EXboxOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphForXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphForXboxOrigin", .linkage = .Strong }); }
    pub const GetActionOriginFromXboxOrigin = t.getImplFn("ISteamInput", "GetActionOriginFromXboxOrigin", fn(t.InputHandle_t, t.EXboxOrigin) callconv(.C) t.EInputActionOrigin) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, eOrigin: t.EXboxOrigin) callconv(.C) t.EInputActionOrigin {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin:\n\t- inputHandle = {any}\n\t- eOrigin = {any}\n\n", .{ inputHandle, eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActionOriginFromXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin", .linkage = .Strong }); }
    pub const TranslateActionOrigin = t.getImplFn("ISteamInput", "TranslateActionOrigin", fn(t.ESteamInputType, t.EInputActionOrigin) callconv(.C) t.EInputActionOrigin) orelse (struct {
        fn noImpl(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EInputActionOrigin) callconv(.C) t.EInputActionOrigin {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_TranslateActionOrigin:\n\t- eDestinationInputType = {any}\n\t- eSourceOrigin = {any}\n\n", .{ eDestinationInputType, eSourceOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TranslateActionOrigin, .{ .name = "SteamAPI_ISteamInput_TranslateActionOrigin", .linkage = .Strong }); }
    pub const GetDeviceBindingRevision = t.getImplFn("ISteamInput", "GetDeviceBindingRevision", fn(t.InputHandle_t, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t, pMajor: [*c]i32, pMinor: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDeviceBindingRevision:\n\t- inputHandle = {any}\n\t- pMajor = {any}\n\t- pMinor = {any}\n\n", .{ inputHandle, pMajor, pMinor });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDeviceBindingRevision, .{ .name = "SteamAPI_ISteamInput_GetDeviceBindingRevision", .linkage = .Strong }); }
    pub const GetRemotePlaySessionID = t.getImplFn("ISteamInput", "GetRemotePlaySessionID", fn(t.InputHandle_t) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(inputHandle: t.InputHandle_t) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetRemotePlaySessionID:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetRemotePlaySessionID, .{ .name = "SteamAPI_ISteamInput_GetRemotePlaySessionID", .linkage = .Strong }); }
    pub const GetSessionInputConfigurationSettings = t.getImplFn("ISteamInput", "GetSessionInputConfigurationSettings", fn() callconv(.C) t.uint16) orelse (struct {
        fn noImpl() callconv(.C) t.uint16 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetSessionInputConfigurationSettings\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionInputConfigurationSettings, .{ .name = "SteamAPI_ISteamInput_GetSessionInputConfigurationSettings", .linkage = .Strong }); }
};
comptime { _ = ISteamInput; }
const SteamInput = struct {
    pub const v006 = t.getImplFn("SteamInput", "v006", fn() callconv(.C) [*c]t.ISteamInput) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamInput {
            p("NOT IMPLEMENTED SteamAPI_SteamInput_v006\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v006, .{ .name = "SteamAPI_SteamInput_v006", .linkage = .Strong }); }
};
comptime { _ = SteamInput; }
pub const ISteamController = extern struct {
    _: u8 = 1,
    pub const version = "SteamController008";
    pub const Init = t.getImplFn("ISteamController", "Init", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_Init\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamController_Init", .linkage = .Strong }); }
    pub const Shutdown = t.getImplFn("ISteamController", "Shutdown", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_Shutdown\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamController_Shutdown", .linkage = .Strong }); }
    pub const RunFrame = t.getImplFn("ISteamController", "RunFrame", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_RunFrame\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RunFrame, .{ .name = "SteamAPI_ISteamController_RunFrame", .linkage = .Strong }); }
    pub const GetConnectedControllers = t.getImplFn("ISteamController", "GetConnectedControllers", fn([*c]t.ControllerHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(handlesOut: [*c]t.ControllerHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetConnectedControllers:\n\t- handlesOut = {any}\n\n", .{ handlesOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectedControllers, .{ .name = "SteamAPI_ISteamController_GetConnectedControllers", .linkage = .Strong }); }
    pub const GetActionSetHandle = t.getImplFn("ISteamController", "GetActionSetHandle", fn([*c]const u8) callconv(.C) t.ControllerActionSetHandle_t) orelse (struct {
        fn noImpl(pszActionSetName: [*c]const u8) callconv(.C) t.ControllerActionSetHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActionSetHandle:\n\t- pszActionSetName = {any}\n\n", .{ pszActionSetName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActionSetHandle, .{ .name = "SteamAPI_ISteamController_GetActionSetHandle", .linkage = .Strong }); }
    pub const ActivateActionSet = t.getImplFn("ISteamController", "ActivateActionSet", fn(t.ControllerHandle_t, t.ControllerActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_ActivateActionSet:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\n", .{ controllerHandle, actionSetHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateActionSet, .{ .name = "SteamAPI_ISteamController_ActivateActionSet", .linkage = .Strong }); }
    pub const GetCurrentActionSet = t.getImplFn("ISteamController", "GetCurrentActionSet", fn(t.ControllerHandle_t) callconv(.C) t.ControllerActionSetHandle_t) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t) callconv(.C) t.ControllerActionSetHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetCurrentActionSet:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCurrentActionSet, .{ .name = "SteamAPI_ISteamController_GetCurrentActionSet", .linkage = .Strong }); }
    pub const ActivateActionSetLayer = t.getImplFn("ISteamController", "ActivateActionSetLayer", fn(t.ControllerHandle_t, t.ControllerActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_ActivateActionSetLayer:\n\t- controllerHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ controllerHandle, actionSetLayerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ActivateActionSetLayer, .{ .name = "SteamAPI_ISteamController_ActivateActionSetLayer", .linkage = .Strong }); }
    pub const DeactivateActionSetLayer = t.getImplFn("ISteamController", "DeactivateActionSetLayer", fn(t.ControllerHandle_t, t.ControllerActionSetHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_DeactivateActionSetLayer:\n\t- controllerHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ controllerHandle, actionSetLayerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeactivateActionSetLayer, .{ .name = "SteamAPI_ISteamController_DeactivateActionSetLayer", .linkage = .Strong }); }
    pub const DeactivateAllActionSetLayers = t.getImplFn("ISteamController", "DeactivateAllActionSetLayers", fn(t.ControllerHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_DeactivateAllActionSetLayers:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeactivateAllActionSetLayers, .{ .name = "SteamAPI_ISteamController_DeactivateAllActionSetLayers", .linkage = .Strong }); }
    pub const GetActiveActionSetLayers = t.getImplFn("ISteamController", "GetActiveActionSetLayers", fn(t.ControllerHandle_t, [*c]t.ControllerActionSetHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, handlesOut: [*c]t.ControllerActionSetHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActiveActionSetLayers:\n\t- controllerHandle = {any}\n\t- handlesOut = {any}\n\n", .{ controllerHandle, handlesOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActiveActionSetLayers, .{ .name = "SteamAPI_ISteamController_GetActiveActionSetLayers", .linkage = .Strong }); }
    pub const GetDigitalActionHandle = t.getImplFn("ISteamController", "GetDigitalActionHandle", fn([*c]const u8) callconv(.C) t.ControllerDigitalActionHandle_t) orelse (struct {
        fn noImpl(pszActionName: [*c]const u8) callconv(.C) t.ControllerDigitalActionHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionHandle, .{ .name = "SteamAPI_ISteamController_GetDigitalActionHandle", .linkage = .Strong }); }
    pub const GetDigitalActionData = t.getImplFn("ISteamController", "GetDigitalActionData", fn(t.ControllerHandle_t, t.ControllerDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionData:\n\t- controllerHandle = {any}\n\t- digitalActionHandle = {any}\n\n", .{ controllerHandle, digitalActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionData, .{ .name = "SteamAPI_ISteamController_GetDigitalActionData", .linkage = .Strong }); }
    pub const GetDigitalActionOrigins = t.getImplFn("ISteamController", "GetDigitalActionOrigins", fn(t.ControllerHandle_t, t.ControllerActionSetHandle_t, t.ControllerDigitalActionHandle_t, [*c]t.EControllerActionOrigin) callconv(.C) i32) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, originsOut: [*c]t.EControllerActionOrigin) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionOrigins:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\t- digitalActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ controllerHandle, actionSetHandle, digitalActionHandle, originsOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDigitalActionOrigins, .{ .name = "SteamAPI_ISteamController_GetDigitalActionOrigins", .linkage = .Strong }); }
    pub const GetAnalogActionHandle = t.getImplFn("ISteamController", "GetAnalogActionHandle", fn([*c]const u8) callconv(.C) t.ControllerAnalogActionHandle_t) orelse (struct {
        fn noImpl(pszActionName: [*c]const u8) callconv(.C) t.ControllerAnalogActionHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionHandle, .{ .name = "SteamAPI_ISteamController_GetAnalogActionHandle", .linkage = .Strong }); }
    pub const GetAnalogActionData = t.getImplFn("ISteamController", "GetAnalogActionData", fn(t.ControllerHandle_t, t.ControllerAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionData:\n\t- controllerHandle = {any}\n\t- analogActionHandle = {any}\n\n", .{ controllerHandle, analogActionHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionData, .{ .name = "SteamAPI_ISteamController_GetAnalogActionData", .linkage = .Strong }); }
    pub const GetAnalogActionOrigins = t.getImplFn("ISteamController", "GetAnalogActionOrigins", fn(t.ControllerHandle_t, t.ControllerActionSetHandle_t, t.ControllerAnalogActionHandle_t, [*c]t.EControllerActionOrigin) callconv(.C) i32) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, originsOut: [*c]t.EControllerActionOrigin) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionOrigins:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\t- analogActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ controllerHandle, actionSetHandle, analogActionHandle, originsOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAnalogActionOrigins, .{ .name = "SteamAPI_ISteamController_GetAnalogActionOrigins", .linkage = .Strong }); }
    pub const GetGlyphForActionOrigin = t.getImplFn("ISteamController", "GetGlyphForActionOrigin", fn(t.EControllerActionOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EControllerActionOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGlyphForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphForActionOrigin, .{ .name = "SteamAPI_ISteamController_GetGlyphForActionOrigin", .linkage = .Strong }); }
    pub const GetStringForActionOrigin = t.getImplFn("ISteamController", "GetStringForActionOrigin", fn(t.EControllerActionOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EControllerActionOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetStringForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForActionOrigin, .{ .name = "SteamAPI_ISteamController_GetStringForActionOrigin", .linkage = .Strong }); }
    pub const StopAnalogActionMomentum = t.getImplFn("ISteamController", "StopAnalogActionMomentum", fn(t.ControllerHandle_t, t.ControllerAnalogActionHandle_t) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, eAction: t.ControllerAnalogActionHandle_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_StopAnalogActionMomentum:\n\t- controllerHandle = {any}\n\t- eAction = {any}\n\n", .{ controllerHandle, eAction });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopAnalogActionMomentum, .{ .name = "SteamAPI_ISteamController_StopAnalogActionMomentum", .linkage = .Strong }); }
    pub const GetMotionData = t.getImplFn("ISteamController", "GetMotionData", fn(t.ControllerHandle_t) callconv(.C) t.InputMotionData_t) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t) callconv(.C) t.InputMotionData_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetMotionData:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetMotionData, .{ .name = "SteamAPI_ISteamController_GetMotionData", .linkage = .Strong }); }
    pub const TriggerHapticPulse = t.getImplFn("ISteamController", "TriggerHapticPulse", fn(t.ControllerHandle_t, t.ESteamControllerPad, u16) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerHapticPulse:\n\t- controllerHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\n", .{ controllerHandle, eTargetPad, usDurationMicroSec });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerHapticPulse, .{ .name = "SteamAPI_ISteamController_TriggerHapticPulse", .linkage = .Strong }); }
    pub const TriggerRepeatedHapticPulse = t.getImplFn("ISteamController", "TriggerRepeatedHapticPulse", fn(t.ControllerHandle_t, t.ESteamControllerPad, u16, u16, u16, u32) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerRepeatedHapticPulse:\n\t- controllerHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\t- usOffMicroSec = {any}\n\t- unRepeat = {any}\n\t- nFlags = {any}\n\n", .{ controllerHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerRepeatedHapticPulse, .{ .name = "SteamAPI_ISteamController_TriggerRepeatedHapticPulse", .linkage = .Strong }); }
    pub const TriggerVibration = t.getImplFn("ISteamController", "TriggerVibration", fn(t.ControllerHandle_t, u16, u16) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerVibration:\n\t- controllerHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\n", .{ controllerHandle, usLeftSpeed, usRightSpeed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerVibration, .{ .name = "SteamAPI_ISteamController_TriggerVibration", .linkage = .Strong }); }
    pub const SetLEDColor = t.getImplFn("ISteamController", "SetLEDColor", fn(t.ControllerHandle_t, t.uint8, t.uint8, t.uint8, u32) callconv(.C) void) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_SetLEDColor:\n\t- controllerHandle = {any}\n\t- nColorR = {any}\n\t- nColorG = {any}\n\t- nColorB = {any}\n\t- nFlags = {any}\n\n", .{ controllerHandle, nColorR, nColorG, nColorB, nFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLEDColor, .{ .name = "SteamAPI_ISteamController_SetLEDColor", .linkage = .Strong }); }
    pub const ShowBindingPanel = t.getImplFn("ISteamController", "ShowBindingPanel", fn(t.ControllerHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_ShowBindingPanel:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ShowBindingPanel, .{ .name = "SteamAPI_ISteamController_ShowBindingPanel", .linkage = .Strong }); }
    pub const GetInputTypeForHandle = t.getImplFn("ISteamController", "GetInputTypeForHandle", fn(t.ControllerHandle_t) callconv(.C) t.ESteamInputType) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t) callconv(.C) t.ESteamInputType {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetInputTypeForHandle:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetInputTypeForHandle, .{ .name = "SteamAPI_ISteamController_GetInputTypeForHandle", .linkage = .Strong }); }
    pub const GetControllerForGamepadIndex = t.getImplFn("ISteamController", "GetControllerForGamepadIndex", fn(i32) callconv(.C) t.ControllerHandle_t) orelse (struct {
        fn noImpl(nIndex: i32) callconv(.C) t.ControllerHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetControllerForGamepadIndex:\n\t- nIndex = {any}\n\n", .{ nIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetControllerForGamepadIndex, .{ .name = "SteamAPI_ISteamController_GetControllerForGamepadIndex", .linkage = .Strong }); }
    pub const GetGamepadIndexForController = t.getImplFn("ISteamController", "GetGamepadIndexForController", fn(t.ControllerHandle_t) callconv(.C) i32) orelse (struct {
        fn noImpl(ulControllerHandle: t.ControllerHandle_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGamepadIndexForController:\n\t- ulControllerHandle = {any}\n\n", .{ ulControllerHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGamepadIndexForController, .{ .name = "SteamAPI_ISteamController_GetGamepadIndexForController", .linkage = .Strong }); }
    pub const GetStringForXboxOrigin = t.getImplFn("ISteamController", "GetStringForXboxOrigin", fn(t.EXboxOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetStringForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStringForXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetStringForXboxOrigin", .linkage = .Strong }); }
    pub const GetGlyphForXboxOrigin = t.getImplFn("ISteamController", "GetGlyphForXboxOrigin", fn(t.EXboxOrigin) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGlyphForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGlyphForXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetGlyphForXboxOrigin", .linkage = .Strong }); }
    pub const GetActionOriginFromXboxOrigin = t.getImplFn("ISteamController", "GetActionOriginFromXboxOrigin", fn(t.ControllerHandle_t, t.EXboxOrigin) callconv(.C) t.EControllerActionOrigin) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, eOrigin: t.EXboxOrigin) callconv(.C) t.EControllerActionOrigin {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActionOriginFromXboxOrigin:\n\t- controllerHandle = {any}\n\t- eOrigin = {any}\n\n", .{ controllerHandle, eOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetActionOriginFromXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetActionOriginFromXboxOrigin", .linkage = .Strong }); }
    pub const TranslateActionOrigin = t.getImplFn("ISteamController", "TranslateActionOrigin", fn(t.ESteamInputType, t.EControllerActionOrigin) callconv(.C) t.EControllerActionOrigin) orelse (struct {
        fn noImpl(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EControllerActionOrigin) callconv(.C) t.EControllerActionOrigin {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_TranslateActionOrigin:\n\t- eDestinationInputType = {any}\n\t- eSourceOrigin = {any}\n\n", .{ eDestinationInputType, eSourceOrigin });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TranslateActionOrigin, .{ .name = "SteamAPI_ISteamController_TranslateActionOrigin", .linkage = .Strong }); }
    pub const GetControllerBindingRevision = t.getImplFn("ISteamController", "GetControllerBindingRevision", fn(t.ControllerHandle_t, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(controllerHandle: t.ControllerHandle_t, pMajor: [*c]i32, pMinor: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamController_GetControllerBindingRevision:\n\t- controllerHandle = {any}\n\t- pMajor = {any}\n\t- pMinor = {any}\n\n", .{ controllerHandle, pMajor, pMinor });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetControllerBindingRevision, .{ .name = "SteamAPI_ISteamController_GetControllerBindingRevision", .linkage = .Strong }); }
};
comptime { _ = ISteamController; }
const SteamController = struct {
    pub const v008 = t.getImplFn("SteamController", "v008", fn() callconv(.C) [*c]t.ISteamController) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamController {
            p("NOT IMPLEMENTED SteamAPI_SteamController_v008\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v008, .{ .name = "SteamAPI_SteamController_v008", .linkage = .Strong }); }
};
comptime { _ = SteamController; }
pub const ISteamUGC = extern struct {
    _: u8 = 1,
    pub const version = "STEAMUGC_INTERFACE_VERSION016";
    pub const CreateQueryUserUGCRequest = t.getImplFn("ISteamUGC", "CreateQueryUserUGCRequest", fn(t.AccountID_t, t.EUserUGCList, t.EUGCMatchingUGCType, t.EUserUGCListSortOrder, t.AppId_t, t.AppId_t, t.uint32) callconv(.C) t.UGCQueryHandle_t) orelse (struct {
        fn noImpl(unAccountID: t.AccountID_t, eListType: t.EUserUGCList, eMatchingUGCType: t.EUGCMatchingUGCType, eSortOrder: t.EUserUGCListSortOrder, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32) callconv(.C) t.UGCQueryHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryUserUGCRequest:\n\t- unAccountID = {any}\n\t- eListType = {any}\n\t- eMatchingUGCType = {any}\n\t- eSortOrder = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- unPage = {any}\n\n", .{ unAccountID, eListType, eMatchingUGCType, eSortOrder, nCreatorAppID, nConsumerAppID, unPage });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateQueryUserUGCRequest, .{ .name = "SteamAPI_ISteamUGC_CreateQueryUserUGCRequest", .linkage = .Strong }); }
    pub const CreateQueryAllUGCRequestPage = t.getImplFn("ISteamUGC", "CreateQueryAllUGCRequestPage", fn(t.EUGCQuery, t.EUGCMatchingUGCType, t.AppId_t, t.AppId_t, t.uint32) callconv(.C) t.UGCQueryHandle_t) orelse (struct {
        fn noImpl(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32) callconv(.C) t.UGCQueryHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage:\n\t- eQueryType = {any}\n\t- eMatchingeMatchingUGCTypeFileType = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- unPage = {any}\n\n", .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, unPage });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateQueryAllUGCRequestPage, .{ .name = "SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage", .linkage = .Strong }); }
    pub const CreateQueryAllUGCRequestCursor = t.getImplFn("ISteamUGC", "CreateQueryAllUGCRequestCursor", fn(t.EUGCQuery, t.EUGCMatchingUGCType, t.AppId_t, t.AppId_t, [*c]const u8) callconv(.C) t.UGCQueryHandle_t) orelse (struct {
        fn noImpl(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, pchCursor: [*c]const u8) callconv(.C) t.UGCQueryHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor:\n\t- eQueryType = {any}\n\t- eMatchingeMatchingUGCTypeFileType = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- pchCursor = {any}\n\n", .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, pchCursor });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateQueryAllUGCRequestCursor, .{ .name = "SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor", .linkage = .Strong }); }
    pub const CreateQueryUGCDetailsRequest = t.getImplFn("ISteamUGC", "CreateQueryUGCDetailsRequest", fn([*c]t.PublishedFileId_t, t.uint32) callconv(.C) t.UGCQueryHandle_t) orelse (struct {
        fn noImpl(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.UGCQueryHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateQueryUGCDetailsRequest, .{ .name = "SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest", .linkage = .Strong }); }
    pub const SendQueryUGCRequest = t.getImplFn("ISteamUGC", "SendQueryUGCRequest", fn(t.UGCQueryHandle_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SendQueryUGCRequest:\n\t- handle = {any}\n\n", .{ handle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendQueryUGCRequest, .{ .name = "SteamAPI_ISteamUGC_SendQueryUGCRequest", .linkage = .Strong }); }
    pub const GetQueryUGCResult = t.getImplFn("ISteamUGC", "GetQueryUGCResult", fn(t.UGCQueryHandle_t, t.uint32, [*c]t.SteamUGCDetails_t) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, pDetails: [*c]t.SteamUGCDetails_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCResult:\n\t- handle = {any}\n\t- index = {any}\n\t- pDetails = {any}\n\n", .{ handle, index, pDetails });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCResult, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCResult", .linkage = .Strong }); }
    pub const GetQueryUGCNumTags = t.getImplFn("ISteamUGC", "GetQueryUGCNumTags", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumTags:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCNumTags, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumTags", .linkage = .Strong }); }
    pub const GetQueryUGCTag = t.getImplFn("ISteamUGC", "GetQueryUGCTag", fn(t.UGCQueryHandle_t, t.uint32, t.uint32, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCTag:\n\t- handle = {any}\n\t- index = {any}\n\t- indexTag = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, indexTag, pchValue, cchValueSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCTag", .linkage = .Strong }); }
    pub const GetQueryUGCTagDisplayName = t.getImplFn("ISteamUGC", "GetQueryUGCTagDisplayName", fn(t.UGCQueryHandle_t, t.uint32, t.uint32, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName:\n\t- handle = {any}\n\t- index = {any}\n\t- indexTag = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, indexTag, pchValue, cchValueSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCTagDisplayName, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName", .linkage = .Strong }); }
    pub const GetQueryUGCPreviewURL = t.getImplFn("ISteamUGC", "GetQueryUGCPreviewURL", fn(t.UGCQueryHandle_t, t.uint32, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, pchURL: [*c]u8, cchURLSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCPreviewURL:\n\t- handle = {any}\n\t- index = {any}\n\t- pchURL = {any}\n\t- cchURLSize = {any}\n\n", .{ handle, index, pchURL, cchURLSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCPreviewURL, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCPreviewURL", .linkage = .Strong }); }
    pub const GetQueryUGCMetadata = t.getImplFn("ISteamUGC", "GetQueryUGCMetadata", fn(t.UGCQueryHandle_t, t.uint32, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, pchMetadata: [*c]u8, cchMetadatasize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCMetadata:\n\t- handle = {any}\n\t- index = {any}\n\t- pchMetadata = {any}\n\t- cchMetadatasize = {any}\n\n", .{ handle, index, pchMetadata, cchMetadatasize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCMetadata, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCMetadata", .linkage = .Strong }); }
    pub const GetQueryUGCChildren = t.getImplFn("ISteamUGC", "GetQueryUGCChildren", fn(t.UGCQueryHandle_t, t.uint32, [*c]t.PublishedFileId_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCChildren:\n\t- handle = {any}\n\t- index = {any}\n\t- pvecPublishedFileID = {any}\n\t- cMaxEntries = {any}\n\n", .{ handle, index, pvecPublishedFileID, cMaxEntries });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCChildren, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCChildren", .linkage = .Strong }); }
    pub const GetQueryUGCStatistic = t.getImplFn("ISteamUGC", "GetQueryUGCStatistic", fn(t.UGCQueryHandle_t, t.uint32, t.EItemStatistic, [*c]t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, eStatType: t.EItemStatistic, pStatValue: [*c]t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCStatistic:\n\t- handle = {any}\n\t- index = {any}\n\t- eStatType = {any}\n\t- pStatValue = {any}\n\n", .{ handle, index, eStatType, pStatValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCStatistic, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCStatistic", .linkage = .Strong }); }
    pub const GetQueryUGCNumAdditionalPreviews = t.getImplFn("ISteamUGC", "GetQueryUGCNumAdditionalPreviews", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCNumAdditionalPreviews, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews", .linkage = .Strong }); }
    pub const GetQueryUGCAdditionalPreview = t.getImplFn("ISteamUGC", "GetQueryUGCAdditionalPreview", fn(t.UGCQueryHandle_t, t.uint32, t.uint32, [*c]u8, t.uint32, [*c]u8, t.uint32, [*c]t.EItemPreviewType) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, previewIndex: t.uint32, pchURLOrVideoID: [*c]u8, cchURLSize: t.uint32, pchOriginalFileName: [*c]u8, cchOriginalFileNameSize: t.uint32, pPreviewType: [*c]t.EItemPreviewType) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview:\n\t- handle = {any}\n\t- index = {any}\n\t- previewIndex = {any}\n\t- pchURLOrVideoID = {any}\n\t- cchURLSize = {any}\n\t- pchOriginalFileName = {any}\n\t- cchOriginalFileNameSize = {any}\n\t- pPreviewType = {any}\n\n", .{ handle, index, previewIndex, pchURLOrVideoID, cchURLSize, pchOriginalFileName, cchOriginalFileNameSize, pPreviewType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCAdditionalPreview, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview", .linkage = .Strong }); }
    pub const GetQueryUGCNumKeyValueTags = t.getImplFn("ISteamUGC", "GetQueryUGCNumKeyValueTags", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCNumKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags", .linkage = .Strong }); }
    pub const GetQueryUGCKeyValueTag = t.getImplFn("ISteamUGC", "GetQueryUGCKeyValueTag", fn(t.UGCQueryHandle_t, t.uint32, t.uint32, [*c]u8, t.uint32, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, keyValueTagIndex: t.uint32, pchKey: [*c]u8, cchKeySize: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag:\n\t- handle = {any}\n\t- index = {any}\n\t- keyValueTagIndex = {any}\n\t- pchKey = {any}\n\t- cchKeySize = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, keyValueTagIndex, pchKey, cchKeySize, pchValue, cchValueSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryUGCKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag", .linkage = .Strong }); }
    pub const GetQueryFirstUGCKeyValueTag = t.getImplFn("ISteamUGC", "GetQueryFirstUGCKeyValueTag", fn(t.UGCQueryHandle_t, t.uint32, [*c]const u8, [*c]u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, index: t.uint32, pchKey: [*c]const u8, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag:\n\t- handle = {any}\n\t- index = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, pchKey, pchValue, cchValueSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryFirstUGCKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag", .linkage = .Strong }); }
    pub const ReleaseQueryUGCRequest = t.getImplFn("ISteamUGC", "ReleaseQueryUGCRequest", fn(t.UGCQueryHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_ReleaseQueryUGCRequest:\n\t- handle = {any}\n\n", .{ handle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReleaseQueryUGCRequest, .{ .name = "SteamAPI_ISteamUGC_ReleaseQueryUGCRequest", .linkage = .Strong }); }
    pub const AddRequiredTag = t.getImplFn("ISteamUGC", "AddRequiredTag", fn(t.UGCQueryHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredTag:\n\t- handle = {any}\n\t- pTagName = {any}\n\n", .{ handle, pTagName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequiredTag, .{ .name = "SteamAPI_ISteamUGC_AddRequiredTag", .linkage = .Strong }); }
    pub const AddRequiredTagGroup = t.getImplFn("ISteamUGC", "AddRequiredTagGroup", fn(t.UGCQueryHandle_t, [*c]const t.SteamParamStringArray_t) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pTagGroups: [*c]const t.SteamParamStringArray_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredTagGroup:\n\t- handle = {any}\n\t- pTagGroups = {any}\n\n", .{ handle, pTagGroups });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequiredTagGroup, .{ .name = "SteamAPI_ISteamUGC_AddRequiredTagGroup", .linkage = .Strong }); }
    pub const AddExcludedTag = t.getImplFn("ISteamUGC", "AddExcludedTag", fn(t.UGCQueryHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddExcludedTag:\n\t- handle = {any}\n\t- pTagName = {any}\n\n", .{ handle, pTagName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddExcludedTag, .{ .name = "SteamAPI_ISteamUGC_AddExcludedTag", .linkage = .Strong }); }
    pub const SetReturnOnlyIDs = t.getImplFn("ISteamUGC", "SetReturnOnlyIDs", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnOnlyIDs: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnOnlyIDs:\n\t- handle = {any}\n\t- bReturnOnlyIDs = {any}\n\n", .{ handle, bReturnOnlyIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnOnlyIDs, .{ .name = "SteamAPI_ISteamUGC_SetReturnOnlyIDs", .linkage = .Strong }); }
    pub const SetReturnKeyValueTags = t.getImplFn("ISteamUGC", "SetReturnKeyValueTags", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnKeyValueTags: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnKeyValueTags:\n\t- handle = {any}\n\t- bReturnKeyValueTags = {any}\n\n", .{ handle, bReturnKeyValueTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_SetReturnKeyValueTags", .linkage = .Strong }); }
    pub const SetReturnLongDescription = t.getImplFn("ISteamUGC", "SetReturnLongDescription", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnLongDescription: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnLongDescription:\n\t- handle = {any}\n\t- bReturnLongDescription = {any}\n\n", .{ handle, bReturnLongDescription });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnLongDescription, .{ .name = "SteamAPI_ISteamUGC_SetReturnLongDescription", .linkage = .Strong }); }
    pub const SetReturnMetadata = t.getImplFn("ISteamUGC", "SetReturnMetadata", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnMetadata: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnMetadata:\n\t- handle = {any}\n\t- bReturnMetadata = {any}\n\n", .{ handle, bReturnMetadata });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnMetadata, .{ .name = "SteamAPI_ISteamUGC_SetReturnMetadata", .linkage = .Strong }); }
    pub const SetReturnChildren = t.getImplFn("ISteamUGC", "SetReturnChildren", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnChildren: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnChildren:\n\t- handle = {any}\n\t- bReturnChildren = {any}\n\n", .{ handle, bReturnChildren });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnChildren, .{ .name = "SteamAPI_ISteamUGC_SetReturnChildren", .linkage = .Strong }); }
    pub const SetReturnAdditionalPreviews = t.getImplFn("ISteamUGC", "SetReturnAdditionalPreviews", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnAdditionalPreviews: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnAdditionalPreviews:\n\t- handle = {any}\n\t- bReturnAdditionalPreviews = {any}\n\n", .{ handle, bReturnAdditionalPreviews });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnAdditionalPreviews, .{ .name = "SteamAPI_ISteamUGC_SetReturnAdditionalPreviews", .linkage = .Strong }); }
    pub const SetReturnTotalOnly = t.getImplFn("ISteamUGC", "SetReturnTotalOnly", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bReturnTotalOnly: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnTotalOnly:\n\t- handle = {any}\n\t- bReturnTotalOnly = {any}\n\n", .{ handle, bReturnTotalOnly });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnTotalOnly, .{ .name = "SteamAPI_ISteamUGC_SetReturnTotalOnly", .linkage = .Strong }); }
    pub const SetReturnPlaytimeStats = t.getImplFn("ISteamUGC", "SetReturnPlaytimeStats", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, unDays: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnPlaytimeStats:\n\t- handle = {any}\n\t- unDays = {any}\n\n", .{ handle, unDays });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetReturnPlaytimeStats, .{ .name = "SteamAPI_ISteamUGC_SetReturnPlaytimeStats", .linkage = .Strong }); }
    pub const SetLanguage = t.getImplFn("ISteamUGC", "SetLanguage", fn(t.UGCQueryHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pchLanguage: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetLanguage:\n\t- handle = {any}\n\t- pchLanguage = {any}\n\n", .{ handle, pchLanguage });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLanguage, .{ .name = "SteamAPI_ISteamUGC_SetLanguage", .linkage = .Strong }); }
    pub const SetAllowCachedResponse = t.getImplFn("ISteamUGC", "SetAllowCachedResponse", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, unMaxAgeSeconds: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetAllowCachedResponse:\n\t- handle = {any}\n\t- unMaxAgeSeconds = {any}\n\n", .{ handle, unMaxAgeSeconds });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetAllowCachedResponse, .{ .name = "SteamAPI_ISteamUGC_SetAllowCachedResponse", .linkage = .Strong }); }
    pub const SetCloudFileNameFilter = t.getImplFn("ISteamUGC", "SetCloudFileNameFilter", fn(t.UGCQueryHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pMatchCloudFileName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetCloudFileNameFilter:\n\t- handle = {any}\n\t- pMatchCloudFileName = {any}\n\n", .{ handle, pMatchCloudFileName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCloudFileNameFilter, .{ .name = "SteamAPI_ISteamUGC_SetCloudFileNameFilter", .linkage = .Strong }); }
    pub const SetMatchAnyTag = t.getImplFn("ISteamUGC", "SetMatchAnyTag", fn(t.UGCQueryHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, bMatchAnyTag: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetMatchAnyTag:\n\t- handle = {any}\n\t- bMatchAnyTag = {any}\n\n", .{ handle, bMatchAnyTag });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetMatchAnyTag, .{ .name = "SteamAPI_ISteamUGC_SetMatchAnyTag", .linkage = .Strong }); }
    pub const SetSearchText = t.getImplFn("ISteamUGC", "SetSearchText", fn(t.UGCQueryHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pSearchText: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetSearchText:\n\t- handle = {any}\n\t- pSearchText = {any}\n\n", .{ handle, pSearchText });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSearchText, .{ .name = "SteamAPI_ISteamUGC_SetSearchText", .linkage = .Strong }); }
    pub const SetRankedByTrendDays = t.getImplFn("ISteamUGC", "SetRankedByTrendDays", fn(t.UGCQueryHandle_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, unDays: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetRankedByTrendDays:\n\t- handle = {any}\n\t- unDays = {any}\n\n", .{ handle, unDays });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetRankedByTrendDays, .{ .name = "SteamAPI_ISteamUGC_SetRankedByTrendDays", .linkage = .Strong }); }
    pub const SetTimeCreatedDateRange = t.getImplFn("ISteamUGC", "SetTimeCreatedDateRange", fn(t.UGCQueryHandle_t, t.RTime32, t.RTime32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetTimeCreatedDateRange:\n\t- handle = {any}\n\t- rtStart = {any}\n\t- rtEnd = {any}\n\n", .{ handle, rtStart, rtEnd });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetTimeCreatedDateRange, .{ .name = "SteamAPI_ISteamUGC_SetTimeCreatedDateRange", .linkage = .Strong }); }
    pub const SetTimeUpdatedDateRange = t.getImplFn("ISteamUGC", "SetTimeUpdatedDateRange", fn(t.UGCQueryHandle_t, t.RTime32, t.RTime32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetTimeUpdatedDateRange:\n\t- handle = {any}\n\t- rtStart = {any}\n\t- rtEnd = {any}\n\n", .{ handle, rtStart, rtEnd });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetTimeUpdatedDateRange, .{ .name = "SteamAPI_ISteamUGC_SetTimeUpdatedDateRange", .linkage = .Strong }); }
    pub const AddRequiredKeyValueTag = t.getImplFn("ISteamUGC", "AddRequiredKeyValueTag", fn(t.UGCQueryHandle_t, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCQueryHandle_t, pKey: [*c]const u8, pValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredKeyValueTag:\n\t- handle = {any}\n\t- pKey = {any}\n\t- pValue = {any}\n\n", .{ handle, pKey, pValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddRequiredKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_AddRequiredKeyValueTag", .linkage = .Strong }); }
    pub const RequestUGCDetails = t.getImplFn("ISteamUGC", "RequestUGCDetails", fn(t.PublishedFileId_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, unMaxAgeSeconds: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RequestUGCDetails:\n\t- nPublishedFileID = {any}\n\t- unMaxAgeSeconds = {any}\n\n", .{ nPublishedFileID, unMaxAgeSeconds });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestUGCDetails, .{ .name = "SteamAPI_ISteamUGC_RequestUGCDetails", .linkage = .Strong }); }
    pub const CreateItem = t.getImplFn("ISteamUGC", "CreateItem", fn(t.AppId_t, t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nConsumerAppId: t.AppId_t, eFileType: t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateItem:\n\t- nConsumerAppId = {any}\n\t- eFileType = {any}\n\n", .{ nConsumerAppId, eFileType });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateItem, .{ .name = "SteamAPI_ISteamUGC_CreateItem", .linkage = .Strong }); }
    pub const StartItemUpdate = t.getImplFn("ISteamUGC", "StartItemUpdate", fn(t.AppId_t, t.PublishedFileId_t) callconv(.C) t.UGCUpdateHandle_t) orelse (struct {
        fn noImpl(nConsumerAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.UGCUpdateHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StartItemUpdate:\n\t- nConsumerAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nConsumerAppId, nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartItemUpdate, .{ .name = "SteamAPI_ISteamUGC_StartItemUpdate", .linkage = .Strong }); }
    pub const SetItemTitle = t.getImplFn("ISteamUGC", "SetItemTitle", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchTitle: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemTitle:\n\t- handle = {any}\n\t- pchTitle = {any}\n\n", .{ handle, pchTitle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemTitle, .{ .name = "SteamAPI_ISteamUGC_SetItemTitle", .linkage = .Strong }); }
    pub const SetItemDescription = t.getImplFn("ISteamUGC", "SetItemDescription", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchDescription: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemDescription:\n\t- handle = {any}\n\t- pchDescription = {any}\n\n", .{ handle, pchDescription });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemDescription, .{ .name = "SteamAPI_ISteamUGC_SetItemDescription", .linkage = .Strong }); }
    pub const SetItemUpdateLanguage = t.getImplFn("ISteamUGC", "SetItemUpdateLanguage", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchLanguage: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemUpdateLanguage:\n\t- handle = {any}\n\t- pchLanguage = {any}\n\n", .{ handle, pchLanguage });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemUpdateLanguage, .{ .name = "SteamAPI_ISteamUGC_SetItemUpdateLanguage", .linkage = .Strong }); }
    pub const SetItemMetadata = t.getImplFn("ISteamUGC", "SetItemMetadata", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchMetaData: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemMetadata:\n\t- handle = {any}\n\t- pchMetaData = {any}\n\n", .{ handle, pchMetaData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemMetadata, .{ .name = "SteamAPI_ISteamUGC_SetItemMetadata", .linkage = .Strong }); }
    pub const SetItemVisibility = t.getImplFn("ISteamUGC", "SetItemVisibility", fn(t.UGCUpdateHandle_t, t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemVisibility:\n\t- handle = {any}\n\t- eVisibility = {any}\n\n", .{ handle, eVisibility });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemVisibility, .{ .name = "SteamAPI_ISteamUGC_SetItemVisibility", .linkage = .Strong }); }
    pub const SetItemTags = t.getImplFn("ISteamUGC", "SetItemTags", fn(t.UGCUpdateHandle_t, [*c]const t.SteamParamStringArray_t) callconv(.C) bool) orelse (struct {
        fn noImpl(updateHandle: t.UGCUpdateHandle_t, pTags: [*c]const t.SteamParamStringArray_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemTags:\n\t- updateHandle = {any}\n\t- pTags = {any}\n\n", .{ updateHandle, pTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemTags, .{ .name = "SteamAPI_ISteamUGC_SetItemTags", .linkage = .Strong }); }
    pub const SetItemContent = t.getImplFn("ISteamUGC", "SetItemContent", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pszContentFolder: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemContent:\n\t- handle = {any}\n\t- pszContentFolder = {any}\n\n", .{ handle, pszContentFolder });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemContent, .{ .name = "SteamAPI_ISteamUGC_SetItemContent", .linkage = .Strong }); }
    pub const SetItemPreview = t.getImplFn("ISteamUGC", "SetItemPreview", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemPreview:\n\t- handle = {any}\n\t- pszPreviewFile = {any}\n\n", .{ handle, pszPreviewFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetItemPreview, .{ .name = "SteamAPI_ISteamUGC_SetItemPreview", .linkage = .Strong }); }
    pub const SetAllowLegacyUpload = t.getImplFn("ISteamUGC", "SetAllowLegacyUpload", fn(t.UGCUpdateHandle_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, bAllowLegacyUpload: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetAllowLegacyUpload:\n\t- handle = {any}\n\t- bAllowLegacyUpload = {any}\n\n", .{ handle, bAllowLegacyUpload });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetAllowLegacyUpload, .{ .name = "SteamAPI_ISteamUGC_SetAllowLegacyUpload", .linkage = .Strong }); }
    pub const RemoveAllItemKeyValueTags = t.getImplFn("ISteamUGC", "RemoveAllItemKeyValueTags", fn(t.UGCUpdateHandle_t) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags:\n\t- handle = {any}\n\n", .{ handle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveAllItemKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags", .linkage = .Strong }); }
    pub const RemoveItemKeyValueTags = t.getImplFn("ISteamUGC", "RemoveItemKeyValueTags", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemKeyValueTags:\n\t- handle = {any}\n\t- pchKey = {any}\n\n", .{ handle, pchKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveItemKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_RemoveItemKeyValueTags", .linkage = .Strong }); }
    pub const AddItemKeyValueTag = t.getImplFn("ISteamUGC", "AddItemKeyValueTag", fn(t.UGCUpdateHandle_t, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemKeyValueTag:\n\t- handle = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ handle, pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddItemKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_AddItemKeyValueTag", .linkage = .Strong }); }
    pub const AddItemPreviewFile = t.getImplFn("ISteamUGC", "AddItemPreviewFile", fn(t.UGCUpdateHandle_t, [*c]const u8, t.EItemPreviewType) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, @"type": t.EItemPreviewType) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemPreviewFile:\n\t- handle = {any}\n\t- pszPreviewFile = {any}\n\t- type = {any}\n\n", .{ handle, pszPreviewFile, @"type" });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddItemPreviewFile, .{ .name = "SteamAPI_ISteamUGC_AddItemPreviewFile", .linkage = .Strong }); }
    pub const AddItemPreviewVideo = t.getImplFn("ISteamUGC", "AddItemPreviewVideo", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pszVideoID: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemPreviewVideo:\n\t- handle = {any}\n\t- pszVideoID = {any}\n\n", .{ handle, pszVideoID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddItemPreviewVideo, .{ .name = "SteamAPI_ISteamUGC_AddItemPreviewVideo", .linkage = .Strong }); }
    pub const UpdateItemPreviewFile = t.getImplFn("ISteamUGC", "UpdateItemPreviewFile", fn(t.UGCUpdateHandle_t, t.uint32, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, index: t.uint32, pszPreviewFile: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UpdateItemPreviewFile:\n\t- handle = {any}\n\t- index = {any}\n\t- pszPreviewFile = {any}\n\n", .{ handle, index, pszPreviewFile });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateItemPreviewFile, .{ .name = "SteamAPI_ISteamUGC_UpdateItemPreviewFile", .linkage = .Strong }); }
    pub const UpdateItemPreviewVideo = t.getImplFn("ISteamUGC", "UpdateItemPreviewVideo", fn(t.UGCUpdateHandle_t, t.uint32, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, index: t.uint32, pszVideoID: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UpdateItemPreviewVideo:\n\t- handle = {any}\n\t- index = {any}\n\t- pszVideoID = {any}\n\n", .{ handle, index, pszVideoID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateItemPreviewVideo, .{ .name = "SteamAPI_ISteamUGC_UpdateItemPreviewVideo", .linkage = .Strong }); }
    pub const RemoveItemPreview = t.getImplFn("ISteamUGC", "RemoveItemPreview", fn(t.UGCUpdateHandle_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, index: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemPreview:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveItemPreview, .{ .name = "SteamAPI_ISteamUGC_RemoveItemPreview", .linkage = .Strong }); }
    pub const SubmitItemUpdate = t.getImplFn("ISteamUGC", "SubmitItemUpdate", fn(t.UGCUpdateHandle_t, [*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, pchChangeNote: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SubmitItemUpdate:\n\t- handle = {any}\n\t- pchChangeNote = {any}\n\n", .{ handle, pchChangeNote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SubmitItemUpdate, .{ .name = "SteamAPI_ISteamUGC_SubmitItemUpdate", .linkage = .Strong }); }
    pub const GetItemUpdateProgress = t.getImplFn("ISteamUGC", "GetItemUpdateProgress", fn(t.UGCUpdateHandle_t, [*c]t.uint64, [*c]t.uint64) callconv(.C) t.EItemUpdateStatus) orelse (struct {
        fn noImpl(handle: t.UGCUpdateHandle_t, punBytesProcessed: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) t.EItemUpdateStatus {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemUpdateProgress:\n\t- handle = {any}\n\t- punBytesProcessed = {any}\n\t- punBytesTotal = {any}\n\n", .{ handle, punBytesProcessed, punBytesTotal });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemUpdateProgress, .{ .name = "SteamAPI_ISteamUGC_GetItemUpdateProgress", .linkage = .Strong }); }
    pub const SetUserItemVote = t.getImplFn("ISteamUGC", "SetUserItemVote", fn(t.PublishedFileId_t, bool) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, bVoteUp: bool) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetUserItemVote:\n\t- nPublishedFileID = {any}\n\t- bVoteUp = {any}\n\n", .{ nPublishedFileID, bVoteUp });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetUserItemVote, .{ .name = "SteamAPI_ISteamUGC_SetUserItemVote", .linkage = .Strong }); }
    pub const GetUserItemVote = t.getImplFn("ISteamUGC", "GetUserItemVote", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetUserItemVote:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserItemVote, .{ .name = "SteamAPI_ISteamUGC_GetUserItemVote", .linkage = .Strong }); }
    pub const AddItemToFavorites = t.getImplFn("ISteamUGC", "AddItemToFavorites", fn(t.AppId_t, t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemToFavorites:\n\t- nAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nAppId, nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddItemToFavorites, .{ .name = "SteamAPI_ISteamUGC_AddItemToFavorites", .linkage = .Strong }); }
    pub const RemoveItemFromFavorites = t.getImplFn("ISteamUGC", "RemoveItemFromFavorites", fn(t.AppId_t, t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemFromFavorites:\n\t- nAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nAppId, nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveItemFromFavorites, .{ .name = "SteamAPI_ISteamUGC_RemoveItemFromFavorites", .linkage = .Strong }); }
    pub const SubscribeItem = t.getImplFn("ISteamUGC", "SubscribeItem", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SubscribeItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SubscribeItem, .{ .name = "SteamAPI_ISteamUGC_SubscribeItem", .linkage = .Strong }); }
    pub const UnsubscribeItem = t.getImplFn("ISteamUGC", "UnsubscribeItem", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UnsubscribeItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UnsubscribeItem, .{ .name = "SteamAPI_ISteamUGC_UnsubscribeItem", .linkage = .Strong }); }
    pub const GetNumSubscribedItems = t.getImplFn("ISteamUGC", "GetNumSubscribedItems", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetNumSubscribedItems\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumSubscribedItems, .{ .name = "SteamAPI_ISteamUGC_GetNumSubscribedItems", .linkage = .Strong }); }
    pub const GetSubscribedItems = t.getImplFn("ISteamUGC", "GetSubscribedItems", fn([*c]t.PublishedFileId_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetSubscribedItems:\n\t- pvecPublishedFileID = {any}\n\t- cMaxEntries = {any}\n\n", .{ pvecPublishedFileID, cMaxEntries });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSubscribedItems, .{ .name = "SteamAPI_ISteamUGC_GetSubscribedItems", .linkage = .Strong }); }
    pub const GetItemState = t.getImplFn("ISteamUGC", "GetItemState", fn(t.PublishedFileId_t) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemState:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemState, .{ .name = "SteamAPI_ISteamUGC_GetItemState", .linkage = .Strong }); }
    pub const GetItemInstallInfo = t.getImplFn("ISteamUGC", "GetItemInstallInfo", fn(t.PublishedFileId_t, [*c]t.uint64, [*c]u8, t.uint32, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, punSizeOnDisk: [*c]t.uint64, pchFolder: [*c]u8, cchFolderSize: t.uint32, punTimeStamp: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemInstallInfo:\n\t- nPublishedFileID = {any}\n\t- punSizeOnDisk = {any}\n\t- pchFolder = {any}\n\t- cchFolderSize = {any}\n\t- punTimeStamp = {any}\n\n", .{ nPublishedFileID, punSizeOnDisk, pchFolder, cchFolderSize, punTimeStamp });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemInstallInfo, .{ .name = "SteamAPI_ISteamUGC_GetItemInstallInfo", .linkage = .Strong }); }
    pub const GetItemDownloadInfo = t.getImplFn("ISteamUGC", "GetItemDownloadInfo", fn(t.PublishedFileId_t, [*c]t.uint64, [*c]t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemDownloadInfo:\n\t- nPublishedFileID = {any}\n\t- punBytesDownloaded = {any}\n\t- punBytesTotal = {any}\n\n", .{ nPublishedFileID, punBytesDownloaded, punBytesTotal });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemDownloadInfo, .{ .name = "SteamAPI_ISteamUGC_GetItemDownloadInfo", .linkage = .Strong }); }
    pub const DownloadItem = t.getImplFn("ISteamUGC", "DownloadItem", fn(t.PublishedFileId_t, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, bHighPriority: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_DownloadItem:\n\t- nPublishedFileID = {any}\n\t- bHighPriority = {any}\n\n", .{ nPublishedFileID, bHighPriority });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DownloadItem, .{ .name = "SteamAPI_ISteamUGC_DownloadItem", .linkage = .Strong }); }
    pub const BInitWorkshopForGameServer = t.getImplFn("ISteamUGC", "BInitWorkshopForGameServer", fn(t.DepotId_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(unWorkshopDepotID: t.DepotId_t, pszFolder: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_BInitWorkshopForGameServer:\n\t- unWorkshopDepotID = {any}\n\t- pszFolder = {any}\n\n", .{ unWorkshopDepotID, pszFolder });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BInitWorkshopForGameServer, .{ .name = "SteamAPI_ISteamUGC_BInitWorkshopForGameServer", .linkage = .Strong }); }
    pub const SuspendDownloads = t.getImplFn("ISteamUGC", "SuspendDownloads", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bSuspend: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SuspendDownloads:\n\t- bSuspend = {any}\n\n", .{ bSuspend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SuspendDownloads, .{ .name = "SteamAPI_ISteamUGC_SuspendDownloads", .linkage = .Strong }); }
    pub const StartPlaytimeTracking = t.getImplFn("ISteamUGC", "StartPlaytimeTracking", fn([*c]t.PublishedFileId_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StartPlaytimeTracking:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartPlaytimeTracking, .{ .name = "SteamAPI_ISteamUGC_StartPlaytimeTracking", .linkage = .Strong }); }
    pub const StopPlaytimeTracking = t.getImplFn("ISteamUGC", "StopPlaytimeTracking", fn([*c]t.PublishedFileId_t, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StopPlaytimeTracking:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopPlaytimeTracking, .{ .name = "SteamAPI_ISteamUGC_StopPlaytimeTracking", .linkage = .Strong }); }
    pub const StopPlaytimeTrackingForAllItems = t.getImplFn("ISteamUGC", "StopPlaytimeTrackingForAllItems", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopPlaytimeTrackingForAllItems, .{ .name = "SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems", .linkage = .Strong }); }
    pub const AddDependency = t.getImplFn("ISteamUGC", "AddDependency", fn(t.PublishedFileId_t, t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddDependency:\n\t- nParentPublishedFileID = {any}\n\t- nChildPublishedFileID = {any}\n\n", .{ nParentPublishedFileID, nChildPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddDependency, .{ .name = "SteamAPI_ISteamUGC_AddDependency", .linkage = .Strong }); }
    pub const RemoveDependency = t.getImplFn("ISteamUGC", "RemoveDependency", fn(t.PublishedFileId_t, t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveDependency:\n\t- nParentPublishedFileID = {any}\n\t- nChildPublishedFileID = {any}\n\n", .{ nParentPublishedFileID, nChildPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveDependency, .{ .name = "SteamAPI_ISteamUGC_RemoveDependency", .linkage = .Strong }); }
    pub const AddAppDependency = t.getImplFn("ISteamUGC", "AddAppDependency", fn(t.PublishedFileId_t, t.AppId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddAppDependency:\n\t- nPublishedFileID = {any}\n\t- nAppID = {any}\n\n", .{ nPublishedFileID, nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddAppDependency, .{ .name = "SteamAPI_ISteamUGC_AddAppDependency", .linkage = .Strong }); }
    pub const RemoveAppDependency = t.getImplFn("ISteamUGC", "RemoveAppDependency", fn(t.PublishedFileId_t, t.AppId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveAppDependency:\n\t- nPublishedFileID = {any}\n\t- nAppID = {any}\n\n", .{ nPublishedFileID, nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveAppDependency, .{ .name = "SteamAPI_ISteamUGC_RemoveAppDependency", .linkage = .Strong }); }
    pub const GetAppDependencies = t.getImplFn("ISteamUGC", "GetAppDependencies", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetAppDependencies:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppDependencies, .{ .name = "SteamAPI_ISteamUGC_GetAppDependencies", .linkage = .Strong }); }
    pub const DeleteItem = t.getImplFn("ISteamUGC", "DeleteItem", fn(t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_DeleteItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeleteItem, .{ .name = "SteamAPI_ISteamUGC_DeleteItem", .linkage = .Strong }); }
    pub const ShowWorkshopEULA = t.getImplFn("ISteamUGC", "ShowWorkshopEULA", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_ShowWorkshopEULA\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ShowWorkshopEULA, .{ .name = "SteamAPI_ISteamUGC_ShowWorkshopEULA", .linkage = .Strong }); }
    pub const GetWorkshopEULAStatus = t.getImplFn("ISteamUGC", "GetWorkshopEULAStatus", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetWorkshopEULAStatus\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetWorkshopEULAStatus, .{ .name = "SteamAPI_ISteamUGC_GetWorkshopEULAStatus", .linkage = .Strong }); }
};
comptime { _ = ISteamUGC; }
const SteamUGC = struct {
    pub const v016 = t.getImplFn("SteamUGC", "v016", fn() callconv(.C) [*c]t.ISteamUGC) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUGC {
            p("NOT IMPLEMENTED SteamAPI_SteamUGC_v016\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v016, .{ .name = "SteamAPI_SteamUGC_v016", .linkage = .Strong }); }
};
comptime { _ = SteamUGC; }
const SteamGameServerUGC = struct {
    pub const v016 = t.getImplFn("SteamGameServerUGC", "v016", fn() callconv(.C) [*c]t.ISteamUGC) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamUGC {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerUGC_v016\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v016, .{ .name = "SteamAPI_SteamGameServerUGC_v016", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerUGC; }
pub const ISteamAppList = extern struct {
    _: u8 = 1,
    pub const version = "STEAMAPPLIST_INTERFACE_VERSION001";
    pub const GetNumInstalledApps = t.getImplFn("ISteamAppList", "GetNumInstalledApps", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetNumInstalledApps\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumInstalledApps, .{ .name = "SteamAPI_ISteamAppList_GetNumInstalledApps", .linkage = .Strong }); }
    pub const GetInstalledApps = t.getImplFn("ISteamAppList", "GetInstalledApps", fn([*c]t.AppId_t, t.uint32) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(pvecAppID: [*c]t.AppId_t, unMaxAppIDs: t.uint32) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetInstalledApps:\n\t- pvecAppID = {any}\n\t- unMaxAppIDs = {any}\n\n", .{ pvecAppID, unMaxAppIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetInstalledApps, .{ .name = "SteamAPI_ISteamAppList_GetInstalledApps", .linkage = .Strong }); }
    pub const GetAppName = t.getImplFn("ISteamAppList", "GetAppName", fn(t.AppId_t, [*c]u8, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, pchName: [*c]u8, cchNameMax: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppName:\n\t- nAppID = {any}\n\t- pchName = {any}\n\t- cchNameMax = {any}\n\n", .{ nAppID, pchName, cchNameMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppName, .{ .name = "SteamAPI_ISteamAppList_GetAppName", .linkage = .Strong }); }
    pub const GetAppInstallDir = t.getImplFn("ISteamAppList", "GetAppInstallDir", fn(t.AppId_t, [*c]u8, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(nAppID: t.AppId_t, pchDirectory: [*c]u8, cchNameMax: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppInstallDir:\n\t- nAppID = {any}\n\t- pchDirectory = {any}\n\t- cchNameMax = {any}\n\n", .{ nAppID, pchDirectory, cchNameMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppInstallDir, .{ .name = "SteamAPI_ISteamAppList_GetAppInstallDir", .linkage = .Strong }); }
    pub const GetAppBuildId = t.getImplFn("ISteamAppList", "GetAppBuildId", fn(t.AppId_t) callconv(.C) i32) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppBuildId:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAppBuildId, .{ .name = "SteamAPI_ISteamAppList_GetAppBuildId", .linkage = .Strong }); }
};
comptime { _ = ISteamAppList; }
const SteamAppList = struct {
    pub const v001 = t.getImplFn("SteamAppList", "v001", fn() callconv(.C) [*c]t.ISteamAppList) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamAppList {
            p("NOT IMPLEMENTED SteamAPI_SteamAppList_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamAppList_v001", .linkage = .Strong }); }
};
comptime { _ = SteamAppList; }
pub const ISteamHTMLSurface = extern struct {
    _: u8 = 1,
    pub const version = "STEAMHTMLSURFACE_INTERFACE_VERSION_005";
    pub const EHTMLMouseButton = extern struct {
        v: c_int,
        pub const eHTMLMouseButton_Left = 0;
        pub const eHTMLMouseButton_Right = 1;
        pub const eHTMLMouseButton_Middle = 2;
    };
    pub const EMouseCursor = extern struct {
        v: c_int,
        pub const dc_user = 0;
        pub const dc_none = 1;
        pub const dc_arrow = 2;
        pub const dc_ibeam = 3;
        pub const dc_hourglass = 4;
        pub const dc_waitarrow = 5;
        pub const dc_crosshair = 6;
        pub const dc_up = 7;
        pub const dc_sizenw = 8;
        pub const dc_sizese = 9;
        pub const dc_sizene = 10;
        pub const dc_sizesw = 11;
        pub const dc_sizew = 12;
        pub const dc_sizee = 13;
        pub const dc_sizen = 14;
        pub const dc_sizes = 15;
        pub const dc_sizewe = 16;
        pub const dc_sizens = 17;
        pub const dc_sizeall = 18;
        pub const dc_no = 19;
        pub const dc_hand = 20;
        pub const dc_blank = 21;
        pub const dc_middle_pan = 22;
        pub const dc_north_pan = 23;
        pub const dc_north_east_pan = 24;
        pub const dc_east_pan = 25;
        pub const dc_south_east_pan = 26;
        pub const dc_south_pan = 27;
        pub const dc_south_west_pan = 28;
        pub const dc_west_pan = 29;
        pub const dc_north_west_pan = 30;
        pub const dc_alias = 31;
        pub const dc_cell = 32;
        pub const dc_colresize = 33;
        pub const dc_copycur = 34;
        pub const dc_verticaltext = 35;
        pub const dc_rowresize = 36;
        pub const dc_zoomin = 37;
        pub const dc_zoomout = 38;
        pub const dc_help = 39;
        pub const dc_custom = 40;
        pub const dc_last = 41;
    };
    pub const EHTMLKeyModifiers = extern struct {
        v: c_int,
        pub const k_eHTMLKeyModifier_None = 0;
        pub const k_eHTMLKeyModifier_AltDown = 1;
        pub const k_eHTMLKeyModifier_CtrlDown = 2;
        pub const k_eHTMLKeyModifier_ShiftDown = 4;
    };
    pub const Init = t.getImplFn("ISteamHTMLSurface", "Init", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Init\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamHTMLSurface_Init", .linkage = .Strong }); }
    pub const Shutdown = t.getImplFn("ISteamHTMLSurface", "Shutdown", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Shutdown\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamHTMLSurface_Shutdown", .linkage = .Strong }); }
    pub const CreateBrowser = t.getImplFn("ISteamHTMLSurface", "CreateBrowser", fn([*c]const u8, [*c]const u8) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pchUserAgent: [*c]const u8, pchUserCSS: [*c]const u8) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_CreateBrowser:\n\t- pchUserAgent = {any}\n\t- pchUserCSS = {any}\n\n", .{ pchUserAgent, pchUserCSS });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateBrowser, .{ .name = "SteamAPI_ISteamHTMLSurface_CreateBrowser", .linkage = .Strong }); }
    pub const RemoveBrowser = t.getImplFn("ISteamHTMLSurface", "RemoveBrowser", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_RemoveBrowser:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveBrowser, .{ .name = "SteamAPI_ISteamHTMLSurface_RemoveBrowser", .linkage = .Strong }); }
    pub const LoadURL = t.getImplFn("ISteamHTMLSurface", "LoadURL", fn(t.HHTMLBrowser, [*c]const u8, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, pchURL: [*c]const u8, pchPostData: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_LoadURL:\n\t- unBrowserHandle = {any}\n\t- pchURL = {any}\n\t- pchPostData = {any}\n\n", .{ unBrowserHandle, pchURL, pchPostData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LoadURL, .{ .name = "SteamAPI_ISteamHTMLSurface_LoadURL", .linkage = .Strong }); }
    pub const SetSize = t.getImplFn("ISteamHTMLSurface", "SetSize", fn(t.HHTMLBrowser, t.uint32, t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, unWidth: t.uint32, unHeight: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetSize:\n\t- unBrowserHandle = {any}\n\t- unWidth = {any}\n\t- unHeight = {any}\n\n", .{ unBrowserHandle, unWidth, unHeight });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSize, .{ .name = "SteamAPI_ISteamHTMLSurface_SetSize", .linkage = .Strong }); }
    pub const StopLoad = t.getImplFn("ISteamHTMLSurface", "StopLoad", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_StopLoad:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopLoad, .{ .name = "SteamAPI_ISteamHTMLSurface_StopLoad", .linkage = .Strong }); }
    pub const Reload = t.getImplFn("ISteamHTMLSurface", "Reload", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Reload:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Reload, .{ .name = "SteamAPI_ISteamHTMLSurface_Reload", .linkage = .Strong }); }
    pub const GoBack = t.getImplFn("ISteamHTMLSurface", "GoBack", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GoBack:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GoBack, .{ .name = "SteamAPI_ISteamHTMLSurface_GoBack", .linkage = .Strong }); }
    pub const GoForward = t.getImplFn("ISteamHTMLSurface", "GoForward", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GoForward:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GoForward, .{ .name = "SteamAPI_ISteamHTMLSurface_GoForward", .linkage = .Strong }); }
    pub const AddHeader = t.getImplFn("ISteamHTMLSurface", "AddHeader", fn(t.HHTMLBrowser, [*c]const u8, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_AddHeader:\n\t- unBrowserHandle = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ unBrowserHandle, pchKey, pchValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddHeader, .{ .name = "SteamAPI_ISteamHTMLSurface_AddHeader", .linkage = .Strong }); }
    pub const ExecuteJavascript = t.getImplFn("ISteamHTMLSurface", "ExecuteJavascript", fn(t.HHTMLBrowser, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, pchScript: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_ExecuteJavascript:\n\t- unBrowserHandle = {any}\n\t- pchScript = {any}\n\n", .{ unBrowserHandle, pchScript });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ExecuteJavascript, .{ .name = "SteamAPI_ISteamHTMLSurface_ExecuteJavascript", .linkage = .Strong }); }
    pub const MouseUp = t.getImplFn("ISteamHTMLSurface", "MouseUp", fn(t.HHTMLBrowser, t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseUp:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MouseUp, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseUp", .linkage = .Strong }); }
    pub const MouseDown = t.getImplFn("ISteamHTMLSurface", "MouseDown", fn(t.HHTMLBrowser, t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseDown:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MouseDown, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseDown", .linkage = .Strong }); }
    pub const MouseDoubleClick = t.getImplFn("ISteamHTMLSurface", "MouseDoubleClick", fn(t.HHTMLBrowser, t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseDoubleClick:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MouseDoubleClick, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseDoubleClick", .linkage = .Strong }); }
    pub const MouseMove = t.getImplFn("ISteamHTMLSurface", "MouseMove", fn(t.HHTMLBrowser, i32, i32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseMove:\n\t- unBrowserHandle = {any}\n\t- x = {any}\n\t- y = {any}\n\n", .{ unBrowserHandle, x, y });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MouseMove, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseMove", .linkage = .Strong }); }
    pub const MouseWheel = t.getImplFn("ISteamHTMLSurface", "MouseWheel", fn(t.HHTMLBrowser, i32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, nDelta: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseWheel:\n\t- unBrowserHandle = {any}\n\t- nDelta = {any}\n\n", .{ unBrowserHandle, nDelta });
            return undefined;
        }
    }).noImpl;
    comptime { @export(MouseWheel, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseWheel", .linkage = .Strong }); }
    pub const KeyDown = t.getImplFn("ISteamHTMLSurface", "KeyDown", fn(t.HHTMLBrowser, t.uint32, t.ISteamHTMLSurface.EHTMLKeyModifiers, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyDown:\n\t- unBrowserHandle = {any}\n\t- nNativeKeyCode = {any}\n\t- eHTMLKeyModifiers = {any}\n\t- bIsSystemKey = {any}\n\n", .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, bIsSystemKey });
            return undefined;
        }
    }).noImpl;
    comptime { @export(KeyDown, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyDown", .linkage = .Strong }); }
    pub const KeyUp = t.getImplFn("ISteamHTMLSurface", "KeyUp", fn(t.HHTMLBrowser, t.uint32, t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyUp:\n\t- unBrowserHandle = {any}\n\t- nNativeKeyCode = {any}\n\t- eHTMLKeyModifiers = {any}\n\n", .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(KeyUp, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyUp", .linkage = .Strong }); }
    pub const KeyChar = t.getImplFn("ISteamHTMLSurface", "KeyChar", fn(t.HHTMLBrowser, t.uint32, t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, cUnicodeChar: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyChar:\n\t- unBrowserHandle = {any}\n\t- cUnicodeChar = {any}\n\t- eHTMLKeyModifiers = {any}\n\n", .{ unBrowserHandle, cUnicodeChar, eHTMLKeyModifiers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(KeyChar, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyChar", .linkage = .Strong }); }
    pub const SetHorizontalScroll = t.getImplFn("ISteamHTMLSurface", "SetHorizontalScroll", fn(t.HHTMLBrowser, t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetHorizontalScroll:\n\t- unBrowserHandle = {any}\n\t- nAbsolutePixelScroll = {any}\n\n", .{ unBrowserHandle, nAbsolutePixelScroll });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetHorizontalScroll, .{ .name = "SteamAPI_ISteamHTMLSurface_SetHorizontalScroll", .linkage = .Strong }); }
    pub const SetVerticalScroll = t.getImplFn("ISteamHTMLSurface", "SetVerticalScroll", fn(t.HHTMLBrowser, t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetVerticalScroll:\n\t- unBrowserHandle = {any}\n\t- nAbsolutePixelScroll = {any}\n\n", .{ unBrowserHandle, nAbsolutePixelScroll });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetVerticalScroll, .{ .name = "SteamAPI_ISteamHTMLSurface_SetVerticalScroll", .linkage = .Strong }); }
    pub const SetKeyFocus = t.getImplFn("ISteamHTMLSurface", "SetKeyFocus", fn(t.HHTMLBrowser, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, bHasKeyFocus: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetKeyFocus:\n\t- unBrowserHandle = {any}\n\t- bHasKeyFocus = {any}\n\n", .{ unBrowserHandle, bHasKeyFocus });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetKeyFocus, .{ .name = "SteamAPI_ISteamHTMLSurface_SetKeyFocus", .linkage = .Strong }); }
    pub const ViewSource = t.getImplFn("ISteamHTMLSurface", "ViewSource", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_ViewSource:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ViewSource, .{ .name = "SteamAPI_ISteamHTMLSurface_ViewSource", .linkage = .Strong }); }
    pub const CopyToClipboard = t.getImplFn("ISteamHTMLSurface", "CopyToClipboard", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_CopyToClipboard:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CopyToClipboard, .{ .name = "SteamAPI_ISteamHTMLSurface_CopyToClipboard", .linkage = .Strong }); }
    pub const PasteFromClipboard = t.getImplFn("ISteamHTMLSurface", "PasteFromClipboard", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_PasteFromClipboard:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(PasteFromClipboard, .{ .name = "SteamAPI_ISteamHTMLSurface_PasteFromClipboard", .linkage = .Strong }); }
    pub const Find = t.getImplFn("ISteamHTMLSurface", "Find", fn(t.HHTMLBrowser, [*c]const u8, bool, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, pchSearchStr: [*c]const u8, bCurrentlyInFind: bool, bReverse: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Find:\n\t- unBrowserHandle = {any}\n\t- pchSearchStr = {any}\n\t- bCurrentlyInFind = {any}\n\t- bReverse = {any}\n\n", .{ unBrowserHandle, pchSearchStr, bCurrentlyInFind, bReverse });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Find, .{ .name = "SteamAPI_ISteamHTMLSurface_Find", .linkage = .Strong }); }
    pub const StopFind = t.getImplFn("ISteamHTMLSurface", "StopFind", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_StopFind:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StopFind, .{ .name = "SteamAPI_ISteamHTMLSurface_StopFind", .linkage = .Strong }); }
    pub const GetLinkAtPosition = t.getImplFn("ISteamHTMLSurface", "GetLinkAtPosition", fn(t.HHTMLBrowser, i32, i32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GetLinkAtPosition:\n\t- unBrowserHandle = {any}\n\t- x = {any}\n\t- y = {any}\n\n", .{ unBrowserHandle, x, y });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLinkAtPosition, .{ .name = "SteamAPI_ISteamHTMLSurface_GetLinkAtPosition", .linkage = .Strong }); }
    pub const SetCookie = t.getImplFn("ISteamHTMLSurface", "SetCookie", fn([*c]const u8, [*c]const u8, [*c]const u8, [*c]const u8, t.RTime32, bool, bool) callconv(.C) void) orelse (struct {
        fn noImpl(pchHostname: [*c]const u8, pchKey: [*c]const u8, pchValue: [*c]const u8, pchPath: [*c]const u8, nExpires: t.RTime32, bSecure: bool, bHTTPOnly: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetCookie:\n\t- pchHostname = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\t- pchPath = {any}\n\t- nExpires = {any}\n\t- bSecure = {any}\n\t- bHTTPOnly = {any}\n\n", .{ pchHostname, pchKey, pchValue, pchPath, nExpires, bSecure, bHTTPOnly });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCookie, .{ .name = "SteamAPI_ISteamHTMLSurface_SetCookie", .linkage = .Strong }); }
    pub const SetPageScaleFactor = t.getImplFn("ISteamHTMLSurface", "SetPageScaleFactor", fn(t.HHTMLBrowser, f32, i32, i32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, flZoom: f32, nPointX: i32, nPointY: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetPageScaleFactor:\n\t- unBrowserHandle = {any}\n\t- flZoom = {any}\n\t- nPointX = {any}\n\t- nPointY = {any}\n\n", .{ unBrowserHandle, flZoom, nPointX, nPointY });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPageScaleFactor, .{ .name = "SteamAPI_ISteamHTMLSurface_SetPageScaleFactor", .linkage = .Strong }); }
    pub const SetBackgroundMode = t.getImplFn("ISteamHTMLSurface", "SetBackgroundMode", fn(t.HHTMLBrowser, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, bBackgroundMode: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetBackgroundMode:\n\t- unBrowserHandle = {any}\n\t- bBackgroundMode = {any}\n\n", .{ unBrowserHandle, bBackgroundMode });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetBackgroundMode, .{ .name = "SteamAPI_ISteamHTMLSurface_SetBackgroundMode", .linkage = .Strong }); }
    pub const SetDPIScalingFactor = t.getImplFn("ISteamHTMLSurface", "SetDPIScalingFactor", fn(t.HHTMLBrowser, f32) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, flDPIScaling: f32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor:\n\t- unBrowserHandle = {any}\n\t- flDPIScaling = {any}\n\n", .{ unBrowserHandle, flDPIScaling });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetDPIScalingFactor, .{ .name = "SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor", .linkage = .Strong }); }
    pub const OpenDeveloperTools = t.getImplFn("ISteamHTMLSurface", "OpenDeveloperTools", fn(t.HHTMLBrowser) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_OpenDeveloperTools:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(OpenDeveloperTools, .{ .name = "SteamAPI_ISteamHTMLSurface_OpenDeveloperTools", .linkage = .Strong }); }
    pub const AllowStartRequest = t.getImplFn("ISteamHTMLSurface", "AllowStartRequest", fn(t.HHTMLBrowser, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, bAllowed: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_AllowStartRequest:\n\t- unBrowserHandle = {any}\n\t- bAllowed = {any}\n\n", .{ unBrowserHandle, bAllowed });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AllowStartRequest, .{ .name = "SteamAPI_ISteamHTMLSurface_AllowStartRequest", .linkage = .Strong }); }
    pub const JSDialogResponse = t.getImplFn("ISteamHTMLSurface", "JSDialogResponse", fn(t.HHTMLBrowser, bool) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, bResult: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_JSDialogResponse:\n\t- unBrowserHandle = {any}\n\t- bResult = {any}\n\n", .{ unBrowserHandle, bResult });
            return undefined;
        }
    }).noImpl;
    comptime { @export(JSDialogResponse, .{ .name = "SteamAPI_ISteamHTMLSurface_JSDialogResponse", .linkage = .Strong }); }
    pub const FileLoadDialogResponse = t.getImplFn("ISteamHTMLSurface", "FileLoadDialogResponse", fn(t.HHTMLBrowser, [*c][*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(unBrowserHandle: t.HHTMLBrowser, pchSelectedFiles: [*c][*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse:\n\t- unBrowserHandle = {any}\n\t- pchSelectedFiles = {any}\n\n", .{ unBrowserHandle, pchSelectedFiles });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FileLoadDialogResponse, .{ .name = "SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse", .linkage = .Strong }); }
};
comptime { _ = ISteamHTMLSurface; }
const SteamHTMLSurface = struct {
    pub const v005 = t.getImplFn("SteamHTMLSurface", "v005", fn() callconv(.C) [*c]t.ISteamHTMLSurface) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamHTMLSurface {
            p("NOT IMPLEMENTED SteamAPI_SteamHTMLSurface_v005\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v005, .{ .name = "SteamAPI_SteamHTMLSurface_v005", .linkage = .Strong }); }
};
comptime { _ = SteamHTMLSurface; }
pub const ISteamInventory = extern struct {
    _: u8 = 1,
    pub const version = "STEAMINVENTORY_INTERFACE_V003";
    pub const GetResultStatus = t.getImplFn("ISteamInventory", "GetResultStatus", fn(t.SteamInventoryResult_t) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultStatus:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetResultStatus, .{ .name = "SteamAPI_ISteamInventory_GetResultStatus", .linkage = .Strong }); }
    pub const GetResultItems = t.getImplFn("ISteamInventory", "GetResultItems", fn(t.SteamInventoryResult_t, [*c]t.SteamItemDetails_t, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t, pOutItemsArray: [*c]t.SteamItemDetails_t, punOutItemsArraySize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultItems:\n\t- resultHandle = {any}\n\t- pOutItemsArray = {any}\n\t- punOutItemsArraySize = {any}\n\n", .{ resultHandle, pOutItemsArray, punOutItemsArraySize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetResultItems, .{ .name = "SteamAPI_ISteamInventory_GetResultItems", .linkage = .Strong }); }
    pub const GetResultItemProperty = t.getImplFn("ISteamInventory", "GetResultItemProperty", fn(t.SteamInventoryResult_t, t.uint32, [*c]const u8, [*c]u8, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t, unItemIndex: t.uint32, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultItemProperty:\n\t- resultHandle = {any}\n\t- unItemIndex = {any}\n\t- pchPropertyName = {any}\n\t- pchValueBuffer = {any}\n\t- punValueBufferSizeOut = {any}\n\n", .{ resultHandle, unItemIndex, pchPropertyName, pchValueBuffer, punValueBufferSizeOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetResultItemProperty, .{ .name = "SteamAPI_ISteamInventory_GetResultItemProperty", .linkage = .Strong }); }
    pub const GetResultTimestamp = t.getImplFn("ISteamInventory", "GetResultTimestamp", fn(t.SteamInventoryResult_t) callconv(.C) t.uint32) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t) callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultTimestamp:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetResultTimestamp, .{ .name = "SteamAPI_ISteamInventory_GetResultTimestamp", .linkage = .Strong }); }
    pub const CheckResultSteamID = t.getImplFn("ISteamInventory", "CheckResultSteamID", fn(t.SteamInventoryResult_t, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t, steamIDExpected: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_CheckResultSteamID:\n\t- resultHandle = {any}\n\t- steamIDExpected = {any}\n\n", .{ resultHandle, steamIDExpected });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CheckResultSteamID, .{ .name = "SteamAPI_ISteamInventory_CheckResultSteamID", .linkage = .Strong }); }
    pub const DestroyResult = t.getImplFn("ISteamInventory", "DestroyResult", fn(t.SteamInventoryResult_t) callconv(.C) void) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_DestroyResult:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroyResult, .{ .name = "SteamAPI_ISteamInventory_DestroyResult", .linkage = .Strong }); }
    pub const GetAllItems = t.getImplFn("ISteamInventory", "GetAllItems", fn([*c]t.SteamInventoryResult_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetAllItems:\n\t- pResultHandle = {any}\n\n", .{ pResultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAllItems, .{ .name = "SteamAPI_ISteamInventory_GetAllItems", .linkage = .Strong }); }
    pub const GetItemsByID = t.getImplFn("ISteamInventory", "GetItemsByID", fn([*c]t.SteamInventoryResult_t, [*c]const t.SteamItemInstanceID_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, pInstanceIDs: [*c]const t.SteamItemInstanceID_t, unCountInstanceIDs: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemsByID:\n\t- pResultHandle = {any}\n\t- pInstanceIDs = {any}\n\t- unCountInstanceIDs = {any}\n\n", .{ pResultHandle, pInstanceIDs, unCountInstanceIDs });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemsByID, .{ .name = "SteamAPI_ISteamInventory_GetItemsByID", .linkage = .Strong }); }
    pub const SerializeResult = t.getImplFn("ISteamInventory", "SerializeResult", fn(t.SteamInventoryResult_t, ?*anyopaque, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(resultHandle: t.SteamInventoryResult_t, pOutBuffer: ?*anyopaque, punOutBufferSize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SerializeResult:\n\t- resultHandle = {any}\n\t- pOutBuffer = {any}\n\t- punOutBufferSize = {any}\n\n", .{ resultHandle, pOutBuffer, punOutBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SerializeResult, .{ .name = "SteamAPI_ISteamInventory_SerializeResult", .linkage = .Strong }); }
    pub const DeserializeResult = t.getImplFn("ISteamInventory", "DeserializeResult", fn([*c]t.SteamInventoryResult_t, ?*const anyopaque, t.uint32, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(pOutResultHandle: [*c]t.SteamInventoryResult_t, pBuffer: ?*const anyopaque, unBufferSize: t.uint32, bRESERVED_MUST_BE_FALSE: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_DeserializeResult:\n\t- pOutResultHandle = {any}\n\t- pBuffer = {any}\n\t- unBufferSize = {any}\n\t- bRESERVED_MUST_BE_FALSE = {any}\n\n", .{ pOutResultHandle, pBuffer, unBufferSize, bRESERVED_MUST_BE_FALSE });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DeserializeResult, .{ .name = "SteamAPI_ISteamInventory_DeserializeResult", .linkage = .Strong }); }
    pub const GenerateItems = t.getImplFn("ISteamInventory", "GenerateItems", fn([*c]t.SteamInventoryResult_t, [*c]const t.SteamItemDef_t, [*c]const t.uint32, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GenerateItems:\n\t- pResultHandle = {any}\n\t- pArrayItemDefs = {any}\n\t- punArrayQuantity = {any}\n\t- unArrayLength = {any}\n\n", .{ pResultHandle, pArrayItemDefs, punArrayQuantity, unArrayLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GenerateItems, .{ .name = "SteamAPI_ISteamInventory_GenerateItems", .linkage = .Strong }); }
    pub const GrantPromoItems = t.getImplFn("ISteamInventory", "GrantPromoItems", fn([*c]t.SteamInventoryResult_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GrantPromoItems:\n\t- pResultHandle = {any}\n\n", .{ pResultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GrantPromoItems, .{ .name = "SteamAPI_ISteamInventory_GrantPromoItems", .linkage = .Strong }); }
    pub const AddPromoItem = t.getImplFn("ISteamInventory", "AddPromoItem", fn([*c]t.SteamInventoryResult_t, t.SteamItemDef_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, itemDef: t.SteamItemDef_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_AddPromoItem:\n\t- pResultHandle = {any}\n\t- itemDef = {any}\n\n", .{ pResultHandle, itemDef });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddPromoItem, .{ .name = "SteamAPI_ISteamInventory_AddPromoItem", .linkage = .Strong }); }
    pub const AddPromoItems = t.getImplFn("ISteamInventory", "AddPromoItems", fn([*c]t.SteamInventoryResult_t, [*c]const t.SteamItemDef_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, unArrayLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_AddPromoItems:\n\t- pResultHandle = {any}\n\t- pArrayItemDefs = {any}\n\t- unArrayLength = {any}\n\n", .{ pResultHandle, pArrayItemDefs, unArrayLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AddPromoItems, .{ .name = "SteamAPI_ISteamInventory_AddPromoItems", .linkage = .Strong }); }
    pub const ConsumeItem = t.getImplFn("ISteamInventory", "ConsumeItem", fn([*c]t.SteamInventoryResult_t, t.SteamItemInstanceID_t, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, itemConsume: t.SteamItemInstanceID_t, unQuantity: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_ConsumeItem:\n\t- pResultHandle = {any}\n\t- itemConsume = {any}\n\t- unQuantity = {any}\n\n", .{ pResultHandle, itemConsume, unQuantity });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConsumeItem, .{ .name = "SteamAPI_ISteamInventory_ConsumeItem", .linkage = .Strong }); }
    pub const ExchangeItems = t.getImplFn("ISteamInventory", "ExchangeItems", fn([*c]t.SteamInventoryResult_t, [*c]const t.SteamItemDef_t, [*c]const t.uint32, t.uint32, [*c]const t.SteamItemInstanceID_t, [*c]const t.uint32, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayGenerate: [*c]const t.SteamItemDef_t, punArrayGenerateQuantity: [*c]const t.uint32, unArrayGenerateLength: t.uint32, pArrayDestroy: [*c]const t.SteamItemInstanceID_t, punArrayDestroyQuantity: [*c]const t.uint32, unArrayDestroyLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_ExchangeItems:\n\t- pResultHandle = {any}\n\t- pArrayGenerate = {any}\n\t- punArrayGenerateQuantity = {any}\n\t- unArrayGenerateLength = {any}\n\t- pArrayDestroy = {any}\n\t- punArrayDestroyQuantity = {any}\n\t- unArrayDestroyLength = {any}\n\n", .{ pResultHandle, pArrayGenerate, punArrayGenerateQuantity, unArrayGenerateLength, pArrayDestroy, punArrayDestroyQuantity, unArrayDestroyLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ExchangeItems, .{ .name = "SteamAPI_ISteamInventory_ExchangeItems", .linkage = .Strong }); }
    pub const TransferItemQuantity = t.getImplFn("ISteamInventory", "TransferItemQuantity", fn([*c]t.SteamInventoryResult_t, t.SteamItemInstanceID_t, t.uint32, t.SteamItemInstanceID_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, itemIdSource: t.SteamItemInstanceID_t, unQuantity: t.uint32, itemIdDest: t.SteamItemInstanceID_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TransferItemQuantity:\n\t- pResultHandle = {any}\n\t- itemIdSource = {any}\n\t- unQuantity = {any}\n\t- itemIdDest = {any}\n\n", .{ pResultHandle, itemIdSource, unQuantity, itemIdDest });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TransferItemQuantity, .{ .name = "SteamAPI_ISteamInventory_TransferItemQuantity", .linkage = .Strong }); }
    pub const SendItemDropHeartbeat = t.getImplFn("ISteamInventory", "SendItemDropHeartbeat", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SendItemDropHeartbeat\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendItemDropHeartbeat, .{ .name = "SteamAPI_ISteamInventory_SendItemDropHeartbeat", .linkage = .Strong }); }
    pub const TriggerItemDrop = t.getImplFn("ISteamInventory", "TriggerItemDrop", fn([*c]t.SteamInventoryResult_t, t.SteamItemDef_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, dropListDefinition: t.SteamItemDef_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TriggerItemDrop:\n\t- pResultHandle = {any}\n\t- dropListDefinition = {any}\n\n", .{ pResultHandle, dropListDefinition });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TriggerItemDrop, .{ .name = "SteamAPI_ISteamInventory_TriggerItemDrop", .linkage = .Strong }); }
    pub const TradeItems = t.getImplFn("ISteamInventory", "TradeItems", fn([*c]t.SteamInventoryResult_t, t.CSteamID, [*c]const t.SteamItemInstanceID_t, [*c]const t.uint32, t.uint32, [*c]const t.SteamItemInstanceID_t, [*c]const t.uint32, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, steamIDTradePartner: t.CSteamID, pArrayGive: [*c]const t.SteamItemInstanceID_t, pArrayGiveQuantity: [*c]const t.uint32, nArrayGiveLength: t.uint32, pArrayGet: [*c]const t.SteamItemInstanceID_t, pArrayGetQuantity: [*c]const t.uint32, nArrayGetLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TradeItems:\n\t- pResultHandle = {any}\n\t- steamIDTradePartner = {any}\n\t- pArrayGive = {any}\n\t- pArrayGiveQuantity = {any}\n\t- nArrayGiveLength = {any}\n\t- pArrayGet = {any}\n\t- pArrayGetQuantity = {any}\n\t- nArrayGetLength = {any}\n\n", .{ pResultHandle, steamIDTradePartner, pArrayGive, pArrayGiveQuantity, nArrayGiveLength, pArrayGet, pArrayGetQuantity, nArrayGetLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(TradeItems, .{ .name = "SteamAPI_ISteamInventory_TradeItems", .linkage = .Strong }); }
    pub const LoadItemDefinitions = t.getImplFn("ISteamInventory", "LoadItemDefinitions", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_LoadItemDefinitions\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LoadItemDefinitions, .{ .name = "SteamAPI_ISteamInventory_LoadItemDefinitions", .linkage = .Strong }); }
    pub const GetItemDefinitionIDs = t.getImplFn("ISteamInventory", "GetItemDefinitionIDs", fn([*c]t.SteamItemDef_t, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemDefinitionIDs:\n\t- pItemDefIDs = {any}\n\t- punItemDefIDsArraySize = {any}\n\n", .{ pItemDefIDs, punItemDefIDsArraySize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemDefinitionIDs, .{ .name = "SteamAPI_ISteamInventory_GetItemDefinitionIDs", .linkage = .Strong }); }
    pub const GetItemDefinitionProperty = t.getImplFn("ISteamInventory", "GetItemDefinitionProperty", fn(t.SteamItemDef_t, [*c]const u8, [*c]u8, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(iDefinition: t.SteamItemDef_t, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemDefinitionProperty:\n\t- iDefinition = {any}\n\t- pchPropertyName = {any}\n\t- pchValueBuffer = {any}\n\t- punValueBufferSizeOut = {any}\n\n", .{ iDefinition, pchPropertyName, pchValueBuffer, punValueBufferSizeOut });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemDefinitionProperty, .{ .name = "SteamAPI_ISteamInventory_GetItemDefinitionProperty", .linkage = .Strong }); }
    pub const RequestEligiblePromoItemDefinitionsIDs = t.getImplFn("ISteamInventory", "RequestEligiblePromoItemDefinitionsIDs", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestEligiblePromoItemDefinitionsIDs, .{ .name = "SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs", .linkage = .Strong }); }
    pub const GetEligiblePromoItemDefinitionIDs = t.getImplFn("ISteamInventory", "GetEligiblePromoItemDefinitionIDs", fn(t.CSteamID, [*c]t.SteamItemDef_t, [*c]t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamID: t.CSteamID, pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs:\n\t- steamID = {any}\n\t- pItemDefIDs = {any}\n\t- punItemDefIDsArraySize = {any}\n\n", .{ steamID, pItemDefIDs, punItemDefIDsArraySize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetEligiblePromoItemDefinitionIDs, .{ .name = "SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs", .linkage = .Strong }); }
    pub const StartPurchase = t.getImplFn("ISteamInventory", "StartPurchase", fn([*c]const t.SteamItemDef_t, [*c]const t.uint32, t.uint32) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_StartPurchase:\n\t- pArrayItemDefs = {any}\n\t- punArrayQuantity = {any}\n\t- unArrayLength = {any}\n\n", .{ pArrayItemDefs, punArrayQuantity, unArrayLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartPurchase, .{ .name = "SteamAPI_ISteamInventory_StartPurchase", .linkage = .Strong }); }
    pub const RequestPrices = t.getImplFn("ISteamInventory", "RequestPrices", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RequestPrices\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestPrices, .{ .name = "SteamAPI_ISteamInventory_RequestPrices", .linkage = .Strong }); }
    pub const GetNumItemsWithPrices = t.getImplFn("ISteamInventory", "GetNumItemsWithPrices", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetNumItemsWithPrices\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNumItemsWithPrices, .{ .name = "SteamAPI_ISteamInventory_GetNumItemsWithPrices", .linkage = .Strong }); }
    pub const GetItemsWithPrices = t.getImplFn("ISteamInventory", "GetItemsWithPrices", fn([*c]t.SteamItemDef_t, [*c]t.uint64, [*c]t.uint64, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(pArrayItemDefs: [*c]t.SteamItemDef_t, pCurrentPrices: [*c]t.uint64, pBasePrices: [*c]t.uint64, unArrayLength: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemsWithPrices:\n\t- pArrayItemDefs = {any}\n\t- pCurrentPrices = {any}\n\t- pBasePrices = {any}\n\t- unArrayLength = {any}\n\n", .{ pArrayItemDefs, pCurrentPrices, pBasePrices, unArrayLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemsWithPrices, .{ .name = "SteamAPI_ISteamInventory_GetItemsWithPrices", .linkage = .Strong }); }
    pub const GetItemPrice = t.getImplFn("ISteamInventory", "GetItemPrice", fn(t.SteamItemDef_t, [*c]t.uint64, [*c]t.uint64) callconv(.C) bool) orelse (struct {
        fn noImpl(iDefinition: t.SteamItemDef_t, pCurrentPrice: [*c]t.uint64, pBasePrice: [*c]t.uint64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemPrice:\n\t- iDefinition = {any}\n\t- pCurrentPrice = {any}\n\t- pBasePrice = {any}\n\n", .{ iDefinition, pCurrentPrice, pBasePrice });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetItemPrice, .{ .name = "SteamAPI_ISteamInventory_GetItemPrice", .linkage = .Strong }); }
    pub const StartUpdateProperties = t.getImplFn("ISteamInventory", "StartUpdateProperties", fn() callconv(.C) t.SteamInventoryUpdateHandle_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamInventoryUpdateHandle_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_StartUpdateProperties\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StartUpdateProperties, .{ .name = "SteamAPI_ISteamInventory_StartUpdateProperties", .linkage = .Strong }); }
    pub const RemoveProperty = t.getImplFn("ISteamInventory", "RemoveProperty", fn(t.SteamInventoryUpdateHandle_t, t.SteamItemInstanceID_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RemoveProperty:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\n", .{ handle, nItemID, pchPropertyName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RemoveProperty, .{ .name = "SteamAPI_ISteamInventory_RemoveProperty", .linkage = .Strong }); }
    pub const SetPropertyString = t.getImplFn("ISteamInventory", "SetPropertyString", fn(t.SteamInventoryUpdateHandle_t, t.SteamItemInstanceID_t, [*c]const u8, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, pchPropertyValue: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyString:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- pchPropertyValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, pchPropertyValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPropertyString, .{ .name = "SteamAPI_ISteamInventory_SetPropertyString", .linkage = .Strong }); }
    pub const SetPropertyBool = t.getImplFn("ISteamInventory", "SetPropertyBool", fn(t.SteamInventoryUpdateHandle_t, t.SteamItemInstanceID_t, [*c]const u8, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, bValue: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyBool:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- bValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, bValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPropertyBool, .{ .name = "SteamAPI_ISteamInventory_SetPropertyBool", .linkage = .Strong }); }
    pub const SetPropertyInt64 = t.getImplFn("ISteamInventory", "SetPropertyInt64", fn(t.SteamInventoryUpdateHandle_t, t.SteamItemInstanceID_t, [*c]const u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, nValue: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyInt64:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- nValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, nValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPropertyInt64, .{ .name = "SteamAPI_ISteamInventory_SetPropertyInt64", .linkage = .Strong }); }
    pub const SetPropertyFloat = t.getImplFn("ISteamInventory", "SetPropertyFloat", fn(t.SteamInventoryUpdateHandle_t, t.SteamItemInstanceID_t, [*c]const u8, f32) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, flValue: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyFloat:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- flValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, flValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPropertyFloat, .{ .name = "SteamAPI_ISteamInventory_SetPropertyFloat", .linkage = .Strong }); }
    pub const SubmitUpdateProperties = t.getImplFn("ISteamInventory", "SubmitUpdateProperties", fn(t.SteamInventoryUpdateHandle_t, [*c]t.SteamInventoryResult_t) callconv(.C) bool) orelse (struct {
        fn noImpl(handle: t.SteamInventoryUpdateHandle_t, pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SubmitUpdateProperties:\n\t- handle = {any}\n\t- pResultHandle = {any}\n\n", .{ handle, pResultHandle });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SubmitUpdateProperties, .{ .name = "SteamAPI_ISteamInventory_SubmitUpdateProperties", .linkage = .Strong }); }
    pub const InspectItem = t.getImplFn("ISteamInventory", "InspectItem", fn([*c]t.SteamInventoryResult_t, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pResultHandle: [*c]t.SteamInventoryResult_t, pchItemToken: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamInventory_InspectItem:\n\t- pResultHandle = {any}\n\t- pchItemToken = {any}\n\n", .{ pResultHandle, pchItemToken });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InspectItem, .{ .name = "SteamAPI_ISteamInventory_InspectItem", .linkage = .Strong }); }
};
comptime { _ = ISteamInventory; }
const SteamInventory = struct {
    pub const v003 = t.getImplFn("SteamInventory", "v003", fn() callconv(.C) [*c]t.ISteamInventory) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamInventory {
            p("NOT IMPLEMENTED SteamAPI_SteamInventory_v003\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v003, .{ .name = "SteamAPI_SteamInventory_v003", .linkage = .Strong }); }
};
comptime { _ = SteamInventory; }
const SteamGameServerInventory = struct {
    pub const v003 = t.getImplFn("SteamGameServerInventory", "v003", fn() callconv(.C) [*c]t.ISteamInventory) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamInventory {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerInventory_v003\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v003, .{ .name = "SteamAPI_SteamGameServerInventory_v003", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerInventory; }
pub const ISteamVideo = extern struct {
    _: u8 = 1,
    pub const version = "STEAMVIDEO_INTERFACE_V002";
    pub const GetVideoURL = t.getImplFn("ISteamVideo", "GetVideoURL", fn(t.AppId_t) callconv(.C) void) orelse (struct {
        fn noImpl(unVideoAppID: t.AppId_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetVideoURL:\n\t- unVideoAppID = {any}\n\n", .{ unVideoAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetVideoURL, .{ .name = "SteamAPI_ISteamVideo_GetVideoURL", .linkage = .Strong }); }
    pub const IsBroadcasting = t.getImplFn("ISteamVideo", "IsBroadcasting", fn([*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(pnNumViewers: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamVideo_IsBroadcasting:\n\t- pnNumViewers = {any}\n\n", .{ pnNumViewers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsBroadcasting, .{ .name = "SteamAPI_ISteamVideo_IsBroadcasting", .linkage = .Strong }); }
    pub const GetOPFSettings = t.getImplFn("ISteamVideo", "GetOPFSettings", fn(t.AppId_t) callconv(.C) void) orelse (struct {
        fn noImpl(unVideoAppID: t.AppId_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetOPFSettings:\n\t- unVideoAppID = {any}\n\n", .{ unVideoAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetOPFSettings, .{ .name = "SteamAPI_ISteamVideo_GetOPFSettings", .linkage = .Strong }); }
    pub const GetOPFStringForApp = t.getImplFn("ISteamVideo", "GetOPFStringForApp", fn(t.AppId_t, [*c]u8, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(unVideoAppID: t.AppId_t, pchBuffer: [*c]u8, pnBufferSize: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetOPFStringForApp:\n\t- unVideoAppID = {any}\n\t- pchBuffer = {any}\n\t- pnBufferSize = {any}\n\n", .{ unVideoAppID, pchBuffer, pnBufferSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetOPFStringForApp, .{ .name = "SteamAPI_ISteamVideo_GetOPFStringForApp", .linkage = .Strong }); }
};
comptime { _ = ISteamVideo; }
const SteamVideo = struct {
    pub const v002 = t.getImplFn("SteamVideo", "v002", fn() callconv(.C) [*c]t.ISteamVideo) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamVideo {
            p("NOT IMPLEMENTED SteamAPI_SteamVideo_v002\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v002, .{ .name = "SteamAPI_SteamVideo_v002", .linkage = .Strong }); }
};
comptime { _ = SteamVideo; }
pub const ISteamParentalSettings = extern struct {
    _: u8 = 1,
    pub const version = "STEAMPARENTALSETTINGS_INTERFACE_VERSION001";
    pub const BIsParentalLockEnabled = t.getImplFn("ISteamParentalSettings", "BIsParentalLockEnabled", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsParentalLockEnabled, .{ .name = "SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled", .linkage = .Strong }); }
    pub const BIsParentalLockLocked = t.getImplFn("ISteamParentalSettings", "BIsParentalLockLocked", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsParentalLockLocked\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsParentalLockLocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsParentalLockLocked", .linkage = .Strong }); }
    pub const BIsAppBlocked = t.getImplFn("ISteamParentalSettings", "BIsAppBlocked", fn(t.AppId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsAppBlocked:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsAppBlocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsAppBlocked", .linkage = .Strong }); }
    pub const BIsAppInBlockList = t.getImplFn("ISteamParentalSettings", "BIsAppInBlockList", fn(t.AppId_t) callconv(.C) bool) orelse (struct {
        fn noImpl(nAppID: t.AppId_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsAppInBlockList:\n\t- nAppID = {any}\n\n", .{ nAppID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsAppInBlockList, .{ .name = "SteamAPI_ISteamParentalSettings_BIsAppInBlockList", .linkage = .Strong }); }
    pub const BIsFeatureBlocked = t.getImplFn("ISteamParentalSettings", "BIsFeatureBlocked", fn(t.EParentalFeature) callconv(.C) bool) orelse (struct {
        fn noImpl(eFeature: t.EParentalFeature) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsFeatureBlocked:\n\t- eFeature = {any}\n\n", .{ eFeature });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsFeatureBlocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsFeatureBlocked", .linkage = .Strong }); }
    pub const BIsFeatureInBlockList = t.getImplFn("ISteamParentalSettings", "BIsFeatureInBlockList", fn(t.EParentalFeature) callconv(.C) bool) orelse (struct {
        fn noImpl(eFeature: t.EParentalFeature) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList:\n\t- eFeature = {any}\n\n", .{ eFeature });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BIsFeatureInBlockList, .{ .name = "SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList", .linkage = .Strong }); }
};
comptime { _ = ISteamParentalSettings; }
const SteamParentalSettings = struct {
    pub const v001 = t.getImplFn("SteamParentalSettings", "v001", fn() callconv(.C) [*c]t.ISteamParentalSettings) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamParentalSettings {
            p("NOT IMPLEMENTED SteamAPI_SteamParentalSettings_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamParentalSettings_v001", .linkage = .Strong }); }
};
comptime { _ = SteamParentalSettings; }
pub const ISteamRemotePlay = extern struct {
    _: u8 = 1,
    pub const version = "STEAMREMOTEPLAY_INTERFACE_VERSION001";
    pub const GetSessionCount = t.getImplFn("ISteamRemotePlay", "GetSessionCount", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionCount, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionCount", .linkage = .Strong }); }
    pub const GetSessionID = t.getImplFn("ISteamRemotePlay", "GetSessionID", fn(i32) callconv(.C) t.RemotePlaySessionID_t) orelse (struct {
        fn noImpl(iSessionIndex: i32) callconv(.C) t.RemotePlaySessionID_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionID:\n\t- iSessionIndex = {any}\n\n", .{ iSessionIndex });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionID, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionID", .linkage = .Strong }); }
    pub const GetSessionSteamID = t.getImplFn("ISteamRemotePlay", "GetSessionSteamID", fn(t.RemotePlaySessionID_t) callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl(unSessionID: t.RemotePlaySessionID_t) callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionSteamID:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionSteamID, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionSteamID", .linkage = .Strong }); }
    pub const GetSessionClientName = t.getImplFn("ISteamRemotePlay", "GetSessionClientName", fn(t.RemotePlaySessionID_t) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(unSessionID: t.RemotePlaySessionID_t) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionClientName:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionClientName, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionClientName", .linkage = .Strong }); }
    pub const GetSessionClientFormFactor = t.getImplFn("ISteamRemotePlay", "GetSessionClientFormFactor", fn(t.RemotePlaySessionID_t) callconv(.C) t.ESteamDeviceFormFactor) orelse (struct {
        fn noImpl(unSessionID: t.RemotePlaySessionID_t) callconv(.C) t.ESteamDeviceFormFactor {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionClientFormFactor, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor", .linkage = .Strong }); }
    pub const BGetSessionClientResolution = t.getImplFn("ISteamRemotePlay", "BGetSessionClientResolution", fn(t.RemotePlaySessionID_t, [*c]i32, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(unSessionID: t.RemotePlaySessionID_t, pnResolutionX: [*c]i32, pnResolutionY: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_BGetSessionClientResolution:\n\t- unSessionID = {any}\n\t- pnResolutionX = {any}\n\t- pnResolutionY = {any}\n\n", .{ unSessionID, pnResolutionX, pnResolutionY });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BGetSessionClientResolution, .{ .name = "SteamAPI_ISteamRemotePlay_BGetSessionClientResolution", .linkage = .Strong }); }
    pub const BSendRemotePlayTogetherInvite = t.getImplFn("ISteamRemotePlay", "BSendRemotePlayTogetherInvite", fn(t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDFriend: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BSendRemotePlayTogetherInvite, .{ .name = "SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite", .linkage = .Strong }); }
};
comptime { _ = ISteamRemotePlay; }
const SteamRemotePlay = struct {
    pub const v001 = t.getImplFn("SteamRemotePlay", "v001", fn() callconv(.C) [*c]t.ISteamRemotePlay) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamRemotePlay {
            p("NOT IMPLEMENTED SteamAPI_SteamRemotePlay_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamRemotePlay_v001", .linkage = .Strong }); }
};
comptime { _ = SteamRemotePlay; }
pub const ISteamNetworkingMessages = extern struct {
    _: u8 = 1,
    pub const version = "SteamNetworkingMessages002";
    pub const SendMessageToUser = t.getImplFn("ISteamNetworkingMessages", "SendMessageToUser", fn([*c]const t.SteamNetworkingIdentity, ?*const anyopaque, t.uint32, i32, i32) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity, pubData: ?*const anyopaque, cubData: t.uint32, nSendFlags: i32, nRemoteChannel: i32) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_SendMessageToUser:\n\t- identityRemote = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- nSendFlags = {any}\n\t- nRemoteChannel = {any}\n\n", .{ identityRemote, pubData, cubData, nSendFlags, nRemoteChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendMessageToUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_SendMessageToUser", .linkage = .Strong }); }
    pub const ReceiveMessagesOnChannel = t.getImplFn("ISteamNetworkingMessages", "ReceiveMessagesOnChannel", fn(i32, [*c][*c]t.SteamNetworkingMessage_t, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(nLocalChannel: i32, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel:\n\t- nLocalChannel = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ nLocalChannel, ppOutMessages, nMaxMessages });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceiveMessagesOnChannel, .{ .name = "SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel", .linkage = .Strong }); }
    pub const AcceptSessionWithUser = t.getImplFn("ISteamNetworkingMessages", "AcceptSessionWithUser", fn([*c]const t.SteamNetworkingIdentity) callconv(.C) bool) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser:\n\t- identityRemote = {any}\n\n", .{ identityRemote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AcceptSessionWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser", .linkage = .Strong }); }
    pub const CloseSessionWithUser = t.getImplFn("ISteamNetworkingMessages", "CloseSessionWithUser", fn([*c]const t.SteamNetworkingIdentity) callconv(.C) bool) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser:\n\t- identityRemote = {any}\n\n", .{ identityRemote });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseSessionWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser", .linkage = .Strong }); }
    pub const CloseChannelWithUser = t.getImplFn("ISteamNetworkingMessages", "CloseChannelWithUser", fn([*c]const t.SteamNetworkingIdentity, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity, nLocalChannel: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser:\n\t- identityRemote = {any}\n\t- nLocalChannel = {any}\n\n", .{ identityRemote, nLocalChannel });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseChannelWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser", .linkage = .Strong }); }
    pub const GetSessionConnectionInfo = t.getImplFn("ISteamNetworkingMessages", "GetSessionConnectionInfo", fn([*c]const t.SteamNetworkingIdentity, [*c]t.SteamNetConnectionInfo_t, [*c]t.SteamNetConnectionRealTimeStatus_t) callconv(.C) t.ESteamNetworkingConnectionState) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity, pConnectionInfo: [*c]t.SteamNetConnectionInfo_t, pQuickStatus: [*c]t.SteamNetConnectionRealTimeStatus_t) callconv(.C) t.ESteamNetworkingConnectionState {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo:\n\t- identityRemote = {any}\n\t- pConnectionInfo = {any}\n\t- pQuickStatus = {any}\n\n", .{ identityRemote, pConnectionInfo, pQuickStatus });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSessionConnectionInfo, .{ .name = "SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingMessages; }
const SteamNetworkingMessages_SteamAPI = struct {
    pub const v002 = t.getImplFn("SteamNetworkingMessages_SteamAPI", "v002", fn() callconv(.C) [*c]t.ISteamNetworkingMessages) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworkingMessages {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingMessages_SteamAPI_v002\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v002, .{ .name = "SteamAPI_SteamNetworkingMessages_SteamAPI_v002", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingMessages_SteamAPI; }
const SteamGameServerNetworkingMessages_SteamAPI = struct {
    pub const v002 = t.getImplFn("SteamGameServerNetworkingMessages_SteamAPI", "v002", fn() callconv(.C) [*c]t.ISteamNetworkingMessages) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworkingMessages {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v002, .{ .name = "SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworkingMessages_SteamAPI; }
pub const ISteamNetworkingSockets = extern struct {
    _: u8 = 1,
    pub const version = "SteamNetworkingSockets012";
    pub const CreateListenSocketIP = t.getImplFn("ISteamNetworkingSockets", "CreateListenSocketIP", fn([*c]const t.SteamNetworkingIPAddr, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket) orelse (struct {
        fn noImpl(localAddress: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP:\n\t- localAddress = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ localAddress, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateListenSocketIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP", .linkage = .Strong }); }
    pub const ConnectByIPAddress = t.getImplFn("ISteamNetworkingSockets", "ConnectByIPAddress", fn([*c]const t.SteamNetworkingIPAddr, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection) orelse (struct {
        fn noImpl(address: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress:\n\t- address = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ address, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConnectByIPAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress", .linkage = .Strong }); }
    pub const CreateListenSocketP2P = t.getImplFn("ISteamNetworkingSockets", "CreateListenSocketP2P", fn(i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket) orelse (struct {
        fn noImpl(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P:\n\t- nLocalVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ nLocalVirtualPort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateListenSocketP2P, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P", .linkage = .Strong }); }
    pub const ConnectP2P = t.getImplFn("ISteamNetworkingSockets", "ConnectP2P", fn([*c]const t.SteamNetworkingIdentity, i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection) orelse (struct {
        fn noImpl(identityRemote: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectP2P:\n\t- identityRemote = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ identityRemote, nRemoteVirtualPort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConnectP2P, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectP2P", .linkage = .Strong }); }
    pub const AcceptConnection = t.getImplFn("ISteamNetworkingSockets", "AcceptConnection", fn(t.HSteamNetConnection) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_AcceptConnection:\n\t- hConn = {any}\n\n", .{ hConn });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AcceptConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_AcceptConnection", .linkage = .Strong }); }
    pub const CloseConnection = t.getImplFn("ISteamNetworkingSockets", "CloseConnection", fn(t.HSteamNetConnection, i32, [*c]const u8, bool) callconv(.C) bool) orelse (struct {
        fn noImpl(hPeer: t.HSteamNetConnection, nReason: i32, pszDebug: [*c]const u8, bEnableLinger: bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CloseConnection:\n\t- hPeer = {any}\n\t- nReason = {any}\n\t- pszDebug = {any}\n\t- bEnableLinger = {any}\n\n", .{ hPeer, nReason, pszDebug, bEnableLinger });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_CloseConnection", .linkage = .Strong }); }
    pub const CloseListenSocket = t.getImplFn("ISteamNetworkingSockets", "CloseListenSocket", fn(t.HSteamListenSocket) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.HSteamListenSocket) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CloseListenSocket:\n\t- hSocket = {any}\n\n", .{ hSocket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CloseListenSocket, .{ .name = "SteamAPI_ISteamNetworkingSockets_CloseListenSocket", .linkage = .Strong }); }
    pub const SetConnectionUserData = t.getImplFn("ISteamNetworkingSockets", "SetConnectionUserData", fn(t.HSteamNetConnection, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(hPeer: t.HSteamNetConnection, nUserData: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionUserData:\n\t- hPeer = {any}\n\t- nUserData = {any}\n\n", .{ hPeer, nUserData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionUserData, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionUserData", .linkage = .Strong }); }
    pub const GetConnectionUserData = t.getImplFn("ISteamNetworkingSockets", "GetConnectionUserData", fn(t.HSteamNetConnection) callconv(.C) i32) orelse (struct {
        fn noImpl(hPeer: t.HSteamNetConnection) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionUserData:\n\t- hPeer = {any}\n\n", .{ hPeer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionUserData, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionUserData", .linkage = .Strong }); }
    pub const SetConnectionName = t.getImplFn("ISteamNetworkingSockets", "SetConnectionName", fn(t.HSteamNetConnection, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(hPeer: t.HSteamNetConnection, pszName: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionName:\n\t- hPeer = {any}\n\t- pszName = {any}\n\n", .{ hPeer, pszName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionName, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionName", .linkage = .Strong }); }
    pub const GetConnectionName = t.getImplFn("ISteamNetworkingSockets", "GetConnectionName", fn(t.HSteamNetConnection, [*c]u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(hPeer: t.HSteamNetConnection, pszName: [*c]u8, nMaxLen: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionName:\n\t- hPeer = {any}\n\t- pszName = {any}\n\t- nMaxLen = {any}\n\n", .{ hPeer, pszName, nMaxLen });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionName, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionName", .linkage = .Strong }); }
    pub const SendMessageToConnection = t.getImplFn("ISteamNetworkingSockets", "SendMessageToConnection", fn(t.HSteamNetConnection, ?*const anyopaque, t.uint32, i32, [*c]i32) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32, pOutMessageNumber: [*c]i32) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SendMessageToConnection:\n\t- hConn = {any}\n\t- pData = {any}\n\t- cbData = {any}\n\t- nSendFlags = {any}\n\t- pOutMessageNumber = {any}\n\n", .{ hConn, pData, cbData, nSendFlags, pOutMessageNumber });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendMessageToConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_SendMessageToConnection", .linkage = .Strong }); }
    pub const SendMessages = t.getImplFn("ISteamNetworkingSockets", "SendMessages", fn(i32, [*c]const [*c]t.SteamNetworkingMessage_t, [*c]i32) callconv(.C) void) orelse (struct {
        fn noImpl(nMessages: i32, pMessages: [*c]const [*c]t.SteamNetworkingMessage_t, pOutMessageNumberOrResult: [*c]i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SendMessages:\n\t- nMessages = {any}\n\t- pMessages = {any}\n\t- pOutMessageNumberOrResult = {any}\n\n", .{ nMessages, pMessages, pOutMessageNumberOrResult });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendMessages, .{ .name = "SteamAPI_ISteamNetworkingSockets_SendMessages", .linkage = .Strong }); }
    pub const FlushMessagesOnConnection = t.getImplFn("ISteamNetworkingSockets", "FlushMessagesOnConnection", fn(t.HSteamNetConnection) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection:\n\t- hConn = {any}\n\n", .{ hConn });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FlushMessagesOnConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection", .linkage = .Strong }); }
    pub const ReceiveMessagesOnConnection = t.getImplFn("ISteamNetworkingSockets", "ReceiveMessagesOnConnection", fn(t.HSteamNetConnection, [*c][*c]t.SteamNetworkingMessage_t, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection:\n\t- hConn = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ hConn, ppOutMessages, nMaxMessages });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceiveMessagesOnConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection", .linkage = .Strong }); }
    pub const GetConnectionInfo = t.getImplFn("ISteamNetworkingSockets", "GetConnectionInfo", fn(t.HSteamNetConnection, [*c]t.SteamNetConnectionInfo_t) callconv(.C) bool) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, pInfo: [*c]t.SteamNetConnectionInfo_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionInfo:\n\t- hConn = {any}\n\t- pInfo = {any}\n\n", .{ hConn, pInfo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionInfo, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionInfo", .linkage = .Strong }); }
    pub const GetConnectionRealTimeStatus = t.getImplFn("ISteamNetworkingSockets", "GetConnectionRealTimeStatus", fn(t.HSteamNetConnection, [*c]t.SteamNetConnectionRealTimeStatus_t, i32, [*c]t.SteamNetConnectionRealTimeLaneStatus_t) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, pStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, nLanes: i32, pLanes: [*c]t.SteamNetConnectionRealTimeLaneStatus_t) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus:\n\t- hConn = {any}\n\t- pStatus = {any}\n\t- nLanes = {any}\n\t- pLanes = {any}\n\n", .{ hConn, pStatus, nLanes, pLanes });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionRealTimeStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus", .linkage = .Strong }); }
    pub const GetDetailedConnectionStatus = t.getImplFn("ISteamNetworkingSockets", "GetDetailedConnectionStatus", fn(t.HSteamNetConnection, [*c]u8, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, pszBuf: [*c]u8, cbBuf: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus:\n\t- hConn = {any}\n\t- pszBuf = {any}\n\t- cbBuf = {any}\n\n", .{ hConn, pszBuf, cbBuf });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDetailedConnectionStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus", .linkage = .Strong }); }
    pub const GetListenSocketAddress = t.getImplFn("ISteamNetworkingSockets", "GetListenSocketAddress", fn(t.HSteamListenSocket, [*c]t.SteamNetworkingIPAddr) callconv(.C) bool) orelse (struct {
        fn noImpl(hSocket: t.HSteamListenSocket, address: [*c]t.SteamNetworkingIPAddr) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress:\n\t- hSocket = {any}\n\t- address = {any}\n\n", .{ hSocket, address });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetListenSocketAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress", .linkage = .Strong }); }
    pub const CreateSocketPair = t.getImplFn("ISteamNetworkingSockets", "CreateSocketPair", fn([*c]t.HSteamNetConnection, [*c]t.HSteamNetConnection, bool, [*c]const t.SteamNetworkingIdentity, [*c]const t.SteamNetworkingIdentity) callconv(.C) bool) orelse (struct {
        fn noImpl(pOutConnection1: [*c]t.HSteamNetConnection, pOutConnection2: [*c]t.HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: [*c]const t.SteamNetworkingIdentity, pIdentity2: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateSocketPair:\n\t- pOutConnection1 = {any}\n\t- pOutConnection2 = {any}\n\t- bUseNetworkLoopback = {any}\n\t- pIdentity1 = {any}\n\t- pIdentity2 = {any}\n\n", .{ pOutConnection1, pOutConnection2, bUseNetworkLoopback, pIdentity1, pIdentity2 });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateSocketPair, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateSocketPair", .linkage = .Strong }); }
    pub const ConfigureConnectionLanes = t.getImplFn("ISteamNetworkingSockets", "ConfigureConnectionLanes", fn(t.HSteamNetConnection, i32, [*c]const i32, [*c]const t.uint16) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, nNumLanes: i32, pLanePriorities: [*c]const i32, pLaneWeights: [*c]const t.uint16) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes:\n\t- hConn = {any}\n\t- nNumLanes = {any}\n\t- pLanePriorities = {any}\n\t- pLaneWeights = {any}\n\n", .{ hConn, nNumLanes, pLanePriorities, pLaneWeights });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConfigureConnectionLanes, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes", .linkage = .Strong }); }
    pub const GetIdentity = t.getImplFn("ISteamNetworkingSockets", "GetIdentity", fn([*c]t.SteamNetworkingIdentity) callconv(.C) bool) orelse (struct {
        fn noImpl(pIdentity: [*c]t.SteamNetworkingIdentity) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetIdentity:\n\t- pIdentity = {any}\n\n", .{ pIdentity });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIdentity, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetIdentity", .linkage = .Strong }); }
    pub const InitAuthentication = t.getImplFn("ISteamNetworkingSockets", "InitAuthentication", fn() callconv(.C) t.ESteamNetworkingAvailability) orelse (struct {
        fn noImpl() callconv(.C) t.ESteamNetworkingAvailability {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_InitAuthentication\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InitAuthentication, .{ .name = "SteamAPI_ISteamNetworkingSockets_InitAuthentication", .linkage = .Strong }); }
    pub const GetAuthenticationStatus = t.getImplFn("ISteamNetworkingSockets", "GetAuthenticationStatus", fn([*c]t.SteamNetAuthenticationStatus_t) callconv(.C) t.ESteamNetworkingAvailability) orelse (struct {
        fn noImpl(pDetails: [*c]t.SteamNetAuthenticationStatus_t) callconv(.C) t.ESteamNetworkingAvailability {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus:\n\t- pDetails = {any}\n\n", .{ pDetails });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAuthenticationStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus", .linkage = .Strong }); }
    pub const CreatePollGroup = t.getImplFn("ISteamNetworkingSockets", "CreatePollGroup", fn() callconv(.C) t.HSteamNetPollGroup) orelse (struct {
        fn noImpl() callconv(.C) t.HSteamNetPollGroup {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreatePollGroup\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreatePollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreatePollGroup", .linkage = .Strong }); }
    pub const DestroyPollGroup = t.getImplFn("ISteamNetworkingSockets", "DestroyPollGroup", fn(t.HSteamNetPollGroup) callconv(.C) bool) orelse (struct {
        fn noImpl(hPollGroup: t.HSteamNetPollGroup) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_DestroyPollGroup:\n\t- hPollGroup = {any}\n\n", .{ hPollGroup });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroyPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_DestroyPollGroup", .linkage = .Strong }); }
    pub const SetConnectionPollGroup = t.getImplFn("ISteamNetworkingSockets", "SetConnectionPollGroup", fn(t.HSteamNetConnection, t.HSteamNetPollGroup) callconv(.C) bool) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, hPollGroup: t.HSteamNetPollGroup) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup:\n\t- hConn = {any}\n\t- hPollGroup = {any}\n\n", .{ hConn, hPollGroup });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup", .linkage = .Strong }); }
    pub const ReceiveMessagesOnPollGroup = t.getImplFn("ISteamNetworkingSockets", "ReceiveMessagesOnPollGroup", fn(t.HSteamNetPollGroup, [*c][*c]t.SteamNetworkingMessage_t, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(hPollGroup: t.HSteamNetPollGroup, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup:\n\t- hPollGroup = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ hPollGroup, ppOutMessages, nMaxMessages });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceiveMessagesOnPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup", .linkage = .Strong }); }
    pub const ReceivedRelayAuthTicket = t.getImplFn("ISteamNetworkingSockets", "ReceivedRelayAuthTicket", fn(?*const anyopaque, i32, [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) bool) orelse (struct {
        fn noImpl(pvTicket: ?*const anyopaque, cbTicket: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket:\n\t- pvTicket = {any}\n\t- cbTicket = {any}\n\t- pOutParsedTicket = {any}\n\n", .{ pvTicket, cbTicket, pOutParsedTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceivedRelayAuthTicket, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket", .linkage = .Strong }); }
    pub const FindRelayAuthTicketForServer = t.getImplFn("ISteamNetworkingSockets", "FindRelayAuthTicketForServer", fn([*c]const t.SteamNetworkingIdentity, i32, [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) i32) orelse (struct {
        fn noImpl(identityGameServer: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer:\n\t- identityGameServer = {any}\n\t- nRemoteVirtualPort = {any}\n\t- pOutParsedTicket = {any}\n\n", .{ identityGameServer, nRemoteVirtualPort, pOutParsedTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(FindRelayAuthTicketForServer, .{ .name = "SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer", .linkage = .Strong }); }
    pub const ConnectToHostedDedicatedServer = t.getImplFn("ISteamNetworkingSockets", "ConnectToHostedDedicatedServer", fn([*c]const t.SteamNetworkingIdentity, i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection) orelse (struct {
        fn noImpl(identityTarget: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer:\n\t- identityTarget = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ identityTarget, nRemoteVirtualPort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConnectToHostedDedicatedServer, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer", .linkage = .Strong }); }
    pub const GetHostedDedicatedServerPort = t.getImplFn("ISteamNetworkingSockets", "GetHostedDedicatedServerPort", fn() callconv(.C) t.uint16) orelse (struct {
        fn noImpl() callconv(.C) t.uint16 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHostedDedicatedServerPort, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort", .linkage = .Strong }); }
    pub const GetHostedDedicatedServerPOPID = t.getImplFn("ISteamNetworkingSockets", "GetHostedDedicatedServerPOPID", fn() callconv(.C) t.SteamNetworkingPOPID) orelse (struct {
        fn noImpl() callconv(.C) t.SteamNetworkingPOPID {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHostedDedicatedServerPOPID, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID", .linkage = .Strong }); }
    pub const GetHostedDedicatedServerAddress = t.getImplFn("ISteamNetworkingSockets", "GetHostedDedicatedServerAddress", fn([*c]t.SteamDatagramHostedAddress) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(pRouting: [*c]t.SteamDatagramHostedAddress) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress:\n\t- pRouting = {any}\n\n", .{ pRouting });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetHostedDedicatedServerAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress", .linkage = .Strong }); }
    pub const CreateHostedDedicatedServerListenSocket = t.getImplFn("ISteamNetworkingSockets", "CreateHostedDedicatedServerListenSocket", fn(i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket) orelse (struct {
        fn noImpl(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket:\n\t- nLocalVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ nLocalVirtualPort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateHostedDedicatedServerListenSocket, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket", .linkage = .Strong }); }
    pub const GetGameCoordinatorServerLogin = t.getImplFn("ISteamNetworkingSockets", "GetGameCoordinatorServerLogin", fn([*c]t.SteamDatagramGameCoordinatorServerLogin, [*c]i32, ?*anyopaque) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(pLoginInfo: [*c]t.SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: [*c]i32, pBlob: ?*anyopaque) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin:\n\t- pLoginInfo = {any}\n\t- pcbSignedBlob = {any}\n\t- pBlob = {any}\n\n", .{ pLoginInfo, pcbSignedBlob, pBlob });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGameCoordinatorServerLogin, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin", .linkage = .Strong }); }
    pub const ConnectP2PCustomSignaling = t.getImplFn("ISteamNetworkingSockets", "ConnectP2PCustomSignaling", fn([*c]t.ISteamNetworkingConnectionSignaling, [*c]const t.SteamNetworkingIdentity, i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection) orelse (struct {
        fn noImpl(pSignaling: [*c]t.ISteamNetworkingConnectionSignaling, pPeerIdentity: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling:\n\t- pSignaling = {any}\n\t- pPeerIdentity = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ pSignaling, pPeerIdentity, nRemoteVirtualPort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConnectP2PCustomSignaling, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling", .linkage = .Strong }); }
    pub const ReceivedP2PCustomSignal = t.getImplFn("ISteamNetworkingSockets", "ReceivedP2PCustomSignal", fn(?*const anyopaque, i32, [*c]t.ISteamNetworkingSignalingRecvContext) callconv(.C) bool) orelse (struct {
        fn noImpl(pMsg: ?*const anyopaque, cbMsg: i32, pContext: [*c]t.ISteamNetworkingSignalingRecvContext) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal:\n\t- pMsg = {any}\n\t- cbMsg = {any}\n\t- pContext = {any}\n\n", .{ pMsg, cbMsg, pContext });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceivedP2PCustomSignal, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal", .linkage = .Strong }); }
    pub const GetCertificateRequest = t.getImplFn("ISteamNetworkingSockets", "GetCertificateRequest", fn([*c]i32, ?*anyopaque, [*c]t.SteamNetworkingErrMsg) callconv(.C) bool) orelse (struct {
        fn noImpl(pcbBlob: [*c]i32, pBlob: ?*anyopaque, errMsg: [*c]t.SteamNetworkingErrMsg) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetCertificateRequest:\n\t- pcbBlob = {any}\n\t- pBlob = {any}\n\t- errMsg = {any}\n\n", .{ pcbBlob, pBlob, errMsg });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetCertificateRequest, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetCertificateRequest", .linkage = .Strong }); }
    pub const SetCertificate = t.getImplFn("ISteamNetworkingSockets", "SetCertificate", fn(?*const anyopaque, i32, [*c]t.SteamNetworkingErrMsg) callconv(.C) bool) orelse (struct {
        fn noImpl(pCertificate: ?*const anyopaque, cbCertificate: i32, errMsg: [*c]t.SteamNetworkingErrMsg) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetCertificate:\n\t- pCertificate = {any}\n\t- cbCertificate = {any}\n\t- errMsg = {any}\n\n", .{ pCertificate, cbCertificate, errMsg });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetCertificate, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetCertificate", .linkage = .Strong }); }
    pub const ResetIdentity = t.getImplFn("ISteamNetworkingSockets", "ResetIdentity", fn([*c]const t.SteamNetworkingIdentity) callconv(.C) void) orelse (struct {
        fn noImpl(pIdentity: [*c]const t.SteamNetworkingIdentity) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ResetIdentity:\n\t- pIdentity = {any}\n\n", .{ pIdentity });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ResetIdentity, .{ .name = "SteamAPI_ISteamNetworkingSockets_ResetIdentity", .linkage = .Strong }); }
    pub const RunCallbacks = t.getImplFn("ISteamNetworkingSockets", "RunCallbacks", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_RunCallbacks\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RunCallbacks, .{ .name = "SteamAPI_ISteamNetworkingSockets_RunCallbacks", .linkage = .Strong }); }
    pub const BeginAsyncRequestFakeIP = t.getImplFn("ISteamNetworkingSockets", "BeginAsyncRequestFakeIP", fn(i32) callconv(.C) bool) orelse (struct {
        fn noImpl(nNumPorts: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP:\n\t- nNumPorts = {any}\n\n", .{ nNumPorts });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BeginAsyncRequestFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP", .linkage = .Strong }); }
    pub const GetFakeIP = t.getImplFn("ISteamNetworkingSockets", "GetFakeIP", fn(i32, [*c]t.SteamNetworkingFakeIPResult_t) callconv(.C) void) orelse (struct {
        fn noImpl(idxFirstPort: i32, pInfo: [*c]t.SteamNetworkingFakeIPResult_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetFakeIP:\n\t- idxFirstPort = {any}\n\t- pInfo = {any}\n\n", .{ idxFirstPort, pInfo });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetFakeIP", .linkage = .Strong }); }
    pub const CreateListenSocketP2PFakeIP = t.getImplFn("ISteamNetworkingSockets", "CreateListenSocketP2PFakeIP", fn(i32, i32, [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket) orelse (struct {
        fn noImpl(idxFakePort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP:\n\t- idxFakePort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ idxFakePort, nOptions, pOptions });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateListenSocketP2PFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP", .linkage = .Strong }); }
    pub const GetRemoteFakeIPForConnection = t.getImplFn("ISteamNetworkingSockets", "GetRemoteFakeIPForConnection", fn(t.HSteamNetConnection, [*c]t.SteamNetworkingIPAddr) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, pOutAddr: [*c]t.SteamNetworkingIPAddr) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection:\n\t- hConn = {any}\n\t- pOutAddr = {any}\n\n", .{ hConn, pOutAddr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetRemoteFakeIPForConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection", .linkage = .Strong }); }
    pub const CreateFakeUDPPort = t.getImplFn("ISteamNetworkingSockets", "CreateFakeUDPPort", fn(i32) callconv(.C) [*c]t.ISteamNetworkingFakeUDPPort) orelse (struct {
        fn noImpl(idxFakeServerPort: i32) callconv(.C) [*c]t.ISteamNetworkingFakeUDPPort {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort:\n\t- idxFakeServerPort = {any}\n\n", .{ idxFakeServerPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateFakeUDPPort, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingSockets; }
const SteamNetworkingSockets_SteamAPI = struct {
    pub const v012 = t.getImplFn("SteamNetworkingSockets_SteamAPI", "v012", fn() callconv(.C) [*c]t.ISteamNetworkingSockets) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworkingSockets {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingSockets_SteamAPI_v012\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v012, .{ .name = "SteamAPI_SteamNetworkingSockets_SteamAPI_v012", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingSockets_SteamAPI; }
const SteamGameServerNetworkingSockets_SteamAPI = struct {
    pub const v012 = t.getImplFn("SteamGameServerNetworkingSockets_SteamAPI", "v012", fn() callconv(.C) [*c]t.ISteamNetworkingSockets) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworkingSockets {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v012, .{ .name = "SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworkingSockets_SteamAPI; }
pub const ISteamNetworkingUtils = extern struct {
    _: u8 = 1,
    pub const version = "SteamNetworkingUtils004";
    pub const AllocateMessage = t.getImplFn("ISteamNetworkingUtils", "AllocateMessage", fn(i32) callconv(.C) [*c]t.SteamNetworkingMessage_t) orelse (struct {
        fn noImpl(cbAllocateBuffer: i32) callconv(.C) [*c]t.SteamNetworkingMessage_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_AllocateMessage:\n\t- cbAllocateBuffer = {any}\n\n", .{ cbAllocateBuffer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AllocateMessage, .{ .name = "SteamAPI_ISteamNetworkingUtils_AllocateMessage", .linkage = .Strong }); }
    pub const InitRelayNetworkAccess = t.getImplFn("ISteamNetworkingUtils", "InitRelayNetworkAccess", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(InitRelayNetworkAccess, .{ .name = "SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess", .linkage = .Strong }); }
    pub const GetRelayNetworkStatus = t.getImplFn("ISteamNetworkingUtils", "GetRelayNetworkStatus", fn([*c]t.SteamRelayNetworkStatus_t) callconv(.C) t.ESteamNetworkingAvailability) orelse (struct {
        fn noImpl(pDetails: [*c]t.SteamRelayNetworkStatus_t) callconv(.C) t.ESteamNetworkingAvailability {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus:\n\t- pDetails = {any}\n\n", .{ pDetails });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetRelayNetworkStatus, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus", .linkage = .Strong }); }
    pub const GetLocalPingLocation = t.getImplFn("ISteamNetworkingUtils", "GetLocalPingLocation", fn([*c]t.SteamNetworkPingLocation_t) callconv(.C) f32) orelse (struct {
        fn noImpl(result: [*c]t.SteamNetworkPingLocation_t) callconv(.C) f32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation:\n\t- result = {any}\n\n", .{ result });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLocalPingLocation, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation", .linkage = .Strong }); }
    pub const EstimatePingTimeBetweenTwoLocations = t.getImplFn("ISteamNetworkingUtils", "EstimatePingTimeBetweenTwoLocations", fn([*c]const t.SteamNetworkPingLocation_t, [*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32) orelse (struct {
        fn noImpl(location1: [*c]const t.SteamNetworkPingLocation_t, location2: [*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations:\n\t- location1 = {any}\n\t- location2 = {any}\n\n", .{ location1, location2 });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EstimatePingTimeBetweenTwoLocations, .{ .name = "SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations", .linkage = .Strong }); }
    pub const EstimatePingTimeFromLocalHost = t.getImplFn("ISteamNetworkingUtils", "EstimatePingTimeFromLocalHost", fn([*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32) orelse (struct {
        fn noImpl(remoteLocation: [*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost:\n\t- remoteLocation = {any}\n\n", .{ remoteLocation });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EstimatePingTimeFromLocalHost, .{ .name = "SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost", .linkage = .Strong }); }
    pub const ConvertPingLocationToString = t.getImplFn("ISteamNetworkingUtils", "ConvertPingLocationToString", fn([*c]const t.SteamNetworkPingLocation_t, [*c]u8, i32) callconv(.C) void) orelse (struct {
        fn noImpl(location: [*c]const t.SteamNetworkPingLocation_t, pszBuf: [*c]u8, cchBufSize: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString:\n\t- location = {any}\n\t- pszBuf = {any}\n\t- cchBufSize = {any}\n\n", .{ location, pszBuf, cchBufSize });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ConvertPingLocationToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString", .linkage = .Strong }); }
    pub const ParsePingLocationString = t.getImplFn("ISteamNetworkingUtils", "ParsePingLocationString", fn([*c]const u8, [*c]t.SteamNetworkPingLocation_t) callconv(.C) bool) orelse (struct {
        fn noImpl(pszString: [*c]const u8, result: [*c]t.SteamNetworkPingLocation_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_ParsePingLocationString:\n\t- pszString = {any}\n\t- result = {any}\n\n", .{ pszString, result });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ParsePingLocationString, .{ .name = "SteamAPI_ISteamNetworkingUtils_ParsePingLocationString", .linkage = .Strong }); }
    pub const CheckPingDataUpToDate = t.getImplFn("ISteamNetworkingUtils", "CheckPingDataUpToDate", fn(f32) callconv(.C) bool) orelse (struct {
        fn noImpl(flMaxAgeSeconds: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate:\n\t- flMaxAgeSeconds = {any}\n\n", .{ flMaxAgeSeconds });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CheckPingDataUpToDate, .{ .name = "SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate", .linkage = .Strong }); }
    pub const GetPingToDataCenter = t.getImplFn("ISteamNetworkingUtils", "GetPingToDataCenter", fn(t.SteamNetworkingPOPID, [*c]t.SteamNetworkingPOPID) callconv(.C) i32) orelse (struct {
        fn noImpl(popID: t.SteamNetworkingPOPID, pViaRelayPoP: [*c]t.SteamNetworkingPOPID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter:\n\t- popID = {any}\n\t- pViaRelayPoP = {any}\n\n", .{ popID, pViaRelayPoP });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPingToDataCenter, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter", .linkage = .Strong }); }
    pub const GetDirectPingToPOP = t.getImplFn("ISteamNetworkingUtils", "GetDirectPingToPOP", fn(t.SteamNetworkingPOPID) callconv(.C) i32) orelse (struct {
        fn noImpl(popID: t.SteamNetworkingPOPID) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP:\n\t- popID = {any}\n\n", .{ popID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetDirectPingToPOP, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP", .linkage = .Strong }); }
    pub const GetPOPCount = t.getImplFn("ISteamNetworkingUtils", "GetPOPCount", fn() callconv(.C) i32) orelse (struct {
        fn noImpl() callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPOPCount\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPOPCount, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPOPCount", .linkage = .Strong }); }
    pub const GetPOPList = t.getImplFn("ISteamNetworkingUtils", "GetPOPList", fn([*c]t.SteamNetworkingPOPID, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(list: [*c]t.SteamNetworkingPOPID, nListSz: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPOPList:\n\t- list = {any}\n\t- nListSz = {any}\n\n", .{ list, nListSz });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPOPList, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPOPList", .linkage = .Strong }); }
    pub const GetLocalTimestamp = t.getImplFn("ISteamNetworkingUtils", "GetLocalTimestamp", fn() callconv(.C) t.SteamNetworkingMicroseconds) orelse (struct {
        fn noImpl() callconv(.C) t.SteamNetworkingMicroseconds {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetLocalTimestamp, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp", .linkage = .Strong }); }
    pub const SetDebugOutputFunction = t.getImplFn("ISteamNetworkingUtils", "SetDebugOutputFunction", fn(t.ESteamNetworkingSocketsDebugOutputType, t.FSteamNetworkingSocketsDebugOutput) callconv(.C) void) orelse (struct {
        fn noImpl(eDetailLevel: t.ESteamNetworkingSocketsDebugOutputType, pfnFunc: t.FSteamNetworkingSocketsDebugOutput) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction:\n\t- eDetailLevel = {any}\n\t- pfnFunc = {any}\n\n", .{ eDetailLevel, pfnFunc });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetDebugOutputFunction, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction", .linkage = .Strong }); }
    pub const IsFakeIPv4 = t.getImplFn("ISteamNetworkingUtils", "IsFakeIPv4", fn(t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(nIPv4: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_IsFakeIPv4:\n\t- nIPv4 = {any}\n\n", .{ nIPv4 });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsFakeIPv4, .{ .name = "SteamAPI_ISteamNetworkingUtils_IsFakeIPv4", .linkage = .Strong }); }
    pub const GetIPv4FakeIPType = t.getImplFn("ISteamNetworkingUtils", "GetIPv4FakeIPType", fn(t.uint32) callconv(.C) t.ESteamNetworkingFakeIPType) orelse (struct {
        fn noImpl(nIPv4: t.uint32) callconv(.C) t.ESteamNetworkingFakeIPType {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType:\n\t- nIPv4 = {any}\n\n", .{ nIPv4 });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPv4FakeIPType, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType", .linkage = .Strong }); }
    pub const GetRealIdentityForFakeIP = t.getImplFn("ISteamNetworkingUtils", "GetRealIdentityForFakeIP", fn([*c]const t.SteamNetworkingIPAddr, [*c]t.SteamNetworkingIdentity) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(fakeIP: [*c]const t.SteamNetworkingIPAddr, pOutRealIdentity: [*c]t.SteamNetworkingIdentity) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP:\n\t- fakeIP = {any}\n\t- pOutRealIdentity = {any}\n\n", .{ fakeIP, pOutRealIdentity });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetRealIdentityForFakeIP, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP", .linkage = .Strong }); }
    pub const SetGlobalConfigValueInt32 = t.getImplFn("ISteamNetworkingUtils", "SetGlobalConfigValueInt32", fn(t.ESteamNetworkingConfigValue, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, val: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalConfigValueInt32, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32", .linkage = .Strong }); }
    pub const SetGlobalConfigValueFloat = t.getImplFn("ISteamNetworkingUtils", "SetGlobalConfigValueFloat", fn(t.ESteamNetworkingConfigValue, f32) callconv(.C) bool) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, val: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalConfigValueFloat, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat", .linkage = .Strong }); }
    pub const SetGlobalConfigValueString = t.getImplFn("ISteamNetworkingUtils", "SetGlobalConfigValueString", fn(t.ESteamNetworkingConfigValue, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalConfigValueString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString", .linkage = .Strong }); }
    pub const SetGlobalConfigValuePtr = t.getImplFn("ISteamNetworkingUtils", "SetGlobalConfigValuePtr", fn(t.ESteamNetworkingConfigValue, ?*anyopaque) callconv(.C) bool) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, val: ?*anyopaque) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalConfigValuePtr, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr", .linkage = .Strong }); }
    pub const SetConnectionConfigValueInt32 = t.getImplFn("ISteamNetworkingUtils", "SetConnectionConfigValueInt32", fn(t.HSteamNetConnection, t.ESteamNetworkingConfigValue, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionConfigValueInt32, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32", .linkage = .Strong }); }
    pub const SetConnectionConfigValueFloat = t.getImplFn("ISteamNetworkingUtils", "SetConnectionConfigValueFloat", fn(t.HSteamNetConnection, t.ESteamNetworkingConfigValue, f32) callconv(.C) bool) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionConfigValueFloat, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat", .linkage = .Strong }); }
    pub const SetConnectionConfigValueString = t.getImplFn("ISteamNetworkingUtils", "SetConnectionConfigValueString", fn(t.HSteamNetConnection, t.ESteamNetworkingConfigValue, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionConfigValueString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString", .linkage = .Strong }); }
    pub const SetGlobalCallback_SteamNetConnectionStatusChanged = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_SteamNetConnectionStatusChanged", fn(t.FnSteamNetConnectionStatusChanged) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamNetConnectionStatusChanged) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_SteamNetConnectionStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged", .linkage = .Strong }); }
    pub const SetGlobalCallback_SteamNetAuthenticationStatusChanged = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_SteamNetAuthenticationStatusChanged", fn(t.FnSteamNetAuthenticationStatusChanged) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamNetAuthenticationStatusChanged) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_SteamNetAuthenticationStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged", .linkage = .Strong }); }
    pub const SetGlobalCallback_SteamRelayNetworkStatusChanged = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_SteamRelayNetworkStatusChanged", fn(t.FnSteamRelayNetworkStatusChanged) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamRelayNetworkStatusChanged) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_SteamRelayNetworkStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged", .linkage = .Strong }); }
    pub const SetGlobalCallback_FakeIPResult = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_FakeIPResult", fn(t.FnSteamNetworkingFakeIPResult) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamNetworkingFakeIPResult) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_FakeIPResult, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult", .linkage = .Strong }); }
    pub const SetGlobalCallback_MessagesSessionRequest = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_MessagesSessionRequest", fn(t.FnSteamNetworkingMessagesSessionRequest) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamNetworkingMessagesSessionRequest) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_MessagesSessionRequest, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest", .linkage = .Strong }); }
    pub const SetGlobalCallback_MessagesSessionFailed = t.getImplFn("ISteamNetworkingUtils", "SetGlobalCallback_MessagesSessionFailed", fn(t.FnSteamNetworkingMessagesSessionFailed) callconv(.C) bool) orelse (struct {
        fn noImpl(fnCallback: t.FnSteamNetworkingMessagesSessionFailed) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGlobalCallback_MessagesSessionFailed, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed", .linkage = .Strong }); }
    pub const SetConfigValue = t.getImplFn("ISteamNetworkingUtils", "SetConfigValue", fn(t.ESteamNetworkingConfigValue, t.ESteamNetworkingConfigScope, i32, t.ESteamNetworkingConfigDataType, ?*const anyopaque) callconv(.C) bool) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, eDataType: t.ESteamNetworkingConfigDataType, pArg: ?*const anyopaque) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConfigValue:\n\t- eValue = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\t- eDataType = {any}\n\t- pArg = {any}\n\n", .{ eValue, eScopeType, scopeObj, eDataType, pArg });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConfigValue, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConfigValue", .linkage = .Strong }); }
    pub const SetConfigValueStruct = t.getImplFn("ISteamNetworkingUtils", "SetConfigValueStruct", fn([*c]const t.SteamNetworkingConfigValue_t, t.ESteamNetworkingConfigScope, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(opt: [*c]const t.SteamNetworkingConfigValue_t, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct:\n\t- opt = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\n", .{ opt, eScopeType, scopeObj });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConfigValueStruct, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct", .linkage = .Strong }); }
    pub const GetConfigValue = t.getImplFn("ISteamNetworkingUtils", "GetConfigValue", fn(t.ESteamNetworkingConfigValue, t.ESteamNetworkingConfigScope, i32, [*c]t.ESteamNetworkingConfigDataType, ?*anyopaque, [*c]t.size_t) callconv(.C) t.ESteamNetworkingGetConfigValueResult) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pResult: ?*anyopaque, cbResult: [*c]t.size_t) callconv(.C) t.ESteamNetworkingGetConfigValueResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetConfigValue:\n\t- eValue = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\t- pOutDataType = {any}\n\t- pResult = {any}\n\t- cbResult = {any}\n\n", .{ eValue, eScopeType, scopeObj, pOutDataType, pResult, cbResult });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConfigValue, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetConfigValue", .linkage = .Strong }); }
    pub const GetConfigValueInfo = t.getImplFn("ISteamNetworkingUtils", "GetConfigValueInfo", fn(t.ESteamNetworkingConfigValue, [*c]t.ESteamNetworkingConfigDataType, [*c]t.ESteamNetworkingConfigScope) callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl(eValue: t.ESteamNetworkingConfigValue, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pOutScope: [*c]t.ESteamNetworkingConfigScope) callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo:\n\t- eValue = {any}\n\t- pOutDataType = {any}\n\t- pOutScope = {any}\n\n", .{ eValue, pOutDataType, pOutScope });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConfigValueInfo, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo", .linkage = .Strong }); }
    pub const IterateGenericEditableConfigValues = t.getImplFn("ISteamNetworkingUtils", "IterateGenericEditableConfigValues", fn(t.ESteamNetworkingConfigValue, bool) callconv(.C) t.ESteamNetworkingConfigValue) orelse (struct {
        fn noImpl(eCurrent: t.ESteamNetworkingConfigValue, bEnumerateDevVars: bool) callconv(.C) t.ESteamNetworkingConfigValue {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues:\n\t- eCurrent = {any}\n\t- bEnumerateDevVars = {any}\n\n", .{ eCurrent, bEnumerateDevVars });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IterateGenericEditableConfigValues, .{ .name = "SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues", .linkage = .Strong }); }
    pub const SteamNetworkingIPAddr_ToString = t.getImplFn("ISteamNetworkingUtils", "SteamNetworkingIPAddr_ToString", fn([*c]const t.SteamNetworkingIPAddr, [*c]u8, t.uint32, bool) callconv(.C) void) orelse (struct {
        fn noImpl(addr: [*c]const t.SteamNetworkingIPAddr, buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString:\n\t- addr = {any}\n\t- buf = {any}\n\t- cbBuf = {any}\n\t- bWithPort = {any}\n\n", .{ addr, buf, cbBuf, bWithPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SteamNetworkingIPAddr_ToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString", .linkage = .Strong }); }
    pub const SteamNetworkingIPAddr_ParseString = t.getImplFn("ISteamNetworkingUtils", "SteamNetworkingIPAddr_ParseString", fn([*c]t.SteamNetworkingIPAddr, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pAddr: [*c]t.SteamNetworkingIPAddr, pszStr: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString:\n\t- pAddr = {any}\n\t- pszStr = {any}\n\n", .{ pAddr, pszStr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SteamNetworkingIPAddr_ParseString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString", .linkage = .Strong }); }
    pub const SteamNetworkingIPAddr_GetFakeIPType = t.getImplFn("ISteamNetworkingUtils", "SteamNetworkingIPAddr_GetFakeIPType", fn([*c]const t.SteamNetworkingIPAddr) callconv(.C) t.ESteamNetworkingFakeIPType) orelse (struct {
        fn noImpl(addr: [*c]const t.SteamNetworkingIPAddr) callconv(.C) t.ESteamNetworkingFakeIPType {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType:\n\t- addr = {any}\n\n", .{ addr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SteamNetworkingIPAddr_GetFakeIPType, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType", .linkage = .Strong }); }
    pub const SteamNetworkingIdentity_ToString = t.getImplFn("ISteamNetworkingUtils", "SteamNetworkingIdentity_ToString", fn([*c]const t.SteamNetworkingIdentity, [*c]u8, t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(identity: [*c]const t.SteamNetworkingIdentity, buf: [*c]u8, cbBuf: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString:\n\t- identity = {any}\n\t- buf = {any}\n\t- cbBuf = {any}\n\n", .{ identity, buf, cbBuf });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SteamNetworkingIdentity_ToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString", .linkage = .Strong }); }
    pub const SteamNetworkingIdentity_ParseString = t.getImplFn("ISteamNetworkingUtils", "SteamNetworkingIdentity_ParseString", fn([*c]t.SteamNetworkingIdentity, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pIdentity: [*c]t.SteamNetworkingIdentity, pszStr: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString:\n\t- pIdentity = {any}\n\t- pszStr = {any}\n\n", .{ pIdentity, pszStr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SteamNetworkingIdentity_ParseString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingUtils; }
const SteamNetworkingUtils_SteamAPI = struct {
    pub const v004 = t.getImplFn("SteamNetworkingUtils_SteamAPI", "v004", fn() callconv(.C) [*c]t.ISteamNetworkingUtils) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamNetworkingUtils {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingUtils_SteamAPI_v004\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v004, .{ .name = "SteamAPI_SteamNetworkingUtils_SteamAPI_v004", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingUtils_SteamAPI; }
pub const ISteamGameServer = extern struct {
    _: u8 = 1,
    pub const version = "SteamGameServer014";
    pub const SetProduct = t.getImplFn("ISteamGameServer", "SetProduct", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszProduct: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetProduct:\n\t- pszProduct = {any}\n\n", .{ pszProduct });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetProduct, .{ .name = "SteamAPI_ISteamGameServer_SetProduct", .linkage = .Strong }); }
    pub const SetGameDescription = t.getImplFn("ISteamGameServer", "SetGameDescription", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszGameDescription: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameDescription:\n\t- pszGameDescription = {any}\n\n", .{ pszGameDescription });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGameDescription, .{ .name = "SteamAPI_ISteamGameServer_SetGameDescription", .linkage = .Strong }); }
    pub const SetModDir = t.getImplFn("ISteamGameServer", "SetModDir", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszModDir: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetModDir:\n\t- pszModDir = {any}\n\n", .{ pszModDir });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetModDir, .{ .name = "SteamAPI_ISteamGameServer_SetModDir", .linkage = .Strong }); }
    pub const SetDedicatedServer = t.getImplFn("ISteamGameServer", "SetDedicatedServer", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bDedicated: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetDedicatedServer:\n\t- bDedicated = {any}\n\n", .{ bDedicated });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetDedicatedServer, .{ .name = "SteamAPI_ISteamGameServer_SetDedicatedServer", .linkage = .Strong }); }
    pub const LogOn = t.getImplFn("ISteamGameServer", "LogOn", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszToken: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOn:\n\t- pszToken = {any}\n\n", .{ pszToken });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LogOn, .{ .name = "SteamAPI_ISteamGameServer_LogOn", .linkage = .Strong }); }
    pub const LogOnAnonymous = t.getImplFn("ISteamGameServer", "LogOnAnonymous", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOnAnonymous\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LogOnAnonymous, .{ .name = "SteamAPI_ISteamGameServer_LogOnAnonymous", .linkage = .Strong }); }
    pub const LogOff = t.getImplFn("ISteamGameServer", "LogOff", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOff\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(LogOff, .{ .name = "SteamAPI_ISteamGameServer_LogOff", .linkage = .Strong }); }
    pub const BLoggedOn = t.getImplFn("ISteamGameServer", "BLoggedOn", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BLoggedOn\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BLoggedOn, .{ .name = "SteamAPI_ISteamGameServer_BLoggedOn", .linkage = .Strong }); }
    pub const BSecure = t.getImplFn("ISteamGameServer", "BSecure", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BSecure\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BSecure, .{ .name = "SteamAPI_ISteamGameServer_BSecure", .linkage = .Strong }); }
    pub const GetSteamID = t.getImplFn("ISteamGameServer", "GetSteamID", fn() callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl() callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetSteamID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSteamID, .{ .name = "SteamAPI_ISteamGameServer_GetSteamID", .linkage = .Strong }); }
    pub const WasRestartRequested = t.getImplFn("ISteamGameServer", "WasRestartRequested", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_WasRestartRequested\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(WasRestartRequested, .{ .name = "SteamAPI_ISteamGameServer_WasRestartRequested", .linkage = .Strong }); }
    pub const SetMaxPlayerCount = t.getImplFn("ISteamGameServer", "SetMaxPlayerCount", fn(i32) callconv(.C) void) orelse (struct {
        fn noImpl(cPlayersMax: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetMaxPlayerCount:\n\t- cPlayersMax = {any}\n\n", .{ cPlayersMax });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetMaxPlayerCount, .{ .name = "SteamAPI_ISteamGameServer_SetMaxPlayerCount", .linkage = .Strong }); }
    pub const SetBotPlayerCount = t.getImplFn("ISteamGameServer", "SetBotPlayerCount", fn(i32) callconv(.C) void) orelse (struct {
        fn noImpl(cBotplayers: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetBotPlayerCount:\n\t- cBotplayers = {any}\n\n", .{ cBotplayers });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetBotPlayerCount, .{ .name = "SteamAPI_ISteamGameServer_SetBotPlayerCount", .linkage = .Strong }); }
    pub const SetServerName = t.getImplFn("ISteamGameServer", "SetServerName", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszServerName: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetServerName:\n\t- pszServerName = {any}\n\n", .{ pszServerName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetServerName, .{ .name = "SteamAPI_ISteamGameServer_SetServerName", .linkage = .Strong }); }
    pub const SetMapName = t.getImplFn("ISteamGameServer", "SetMapName", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszMapName: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetMapName:\n\t- pszMapName = {any}\n\n", .{ pszMapName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetMapName, .{ .name = "SteamAPI_ISteamGameServer_SetMapName", .linkage = .Strong }); }
    pub const SetPasswordProtected = t.getImplFn("ISteamGameServer", "SetPasswordProtected", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bPasswordProtected: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetPasswordProtected:\n\t- bPasswordProtected = {any}\n\n", .{ bPasswordProtected });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPasswordProtected, .{ .name = "SteamAPI_ISteamGameServer_SetPasswordProtected", .linkage = .Strong }); }
    pub const SetSpectatorPort = t.getImplFn("ISteamGameServer", "SetSpectatorPort", fn(t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(unSpectatorPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetSpectatorPort:\n\t- unSpectatorPort = {any}\n\n", .{ unSpectatorPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSpectatorPort, .{ .name = "SteamAPI_ISteamGameServer_SetSpectatorPort", .linkage = .Strong }); }
    pub const SetSpectatorServerName = t.getImplFn("ISteamGameServer", "SetSpectatorServerName", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszSpectatorServerName: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetSpectatorServerName:\n\t- pszSpectatorServerName = {any}\n\n", .{ pszSpectatorServerName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSpectatorServerName, .{ .name = "SteamAPI_ISteamGameServer_SetSpectatorServerName", .linkage = .Strong }); }
    pub const ClearAllKeyValues = t.getImplFn("ISteamGameServer", "ClearAllKeyValues", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_ClearAllKeyValues\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ClearAllKeyValues, .{ .name = "SteamAPI_ISteamGameServer_ClearAllKeyValues", .linkage = .Strong }); }
    pub const SetKeyValue = t.getImplFn("ISteamGameServer", "SetKeyValue", fn([*c]const u8, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pKey: [*c]const u8, pValue: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetKeyValue:\n\t- pKey = {any}\n\t- pValue = {any}\n\n", .{ pKey, pValue });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetKeyValue, .{ .name = "SteamAPI_ISteamGameServer_SetKeyValue", .linkage = .Strong }); }
    pub const SetGameTags = t.getImplFn("ISteamGameServer", "SetGameTags", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pchGameTags: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameTags:\n\t- pchGameTags = {any}\n\n", .{ pchGameTags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGameTags, .{ .name = "SteamAPI_ISteamGameServer_SetGameTags", .linkage = .Strong }); }
    pub const SetGameData = t.getImplFn("ISteamGameServer", "SetGameData", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pchGameData: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameData:\n\t- pchGameData = {any}\n\n", .{ pchGameData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGameData, .{ .name = "SteamAPI_ISteamGameServer_SetGameData", .linkage = .Strong }); }
    pub const SetRegion = t.getImplFn("ISteamGameServer", "SetRegion", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pszRegion: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetRegion:\n\t- pszRegion = {any}\n\n", .{ pszRegion });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetRegion, .{ .name = "SteamAPI_ISteamGameServer_SetRegion", .linkage = .Strong }); }
    pub const SetAdvertiseServerActive = t.getImplFn("ISteamGameServer", "SetAdvertiseServerActive", fn(bool) callconv(.C) void) orelse (struct {
        fn noImpl(bActive: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetAdvertiseServerActive:\n\t- bActive = {any}\n\n", .{ bActive });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetAdvertiseServerActive, .{ .name = "SteamAPI_ISteamGameServer_SetAdvertiseServerActive", .linkage = .Strong }); }
    pub const GetAuthSessionTicket = t.getImplFn("ISteamGameServer", "GetAuthSessionTicket", fn(?*anyopaque, i32, [*c]t.uint32) callconv(.C) t.HAuthTicket) orelse (struct {
        fn noImpl(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) t.HAuthTicket {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetAuthSessionTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetAuthSessionTicket, .{ .name = "SteamAPI_ISteamGameServer_GetAuthSessionTicket", .linkage = .Strong }); }
    pub const BeginAuthSession = t.getImplFn("ISteamGameServer", "BeginAuthSession", fn(?*const anyopaque, i32, t.CSteamID) callconv(.C) t.EBeginAuthSessionResult) orelse (struct {
        fn noImpl(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID) callconv(.C) t.EBeginAuthSessionResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BeginAuthSession:\n\t- pAuthTicket = {any}\n\t- cbAuthTicket = {any}\n\t- steamID = {any}\n\n", .{ pAuthTicket, cbAuthTicket, steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BeginAuthSession, .{ .name = "SteamAPI_ISteamGameServer_BeginAuthSession", .linkage = .Strong }); }
    pub const EndAuthSession = t.getImplFn("ISteamGameServer", "EndAuthSession", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_EndAuthSession:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(EndAuthSession, .{ .name = "SteamAPI_ISteamGameServer_EndAuthSession", .linkage = .Strong }); }
    pub const CancelAuthTicket = t.getImplFn("ISteamGameServer", "CancelAuthTicket", fn(t.HAuthTicket) callconv(.C) void) orelse (struct {
        fn noImpl(hAuthTicket: t.HAuthTicket) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_CancelAuthTicket:\n\t- hAuthTicket = {any}\n\n", .{ hAuthTicket });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CancelAuthTicket, .{ .name = "SteamAPI_ISteamGameServer_CancelAuthTicket", .linkage = .Strong }); }
    pub const UserHasLicenseForApp = t.getImplFn("ISteamGameServer", "UserHasLicenseForApp", fn(t.CSteamID, t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult) orelse (struct {
        fn noImpl(steamID: t.CSteamID, appID: t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_UserHasLicenseForApp:\n\t- steamID = {any}\n\t- appID = {any}\n\n", .{ steamID, appID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UserHasLicenseForApp, .{ .name = "SteamAPI_ISteamGameServer_UserHasLicenseForApp", .linkage = .Strong }); }
    pub const RequestUserGroupStatus = t.getImplFn("ISteamGameServer", "RequestUserGroupStatus", fn(t.CSteamID, t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, steamIDGroup: t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_RequestUserGroupStatus:\n\t- steamIDUser = {any}\n\t- steamIDGroup = {any}\n\n", .{ steamIDUser, steamIDGroup });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestUserGroupStatus, .{ .name = "SteamAPI_ISteamGameServer_RequestUserGroupStatus", .linkage = .Strong }); }
    pub const GetGameplayStats = t.getImplFn("ISteamGameServer", "GetGameplayStats", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetGameplayStats\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGameplayStats, .{ .name = "SteamAPI_ISteamGameServer_GetGameplayStats", .linkage = .Strong }); }
    pub const GetServerReputation = t.getImplFn("ISteamGameServer", "GetServerReputation", fn() callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetServerReputation\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetServerReputation, .{ .name = "SteamAPI_ISteamGameServer_GetServerReputation", .linkage = .Strong }); }
    pub const GetPublicIP = t.getImplFn("ISteamGameServer", "GetPublicIP", fn() callconv(.C) t.SteamIPAddress_t) orelse (struct {
        fn noImpl() callconv(.C) t.SteamIPAddress_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetPublicIP\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPublicIP, .{ .name = "SteamAPI_ISteamGameServer_GetPublicIP", .linkage = .Strong }); }
    pub const HandleIncomingPacket = t.getImplFn("ISteamGameServer", "HandleIncomingPacket", fn(?*const anyopaque, i32, t.uint32, t.uint16) callconv(.C) bool) orelse (struct {
        fn noImpl(pData: ?*const anyopaque, cbData: i32, srcIP: t.uint32, srcPort: t.uint16) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_HandleIncomingPacket:\n\t- pData = {any}\n\t- cbData = {any}\n\t- srcIP = {any}\n\t- srcPort = {any}\n\n", .{ pData, cbData, srcIP, srcPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(HandleIncomingPacket, .{ .name = "SteamAPI_ISteamGameServer_HandleIncomingPacket", .linkage = .Strong }); }
    pub const GetNextOutgoingPacket = t.getImplFn("ISteamGameServer", "GetNextOutgoingPacket", fn(?*anyopaque, i32, [*c]t.uint32, [*c]t.uint16) callconv(.C) i32) orelse (struct {
        fn noImpl(pOut: ?*anyopaque, cbMaxOut: i32, pNetAdr: [*c]t.uint32, pPort: [*c]t.uint16) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetNextOutgoingPacket:\n\t- pOut = {any}\n\t- cbMaxOut = {any}\n\t- pNetAdr = {any}\n\t- pPort = {any}\n\n", .{ pOut, cbMaxOut, pNetAdr, pPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetNextOutgoingPacket, .{ .name = "SteamAPI_ISteamGameServer_GetNextOutgoingPacket", .linkage = .Strong }); }
    pub const AssociateWithClan = t.getImplFn("ISteamGameServer", "AssociateWithClan", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_AssociateWithClan:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
            return undefined;
        }
    }).noImpl;
    comptime { @export(AssociateWithClan, .{ .name = "SteamAPI_ISteamGameServer_AssociateWithClan", .linkage = .Strong }); }
    pub const ComputeNewPlayerCompatibility = t.getImplFn("ISteamGameServer", "ComputeNewPlayerCompatibility", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDNewPlayer: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility:\n\t- steamIDNewPlayer = {any}\n\n", .{ steamIDNewPlayer });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ComputeNewPlayerCompatibility, .{ .name = "SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility", .linkage = .Strong }); }
    pub const SendUserConnectAndAuthenticate_DEPRECATED = t.getImplFn("ISteamGameServer", "SendUserConnectAndAuthenticate_DEPRECATED", fn(t.uint32, ?*const anyopaque, t.uint32, [*c]t.CSteamID) callconv(.C) bool) orelse (struct {
        fn noImpl(unIPClient: t.uint32, pvAuthBlob: ?*const anyopaque, cubAuthBlobSize: t.uint32, pSteamIDUser: [*c]t.CSteamID) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED:\n\t- unIPClient = {any}\n\t- pvAuthBlob = {any}\n\t- cubAuthBlobSize = {any}\n\t- pSteamIDUser = {any}\n\n", .{ unIPClient, pvAuthBlob, cubAuthBlobSize, pSteamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendUserConnectAndAuthenticate_DEPRECATED, .{ .name = "SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED", .linkage = .Strong }); }
    pub const CreateUnauthenticatedUserConnection = t.getImplFn("ISteamGameServer", "CreateUnauthenticatedUserConnection", fn() callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl() callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(CreateUnauthenticatedUserConnection, .{ .name = "SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection", .linkage = .Strong }); }
    pub const SendUserDisconnect_DEPRECATED = t.getImplFn("ISteamGameServer", "SendUserDisconnect_DEPRECATED", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendUserDisconnect_DEPRECATED, .{ .name = "SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED", .linkage = .Strong }); }
    pub const BUpdateUserData = t.getImplFn("ISteamGameServer", "BUpdateUserData", fn(t.CSteamID, [*c]const u8, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchPlayerName: [*c]const u8, uScore: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BUpdateUserData:\n\t- steamIDUser = {any}\n\t- pchPlayerName = {any}\n\t- uScore = {any}\n\n", .{ steamIDUser, pchPlayerName, uScore });
            return undefined;
        }
    }).noImpl;
    comptime { @export(BUpdateUserData, .{ .name = "SteamAPI_ISteamGameServer_BUpdateUserData", .linkage = .Strong }); }
};
comptime { _ = ISteamGameServer; }
const SteamGameServer = struct {
    pub const v014 = t.getImplFn("SteamGameServer", "v014", fn() callconv(.C) [*c]t.ISteamGameServer) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamGameServer {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServer_v014\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v014, .{ .name = "SteamAPI_SteamGameServer_v014", .linkage = .Strong }); }
};
comptime { _ = SteamGameServer; }
pub const ISteamGameServerStats = extern struct {
    _: u8 = 1,
    pub const version = "SteamGameServerStats001";
    pub const RequestUserStats = t.getImplFn("ISteamGameServerStats", "RequestUserStats", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_RequestUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(RequestUserStats, .{ .name = "SteamAPI_ISteamGameServerStats_RequestUserStats", .linkage = .Strong }); }
    pub const GetUserStatInt32 = t.getImplFn("ISteamGameServerStats", "GetUserStatInt32", fn(t.CSteamID, [*c]const u8, [*c]i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserStatInt32, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserStatInt32", .linkage = .Strong }); }
    pub const GetUserStatFloat = t.getImplFn("ISteamGameServerStats", "GetUserStatFloat", fn(t.CSteamID, [*c]const u8, [*c]f32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserStatFloat, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserStatFloat", .linkage = .Strong }); }
    pub const GetUserAchievement = t.getImplFn("ISteamGameServerStats", "GetUserAchievement", fn(t.CSteamID, [*c]const u8, [*c]bool) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ steamIDUser, pchName, pbAchieved });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserAchievement", .linkage = .Strong }); }
    pub const SetUserStatInt32 = t.getImplFn("ISteamGameServerStats", "SetUserStatInt32", fn(t.CSteamID, [*c]const u8, i32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, nData: i32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- nData = {any}\n\n", .{ steamIDUser, pchName, nData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetUserStatInt32, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserStatInt32", .linkage = .Strong }); }
    pub const SetUserStatFloat = t.getImplFn("ISteamGameServerStats", "SetUserStatFloat", fn(t.CSteamID, [*c]const u8, f32) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, fData: f32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- fData = {any}\n\n", .{ steamIDUser, pchName, fData });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetUserStatFloat, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserStatFloat", .linkage = .Strong }); }
    pub const UpdateUserAvgRateStat = t.getImplFn("ISteamGameServerStats", "UpdateUserAvgRateStat", fn(t.CSteamID, [*c]const u8, f32, f64) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- flCountThisSession = {any}\n\t- dSessionLength = {any}\n\n", .{ steamIDUser, pchName, flCountThisSession, dSessionLength });
            return undefined;
        }
    }).noImpl;
    comptime { @export(UpdateUserAvgRateStat, .{ .name = "SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat", .linkage = .Strong }); }
    pub const SetUserAchievement = t.getImplFn("ISteamGameServerStats", "SetUserAchievement", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\n", .{ steamIDUser, pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserAchievement", .linkage = .Strong }); }
    pub const ClearUserAchievement = t.getImplFn("ISteamGameServerStats", "ClearUserAchievement", fn(t.CSteamID, [*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID, pchName: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_ClearUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\n", .{ steamIDUser, pchName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ClearUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_ClearUserAchievement", .linkage = .Strong }); }
    pub const StoreUserStats = t.getImplFn("ISteamGameServerStats", "StoreUserStats", fn(t.CSteamID) callconv(.C) t.SteamAPICall_t) orelse (struct {
        fn noImpl(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
            p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_StoreUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
            return undefined;
        }
    }).noImpl;
    comptime { @export(StoreUserStats, .{ .name = "SteamAPI_ISteamGameServerStats_StoreUserStats", .linkage = .Strong }); }
};
comptime { _ = ISteamGameServerStats; }
const SteamGameServerStats = struct {
    pub const v001 = t.getImplFn("SteamGameServerStats", "v001", fn() callconv(.C) [*c]t.ISteamGameServerStats) orelse (struct {
        fn noImpl() callconv(.C) [*c]t.ISteamGameServerStats {
            p("NOT IMPLEMENTED SteamAPI_SteamGameServerStats_v001\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(v001, .{ .name = "SteamAPI_SteamGameServerStats_v001", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerStats; }
pub const ISteamNetworkingFakeUDPPort = extern struct {
    _: u8 = 1,
    pub const DestroyFakeUDPPort = t.getImplFn("ISteamNetworkingFakeUDPPort", "DestroyFakeUDPPort", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(DestroyFakeUDPPort, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort", .linkage = .Strong }); }
    pub const SendMessageToFakeIP = t.getImplFn("ISteamNetworkingFakeUDPPort", "SendMessageToFakeIP", fn([*c]const t.SteamNetworkingIPAddr, ?*const anyopaque, t.uint32, i32) callconv(.C) t.EResult) orelse (struct {
        fn noImpl(remoteAddress: [*c]const t.SteamNetworkingIPAddr, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32) callconv(.C) t.EResult {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP:\n\t- remoteAddress = {any}\n\t- pData = {any}\n\t- cbData = {any}\n\t- nSendFlags = {any}\n\n", .{ remoteAddress, pData, cbData, nSendFlags });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SendMessageToFakeIP, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP", .linkage = .Strong }); }
    pub const ReceiveMessages = t.getImplFn("ISteamNetworkingFakeUDPPort", "ReceiveMessages", fn([*c][*c]t.SteamNetworkingMessage_t, i32) callconv(.C) i32) orelse (struct {
        fn noImpl(ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages:\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ ppOutMessages, nMaxMessages });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ReceiveMessages, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages", .linkage = .Strong }); }
    pub const ScheduleCleanup = t.getImplFn("ISteamNetworkingFakeUDPPort", "ScheduleCleanup", fn([*c]const t.SteamNetworkingIPAddr) callconv(.C) void) orelse (struct {
        fn noImpl(remoteAddress: [*c]const t.SteamNetworkingIPAddr) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup:\n\t- remoteAddress = {any}\n\n", .{ remoteAddress });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ScheduleCleanup, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingFakeUDPPort; }
