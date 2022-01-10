const t = @import("../steam_api.zig");
const p0 = t.p;
pub const ISteamClient = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamClient"};
    _: u8 = 1,
    pub fn CreateSteamPipe() callconv(.C) t.HSteamPipe {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateSteamPipe"}), .{ }, .{ }, @TypeOf(S.CreateSteamPipe));
    }
    comptime { @export(CreateSteamPipe, .{ .name = "SteamAPI_ISteamClient_CreateSteamPipe", .linkage = .Strong }); }
    pub fn BReleaseSteamPipe(hSteamPipe: t.HSteamPipe, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BReleaseSteamPipe"}), .{ hSteamPipe, }, .{ "hSteamPipe", }, @TypeOf(S.BReleaseSteamPipe));
    }
    comptime { @export(BReleaseSteamPipe, .{ .name = "SteamAPI_ISteamClient_BReleaseSteamPipe", .linkage = .Strong }); }
    pub fn ConnectToGlobalUser(hSteamPipe: t.HSteamPipe, ) callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectToGlobalUser"}), .{ hSteamPipe, }, .{ "hSteamPipe", }, @TypeOf(S.ConnectToGlobalUser));
    }
    comptime { @export(ConnectToGlobalUser, .{ .name = "SteamAPI_ISteamClient_ConnectToGlobalUser", .linkage = .Strong }); }
    pub fn CreateLocalUser(phSteamPipe: [*c]t.HSteamPipe, eAccountType: t.EAccountType, ) callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateLocalUser"}), .{ phSteamPipe, eAccountType, }, .{ "phSteamPipe", "eAccountType", }, @TypeOf(S.CreateLocalUser));
    }
    comptime { @export(CreateLocalUser, .{ .name = "SteamAPI_ISteamClient_CreateLocalUser", .linkage = .Strong }); }
    pub fn ReleaseUser(hSteamPipe: t.HSteamPipe, hUser: t.HSteamUser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseUser"}), .{ hSteamPipe, hUser, }, .{ "hSteamPipe", "hUser", }, @TypeOf(S.ReleaseUser));
    }
    comptime { @export(ReleaseUser, .{ .name = "SteamAPI_ISteamClient_ReleaseUser", .linkage = .Strong }); }
    pub fn GetISteamUser(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUser"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUser));
    }
    comptime { @export(GetISteamUser, .{ .name = "SteamAPI_ISteamClient_GetISteamUser", .linkage = .Strong }); }
    pub fn GetISteamGameServer(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameServer {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameServer"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameServer));
    }
    comptime { @export(GetISteamGameServer, .{ .name = "SteamAPI_ISteamClient_GetISteamGameServer", .linkage = .Strong }); }
    pub fn SetLocalIPBinding(unIP: [*c]const t.SteamIPAddress_t, usPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLocalIPBinding"}), .{ unIP, usPort, }, .{ "unIP", "usPort", }, @TypeOf(S.SetLocalIPBinding));
    }
    comptime { @export(SetLocalIPBinding, .{ .name = "SteamAPI_ISteamClient_SetLocalIPBinding", .linkage = .Strong }); }
    pub fn GetISteamFriends(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamFriends {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamFriends"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamFriends));
    }
    comptime { @export(GetISteamFriends, .{ .name = "SteamAPI_ISteamClient_GetISteamFriends", .linkage = .Strong }); }
    pub fn GetISteamUtils(hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUtils"}), .{ hSteamPipe, pchVersion, }, .{ "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUtils));
    }
    comptime { @export(GetISteamUtils, .{ .name = "SteamAPI_ISteamClient_GetISteamUtils", .linkage = .Strong }); }
    pub fn GetISteamMatchmaking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMatchmaking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMatchmaking"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMatchmaking));
    }
    comptime { @export(GetISteamMatchmaking, .{ .name = "SteamAPI_ISteamClient_GetISteamMatchmaking", .linkage = .Strong }); }
    pub fn GetISteamMatchmakingServers(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMatchmakingServers {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMatchmakingServers"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMatchmakingServers));
    }
    comptime { @export(GetISteamMatchmakingServers, .{ .name = "SteamAPI_ISteamClient_GetISteamMatchmakingServers", .linkage = .Strong }); }
    pub fn GetISteamGenericInterface(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) ?*anyopaque {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGenericInterface"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGenericInterface));
    }
    comptime { @export(GetISteamGenericInterface, .{ .name = "SteamAPI_ISteamClient_GetISteamGenericInterface", .linkage = .Strong }); }
    pub fn GetISteamUserStats(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUserStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUserStats"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUserStats));
    }
    comptime { @export(GetISteamUserStats, .{ .name = "SteamAPI_ISteamClient_GetISteamUserStats", .linkage = .Strong }); }
    pub fn GetISteamGameServerStats(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameServerStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameServerStats"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameServerStats));
    }
    comptime { @export(GetISteamGameServerStats, .{ .name = "SteamAPI_ISteamClient_GetISteamGameServerStats", .linkage = .Strong }); }
    pub fn GetISteamApps(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamApps {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamApps"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamApps));
    }
    comptime { @export(GetISteamApps, .{ .name = "SteamAPI_ISteamClient_GetISteamApps", .linkage = .Strong }); }
    pub fn GetISteamNetworking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamNetworking"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamNetworking));
    }
    comptime { @export(GetISteamNetworking, .{ .name = "SteamAPI_ISteamClient_GetISteamNetworking", .linkage = .Strong }); }
    pub fn GetISteamRemoteStorage(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamRemoteStorage {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamRemoteStorage"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamRemoteStorage));
    }
    comptime { @export(GetISteamRemoteStorage, .{ .name = "SteamAPI_ISteamClient_GetISteamRemoteStorage", .linkage = .Strong }); }
    pub fn GetISteamScreenshots(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamScreenshots {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamScreenshots"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamScreenshots));
    }
    comptime { @export(GetISteamScreenshots, .{ .name = "SteamAPI_ISteamClient_GetISteamScreenshots", .linkage = .Strong }); }
    pub fn GetISteamGameSearch(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameSearch {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameSearch"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameSearch));
    }
    comptime { @export(GetISteamGameSearch, .{ .name = "SteamAPI_ISteamClient_GetISteamGameSearch", .linkage = .Strong }); }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCCallCount"}), .{ }, .{ }, @TypeOf(S.GetIPCCallCount));
    }
    comptime { @export(GetIPCCallCount, .{ .name = "SteamAPI_ISteamClient_GetIPCCallCount", .linkage = .Strong }); }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetWarningMessageHook"}), .{ pFunction, }, .{ "pFunction", }, @TypeOf(S.SetWarningMessageHook));
    }
    comptime { @export(SetWarningMessageHook, .{ .name = "SteamAPI_ISteamClient_SetWarningMessageHook", .linkage = .Strong }); }
    pub fn BShutdownIfAllPipesClosed() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BShutdownIfAllPipesClosed"}), .{ }, .{ }, @TypeOf(S.BShutdownIfAllPipesClosed));
    }
    comptime { @export(BShutdownIfAllPipesClosed, .{ .name = "SteamAPI_ISteamClient_BShutdownIfAllPipesClosed", .linkage = .Strong }); }
    pub fn GetISteamHTTP(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamHTTP"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamHTTP));
    }
    comptime { @export(GetISteamHTTP, .{ .name = "SteamAPI_ISteamClient_GetISteamHTTP", .linkage = .Strong }); }
    pub fn GetISteamController(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamController {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamController"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamController));
    }
    comptime { @export(GetISteamController, .{ .name = "SteamAPI_ISteamClient_GetISteamController", .linkage = .Strong }); }
    pub fn GetISteamUGC(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUGC"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUGC));
    }
    comptime { @export(GetISteamUGC, .{ .name = "SteamAPI_ISteamClient_GetISteamUGC", .linkage = .Strong }); }
    pub fn GetISteamAppList(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamAppList {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamAppList"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamAppList));
    }
    comptime { @export(GetISteamAppList, .{ .name = "SteamAPI_ISteamClient_GetISteamAppList", .linkage = .Strong }); }
    pub fn GetISteamMusic(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMusic {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMusic"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMusic));
    }
    comptime { @export(GetISteamMusic, .{ .name = "SteamAPI_ISteamClient_GetISteamMusic", .linkage = .Strong }); }
    pub fn GetISteamMusicRemote(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMusicRemote {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMusicRemote"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMusicRemote));
    }
    comptime { @export(GetISteamMusicRemote, .{ .name = "SteamAPI_ISteamClient_GetISteamMusicRemote", .linkage = .Strong }); }
    pub fn GetISteamHTMLSurface(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamHTMLSurface {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamHTMLSurface"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamHTMLSurface));
    }
    comptime { @export(GetISteamHTMLSurface, .{ .name = "SteamAPI_ISteamClient_GetISteamHTMLSurface", .linkage = .Strong }); }
    pub fn GetISteamInventory(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamInventory"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamInventory));
    }
    comptime { @export(GetISteamInventory, .{ .name = "SteamAPI_ISteamClient_GetISteamInventory", .linkage = .Strong }); }
    pub fn GetISteamVideo(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamVideo {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamVideo"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamVideo));
    }
    comptime { @export(GetISteamVideo, .{ .name = "SteamAPI_ISteamClient_GetISteamVideo", .linkage = .Strong }); }
    pub fn GetISteamParentalSettings(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamParentalSettings {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamParentalSettings"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamParentalSettings));
    }
    comptime { @export(GetISteamParentalSettings, .{ .name = "SteamAPI_ISteamClient_GetISteamParentalSettings", .linkage = .Strong }); }
    pub fn GetISteamInput(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamInput {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamInput"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamInput));
    }
    comptime { @export(GetISteamInput, .{ .name = "SteamAPI_ISteamClient_GetISteamInput", .linkage = .Strong }); }
    pub fn GetISteamParties(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamParties {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamParties"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamParties));
    }
    comptime { @export(GetISteamParties, .{ .name = "SteamAPI_ISteamClient_GetISteamParties", .linkage = .Strong }); }
    pub fn GetISteamRemotePlay(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamRemotePlay {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamRemotePlay"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamRemotePlay));
    }
    comptime { @export(GetISteamRemotePlay, .{ .name = "SteamAPI_ISteamClient_GetISteamRemotePlay", .linkage = .Strong }); }
};
comptime { _ = ISteamClient; }
pub const ISteamUser = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUser"};
    _: u8 = 1,
    pub const version = "SteamUser021";
    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHSteamUser"}), .{ }, .{ }, @TypeOf(S.GetHSteamUser));
    }
    comptime { @export(GetHSteamUser, .{ .name = "SteamAPI_ISteamUser_GetHSteamUser", .linkage = .Strong }); }
    pub fn BLoggedOn() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BLoggedOn"}), .{ }, .{ }, @TypeOf(S.BLoggedOn));
    }
    comptime { @export(BLoggedOn, .{ .name = "SteamAPI_ISteamUser_BLoggedOn", .linkage = .Strong }); }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID"}), .{ }, .{ }, @TypeOf(S.GetSteamID));
    }
    comptime { @export(GetSteamID, .{ .name = "SteamAPI_ISteamUser_GetSteamID", .linkage = .Strong }); }
    pub fn InitiateGameConnection_DEPRECATED(pAuthBlob: ?*anyopaque, cbMaxAuthBlob: i32, steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, bSecure: bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitiateGameConnection_DEPRECATED"}), .{ pAuthBlob, cbMaxAuthBlob, steamIDGameServer, unIPServer, usPortServer, bSecure, }, .{ "pAuthBlob", "cbMaxAuthBlob", "steamIDGameServer", "unIPServer", "usPortServer", "bSecure", }, @TypeOf(S.InitiateGameConnection_DEPRECATED));
    }
    comptime { @export(InitiateGameConnection_DEPRECATED, .{ .name = "SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED", .linkage = .Strong }); }
    pub fn TerminateGameConnection_DEPRECATED(unIPServer: t.uint32, usPortServer: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TerminateGameConnection_DEPRECATED"}), .{ unIPServer, usPortServer, }, .{ "unIPServer", "usPortServer", }, @TypeOf(S.TerminateGameConnection_DEPRECATED));
    }
    comptime { @export(TerminateGameConnection_DEPRECATED, .{ .name = "SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED", .linkage = .Strong }); }
    pub fn TrackAppUsageEvent(gameID: t.CGameID, eAppUsageEvent: i32, pchExtraInfo: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TrackAppUsageEvent"}), .{ gameID, eAppUsageEvent, pchExtraInfo, }, .{ "gameID", "eAppUsageEvent", "pchExtraInfo", }, @TypeOf(S.TrackAppUsageEvent));
    }
    comptime { @export(TrackAppUsageEvent, .{ .name = "SteamAPI_ISteamUser_TrackAppUsageEvent", .linkage = .Strong }); }
    pub fn GetUserDataFolder(pchBuffer: [*c]u8, cubBuffer: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserDataFolder"}), .{ pchBuffer, cubBuffer, }, .{ "pchBuffer", "cubBuffer", }, @TypeOf(S.GetUserDataFolder));
    }
    comptime { @export(GetUserDataFolder, .{ .name = "SteamAPI_ISteamUser_GetUserDataFolder", .linkage = .Strong }); }
    pub fn StartVoiceRecording() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartVoiceRecording"}), .{ }, .{ }, @TypeOf(S.StartVoiceRecording));
    }
    comptime { @export(StartVoiceRecording, .{ .name = "SteamAPI_ISteamUser_StartVoiceRecording", .linkage = .Strong }); }
    pub fn StopVoiceRecording() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopVoiceRecording"}), .{ }, .{ }, @TypeOf(S.StopVoiceRecording));
    }
    comptime { @export(StopVoiceRecording, .{ .name = "SteamAPI_ISteamUser_StopVoiceRecording", .linkage = .Strong }); }
    pub fn GetAvailableVoice(pcbCompressed: [*c]t.uint32, pcbUncompressed_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableVoice"}), .{ pcbCompressed, pcbUncompressed_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated, }, .{ "pcbCompressed", "pcbUncompressed_Deprecated", "nUncompressedVoiceDesiredSampleRate_Deprecated", }, @TypeOf(S.GetAvailableVoice));
    }
    comptime { @export(GetAvailableVoice, .{ .name = "SteamAPI_ISteamUser_GetAvailableVoice", .linkage = .Strong }); }
    pub fn GetVoice(bWantCompressed: bool, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: ?*anyopaque, cbUncompressedDestBufferSize_Deprecated: t.uint32, nUncompressBytesWritten_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVoice"}), .{ bWantCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, bWantUncompressed_Deprecated, pUncompressedDestBuffer_Deprecated, cbUncompressedDestBufferSize_Deprecated, nUncompressBytesWritten_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated, }, .{ "bWantCompressed", "pDestBuffer", "cbDestBufferSize", "nBytesWritten", "bWantUncompressed_Deprecated", "pUncompressedDestBuffer_Deprecated", "cbUncompressedDestBufferSize_Deprecated", "nUncompressBytesWritten_Deprecated", "nUncompressedVoiceDesiredSampleRate_Deprecated", }, @TypeOf(S.GetVoice));
    }
    comptime { @export(GetVoice, .{ .name = "SteamAPI_ISteamUser_GetVoice", .linkage = .Strong }); }
    pub fn DecompressVoice(pCompressed: ?*const anyopaque, cbCompressed: t.uint32, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, nDesiredSampleRate: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DecompressVoice"}), .{ pCompressed, cbCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, nDesiredSampleRate, }, .{ "pCompressed", "cbCompressed", "pDestBuffer", "cbDestBufferSize", "nBytesWritten", "nDesiredSampleRate", }, @TypeOf(S.DecompressVoice));
    }
    comptime { @export(DecompressVoice, .{ .name = "SteamAPI_ISteamUser_DecompressVoice", .linkage = .Strong }); }
    pub fn GetVoiceOptimalSampleRate() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVoiceOptimalSampleRate"}), .{ }, .{ }, @TypeOf(S.GetVoiceOptimalSampleRate));
    }
    comptime { @export(GetVoiceOptimalSampleRate, .{ .name = "SteamAPI_ISteamUser_GetVoiceOptimalSampleRate", .linkage = .Strong }); }
    pub fn GetAuthSessionTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) t.HAuthTicket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthSessionTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetAuthSessionTicket));
    }
    comptime { @export(GetAuthSessionTicket, .{ .name = "SteamAPI_ISteamUser_GetAuthSessionTicket", .linkage = .Strong }); }
    pub fn BeginAuthSession(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID, ) callconv(.C) t.EBeginAuthSessionResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAuthSession"}), .{ pAuthTicket, cbAuthTicket, steamID, }, .{ "pAuthTicket", "cbAuthTicket", "steamID", }, @TypeOf(S.BeginAuthSession));
    }
    comptime { @export(BeginAuthSession, .{ .name = "SteamAPI_ISteamUser_BeginAuthSession", .linkage = .Strong }); }
    pub fn EndAuthSession(steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndAuthSession"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.EndAuthSession));
    }
    comptime { @export(EndAuthSession, .{ .name = "SteamAPI_ISteamUser_EndAuthSession", .linkage = .Strong }); }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelAuthTicket"}), .{ hAuthTicket, }, .{ "hAuthTicket", }, @TypeOf(S.CancelAuthTicket));
    }
    comptime { @export(CancelAuthTicket, .{ .name = "SteamAPI_ISteamUser_CancelAuthTicket", .linkage = .Strong }); }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t, ) callconv(.C) t.EUserHasLicenseForAppResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UserHasLicenseForApp"}), .{ steamID, appID, }, .{ "steamID", "appID", }, @TypeOf(S.UserHasLicenseForApp));
    }
    comptime { @export(UserHasLicenseForApp, .{ .name = "SteamAPI_ISteamUser_UserHasLicenseForApp", .linkage = .Strong }); }
    pub fn BIsBehindNAT() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsBehindNAT"}), .{ }, .{ }, @TypeOf(S.BIsBehindNAT));
    }
    comptime { @export(BIsBehindNAT, .{ .name = "SteamAPI_ISteamUser_BIsBehindNAT", .linkage = .Strong }); }
    pub fn AdvertiseGame(steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AdvertiseGame"}), .{ steamIDGameServer, unIPServer, usPortServer, }, .{ "steamIDGameServer", "unIPServer", "usPortServer", }, @TypeOf(S.AdvertiseGame));
    }
    comptime { @export(AdvertiseGame, .{ .name = "SteamAPI_ISteamUser_AdvertiseGame", .linkage = .Strong }); }
    pub fn RequestEncryptedAppTicket(pDataToInclude: ?*anyopaque, cbDataToInclude: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestEncryptedAppTicket"}), .{ pDataToInclude, cbDataToInclude, }, .{ "pDataToInclude", "cbDataToInclude", }, @TypeOf(S.RequestEncryptedAppTicket));
    }
    comptime { @export(RequestEncryptedAppTicket, .{ .name = "SteamAPI_ISteamUser_RequestEncryptedAppTicket", .linkage = .Strong }); }
    pub fn GetEncryptedAppTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEncryptedAppTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetEncryptedAppTicket));
    }
    comptime { @export(GetEncryptedAppTicket, .{ .name = "SteamAPI_ISteamUser_GetEncryptedAppTicket", .linkage = .Strong }); }
    pub fn GetGameBadgeLevel(nSeries: i32, bFoil: bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameBadgeLevel"}), .{ nSeries, bFoil, }, .{ "nSeries", "bFoil", }, @TypeOf(S.GetGameBadgeLevel));
    }
    comptime { @export(GetGameBadgeLevel, .{ .name = "SteamAPI_ISteamUser_GetGameBadgeLevel", .linkage = .Strong }); }
    pub fn GetPlayerSteamLevel() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlayerSteamLevel"}), .{ }, .{ }, @TypeOf(S.GetPlayerSteamLevel));
    }
    comptime { @export(GetPlayerSteamLevel, .{ .name = "SteamAPI_ISteamUser_GetPlayerSteamLevel", .linkage = .Strong }); }
    pub fn RequestStoreAuthURL(pchRedirectURL: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestStoreAuthURL"}), .{ pchRedirectURL, }, .{ "pchRedirectURL", }, @TypeOf(S.RequestStoreAuthURL));
    }
    comptime { @export(RequestStoreAuthURL, .{ .name = "SteamAPI_ISteamUser_RequestStoreAuthURL", .linkage = .Strong }); }
    pub fn BIsPhoneVerified() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneVerified"}), .{ }, .{ }, @TypeOf(S.BIsPhoneVerified));
    }
    comptime { @export(BIsPhoneVerified, .{ .name = "SteamAPI_ISteamUser_BIsPhoneVerified", .linkage = .Strong }); }
    pub fn BIsTwoFactorEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsTwoFactorEnabled"}), .{ }, .{ }, @TypeOf(S.BIsTwoFactorEnabled));
    }
    comptime { @export(BIsTwoFactorEnabled, .{ .name = "SteamAPI_ISteamUser_BIsTwoFactorEnabled", .linkage = .Strong }); }
    pub fn BIsPhoneIdentifying() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneIdentifying"}), .{ }, .{ }, @TypeOf(S.BIsPhoneIdentifying));
    }
    comptime { @export(BIsPhoneIdentifying, .{ .name = "SteamAPI_ISteamUser_BIsPhoneIdentifying", .linkage = .Strong }); }
    pub fn BIsPhoneRequiringVerification() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneRequiringVerification"}), .{ }, .{ }, @TypeOf(S.BIsPhoneRequiringVerification));
    }
    comptime { @export(BIsPhoneRequiringVerification, .{ .name = "SteamAPI_ISteamUser_BIsPhoneRequiringVerification", .linkage = .Strong }); }
    pub fn GetMarketEligibility() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMarketEligibility"}), .{ }, .{ }, @TypeOf(S.GetMarketEligibility));
    }
    comptime { @export(GetMarketEligibility, .{ .name = "SteamAPI_ISteamUser_GetMarketEligibility", .linkage = .Strong }); }
    pub fn GetDurationControl() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDurationControl"}), .{ }, .{ }, @TypeOf(S.GetDurationControl));
    }
    comptime { @export(GetDurationControl, .{ .name = "SteamAPI_ISteamUser_GetDurationControl", .linkage = .Strong }); }
    pub fn BSetDurationControlOnlineState(eNewState: t.EDurationControlOnlineState, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSetDurationControlOnlineState"}), .{ eNewState, }, .{ "eNewState", }, @TypeOf(S.BSetDurationControlOnlineState));
    }
    comptime { @export(BSetDurationControlOnlineState, .{ .name = "SteamAPI_ISteamUser_BSetDurationControlOnlineState", .linkage = .Strong }); }
};
comptime { _ = ISteamUser; }
pub const SteamUser = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUser"};
    pub fn v021() callconv(.C) [*c]t.ISteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v021"}), .{ }, .{ }, @TypeOf(S.v021));
    }
    comptime { @export(v021, .{ .name = "SteamAPI_SteamUser_v021", .linkage = .Strong }); }
};
comptime { _ = SteamUser; }
pub const ISteamFriends = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamFriends"};
    _: u8 = 1,
    pub const version = "SteamFriends017";
    pub fn GetPersonaName() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPersonaName"}), .{ }, .{ }, @TypeOf(S.GetPersonaName));
    }
    comptime { @export(GetPersonaName, .{ .name = "SteamAPI_ISteamFriends_GetPersonaName", .linkage = .Strong }); }
    pub fn SetPersonaName(pchPersonaName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPersonaName"}), .{ pchPersonaName, }, .{ "pchPersonaName", }, @TypeOf(S.SetPersonaName));
    }
    comptime { @export(SetPersonaName, .{ .name = "SteamAPI_ISteamFriends_SetPersonaName", .linkage = .Strong }); }
    pub fn GetPersonaState() callconv(.C) t.EPersonaState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPersonaState"}), .{ }, .{ }, @TypeOf(S.GetPersonaState));
    }
    comptime { @export(GetPersonaState, .{ .name = "SteamAPI_ISteamFriends_GetPersonaState", .linkage = .Strong }); }
    pub fn GetFriendCount(iFriendFlags: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCount"}), .{ iFriendFlags, }, .{ "iFriendFlags", }, @TypeOf(S.GetFriendCount));
    }
    comptime { @export(GetFriendCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendCount", .linkage = .Strong }); }
    pub fn GetFriendByIndex(iFriend: i32, iFriendFlags: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendByIndex"}), .{ iFriend, iFriendFlags, }, .{ "iFriend", "iFriendFlags", }, @TypeOf(S.GetFriendByIndex));
    }
    comptime { @export(GetFriendByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendByIndex", .linkage = .Strong }); }
    pub fn GetFriendRelationship(steamIDFriend: t.CSteamID, ) callconv(.C) t.EFriendRelationship {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRelationship"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendRelationship));
    }
    comptime { @export(GetFriendRelationship, .{ .name = "SteamAPI_ISteamFriends_GetFriendRelationship", .linkage = .Strong }); }
    pub fn GetFriendPersonaState(steamIDFriend: t.CSteamID, ) callconv(.C) t.EPersonaState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaState"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendPersonaState));
    }
    comptime { @export(GetFriendPersonaState, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaState", .linkage = .Strong }); }
    pub fn GetFriendPersonaName(steamIDFriend: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaName"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendPersonaName));
    }
    comptime { @export(GetFriendPersonaName, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaName", .linkage = .Strong }); }
    pub fn GetFriendGamePlayed(steamIDFriend: t.CSteamID, pFriendGameInfo: [*c]t.FriendGameInfo_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendGamePlayed"}), .{ steamIDFriend, pFriendGameInfo, }, .{ "steamIDFriend", "pFriendGameInfo", }, @TypeOf(S.GetFriendGamePlayed));
    }
    comptime { @export(GetFriendGamePlayed, .{ .name = "SteamAPI_ISteamFriends_GetFriendGamePlayed", .linkage = .Strong }); }
    pub fn GetFriendPersonaNameHistory(steamIDFriend: t.CSteamID, iPersonaName: i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaNameHistory"}), .{ steamIDFriend, iPersonaName, }, .{ "steamIDFriend", "iPersonaName", }, @TypeOf(S.GetFriendPersonaNameHistory));
    }
    comptime { @export(GetFriendPersonaNameHistory, .{ .name = "SteamAPI_ISteamFriends_GetFriendPersonaNameHistory", .linkage = .Strong }); }
    pub fn GetFriendSteamLevel(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendSteamLevel"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendSteamLevel));
    }
    comptime { @export(GetFriendSteamLevel, .{ .name = "SteamAPI_ISteamFriends_GetFriendSteamLevel", .linkage = .Strong }); }
    pub fn GetPlayerNickname(steamIDPlayer: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlayerNickname"}), .{ steamIDPlayer, }, .{ "steamIDPlayer", }, @TypeOf(S.GetPlayerNickname));
    }
    comptime { @export(GetPlayerNickname, .{ .name = "SteamAPI_ISteamFriends_GetPlayerNickname", .linkage = .Strong }); }
    pub fn GetFriendsGroupCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupCount"}), .{ }, .{ }, @TypeOf(S.GetFriendsGroupCount));
    }
    comptime { @export(GetFriendsGroupCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupCount", .linkage = .Strong }); }
    pub fn GetFriendsGroupIDByIndex(iFG: i32, ) callconv(.C) t.FriendsGroupID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupIDByIndex"}), .{ iFG, }, .{ "iFG", }, @TypeOf(S.GetFriendsGroupIDByIndex));
    }
    comptime { @export(GetFriendsGroupIDByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex", .linkage = .Strong }); }
    pub fn GetFriendsGroupName(friendsGroupID: t.FriendsGroupID_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupName"}), .{ friendsGroupID, }, .{ "friendsGroupID", }, @TypeOf(S.GetFriendsGroupName));
    }
    comptime { @export(GetFriendsGroupName, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupName", .linkage = .Strong }); }
    pub fn GetFriendsGroupMembersCount(friendsGroupID: t.FriendsGroupID_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupMembersCount"}), .{ friendsGroupID, }, .{ "friendsGroupID", }, @TypeOf(S.GetFriendsGroupMembersCount));
    }
    comptime { @export(GetFriendsGroupMembersCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupMembersCount", .linkage = .Strong }); }
    pub fn GetFriendsGroupMembersList(friendsGroupID: t.FriendsGroupID_t, pOutSteamIDMembers: [*c]t.CSteamID, nMembersCount: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupMembersList"}), .{ friendsGroupID, pOutSteamIDMembers, nMembersCount, }, .{ "friendsGroupID", "pOutSteamIDMembers", "nMembersCount", }, @TypeOf(S.GetFriendsGroupMembersList));
    }
    comptime { @export(GetFriendsGroupMembersList, .{ .name = "SteamAPI_ISteamFriends_GetFriendsGroupMembersList", .linkage = .Strong }); }
    pub fn HasFriend(steamIDFriend: t.CSteamID, iFriendFlags: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HasFriend"}), .{ steamIDFriend, iFriendFlags, }, .{ "steamIDFriend", "iFriendFlags", }, @TypeOf(S.HasFriend));
    }
    comptime { @export(HasFriend, .{ .name = "SteamAPI_ISteamFriends_HasFriend", .linkage = .Strong }); }
    pub fn GetClanCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanCount"}), .{ }, .{ }, @TypeOf(S.GetClanCount));
    }
    comptime { @export(GetClanCount, .{ .name = "SteamAPI_ISteamFriends_GetClanCount", .linkage = .Strong }); }
    pub fn GetClanByIndex(iClan: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanByIndex"}), .{ iClan, }, .{ "iClan", }, @TypeOf(S.GetClanByIndex));
    }
    comptime { @export(GetClanByIndex, .{ .name = "SteamAPI_ISteamFriends_GetClanByIndex", .linkage = .Strong }); }
    pub fn GetClanName(steamIDClan: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanName"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanName));
    }
    comptime { @export(GetClanName, .{ .name = "SteamAPI_ISteamFriends_GetClanName", .linkage = .Strong }); }
    pub fn GetClanTag(steamIDClan: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanTag"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanTag));
    }
    comptime { @export(GetClanTag, .{ .name = "SteamAPI_ISteamFriends_GetClanTag", .linkage = .Strong }); }
    pub fn GetClanActivityCounts(steamIDClan: t.CSteamID, pnOnline: [*c]i32, pnInGame: [*c]i32, pnChatting: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanActivityCounts"}), .{ steamIDClan, pnOnline, pnInGame, pnChatting, }, .{ "steamIDClan", "pnOnline", "pnInGame", "pnChatting", }, @TypeOf(S.GetClanActivityCounts));
    }
    comptime { @export(GetClanActivityCounts, .{ .name = "SteamAPI_ISteamFriends_GetClanActivityCounts", .linkage = .Strong }); }
    pub fn DownloadClanActivityCounts(psteamIDClans: [*c]t.CSteamID, cClansToRequest: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadClanActivityCounts"}), .{ psteamIDClans, cClansToRequest, }, .{ "psteamIDClans", "cClansToRequest", }, @TypeOf(S.DownloadClanActivityCounts));
    }
    comptime { @export(DownloadClanActivityCounts, .{ .name = "SteamAPI_ISteamFriends_DownloadClanActivityCounts", .linkage = .Strong }); }
    pub fn GetFriendCountFromSource(steamIDSource: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCountFromSource"}), .{ steamIDSource, }, .{ "steamIDSource", }, @TypeOf(S.GetFriendCountFromSource));
    }
    comptime { @export(GetFriendCountFromSource, .{ .name = "SteamAPI_ISteamFriends_GetFriendCountFromSource", .linkage = .Strong }); }
    pub fn GetFriendFromSourceByIndex(steamIDSource: t.CSteamID, iFriend: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendFromSourceByIndex"}), .{ steamIDSource, iFriend, }, .{ "steamIDSource", "iFriend", }, @TypeOf(S.GetFriendFromSourceByIndex));
    }
    comptime { @export(GetFriendFromSourceByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendFromSourceByIndex", .linkage = .Strong }); }
    pub fn IsUserInSource(steamIDUser: t.CSteamID, steamIDSource: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsUserInSource"}), .{ steamIDUser, steamIDSource, }, .{ "steamIDUser", "steamIDSource", }, @TypeOf(S.IsUserInSource));
    }
    comptime { @export(IsUserInSource, .{ .name = "SteamAPI_ISteamFriends_IsUserInSource", .linkage = .Strong }); }
    pub fn SetInGameVoiceSpeaking(steamIDUser: t.CSteamID, bSpeaking: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInGameVoiceSpeaking"}), .{ steamIDUser, bSpeaking, }, .{ "steamIDUser", "bSpeaking", }, @TypeOf(S.SetInGameVoiceSpeaking));
    }
    comptime { @export(SetInGameVoiceSpeaking, .{ .name = "SteamAPI_ISteamFriends_SetInGameVoiceSpeaking", .linkage = .Strong }); }
    pub fn ActivateGameOverlay(pchDialog: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlay"}), .{ pchDialog, }, .{ "pchDialog", }, @TypeOf(S.ActivateGameOverlay));
    }
    comptime { @export(ActivateGameOverlay, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlay", .linkage = .Strong }); }
    pub fn ActivateGameOverlayToUser(pchDialog: [*c]const u8, steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToUser"}), .{ pchDialog, steamID, }, .{ "pchDialog", "steamID", }, @TypeOf(S.ActivateGameOverlayToUser));
    }
    comptime { @export(ActivateGameOverlayToUser, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToUser", .linkage = .Strong }); }
    pub fn ActivateGameOverlayToWebPage(pchURL: [*c]const u8, eMode: t.EActivateGameOverlayToWebPageMode, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToWebPage"}), .{ pchURL, eMode, }, .{ "pchURL", "eMode", }, @TypeOf(S.ActivateGameOverlayToWebPage));
    }
    comptime { @export(ActivateGameOverlayToWebPage, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage", .linkage = .Strong }); }
    pub fn ActivateGameOverlayToStore(nAppID: t.AppId_t, eFlag: t.EOverlayToStoreFlag, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToStore"}), .{ nAppID, eFlag, }, .{ "nAppID", "eFlag", }, @TypeOf(S.ActivateGameOverlayToStore));
    }
    comptime { @export(ActivateGameOverlayToStore, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayToStore", .linkage = .Strong }); }
    pub fn SetPlayedWith(steamIDUserPlayedWith: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPlayedWith"}), .{ steamIDUserPlayedWith, }, .{ "steamIDUserPlayedWith", }, @TypeOf(S.SetPlayedWith));
    }
    comptime { @export(SetPlayedWith, .{ .name = "SteamAPI_ISteamFriends_SetPlayedWith", .linkage = .Strong }); }
    pub fn ActivateGameOverlayInviteDialog(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayInviteDialog"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.ActivateGameOverlayInviteDialog));
    }
    comptime { @export(ActivateGameOverlayInviteDialog, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog", .linkage = .Strong }); }
    pub fn GetSmallFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSmallFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetSmallFriendAvatar));
    }
    comptime { @export(GetSmallFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetSmallFriendAvatar", .linkage = .Strong }); }
    pub fn GetMediumFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMediumFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetMediumFriendAvatar));
    }
    comptime { @export(GetMediumFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetMediumFriendAvatar", .linkage = .Strong }); }
    pub fn GetLargeFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLargeFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetLargeFriendAvatar));
    }
    comptime { @export(GetLargeFriendAvatar, .{ .name = "SteamAPI_ISteamFriends_GetLargeFriendAvatar", .linkage = .Strong }); }
    pub fn RequestUserInformation(steamIDUser: t.CSteamID, bRequireNameOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserInformation"}), .{ steamIDUser, bRequireNameOnly, }, .{ "steamIDUser", "bRequireNameOnly", }, @TypeOf(S.RequestUserInformation));
    }
    comptime { @export(RequestUserInformation, .{ .name = "SteamAPI_ISteamFriends_RequestUserInformation", .linkage = .Strong }); }
    pub fn RequestClanOfficerList(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestClanOfficerList"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.RequestClanOfficerList));
    }
    comptime { @export(RequestClanOfficerList, .{ .name = "SteamAPI_ISteamFriends_RequestClanOfficerList", .linkage = .Strong }); }
    pub fn GetClanOwner(steamIDClan: t.CSteamID, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOwner"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanOwner));
    }
    comptime { @export(GetClanOwner, .{ .name = "SteamAPI_ISteamFriends_GetClanOwner", .linkage = .Strong }); }
    pub fn GetClanOfficerCount(steamIDClan: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOfficerCount"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanOfficerCount));
    }
    comptime { @export(GetClanOfficerCount, .{ .name = "SteamAPI_ISteamFriends_GetClanOfficerCount", .linkage = .Strong }); }
    pub fn GetClanOfficerByIndex(steamIDClan: t.CSteamID, iOfficer: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOfficerByIndex"}), .{ steamIDClan, iOfficer, }, .{ "steamIDClan", "iOfficer", }, @TypeOf(S.GetClanOfficerByIndex));
    }
    comptime { @export(GetClanOfficerByIndex, .{ .name = "SteamAPI_ISteamFriends_GetClanOfficerByIndex", .linkage = .Strong }); }
    pub fn GetUserRestrictions() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserRestrictions"}), .{ }, .{ }, @TypeOf(S.GetUserRestrictions));
    }
    comptime { @export(GetUserRestrictions, .{ .name = "SteamAPI_ISteamFriends_GetUserRestrictions", .linkage = .Strong }); }
    pub fn SetRichPresence(pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRichPresence"}), .{ pchKey, pchValue, }, .{ "pchKey", "pchValue", }, @TypeOf(S.SetRichPresence));
    }
    comptime { @export(SetRichPresence, .{ .name = "SteamAPI_ISteamFriends_SetRichPresence", .linkage = .Strong }); }
    pub fn ClearRichPresence() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearRichPresence"}), .{ }, .{ }, @TypeOf(S.ClearRichPresence));
    }
    comptime { @export(ClearRichPresence, .{ .name = "SteamAPI_ISteamFriends_ClearRichPresence", .linkage = .Strong }); }
    pub fn GetFriendRichPresence(steamIDFriend: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresence"}), .{ steamIDFriend, pchKey, }, .{ "steamIDFriend", "pchKey", }, @TypeOf(S.GetFriendRichPresence));
    }
    comptime { @export(GetFriendRichPresence, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresence", .linkage = .Strong }); }
    pub fn GetFriendRichPresenceKeyCount(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresenceKeyCount"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendRichPresenceKeyCount));
    }
    comptime { @export(GetFriendRichPresenceKeyCount, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount", .linkage = .Strong }); }
    pub fn GetFriendRichPresenceKeyByIndex(steamIDFriend: t.CSteamID, iKey: i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresenceKeyByIndex"}), .{ steamIDFriend, iKey, }, .{ "steamIDFriend", "iKey", }, @TypeOf(S.GetFriendRichPresenceKeyByIndex));
    }
    comptime { @export(GetFriendRichPresenceKeyByIndex, .{ .name = "SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex", .linkage = .Strong }); }
    pub fn RequestFriendRichPresence(steamIDFriend: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFriendRichPresence"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.RequestFriendRichPresence));
    }
    comptime { @export(RequestFriendRichPresence, .{ .name = "SteamAPI_ISteamFriends_RequestFriendRichPresence", .linkage = .Strong }); }
    pub fn InviteUserToGame(steamIDFriend: t.CSteamID, pchConnectString: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InviteUserToGame"}), .{ steamIDFriend, pchConnectString, }, .{ "steamIDFriend", "pchConnectString", }, @TypeOf(S.InviteUserToGame));
    }
    comptime { @export(InviteUserToGame, .{ .name = "SteamAPI_ISteamFriends_InviteUserToGame", .linkage = .Strong }); }
    pub fn GetCoplayFriendCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCoplayFriendCount"}), .{ }, .{ }, @TypeOf(S.GetCoplayFriendCount));
    }
    comptime { @export(GetCoplayFriendCount, .{ .name = "SteamAPI_ISteamFriends_GetCoplayFriendCount", .linkage = .Strong }); }
    pub fn GetCoplayFriend(iCoplayFriend: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCoplayFriend"}), .{ iCoplayFriend, }, .{ "iCoplayFriend", }, @TypeOf(S.GetCoplayFriend));
    }
    comptime { @export(GetCoplayFriend, .{ .name = "SteamAPI_ISteamFriends_GetCoplayFriend", .linkage = .Strong }); }
    pub fn GetFriendCoplayTime(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCoplayTime"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendCoplayTime));
    }
    comptime { @export(GetFriendCoplayTime, .{ .name = "SteamAPI_ISteamFriends_GetFriendCoplayTime", .linkage = .Strong }); }
    pub fn GetFriendCoplayGame(steamIDFriend: t.CSteamID, ) callconv(.C) t.AppId_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCoplayGame"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendCoplayGame));
    }
    comptime { @export(GetFriendCoplayGame, .{ .name = "SteamAPI_ISteamFriends_GetFriendCoplayGame", .linkage = .Strong }); }
    pub fn JoinClanChatRoom(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinClanChatRoom"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.JoinClanChatRoom));
    }
    comptime { @export(JoinClanChatRoom, .{ .name = "SteamAPI_ISteamFriends_JoinClanChatRoom", .linkage = .Strong }); }
    pub fn LeaveClanChatRoom(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LeaveClanChatRoom"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.LeaveClanChatRoom));
    }
    comptime { @export(LeaveClanChatRoom, .{ .name = "SteamAPI_ISteamFriends_LeaveClanChatRoom", .linkage = .Strong }); }
    pub fn GetClanChatMemberCount(steamIDClan: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanChatMemberCount"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanChatMemberCount));
    }
    comptime { @export(GetClanChatMemberCount, .{ .name = "SteamAPI_ISteamFriends_GetClanChatMemberCount", .linkage = .Strong }); }
    pub fn GetChatMemberByIndex(steamIDClan: t.CSteamID, iUser: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetChatMemberByIndex"}), .{ steamIDClan, iUser, }, .{ "steamIDClan", "iUser", }, @TypeOf(S.GetChatMemberByIndex));
    }
    comptime { @export(GetChatMemberByIndex, .{ .name = "SteamAPI_ISteamFriends_GetChatMemberByIndex", .linkage = .Strong }); }
    pub fn SendClanChatMessage(steamIDClanChat: t.CSteamID, pchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendClanChatMessage"}), .{ steamIDClanChat, pchText, }, .{ "steamIDClanChat", "pchText", }, @TypeOf(S.SendClanChatMessage));
    }
    comptime { @export(SendClanChatMessage, .{ .name = "SteamAPI_ISteamFriends_SendClanChatMessage", .linkage = .Strong }); }
    pub fn GetClanChatMessage(steamIDClanChat: t.CSteamID, iMessage: i32, prgchText: ?*anyopaque, cchTextMax: i32, peChatEntryType: [*c]t.EChatEntryType, psteamidChatter: [*c]t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanChatMessage"}), .{ steamIDClanChat, iMessage, prgchText, cchTextMax, peChatEntryType, psteamidChatter, }, .{ "steamIDClanChat", "iMessage", "prgchText", "cchTextMax", "peChatEntryType", "psteamidChatter", }, @TypeOf(S.GetClanChatMessage));
    }
    comptime { @export(GetClanChatMessage, .{ .name = "SteamAPI_ISteamFriends_GetClanChatMessage", .linkage = .Strong }); }
    pub fn IsClanChatAdmin(steamIDClanChat: t.CSteamID, steamIDUser: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanChatAdmin"}), .{ steamIDClanChat, steamIDUser, }, .{ "steamIDClanChat", "steamIDUser", }, @TypeOf(S.IsClanChatAdmin));
    }
    comptime { @export(IsClanChatAdmin, .{ .name = "SteamAPI_ISteamFriends_IsClanChatAdmin", .linkage = .Strong }); }
    pub fn IsClanChatWindowOpenInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanChatWindowOpenInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.IsClanChatWindowOpenInSteam));
    }
    comptime { @export(IsClanChatWindowOpenInSteam, .{ .name = "SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam", .linkage = .Strong }); }
    pub fn OpenClanChatWindowInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OpenClanChatWindowInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.OpenClanChatWindowInSteam));
    }
    comptime { @export(OpenClanChatWindowInSteam, .{ .name = "SteamAPI_ISteamFriends_OpenClanChatWindowInSteam", .linkage = .Strong }); }
    pub fn CloseClanChatWindowInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseClanChatWindowInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.CloseClanChatWindowInSteam));
    }
    comptime { @export(CloseClanChatWindowInSteam, .{ .name = "SteamAPI_ISteamFriends_CloseClanChatWindowInSteam", .linkage = .Strong }); }
    pub fn SetListenForFriendsMessages(bInterceptEnabled: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetListenForFriendsMessages"}), .{ bInterceptEnabled, }, .{ "bInterceptEnabled", }, @TypeOf(S.SetListenForFriendsMessages));
    }
    comptime { @export(SetListenForFriendsMessages, .{ .name = "SteamAPI_ISteamFriends_SetListenForFriendsMessages", .linkage = .Strong }); }
    pub fn ReplyToFriendMessage(steamIDFriend: t.CSteamID, pchMsgToSend: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReplyToFriendMessage"}), .{ steamIDFriend, pchMsgToSend, }, .{ "steamIDFriend", "pchMsgToSend", }, @TypeOf(S.ReplyToFriendMessage));
    }
    comptime { @export(ReplyToFriendMessage, .{ .name = "SteamAPI_ISteamFriends_ReplyToFriendMessage", .linkage = .Strong }); }
    pub fn GetFriendMessage(steamIDFriend: t.CSteamID, iMessageID: i32, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendMessage"}), .{ steamIDFriend, iMessageID, pvData, cubData, peChatEntryType, }, .{ "steamIDFriend", "iMessageID", "pvData", "cubData", "peChatEntryType", }, @TypeOf(S.GetFriendMessage));
    }
    comptime { @export(GetFriendMessage, .{ .name = "SteamAPI_ISteamFriends_GetFriendMessage", .linkage = .Strong }); }
    pub fn GetFollowerCount(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFollowerCount"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.GetFollowerCount));
    }
    comptime { @export(GetFollowerCount, .{ .name = "SteamAPI_ISteamFriends_GetFollowerCount", .linkage = .Strong }); }
    pub fn IsFollowing(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFollowing"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.IsFollowing));
    }
    comptime { @export(IsFollowing, .{ .name = "SteamAPI_ISteamFriends_IsFollowing", .linkage = .Strong }); }
    pub fn EnumerateFollowingList(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateFollowingList"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateFollowingList));
    }
    comptime { @export(EnumerateFollowingList, .{ .name = "SteamAPI_ISteamFriends_EnumerateFollowingList", .linkage = .Strong }); }
    pub fn IsClanPublic(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanPublic"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.IsClanPublic));
    }
    comptime { @export(IsClanPublic, .{ .name = "SteamAPI_ISteamFriends_IsClanPublic", .linkage = .Strong }); }
    pub fn IsClanOfficialGameGroup(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanOfficialGameGroup"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.IsClanOfficialGameGroup));
    }
    comptime { @export(IsClanOfficialGameGroup, .{ .name = "SteamAPI_ISteamFriends_IsClanOfficialGameGroup", .linkage = .Strong }); }
    pub fn GetNumChatsWithUnreadPriorityMessages() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumChatsWithUnreadPriorityMessages"}), .{ }, .{ }, @TypeOf(S.GetNumChatsWithUnreadPriorityMessages));
    }
    comptime { @export(GetNumChatsWithUnreadPriorityMessages, .{ .name = "SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages", .linkage = .Strong }); }
    pub fn ActivateGameOverlayRemotePlayTogetherInviteDialog(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayRemotePlayTogetherInviteDialog"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.ActivateGameOverlayRemotePlayTogetherInviteDialog));
    }
    comptime { @export(ActivateGameOverlayRemotePlayTogetherInviteDialog, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog", .linkage = .Strong }); }
    pub fn RegisterProtocolInOverlayBrowser(pchProtocol: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RegisterProtocolInOverlayBrowser"}), .{ pchProtocol, }, .{ "pchProtocol", }, @TypeOf(S.RegisterProtocolInOverlayBrowser));
    }
    comptime { @export(RegisterProtocolInOverlayBrowser, .{ .name = "SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser", .linkage = .Strong }); }
    pub fn ActivateGameOverlayInviteDialogConnectString(pchConnectString: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayInviteDialogConnectString"}), .{ pchConnectString, }, .{ "pchConnectString", }, @TypeOf(S.ActivateGameOverlayInviteDialogConnectString));
    }
    comptime { @export(ActivateGameOverlayInviteDialogConnectString, .{ .name = "SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString", .linkage = .Strong }); }
};
comptime { _ = ISteamFriends; }
pub const SteamFriends = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamFriends"};
    pub fn v017() callconv(.C) [*c]t.ISteamFriends {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v017"}), .{ }, .{ }, @TypeOf(S.v017));
    }
    comptime { @export(v017, .{ .name = "SteamAPI_SteamFriends_v017", .linkage = .Strong }); }
};
comptime { _ = SteamFriends; }
pub const ISteamUtils = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUtils"};
    _: u8 = 1,
    pub const version = "SteamUtils010";
    pub fn GetSecondsSinceAppActive() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSecondsSinceAppActive"}), .{ }, .{ }, @TypeOf(S.GetSecondsSinceAppActive));
    }
    comptime { @export(GetSecondsSinceAppActive, .{ .name = "SteamAPI_ISteamUtils_GetSecondsSinceAppActive", .linkage = .Strong }); }
    pub fn GetSecondsSinceComputerActive() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSecondsSinceComputerActive"}), .{ }, .{ }, @TypeOf(S.GetSecondsSinceComputerActive));
    }
    comptime { @export(GetSecondsSinceComputerActive, .{ .name = "SteamAPI_ISteamUtils_GetSecondsSinceComputerActive", .linkage = .Strong }); }
    pub fn GetConnectedUniverse() callconv(.C) t.EUniverse {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedUniverse"}), .{ }, .{ }, @TypeOf(S.GetConnectedUniverse));
    }
    comptime { @export(GetConnectedUniverse, .{ .name = "SteamAPI_ISteamUtils_GetConnectedUniverse", .linkage = .Strong }); }
    pub fn GetServerRealTime() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerRealTime"}), .{ }, .{ }, @TypeOf(S.GetServerRealTime));
    }
    comptime { @export(GetServerRealTime, .{ .name = "SteamAPI_ISteamUtils_GetServerRealTime", .linkage = .Strong }); }
    pub fn GetIPCountry() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCountry"}), .{ }, .{ }, @TypeOf(S.GetIPCountry));
    }
    comptime { @export(GetIPCountry, .{ .name = "SteamAPI_ISteamUtils_GetIPCountry", .linkage = .Strong }); }
    pub fn GetImageSize(iImage: i32, pnWidth: [*c]t.uint32, pnHeight: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetImageSize"}), .{ iImage, pnWidth, pnHeight, }, .{ "iImage", "pnWidth", "pnHeight", }, @TypeOf(S.GetImageSize));
    }
    comptime { @export(GetImageSize, .{ .name = "SteamAPI_ISteamUtils_GetImageSize", .linkage = .Strong }); }
    pub fn GetImageRGBA(iImage: i32, pubDest: [*c]t.uint8, nDestBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetImageRGBA"}), .{ iImage, pubDest, nDestBufferSize, }, .{ "iImage", "pubDest", "nDestBufferSize", }, @TypeOf(S.GetImageRGBA));
    }
    comptime { @export(GetImageRGBA, .{ .name = "SteamAPI_ISteamUtils_GetImageRGBA", .linkage = .Strong }); }
    pub fn GetCurrentBatteryPower() callconv(.C) t.uint8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentBatteryPower"}), .{ }, .{ }, @TypeOf(S.GetCurrentBatteryPower));
    }
    comptime { @export(GetCurrentBatteryPower, .{ .name = "SteamAPI_ISteamUtils_GetCurrentBatteryPower", .linkage = .Strong }); }
    pub fn GetAppID() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppID"}), .{ }, .{ }, @TypeOf(S.GetAppID));
    }
    comptime { @export(GetAppID, .{ .name = "SteamAPI_ISteamUtils_GetAppID", .linkage = .Strong }); }
    pub fn SetOverlayNotificationPosition(eNotificationPosition: t.ENotificationPosition, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetOverlayNotificationPosition"}), .{ eNotificationPosition, }, .{ "eNotificationPosition", }, @TypeOf(S.SetOverlayNotificationPosition));
    }
    comptime { @export(SetOverlayNotificationPosition, .{ .name = "SteamAPI_ISteamUtils_SetOverlayNotificationPosition", .linkage = .Strong }); }
    pub fn IsAPICallCompleted(hSteamAPICall: t.SteamAPICall_t, pbFailed: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsAPICallCompleted"}), .{ hSteamAPICall, pbFailed, }, .{ "hSteamAPICall", "pbFailed", }, @TypeOf(S.IsAPICallCompleted));
    }
    comptime { @export(IsAPICallCompleted, .{ .name = "SteamAPI_ISteamUtils_IsAPICallCompleted", .linkage = .Strong }); }
    pub fn GetAPICallFailureReason(hSteamAPICall: t.SteamAPICall_t, ) callconv(.C) t.ESteamAPICallFailure {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAPICallFailureReason"}), .{ hSteamAPICall, }, .{ "hSteamAPICall", }, @TypeOf(S.GetAPICallFailureReason));
    }
    comptime { @export(GetAPICallFailureReason, .{ .name = "SteamAPI_ISteamUtils_GetAPICallFailureReason", .linkage = .Strong }); }
    pub fn GetAPICallResult(hSteamAPICall: t.SteamAPICall_t, pCallback: ?*anyopaque, cubCallback: i32, iCallbackExpected: i32, pbFailed: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAPICallResult"}), .{ hSteamAPICall, pCallback, cubCallback, iCallbackExpected, pbFailed, }, .{ "hSteamAPICall", "pCallback", "cubCallback", "iCallbackExpected", "pbFailed", }, @TypeOf(S.GetAPICallResult));
    }
    comptime { @export(GetAPICallResult, .{ .name = "SteamAPI_ISteamUtils_GetAPICallResult", .linkage = .Strong }); }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCCallCount"}), .{ }, .{ }, @TypeOf(S.GetIPCCallCount));
    }
    comptime { @export(GetIPCCallCount, .{ .name = "SteamAPI_ISteamUtils_GetIPCCallCount", .linkage = .Strong }); }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetWarningMessageHook"}), .{ pFunction, }, .{ "pFunction", }, @TypeOf(S.SetWarningMessageHook));
    }
    comptime { @export(SetWarningMessageHook, .{ .name = "SteamAPI_ISteamUtils_SetWarningMessageHook", .linkage = .Strong }); }
    pub fn IsOverlayEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsOverlayEnabled"}), .{ }, .{ }, @TypeOf(S.IsOverlayEnabled));
    }
    comptime { @export(IsOverlayEnabled, .{ .name = "SteamAPI_ISteamUtils_IsOverlayEnabled", .linkage = .Strong }); }
    pub fn BOverlayNeedsPresent() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BOverlayNeedsPresent"}), .{ }, .{ }, @TypeOf(S.BOverlayNeedsPresent));
    }
    comptime { @export(BOverlayNeedsPresent, .{ .name = "SteamAPI_ISteamUtils_BOverlayNeedsPresent", .linkage = .Strong }); }
    pub fn CheckFileSignature(szFileName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckFileSignature"}), .{ szFileName, }, .{ "szFileName", }, @TypeOf(S.CheckFileSignature));
    }
    comptime { @export(CheckFileSignature, .{ .name = "SteamAPI_ISteamUtils_CheckFileSignature", .linkage = .Strong }); }
    pub fn ShowGamepadTextInput(eInputMode: t.EGamepadTextInputMode, eLineInputMode: t.EGamepadTextInputLineMode, pchDescription: [*c]const u8, unCharMax: t.uint32, pchExistingText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowGamepadTextInput"}), .{ eInputMode, eLineInputMode, pchDescription, unCharMax, pchExistingText, }, .{ "eInputMode", "eLineInputMode", "pchDescription", "unCharMax", "pchExistingText", }, @TypeOf(S.ShowGamepadTextInput));
    }
    comptime { @export(ShowGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_ShowGamepadTextInput", .linkage = .Strong }); }
    pub fn GetEnteredGamepadTextLength() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEnteredGamepadTextLength"}), .{ }, .{ }, @TypeOf(S.GetEnteredGamepadTextLength));
    }
    comptime { @export(GetEnteredGamepadTextLength, .{ .name = "SteamAPI_ISteamUtils_GetEnteredGamepadTextLength", .linkage = .Strong }); }
    pub fn GetEnteredGamepadTextInput(pchText: [*c]u8, cchText: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEnteredGamepadTextInput"}), .{ pchText, cchText, }, .{ "pchText", "cchText", }, @TypeOf(S.GetEnteredGamepadTextInput));
    }
    comptime { @export(GetEnteredGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_GetEnteredGamepadTextInput", .linkage = .Strong }); }
    pub fn GetSteamUILanguage() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamUILanguage"}), .{ }, .{ }, @TypeOf(S.GetSteamUILanguage));
    }
    comptime { @export(GetSteamUILanguage, .{ .name = "SteamAPI_ISteamUtils_GetSteamUILanguage", .linkage = .Strong }); }
    pub fn IsSteamRunningInVR() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamRunningInVR"}), .{ }, .{ }, @TypeOf(S.IsSteamRunningInVR));
    }
    comptime { @export(IsSteamRunningInVR, .{ .name = "SteamAPI_ISteamUtils_IsSteamRunningInVR", .linkage = .Strong }); }
    pub fn SetOverlayNotificationInset(nHorizontalInset: i32, nVerticalInset: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetOverlayNotificationInset"}), .{ nHorizontalInset, nVerticalInset, }, .{ "nHorizontalInset", "nVerticalInset", }, @TypeOf(S.SetOverlayNotificationInset));
    }
    comptime { @export(SetOverlayNotificationInset, .{ .name = "SteamAPI_ISteamUtils_SetOverlayNotificationInset", .linkage = .Strong }); }
    pub fn IsSteamInBigPictureMode() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamInBigPictureMode"}), .{ }, .{ }, @TypeOf(S.IsSteamInBigPictureMode));
    }
    comptime { @export(IsSteamInBigPictureMode, .{ .name = "SteamAPI_ISteamUtils_IsSteamInBigPictureMode", .linkage = .Strong }); }
    pub fn StartVRDashboard() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartVRDashboard"}), .{ }, .{ }, @TypeOf(S.StartVRDashboard));
    }
    comptime { @export(StartVRDashboard, .{ .name = "SteamAPI_ISteamUtils_StartVRDashboard", .linkage = .Strong }); }
    pub fn IsVRHeadsetStreamingEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsVRHeadsetStreamingEnabled"}), .{ }, .{ }, @TypeOf(S.IsVRHeadsetStreamingEnabled));
    }
    comptime { @export(IsVRHeadsetStreamingEnabled, .{ .name = "SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled", .linkage = .Strong }); }
    pub fn SetVRHeadsetStreamingEnabled(bEnabled: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVRHeadsetStreamingEnabled"}), .{ bEnabled, }, .{ "bEnabled", }, @TypeOf(S.SetVRHeadsetStreamingEnabled));
    }
    comptime { @export(SetVRHeadsetStreamingEnabled, .{ .name = "SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled", .linkage = .Strong }); }
    pub fn IsSteamChinaLauncher() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamChinaLauncher"}), .{ }, .{ }, @TypeOf(S.IsSteamChinaLauncher));
    }
    comptime { @export(IsSteamChinaLauncher, .{ .name = "SteamAPI_ISteamUtils_IsSteamChinaLauncher", .linkage = .Strong }); }
    pub fn InitFilterText(unFilterOptions: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitFilterText"}), .{ unFilterOptions, }, .{ "unFilterOptions", }, @TypeOf(S.InitFilterText));
    }
    comptime { @export(InitFilterText, .{ .name = "SteamAPI_ISteamUtils_InitFilterText", .linkage = .Strong }); }
    pub fn FilterText(eContext: t.ETextFilteringContext, sourceSteamID: t.CSteamID, pchInputMessage: [*c]const u8, pchOutFilteredText: [*c]u8, nByteSizeOutFilteredText: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FilterText"}), .{ eContext, sourceSteamID, pchInputMessage, pchOutFilteredText, nByteSizeOutFilteredText, }, .{ "eContext", "sourceSteamID", "pchInputMessage", "pchOutFilteredText", "nByteSizeOutFilteredText", }, @TypeOf(S.FilterText));
    }
    comptime { @export(FilterText, .{ .name = "SteamAPI_ISteamUtils_FilterText", .linkage = .Strong }); }
    pub fn GetIPv6ConnectivityState(eProtocol: t.ESteamIPv6ConnectivityProtocol, ) callconv(.C) t.ESteamIPv6ConnectivityState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv6ConnectivityState"}), .{ eProtocol, }, .{ "eProtocol", }, @TypeOf(S.GetIPv6ConnectivityState));
    }
    comptime { @export(GetIPv6ConnectivityState, .{ .name = "SteamAPI_ISteamUtils_GetIPv6ConnectivityState", .linkage = .Strong }); }
    pub fn IsSteamRunningOnSteamDeck() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamRunningOnSteamDeck"}), .{ }, .{ }, @TypeOf(S.IsSteamRunningOnSteamDeck));
    }
    comptime { @export(IsSteamRunningOnSteamDeck, .{ .name = "SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck", .linkage = .Strong }); }
    pub fn ShowFloatingGamepadTextInput(eKeyboardMode: t.EFloatingGamepadTextInputMode, nTextFieldXPosition: i32, nTextFieldYPosition: i32, nTextFieldWidth: i32, nTextFieldHeight: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowFloatingGamepadTextInput"}), .{ eKeyboardMode, nTextFieldXPosition, nTextFieldYPosition, nTextFieldWidth, nTextFieldHeight, }, .{ "eKeyboardMode", "nTextFieldXPosition", "nTextFieldYPosition", "nTextFieldWidth", "nTextFieldHeight", }, @TypeOf(S.ShowFloatingGamepadTextInput));
    }
    comptime { @export(ShowFloatingGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput", .linkage = .Strong }); }
    pub fn SetGameLauncherMode(bLauncherMode: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameLauncherMode"}), .{ bLauncherMode, }, .{ "bLauncherMode", }, @TypeOf(S.SetGameLauncherMode));
    }
    comptime { @export(SetGameLauncherMode, .{ .name = "SteamAPI_ISteamUtils_SetGameLauncherMode", .linkage = .Strong }); }
    pub fn DismissFloatingGamepadTextInput() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DismissFloatingGamepadTextInput"}), .{ }, .{ }, @TypeOf(S.DismissFloatingGamepadTextInput));
    }
    comptime { @export(DismissFloatingGamepadTextInput, .{ .name = "SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput", .linkage = .Strong }); }
};
comptime { _ = ISteamUtils; }
pub const SteamUtils = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUtils"};
    pub fn v010() callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v010"}), .{ }, .{ }, @TypeOf(S.v010));
    }
    comptime { @export(v010, .{ .name = "SteamAPI_SteamUtils_v010", .linkage = .Strong }); }
};
comptime { _ = SteamUtils; }
pub const SteamGameServerUtils = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerUtils"};
    pub fn v010() callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v010"}), .{ }, .{ }, @TypeOf(S.v010));
    }
    comptime { @export(v010, .{ .name = "SteamAPI_SteamGameServerUtils_v010", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerUtils; }
pub const ISteamMatchmaking = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmaking"};
    _: u8 = 1,
    pub const version = "SteamMatchMaking009";
    pub fn GetFavoriteGameCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFavoriteGameCount"}), .{ }, .{ }, @TypeOf(S.GetFavoriteGameCount));
    }
    comptime { @export(GetFavoriteGameCount, .{ .name = "SteamAPI_ISteamMatchmaking_GetFavoriteGameCount", .linkage = .Strong }); }
    pub fn GetFavoriteGame(iGame: i32, pnAppID: [*c]t.AppId_t, pnIP: [*c]t.uint32, pnConnPort: [*c]t.uint16, pnQueryPort: [*c]t.uint16, punFlags: [*c]t.uint32, pRTime32LastPlayedOnServer: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFavoriteGame"}), .{ iGame, pnAppID, pnIP, pnConnPort, pnQueryPort, punFlags, pRTime32LastPlayedOnServer, }, .{ "iGame", "pnAppID", "pnIP", "pnConnPort", "pnQueryPort", "punFlags", "pRTime32LastPlayedOnServer", }, @TypeOf(S.GetFavoriteGame));
    }
    comptime { @export(GetFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_GetFavoriteGame", .linkage = .Strong }); }
    pub fn AddFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, rTime32LastPlayedOnServer: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddFavoriteGame"}), .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, rTime32LastPlayedOnServer, }, .{ "nAppID", "nIP", "nConnPort", "nQueryPort", "unFlags", "rTime32LastPlayedOnServer", }, @TypeOf(S.AddFavoriteGame));
    }
    comptime { @export(AddFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_AddFavoriteGame", .linkage = .Strong }); }
    pub fn RemoveFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveFavoriteGame"}), .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, }, .{ "nAppID", "nIP", "nConnPort", "nQueryPort", "unFlags", }, @TypeOf(S.RemoveFavoriteGame));
    }
    comptime { @export(RemoveFavoriteGame, .{ .name = "SteamAPI_ISteamMatchmaking_RemoveFavoriteGame", .linkage = .Strong }); }
    pub fn RequestLobbyList() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLobbyList"}), .{ }, .{ }, @TypeOf(S.RequestLobbyList));
    }
    comptime { @export(RequestLobbyList, .{ .name = "SteamAPI_ISteamMatchmaking_RequestLobbyList", .linkage = .Strong }); }
    pub fn AddRequestLobbyListStringFilter(pchKeyToMatch: [*c]const u8, pchValueToMatch: [*c]const u8, eComparisonType: t.ELobbyComparison, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListStringFilter"}), .{ pchKeyToMatch, pchValueToMatch, eComparisonType, }, .{ "pchKeyToMatch", "pchValueToMatch", "eComparisonType", }, @TypeOf(S.AddRequestLobbyListStringFilter));
    }
    comptime { @export(AddRequestLobbyListStringFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter", .linkage = .Strong }); }
    pub fn AddRequestLobbyListNumericalFilter(pchKeyToMatch: [*c]const u8, nValueToMatch: i32, eComparisonType: t.ELobbyComparison, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListNumericalFilter"}), .{ pchKeyToMatch, nValueToMatch, eComparisonType, }, .{ "pchKeyToMatch", "nValueToMatch", "eComparisonType", }, @TypeOf(S.AddRequestLobbyListNumericalFilter));
    }
    comptime { @export(AddRequestLobbyListNumericalFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter", .linkage = .Strong }); }
    pub fn AddRequestLobbyListNearValueFilter(pchKeyToMatch: [*c]const u8, nValueToBeCloseTo: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListNearValueFilter"}), .{ pchKeyToMatch, nValueToBeCloseTo, }, .{ "pchKeyToMatch", "nValueToBeCloseTo", }, @TypeOf(S.AddRequestLobbyListNearValueFilter));
    }
    comptime { @export(AddRequestLobbyListNearValueFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter", .linkage = .Strong }); }
    pub fn AddRequestLobbyListFilterSlotsAvailable(nSlotsAvailable: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListFilterSlotsAvailable"}), .{ nSlotsAvailable, }, .{ "nSlotsAvailable", }, @TypeOf(S.AddRequestLobbyListFilterSlotsAvailable));
    }
    comptime { @export(AddRequestLobbyListFilterSlotsAvailable, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable", .linkage = .Strong }); }
    pub fn AddRequestLobbyListDistanceFilter(eLobbyDistanceFilter: t.ELobbyDistanceFilter, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListDistanceFilter"}), .{ eLobbyDistanceFilter, }, .{ "eLobbyDistanceFilter", }, @TypeOf(S.AddRequestLobbyListDistanceFilter));
    }
    comptime { @export(AddRequestLobbyListDistanceFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter", .linkage = .Strong }); }
    pub fn AddRequestLobbyListResultCountFilter(cMaxResults: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListResultCountFilter"}), .{ cMaxResults, }, .{ "cMaxResults", }, @TypeOf(S.AddRequestLobbyListResultCountFilter));
    }
    comptime { @export(AddRequestLobbyListResultCountFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter", .linkage = .Strong }); }
    pub fn AddRequestLobbyListCompatibleMembersFilter(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListCompatibleMembersFilter"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.AddRequestLobbyListCompatibleMembersFilter));
    }
    comptime { @export(AddRequestLobbyListCompatibleMembersFilter, .{ .name = "SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter", .linkage = .Strong }); }
    pub fn GetLobbyByIndex(iLobby: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyByIndex"}), .{ iLobby, }, .{ "iLobby", }, @TypeOf(S.GetLobbyByIndex));
    }
    comptime { @export(GetLobbyByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyByIndex", .linkage = .Strong }); }
    pub fn CreateLobby(eLobbyType: t.ELobbyType, cMaxMembers: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateLobby"}), .{ eLobbyType, cMaxMembers, }, .{ "eLobbyType", "cMaxMembers", }, @TypeOf(S.CreateLobby));
    }
    comptime { @export(CreateLobby, .{ .name = "SteamAPI_ISteamMatchmaking_CreateLobby", .linkage = .Strong }); }
    pub fn JoinLobby(steamIDLobby: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinLobby"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.JoinLobby));
    }
    comptime { @export(JoinLobby, .{ .name = "SteamAPI_ISteamMatchmaking_JoinLobby", .linkage = .Strong }); }
    pub fn LeaveLobby(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LeaveLobby"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.LeaveLobby));
    }
    comptime { @export(LeaveLobby, .{ .name = "SteamAPI_ISteamMatchmaking_LeaveLobby", .linkage = .Strong }); }
    pub fn InviteUserToLobby(steamIDLobby: t.CSteamID, steamIDInvitee: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InviteUserToLobby"}), .{ steamIDLobby, steamIDInvitee, }, .{ "steamIDLobby", "steamIDInvitee", }, @TypeOf(S.InviteUserToLobby));
    }
    comptime { @export(InviteUserToLobby, .{ .name = "SteamAPI_ISteamMatchmaking_InviteUserToLobby", .linkage = .Strong }); }
    pub fn GetNumLobbyMembers(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumLobbyMembers"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetNumLobbyMembers));
    }
    comptime { @export(GetNumLobbyMembers, .{ .name = "SteamAPI_ISteamMatchmaking_GetNumLobbyMembers", .linkage = .Strong }); }
    pub fn GetLobbyMemberByIndex(steamIDLobby: t.CSteamID, iMember: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberByIndex"}), .{ steamIDLobby, iMember, }, .{ "steamIDLobby", "iMember", }, @TypeOf(S.GetLobbyMemberByIndex));
    }
    comptime { @export(GetLobbyMemberByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex", .linkage = .Strong }); }
    pub fn GetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyData"}), .{ steamIDLobby, pchKey, }, .{ "steamIDLobby", "pchKey", }, @TypeOf(S.GetLobbyData));
    }
    comptime { @export(GetLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyData", .linkage = .Strong }); }
    pub fn SetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyData"}), .{ steamIDLobby, pchKey, pchValue, }, .{ "steamIDLobby", "pchKey", "pchValue", }, @TypeOf(S.SetLobbyData));
    }
    comptime { @export(SetLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyData", .linkage = .Strong }); }
    pub fn GetLobbyDataCount(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyDataCount"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyDataCount));
    }
    comptime { @export(GetLobbyDataCount, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyDataCount", .linkage = .Strong }); }
    pub fn GetLobbyDataByIndex(steamIDLobby: t.CSteamID, iLobbyData: i32, pchKey: [*c]u8, cchKeyBufferSize: i32, pchValue: [*c]u8, cchValueBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyDataByIndex"}), .{ steamIDLobby, iLobbyData, pchKey, cchKeyBufferSize, pchValue, cchValueBufferSize, }, .{ "steamIDLobby", "iLobbyData", "pchKey", "cchKeyBufferSize", "pchValue", "cchValueBufferSize", }, @TypeOf(S.GetLobbyDataByIndex));
    }
    comptime { @export(GetLobbyDataByIndex, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex", .linkage = .Strong }); }
    pub fn DeleteLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeleteLobbyData"}), .{ steamIDLobby, pchKey, }, .{ "steamIDLobby", "pchKey", }, @TypeOf(S.DeleteLobbyData));
    }
    comptime { @export(DeleteLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_DeleteLobbyData", .linkage = .Strong }); }
    pub fn GetLobbyMemberData(steamIDLobby: t.CSteamID, steamIDUser: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberData"}), .{ steamIDLobby, steamIDUser, pchKey, }, .{ "steamIDLobby", "steamIDUser", "pchKey", }, @TypeOf(S.GetLobbyMemberData));
    }
    comptime { @export(GetLobbyMemberData, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberData", .linkage = .Strong }); }
    pub fn SetLobbyMemberData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyMemberData"}), .{ steamIDLobby, pchKey, pchValue, }, .{ "steamIDLobby", "pchKey", "pchValue", }, @TypeOf(S.SetLobbyMemberData));
    }
    comptime { @export(SetLobbyMemberData, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyMemberData", .linkage = .Strong }); }
    pub fn SendLobbyChatMsg(steamIDLobby: t.CSteamID, pvMsgBody: ?*const anyopaque, cubMsgBody: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendLobbyChatMsg"}), .{ steamIDLobby, pvMsgBody, cubMsgBody, }, .{ "steamIDLobby", "pvMsgBody", "cubMsgBody", }, @TypeOf(S.SendLobbyChatMsg));
    }
    comptime { @export(SendLobbyChatMsg, .{ .name = "SteamAPI_ISteamMatchmaking_SendLobbyChatMsg", .linkage = .Strong }); }
    pub fn GetLobbyChatEntry(steamIDLobby: t.CSteamID, iChatID: i32, pSteamIDUser: [*c]t.CSteamID, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyChatEntry"}), .{ steamIDLobby, iChatID, pSteamIDUser, pvData, cubData, peChatEntryType, }, .{ "steamIDLobby", "iChatID", "pSteamIDUser", "pvData", "cubData", "peChatEntryType", }, @TypeOf(S.GetLobbyChatEntry));
    }
    comptime { @export(GetLobbyChatEntry, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyChatEntry", .linkage = .Strong }); }
    pub fn RequestLobbyData(steamIDLobby: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLobbyData"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.RequestLobbyData));
    }
    comptime { @export(RequestLobbyData, .{ .name = "SteamAPI_ISteamMatchmaking_RequestLobbyData", .linkage = .Strong }); }
    pub fn SetLobbyGameServer(steamIDLobby: t.CSteamID, unGameServerIP: t.uint32, unGameServerPort: t.uint16, steamIDGameServer: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyGameServer"}), .{ steamIDLobby, unGameServerIP, unGameServerPort, steamIDGameServer, }, .{ "steamIDLobby", "unGameServerIP", "unGameServerPort", "steamIDGameServer", }, @TypeOf(S.SetLobbyGameServer));
    }
    comptime { @export(SetLobbyGameServer, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyGameServer", .linkage = .Strong }); }
    pub fn GetLobbyGameServer(steamIDLobby: t.CSteamID, punGameServerIP: [*c]t.uint32, punGameServerPort: [*c]t.uint16, psteamIDGameServer: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyGameServer"}), .{ steamIDLobby, punGameServerIP, punGameServerPort, psteamIDGameServer, }, .{ "steamIDLobby", "punGameServerIP", "punGameServerPort", "psteamIDGameServer", }, @TypeOf(S.GetLobbyGameServer));
    }
    comptime { @export(GetLobbyGameServer, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyGameServer", .linkage = .Strong }); }
    pub fn SetLobbyMemberLimit(steamIDLobby: t.CSteamID, cMaxMembers: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyMemberLimit"}), .{ steamIDLobby, cMaxMembers, }, .{ "steamIDLobby", "cMaxMembers", }, @TypeOf(S.SetLobbyMemberLimit));
    }
    comptime { @export(SetLobbyMemberLimit, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit", .linkage = .Strong }); }
    pub fn GetLobbyMemberLimit(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberLimit"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyMemberLimit));
    }
    comptime { @export(GetLobbyMemberLimit, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit", .linkage = .Strong }); }
    pub fn SetLobbyType(steamIDLobby: t.CSteamID, eLobbyType: t.ELobbyType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyType"}), .{ steamIDLobby, eLobbyType, }, .{ "steamIDLobby", "eLobbyType", }, @TypeOf(S.SetLobbyType));
    }
    comptime { @export(SetLobbyType, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyType", .linkage = .Strong }); }
    pub fn SetLobbyJoinable(steamIDLobby: t.CSteamID, bLobbyJoinable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyJoinable"}), .{ steamIDLobby, bLobbyJoinable, }, .{ "steamIDLobby", "bLobbyJoinable", }, @TypeOf(S.SetLobbyJoinable));
    }
    comptime { @export(SetLobbyJoinable, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyJoinable", .linkage = .Strong }); }
    pub fn GetLobbyOwner(steamIDLobby: t.CSteamID, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyOwner"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyOwner));
    }
    comptime { @export(GetLobbyOwner, .{ .name = "SteamAPI_ISteamMatchmaking_GetLobbyOwner", .linkage = .Strong }); }
    pub fn SetLobbyOwner(steamIDLobby: t.CSteamID, steamIDNewOwner: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyOwner"}), .{ steamIDLobby, steamIDNewOwner, }, .{ "steamIDLobby", "steamIDNewOwner", }, @TypeOf(S.SetLobbyOwner));
    }
    comptime { @export(SetLobbyOwner, .{ .name = "SteamAPI_ISteamMatchmaking_SetLobbyOwner", .linkage = .Strong }); }
    pub fn SetLinkedLobby(steamIDLobby: t.CSteamID, steamIDLobbyDependent: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLinkedLobby"}), .{ steamIDLobby, steamIDLobbyDependent, }, .{ "steamIDLobby", "steamIDLobbyDependent", }, @TypeOf(S.SetLinkedLobby));
    }
    comptime { @export(SetLinkedLobby, .{ .name = "SteamAPI_ISteamMatchmaking_SetLinkedLobby", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmaking; }
pub const SteamMatchmaking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMatchmaking"};
    pub fn v009() callconv(.C) [*c]t.ISteamMatchmaking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v009"}), .{ }, .{ }, @TypeOf(S.v009));
    }
    comptime { @export(v009, .{ .name = "SteamAPI_SteamMatchmaking_v009", .linkage = .Strong }); }
};
comptime { _ = SteamMatchmaking; }
pub const ISteamMatchmakingServerListResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingServerListResponse"};
    _: u8 = 1,
    pub fn ServerResponded(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerResponded"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.ServerResponded));
    }
    comptime { @export(ServerResponded, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded", .linkage = .Strong }); }
    pub fn ServerFailedToRespond(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerFailedToRespond"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.ServerFailedToRespond));
    }
    comptime { @export(ServerFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond", .linkage = .Strong }); }
    pub fn RefreshComplete(hRequest: t.HServerListRequest, response: t.EMatchMakingServerResponse, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshComplete"}), .{ hRequest, response, }, .{ "hRequest", "response", }, @TypeOf(S.RefreshComplete));
    }
    comptime { @export(RefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingServerListResponse; }
pub const ISteamMatchmakingPingResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingPingResponse"};
    _: u8 = 1,
    pub fn ServerResponded(server: [*c]t.gameserveritem_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerResponded"}), .{ server, }, .{ "server", }, @TypeOf(S.ServerResponded));
    }
    comptime { @export(ServerResponded, .{ .name = "SteamAPI_ISteamMatchmakingPingResponse_ServerResponded", .linkage = .Strong }); }
    pub fn ServerFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerFailedToRespond"}), .{ }, .{ }, @TypeOf(S.ServerFailedToRespond));
    }
    comptime { @export(ServerFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingPingResponse; }
pub const ISteamMatchmakingPlayersResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingPlayersResponse"};
    _: u8 = 1,
    pub fn AddPlayerToList(pchName: [*c]const u8, nScore: i32, flTimePlayed: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPlayerToList"}), .{ pchName, nScore, flTimePlayed, }, .{ "pchName", "nScore", "flTimePlayed", }, @TypeOf(S.AddPlayerToList));
    }
    comptime { @export(AddPlayerToList, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList", .linkage = .Strong }); }
    pub fn PlayersFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayersFailedToRespond"}), .{ }, .{ }, @TypeOf(S.PlayersFailedToRespond));
    }
    comptime { @export(PlayersFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond", .linkage = .Strong }); }
    pub fn PlayersRefreshComplete() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayersRefreshComplete"}), .{ }, .{ }, @TypeOf(S.PlayersRefreshComplete));
    }
    comptime { @export(PlayersRefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingPlayersResponse; }
pub const ISteamMatchmakingRulesResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingRulesResponse"};
    _: u8 = 1,
    pub fn RulesResponded(pchRule: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesResponded"}), .{ pchRule, pchValue, }, .{ "pchRule", "pchValue", }, @TypeOf(S.RulesResponded));
    }
    comptime { @export(RulesResponded, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded", .linkage = .Strong }); }
    pub fn RulesFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesFailedToRespond"}), .{ }, .{ }, @TypeOf(S.RulesFailedToRespond));
    }
    comptime { @export(RulesFailedToRespond, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond", .linkage = .Strong }); }
    pub fn RulesRefreshComplete() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesRefreshComplete"}), .{ }, .{ }, @TypeOf(S.RulesRefreshComplete));
    }
    comptime { @export(RulesRefreshComplete, .{ .name = "SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingRulesResponse; }
pub const ISteamMatchmakingServers = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingServers"};
    _: u8 = 1,
    pub const version = "SteamMatchMakingServers002";
    pub fn RequestInternetServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestInternetServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestInternetServerList));
    }
    comptime { @export(RequestInternetServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestInternetServerList", .linkage = .Strong }); }
    pub fn RequestLANServerList(iApp: t.AppId_t, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLANServerList"}), .{ iApp, pRequestServersResponse, }, .{ "iApp", "pRequestServersResponse", }, @TypeOf(S.RequestLANServerList));
    }
    comptime { @export(RequestLANServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestLANServerList", .linkage = .Strong }); }
    pub fn RequestFriendsServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFriendsServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestFriendsServerList));
    }
    comptime { @export(RequestFriendsServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList", .linkage = .Strong }); }
    pub fn RequestFavoritesServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFavoritesServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestFavoritesServerList));
    }
    comptime { @export(RequestFavoritesServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList", .linkage = .Strong }); }
    pub fn RequestHistoryServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestHistoryServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestHistoryServerList));
    }
    comptime { @export(RequestHistoryServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList", .linkage = .Strong }); }
    pub fn RequestSpectatorServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestSpectatorServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestSpectatorServerList));
    }
    comptime { @export(RequestSpectatorServerList, .{ .name = "SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList", .linkage = .Strong }); }
    pub fn ReleaseRequest(hServerListRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseRequest"}), .{ hServerListRequest, }, .{ "hServerListRequest", }, @TypeOf(S.ReleaseRequest));
    }
    comptime { @export(ReleaseRequest, .{ .name = "SteamAPI_ISteamMatchmakingServers_ReleaseRequest", .linkage = .Strong }); }
    pub fn GetServerDetails(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) [*c]t.gameserveritem_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerDetails"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.GetServerDetails));
    }
    comptime { @export(GetServerDetails, .{ .name = "SteamAPI_ISteamMatchmakingServers_GetServerDetails", .linkage = .Strong }); }
    pub fn CancelQuery(hRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelQuery"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.CancelQuery));
    }
    comptime { @export(CancelQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_CancelQuery", .linkage = .Strong }); }
    pub fn RefreshQuery(hRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshQuery"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.RefreshQuery));
    }
    comptime { @export(RefreshQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_RefreshQuery", .linkage = .Strong }); }
    pub fn IsRefreshing(hRequest: t.HServerListRequest, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsRefreshing"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.IsRefreshing));
    }
    comptime { @export(IsRefreshing, .{ .name = "SteamAPI_ISteamMatchmakingServers_IsRefreshing", .linkage = .Strong }); }
    pub fn GetServerCount(hRequest: t.HServerListRequest, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerCount"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.GetServerCount));
    }
    comptime { @export(GetServerCount, .{ .name = "SteamAPI_ISteamMatchmakingServers_GetServerCount", .linkage = .Strong }); }
    pub fn RefreshServer(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshServer"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.RefreshServer));
    }
    comptime { @export(RefreshServer, .{ .name = "SteamAPI_ISteamMatchmakingServers_RefreshServer", .linkage = .Strong }); }
    pub fn PingServer(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPingResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PingServer"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.PingServer));
    }
    comptime { @export(PingServer, .{ .name = "SteamAPI_ISteamMatchmakingServers_PingServer", .linkage = .Strong }); }
    pub fn PlayerDetails(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPlayersResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayerDetails"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.PlayerDetails));
    }
    comptime { @export(PlayerDetails, .{ .name = "SteamAPI_ISteamMatchmakingServers_PlayerDetails", .linkage = .Strong }); }
    pub fn ServerRules(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingRulesResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerRules"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.ServerRules));
    }
    comptime { @export(ServerRules, .{ .name = "SteamAPI_ISteamMatchmakingServers_ServerRules", .linkage = .Strong }); }
    pub fn CancelServerQuery(hServerQuery: t.HServerQuery, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelServerQuery"}), .{ hServerQuery, }, .{ "hServerQuery", }, @TypeOf(S.CancelServerQuery));
    }
    comptime { @export(CancelServerQuery, .{ .name = "SteamAPI_ISteamMatchmakingServers_CancelServerQuery", .linkage = .Strong }); }
};
comptime { _ = ISteamMatchmakingServers; }
pub const SteamMatchmakingServers = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMatchmakingServers"};
    pub fn v002() callconv(.C) [*c]t.ISteamMatchmakingServers {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
    comptime { @export(v002, .{ .name = "SteamAPI_SteamMatchmakingServers_v002", .linkage = .Strong }); }
};
comptime { _ = SteamMatchmakingServers; }
pub const ISteamGameSearch = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameSearch"};
    _: u8 = 1,
    pub const version = "SteamMatchGameSearch001";
    pub fn AddGameSearchParams(pchKeyToFind: [*c]const u8, pchValuesToFind: [*c]const u8, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddGameSearchParams"}), .{ pchKeyToFind, pchValuesToFind, }, .{ "pchKeyToFind", "pchValuesToFind", }, @TypeOf(S.AddGameSearchParams));
    }
    comptime { @export(AddGameSearchParams, .{ .name = "SteamAPI_ISteamGameSearch_AddGameSearchParams", .linkage = .Strong }); }
    pub fn SearchForGameWithLobby(steamIDLobby: t.CSteamID, nPlayerMin: i32, nPlayerMax: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SearchForGameWithLobby"}), .{ steamIDLobby, nPlayerMin, nPlayerMax, }, .{ "steamIDLobby", "nPlayerMin", "nPlayerMax", }, @TypeOf(S.SearchForGameWithLobby));
    }
    comptime { @export(SearchForGameWithLobby, .{ .name = "SteamAPI_ISteamGameSearch_SearchForGameWithLobby", .linkage = .Strong }); }
    pub fn SearchForGameSolo(nPlayerMin: i32, nPlayerMax: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SearchForGameSolo"}), .{ nPlayerMin, nPlayerMax, }, .{ "nPlayerMin", "nPlayerMax", }, @TypeOf(S.SearchForGameSolo));
    }
    comptime { @export(SearchForGameSolo, .{ .name = "SteamAPI_ISteamGameSearch_SearchForGameSolo", .linkage = .Strong }); }
    pub fn AcceptGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptGame"}), .{ }, .{ }, @TypeOf(S.AcceptGame));
    }
    comptime { @export(AcceptGame, .{ .name = "SteamAPI_ISteamGameSearch_AcceptGame", .linkage = .Strong }); }
    pub fn DeclineGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeclineGame"}), .{ }, .{ }, @TypeOf(S.DeclineGame));
    }
    comptime { @export(DeclineGame, .{ .name = "SteamAPI_ISteamGameSearch_DeclineGame", .linkage = .Strong }); }
    pub fn RetrieveConnectionDetails(steamIDHost: t.CSteamID, pchConnectionDetails: [*c]u8, cubConnectionDetails: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveConnectionDetails"}), .{ steamIDHost, pchConnectionDetails, cubConnectionDetails, }, .{ "steamIDHost", "pchConnectionDetails", "cubConnectionDetails", }, @TypeOf(S.RetrieveConnectionDetails));
    }
    comptime { @export(RetrieveConnectionDetails, .{ .name = "SteamAPI_ISteamGameSearch_RetrieveConnectionDetails", .linkage = .Strong }); }
    pub fn EndGameSearch() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndGameSearch"}), .{ }, .{ }, @TypeOf(S.EndGameSearch));
    }
    comptime { @export(EndGameSearch, .{ .name = "SteamAPI_ISteamGameSearch_EndGameSearch", .linkage = .Strong }); }
    pub fn SetGameHostParams(pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameHostParams"}), .{ pchKey, pchValue, }, .{ "pchKey", "pchValue", }, @TypeOf(S.SetGameHostParams));
    }
    comptime { @export(SetGameHostParams, .{ .name = "SteamAPI_ISteamGameSearch_SetGameHostParams", .linkage = .Strong }); }
    pub fn SetConnectionDetails(pchConnectionDetails: [*c]const u8, cubConnectionDetails: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionDetails"}), .{ pchConnectionDetails, cubConnectionDetails, }, .{ "pchConnectionDetails", "cubConnectionDetails", }, @TypeOf(S.SetConnectionDetails));
    }
    comptime { @export(SetConnectionDetails, .{ .name = "SteamAPI_ISteamGameSearch_SetConnectionDetails", .linkage = .Strong }); }
    pub fn RequestPlayersForGame(nPlayerMin: i32, nPlayerMax: i32, nMaxTeamSize: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestPlayersForGame"}), .{ nPlayerMin, nPlayerMax, nMaxTeamSize, }, .{ "nPlayerMin", "nPlayerMax", "nMaxTeamSize", }, @TypeOf(S.RequestPlayersForGame));
    }
    comptime { @export(RequestPlayersForGame, .{ .name = "SteamAPI_ISteamGameSearch_RequestPlayersForGame", .linkage = .Strong }); }
    pub fn HostConfirmGameStart(ullUniqueGameID: t.uint64, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HostConfirmGameStart"}), .{ ullUniqueGameID, }, .{ "ullUniqueGameID", }, @TypeOf(S.HostConfirmGameStart));
    }
    comptime { @export(HostConfirmGameStart, .{ .name = "SteamAPI_ISteamGameSearch_HostConfirmGameStart", .linkage = .Strong }); }
    pub fn CancelRequestPlayersForGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelRequestPlayersForGame"}), .{ }, .{ }, @TypeOf(S.CancelRequestPlayersForGame));
    }
    comptime { @export(CancelRequestPlayersForGame, .{ .name = "SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame", .linkage = .Strong }); }
    pub fn SubmitPlayerResult(ullUniqueGameID: t.uint64, steamIDPlayer: t.CSteamID, EPlayerResult: t.EPlayerResult_t, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitPlayerResult"}), .{ ullUniqueGameID, steamIDPlayer, EPlayerResult, }, .{ "ullUniqueGameID", "steamIDPlayer", "EPlayerResult", }, @TypeOf(S.SubmitPlayerResult));
    }
    comptime { @export(SubmitPlayerResult, .{ .name = "SteamAPI_ISteamGameSearch_SubmitPlayerResult", .linkage = .Strong }); }
    pub fn EndGame(ullUniqueGameID: t.uint64, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndGame"}), .{ ullUniqueGameID, }, .{ "ullUniqueGameID", }, @TypeOf(S.EndGame));
    }
    comptime { @export(EndGame, .{ .name = "SteamAPI_ISteamGameSearch_EndGame", .linkage = .Strong }); }
};
comptime { _ = ISteamGameSearch; }
pub const SteamGameSearch = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameSearch"};
    pub fn v001() callconv(.C) [*c]t.ISteamGameSearch {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamGameSearch_v001", .linkage = .Strong }); }
};
comptime { _ = SteamGameSearch; }
pub const ISteamParties = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamParties"};
    _: u8 = 1,
    pub const version = "SteamParties002";
    pub fn GetNumActiveBeacons() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumActiveBeacons"}), .{ }, .{ }, @TypeOf(S.GetNumActiveBeacons));
    }
    comptime { @export(GetNumActiveBeacons, .{ .name = "SteamAPI_ISteamParties_GetNumActiveBeacons", .linkage = .Strong }); }
    pub fn GetBeaconByIndex(unIndex: t.uint32, ) callconv(.C) t.PartyBeaconID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconByIndex"}), .{ unIndex, }, .{ "unIndex", }, @TypeOf(S.GetBeaconByIndex));
    }
    comptime { @export(GetBeaconByIndex, .{ .name = "SteamAPI_ISteamParties_GetBeaconByIndex", .linkage = .Strong }); }
    pub fn GetBeaconDetails(ulBeaconID: t.PartyBeaconID_t, pSteamIDBeaconOwner: [*c]t.CSteamID, pLocation: [*c]t.SteamPartyBeaconLocation_t, pchMetadata: [*c]u8, cchMetadata: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconDetails"}), .{ ulBeaconID, pSteamIDBeaconOwner, pLocation, pchMetadata, cchMetadata, }, .{ "ulBeaconID", "pSteamIDBeaconOwner", "pLocation", "pchMetadata", "cchMetadata", }, @TypeOf(S.GetBeaconDetails));
    }
    comptime { @export(GetBeaconDetails, .{ .name = "SteamAPI_ISteamParties_GetBeaconDetails", .linkage = .Strong }); }
    pub fn JoinParty(ulBeaconID: t.PartyBeaconID_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinParty"}), .{ ulBeaconID, }, .{ "ulBeaconID", }, @TypeOf(S.JoinParty));
    }
    comptime { @export(JoinParty, .{ .name = "SteamAPI_ISteamParties_JoinParty", .linkage = .Strong }); }
    pub fn GetNumAvailableBeaconLocations(puNumLocations: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumAvailableBeaconLocations"}), .{ puNumLocations, }, .{ "puNumLocations", }, @TypeOf(S.GetNumAvailableBeaconLocations));
    }
    comptime { @export(GetNumAvailableBeaconLocations, .{ .name = "SteamAPI_ISteamParties_GetNumAvailableBeaconLocations", .linkage = .Strong }); }
    pub fn GetAvailableBeaconLocations(pLocationList: [*c]t.SteamPartyBeaconLocation_t, uMaxNumLocations: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableBeaconLocations"}), .{ pLocationList, uMaxNumLocations, }, .{ "pLocationList", "uMaxNumLocations", }, @TypeOf(S.GetAvailableBeaconLocations));
    }
    comptime { @export(GetAvailableBeaconLocations, .{ .name = "SteamAPI_ISteamParties_GetAvailableBeaconLocations", .linkage = .Strong }); }
    pub fn CreateBeacon(unOpenSlots: t.uint32, pBeaconLocation: [*c]t.SteamPartyBeaconLocation_t, pchConnectString: [*c]const u8, pchMetadata: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateBeacon"}), .{ unOpenSlots, pBeaconLocation, pchConnectString, pchMetadata, }, .{ "unOpenSlots", "pBeaconLocation", "pchConnectString", "pchMetadata", }, @TypeOf(S.CreateBeacon));
    }
    comptime { @export(CreateBeacon, .{ .name = "SteamAPI_ISteamParties_CreateBeacon", .linkage = .Strong }); }
    pub fn OnReservationCompleted(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OnReservationCompleted"}), .{ ulBeacon, steamIDUser, }, .{ "ulBeacon", "steamIDUser", }, @TypeOf(S.OnReservationCompleted));
    }
    comptime { @export(OnReservationCompleted, .{ .name = "SteamAPI_ISteamParties_OnReservationCompleted", .linkage = .Strong }); }
    pub fn CancelReservation(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelReservation"}), .{ ulBeacon, steamIDUser, }, .{ "ulBeacon", "steamIDUser", }, @TypeOf(S.CancelReservation));
    }
    comptime { @export(CancelReservation, .{ .name = "SteamAPI_ISteamParties_CancelReservation", .linkage = .Strong }); }
    pub fn ChangeNumOpenSlots(ulBeacon: t.PartyBeaconID_t, unOpenSlots: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ChangeNumOpenSlots"}), .{ ulBeacon, unOpenSlots, }, .{ "ulBeacon", "unOpenSlots", }, @TypeOf(S.ChangeNumOpenSlots));
    }
    comptime { @export(ChangeNumOpenSlots, .{ .name = "SteamAPI_ISteamParties_ChangeNumOpenSlots", .linkage = .Strong }); }
    pub fn DestroyBeacon(ulBeacon: t.PartyBeaconID_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyBeacon"}), .{ ulBeacon, }, .{ "ulBeacon", }, @TypeOf(S.DestroyBeacon));
    }
    comptime { @export(DestroyBeacon, .{ .name = "SteamAPI_ISteamParties_DestroyBeacon", .linkage = .Strong }); }
    pub fn GetBeaconLocationData(BeaconLocation: t.SteamPartyBeaconLocation_t, eData: t.ESteamPartyBeaconLocationData, pchDataStringOut: [*c]u8, cchDataStringOut: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconLocationData"}), .{ BeaconLocation, eData, pchDataStringOut, cchDataStringOut, }, .{ "BeaconLocation", "eData", "pchDataStringOut", "cchDataStringOut", }, @TypeOf(S.GetBeaconLocationData));
    }
    comptime { @export(GetBeaconLocationData, .{ .name = "SteamAPI_ISteamParties_GetBeaconLocationData", .linkage = .Strong }); }
};
comptime { _ = ISteamParties; }
pub const SteamParties = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamParties"};
    pub fn v002() callconv(.C) [*c]t.ISteamParties {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
    comptime { @export(v002, .{ .name = "SteamAPI_SteamParties_v002", .linkage = .Strong }); }
};
comptime { _ = SteamParties; }
pub const ISteamRemoteStorage = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamRemoteStorage"};
    _: u8 = 1,
    pub const version = "STEAMREMOTESTORAGE_INTERFACE_VERSION016";
    pub fn FileWrite(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWrite"}), .{ pchFile, pvData, cubData, }, .{ "pchFile", "pvData", "cubData", }, @TypeOf(S.FileWrite));
    }
    comptime { @export(FileWrite, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWrite", .linkage = .Strong }); }
    pub fn FileRead(pchFile: [*c]const u8, pvData: ?*anyopaque, cubDataToRead: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileRead"}), .{ pchFile, pvData, cubDataToRead, }, .{ "pchFile", "pvData", "cubDataToRead", }, @TypeOf(S.FileRead));
    }
    comptime { @export(FileRead, .{ .name = "SteamAPI_ISteamRemoteStorage_FileRead", .linkage = .Strong }); }
    pub fn FileWriteAsync(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteAsync"}), .{ pchFile, pvData, cubData, }, .{ "pchFile", "pvData", "cubData", }, @TypeOf(S.FileWriteAsync));
    }
    comptime { @export(FileWriteAsync, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteAsync", .linkage = .Strong }); }
    pub fn FileReadAsync(pchFile: [*c]const u8, nOffset: t.uint32, cubToRead: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileReadAsync"}), .{ pchFile, nOffset, cubToRead, }, .{ "pchFile", "nOffset", "cubToRead", }, @TypeOf(S.FileReadAsync));
    }
    comptime { @export(FileReadAsync, .{ .name = "SteamAPI_ISteamRemoteStorage_FileReadAsync", .linkage = .Strong }); }
    pub fn FileReadAsyncComplete(hReadCall: t.SteamAPICall_t, pvBuffer: ?*anyopaque, cubToRead: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileReadAsyncComplete"}), .{ hReadCall, pvBuffer, cubToRead, }, .{ "hReadCall", "pvBuffer", "cubToRead", }, @TypeOf(S.FileReadAsyncComplete));
    }
    comptime { @export(FileReadAsyncComplete, .{ .name = "SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete", .linkage = .Strong }); }
    pub fn FileForget(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileForget"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileForget));
    }
    comptime { @export(FileForget, .{ .name = "SteamAPI_ISteamRemoteStorage_FileForget", .linkage = .Strong }); }
    pub fn FileDelete(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileDelete"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileDelete));
    }
    comptime { @export(FileDelete, .{ .name = "SteamAPI_ISteamRemoteStorage_FileDelete", .linkage = .Strong }); }
    pub fn FileShare(pchFile: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileShare"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileShare));
    }
    comptime { @export(FileShare, .{ .name = "SteamAPI_ISteamRemoteStorage_FileShare", .linkage = .Strong }); }
    pub fn SetSyncPlatforms(pchFile: [*c]const u8, eRemoteStoragePlatform: t.ERemoteStoragePlatform, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSyncPlatforms"}), .{ pchFile, eRemoteStoragePlatform, }, .{ "pchFile", "eRemoteStoragePlatform", }, @TypeOf(S.SetSyncPlatforms));
    }
    comptime { @export(SetSyncPlatforms, .{ .name = "SteamAPI_ISteamRemoteStorage_SetSyncPlatforms", .linkage = .Strong }); }
    pub fn FileWriteStreamOpen(pchFile: [*c]const u8, ) callconv(.C) t.UGCFileWriteStreamHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamOpen"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileWriteStreamOpen));
    }
    comptime { @export(FileWriteStreamOpen, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen", .linkage = .Strong }); }
    pub fn FileWriteStreamWriteChunk(writeHandle: t.UGCFileWriteStreamHandle_t, pvData: ?*const anyopaque, cubData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamWriteChunk"}), .{ writeHandle, pvData, cubData, }, .{ "writeHandle", "pvData", "cubData", }, @TypeOf(S.FileWriteStreamWriteChunk));
    }
    comptime { @export(FileWriteStreamWriteChunk, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk", .linkage = .Strong }); }
    pub fn FileWriteStreamClose(writeHandle: t.UGCFileWriteStreamHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamClose"}), .{ writeHandle, }, .{ "writeHandle", }, @TypeOf(S.FileWriteStreamClose));
    }
    comptime { @export(FileWriteStreamClose, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamClose", .linkage = .Strong }); }
    pub fn FileWriteStreamCancel(writeHandle: t.UGCFileWriteStreamHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamCancel"}), .{ writeHandle, }, .{ "writeHandle", }, @TypeOf(S.FileWriteStreamCancel));
    }
    comptime { @export(FileWriteStreamCancel, .{ .name = "SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel", .linkage = .Strong }); }
    pub fn FileExists(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileExists"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileExists));
    }
    comptime { @export(FileExists, .{ .name = "SteamAPI_ISteamRemoteStorage_FileExists", .linkage = .Strong }); }
    pub fn FilePersisted(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FilePersisted"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FilePersisted));
    }
    comptime { @export(FilePersisted, .{ .name = "SteamAPI_ISteamRemoteStorage_FilePersisted", .linkage = .Strong }); }
    pub fn GetFileSize(pchFile: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileSize"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetFileSize));
    }
    comptime { @export(GetFileSize, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileSize", .linkage = .Strong }); }
    pub fn GetFileTimestamp(pchFile: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileTimestamp"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetFileTimestamp));
    }
    comptime { @export(GetFileTimestamp, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileTimestamp", .linkage = .Strong }); }
    pub fn GetSyncPlatforms(pchFile: [*c]const u8, ) callconv(.C) t.ERemoteStoragePlatform {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSyncPlatforms"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetSyncPlatforms));
    }
    comptime { @export(GetSyncPlatforms, .{ .name = "SteamAPI_ISteamRemoteStorage_GetSyncPlatforms", .linkage = .Strong }); }
    pub fn GetFileCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileCount"}), .{ }, .{ }, @TypeOf(S.GetFileCount));
    }
    comptime { @export(GetFileCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileCount", .linkage = .Strong }); }
    pub fn GetFileNameAndSize(iFile: i32, pnFileSizeInBytes: [*c]i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileNameAndSize"}), .{ iFile, pnFileSizeInBytes, }, .{ "iFile", "pnFileSizeInBytes", }, @TypeOf(S.GetFileNameAndSize));
    }
    comptime { @export(GetFileNameAndSize, .{ .name = "SteamAPI_ISteamRemoteStorage_GetFileNameAndSize", .linkage = .Strong }); }
    pub fn GetQuota(pnTotalBytes: [*c]t.uint64, puAvailableBytes: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQuota"}), .{ pnTotalBytes, puAvailableBytes, }, .{ "pnTotalBytes", "puAvailableBytes", }, @TypeOf(S.GetQuota));
    }
    comptime { @export(GetQuota, .{ .name = "SteamAPI_ISteamRemoteStorage_GetQuota", .linkage = .Strong }); }
    pub fn IsCloudEnabledForAccount() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsCloudEnabledForAccount"}), .{ }, .{ }, @TypeOf(S.IsCloudEnabledForAccount));
    }
    comptime { @export(IsCloudEnabledForAccount, .{ .name = "SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount", .linkage = .Strong }); }
    pub fn IsCloudEnabledForApp() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsCloudEnabledForApp"}), .{ }, .{ }, @TypeOf(S.IsCloudEnabledForApp));
    }
    comptime { @export(IsCloudEnabledForApp, .{ .name = "SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp", .linkage = .Strong }); }
    pub fn SetCloudEnabledForApp(bEnabled: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCloudEnabledForApp"}), .{ bEnabled, }, .{ "bEnabled", }, @TypeOf(S.SetCloudEnabledForApp));
    }
    comptime { @export(SetCloudEnabledForApp, .{ .name = "SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp", .linkage = .Strong }); }
    pub fn UGCDownload(hContent: t.UGCHandle_t, unPriority: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCDownload"}), .{ hContent, unPriority, }, .{ "hContent", "unPriority", }, @TypeOf(S.UGCDownload));
    }
    comptime { @export(UGCDownload, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCDownload", .linkage = .Strong }); }
    pub fn GetUGCDownloadProgress(hContent: t.UGCHandle_t, pnBytesDownloaded: [*c]i32, pnBytesExpected: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUGCDownloadProgress"}), .{ hContent, pnBytesDownloaded, pnBytesExpected, }, .{ "hContent", "pnBytesDownloaded", "pnBytesExpected", }, @TypeOf(S.GetUGCDownloadProgress));
    }
    comptime { @export(GetUGCDownloadProgress, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress", .linkage = .Strong }); }
    pub fn GetUGCDetails(hContent: t.UGCHandle_t, pnAppID: [*c]t.AppId_t, ppchName: [*c][*c]u8, pnFileSizeInBytes: [*c]i32, pSteamIDOwner: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUGCDetails"}), .{ hContent, pnAppID, ppchName, pnFileSizeInBytes, pSteamIDOwner, }, .{ "hContent", "pnAppID", "ppchName", "pnFileSizeInBytes", "pSteamIDOwner", }, @TypeOf(S.GetUGCDetails));
    }
    comptime { @export(GetUGCDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUGCDetails", .linkage = .Strong }); }
    pub fn UGCRead(hContent: t.UGCHandle_t, pvData: ?*anyopaque, cubDataToRead: i32, cOffset: t.uint32, eAction: t.EUGCReadAction, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCRead"}), .{ hContent, pvData, cubDataToRead, cOffset, eAction, }, .{ "hContent", "pvData", "cubDataToRead", "cOffset", "eAction", }, @TypeOf(S.UGCRead));
    }
    comptime { @export(UGCRead, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCRead", .linkage = .Strong }); }
    pub fn GetCachedUGCCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCachedUGCCount"}), .{ }, .{ }, @TypeOf(S.GetCachedUGCCount));
    }
    comptime { @export(GetCachedUGCCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetCachedUGCCount", .linkage = .Strong }); }
    pub fn GetCachedUGCHandle(iCachedContent: i32, ) callconv(.C) t.UGCHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCachedUGCHandle"}), .{ iCachedContent, }, .{ "iCachedContent", }, @TypeOf(S.GetCachedUGCHandle));
    }
    comptime { @export(GetCachedUGCHandle, .{ .name = "SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle", .linkage = .Strong }); }
    pub fn PublishWorkshopFile(pchFile: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, eWorkshopFileType: t.EWorkshopFileType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PublishWorkshopFile"}), .{ pchFile, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, eWorkshopFileType, }, .{ "pchFile", "pchPreviewFile", "nConsumerAppId", "pchTitle", "pchDescription", "eVisibility", "pTags", "eWorkshopFileType", }, @TypeOf(S.PublishWorkshopFile));
    }
    comptime { @export(PublishWorkshopFile, .{ .name = "SteamAPI_ISteamRemoteStorage_PublishWorkshopFile", .linkage = .Strong }); }
    pub fn CreatePublishedFileUpdateRequest(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.PublishedFileUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreatePublishedFileUpdateRequest"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.CreatePublishedFileUpdateRequest));
    }
    comptime { @export(CreatePublishedFileUpdateRequest, .{ .name = "SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest", .linkage = .Strong }); }
    pub fn UpdatePublishedFileFile(updateHandle: t.PublishedFileUpdateHandle_t, pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileFile"}), .{ updateHandle, pchFile, }, .{ "updateHandle", "pchFile", }, @TypeOf(S.UpdatePublishedFileFile));
    }
    comptime { @export(UpdatePublishedFileFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile", .linkage = .Strong }); }
    pub fn UpdatePublishedFilePreviewFile(updateHandle: t.PublishedFileUpdateHandle_t, pchPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFilePreviewFile"}), .{ updateHandle, pchPreviewFile, }, .{ "updateHandle", "pchPreviewFile", }, @TypeOf(S.UpdatePublishedFilePreviewFile));
    }
    comptime { @export(UpdatePublishedFilePreviewFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile", .linkage = .Strong }); }
    pub fn UpdatePublishedFileTitle(updateHandle: t.PublishedFileUpdateHandle_t, pchTitle: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileTitle"}), .{ updateHandle, pchTitle, }, .{ "updateHandle", "pchTitle", }, @TypeOf(S.UpdatePublishedFileTitle));
    }
    comptime { @export(UpdatePublishedFileTitle, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle", .linkage = .Strong }); }
    pub fn UpdatePublishedFileDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileDescription"}), .{ updateHandle, pchDescription, }, .{ "updateHandle", "pchDescription", }, @TypeOf(S.UpdatePublishedFileDescription));
    }
    comptime { @export(UpdatePublishedFileDescription, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription", .linkage = .Strong }); }
    pub fn UpdatePublishedFileVisibility(updateHandle: t.PublishedFileUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileVisibility"}), .{ updateHandle, eVisibility, }, .{ "updateHandle", "eVisibility", }, @TypeOf(S.UpdatePublishedFileVisibility));
    }
    comptime { @export(UpdatePublishedFileVisibility, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility", .linkage = .Strong }); }
    pub fn UpdatePublishedFileTags(updateHandle: t.PublishedFileUpdateHandle_t, pTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileTags"}), .{ updateHandle, pTags, }, .{ "updateHandle", "pTags", }, @TypeOf(S.UpdatePublishedFileTags));
    }
    comptime { @export(UpdatePublishedFileTags, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags", .linkage = .Strong }); }
    pub fn CommitPublishedFileUpdate(updateHandle: t.PublishedFileUpdateHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CommitPublishedFileUpdate"}), .{ updateHandle, }, .{ "updateHandle", }, @TypeOf(S.CommitPublishedFileUpdate));
    }
    comptime { @export(CommitPublishedFileUpdate, .{ .name = "SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate", .linkage = .Strong }); }
    pub fn GetPublishedFileDetails(unPublishedFileId: t.PublishedFileId_t, unMaxSecondsOld: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublishedFileDetails"}), .{ unPublishedFileId, unMaxSecondsOld, }, .{ "unPublishedFileId", "unMaxSecondsOld", }, @TypeOf(S.GetPublishedFileDetails));
    }
    comptime { @export(GetPublishedFileDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails", .linkage = .Strong }); }
    pub fn DeletePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeletePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.DeletePublishedFile));
    }
    comptime { @export(DeletePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_DeletePublishedFile", .linkage = .Strong }); }
    pub fn EnumerateUserPublishedFiles(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserPublishedFiles"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateUserPublishedFiles));
    }
    comptime { @export(EnumerateUserPublishedFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles", .linkage = .Strong }); }
    pub fn SubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubscribePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.SubscribePublishedFile));
    }
    comptime { @export(SubscribePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_SubscribePublishedFile", .linkage = .Strong }); }
    pub fn EnumerateUserSubscribedFiles(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserSubscribedFiles"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateUserSubscribedFiles));
    }
    comptime { @export(EnumerateUserSubscribedFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles", .linkage = .Strong }); }
    pub fn UnsubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UnsubscribePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.UnsubscribePublishedFile));
    }
    comptime { @export(UnsubscribePublishedFile, .{ .name = "SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile", .linkage = .Strong }); }
    pub fn UpdatePublishedFileSetChangeDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchChangeDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileSetChangeDescription"}), .{ updateHandle, pchChangeDescription, }, .{ "updateHandle", "pchChangeDescription", }, @TypeOf(S.UpdatePublishedFileSetChangeDescription));
    }
    comptime { @export(UpdatePublishedFileSetChangeDescription, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription", .linkage = .Strong }); }
    pub fn GetPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublishedItemVoteDetails"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.GetPublishedItemVoteDetails));
    }
    comptime { @export(GetPublishedItemVoteDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails", .linkage = .Strong }); }
    pub fn UpdateUserPublishedItemVote(unPublishedFileId: t.PublishedFileId_t, bVoteUp: bool, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateUserPublishedItemVote"}), .{ unPublishedFileId, bVoteUp, }, .{ "unPublishedFileId", "bVoteUp", }, @TypeOf(S.UpdateUserPublishedItemVote));
    }
    comptime { @export(UpdateUserPublishedItemVote, .{ .name = "SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote", .linkage = .Strong }); }
    pub fn GetUserPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserPublishedItemVoteDetails"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.GetUserPublishedItemVoteDetails));
    }
    comptime { @export(GetUserPublishedItemVoteDetails, .{ .name = "SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails", .linkage = .Strong }); }
    pub fn EnumerateUserSharedWorkshopFiles(steamId: t.CSteamID, unStartIndex: t.uint32, pRequiredTags: [*c]t.SteamParamStringArray_t, pExcludedTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserSharedWorkshopFiles"}), .{ steamId, unStartIndex, pRequiredTags, pExcludedTags, }, .{ "steamId", "unStartIndex", "pRequiredTags", "pExcludedTags", }, @TypeOf(S.EnumerateUserSharedWorkshopFiles));
    }
    comptime { @export(EnumerateUserSharedWorkshopFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles", .linkage = .Strong }); }
    pub fn PublishVideo(eVideoProvider: t.EWorkshopVideoProvider, pchVideoAccount: [*c]const u8, pchVideoIdentifier: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PublishVideo"}), .{ eVideoProvider, pchVideoAccount, pchVideoIdentifier, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, }, .{ "eVideoProvider", "pchVideoAccount", "pchVideoIdentifier", "pchPreviewFile", "nConsumerAppId", "pchTitle", "pchDescription", "eVisibility", "pTags", }, @TypeOf(S.PublishVideo));
    }
    comptime { @export(PublishVideo, .{ .name = "SteamAPI_ISteamRemoteStorage_PublishVideo", .linkage = .Strong }); }
    pub fn SetUserPublishedFileAction(unPublishedFileId: t.PublishedFileId_t, eAction: t.EWorkshopFileAction, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserPublishedFileAction"}), .{ unPublishedFileId, eAction, }, .{ "unPublishedFileId", "eAction", }, @TypeOf(S.SetUserPublishedFileAction));
    }
    comptime { @export(SetUserPublishedFileAction, .{ .name = "SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction", .linkage = .Strong }); }
    pub fn EnumeratePublishedFilesByUserAction(eAction: t.EWorkshopFileAction, unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumeratePublishedFilesByUserAction"}), .{ eAction, unStartIndex, }, .{ "eAction", "unStartIndex", }, @TypeOf(S.EnumeratePublishedFilesByUserAction));
    }
    comptime { @export(EnumeratePublishedFilesByUserAction, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction", .linkage = .Strong }); }
    pub fn EnumeratePublishedWorkshopFiles(eEnumerationType: t.EWorkshopEnumerationType, unStartIndex: t.uint32, unCount: t.uint32, unDays: t.uint32, pTags: [*c]t.SteamParamStringArray_t, pUserTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumeratePublishedWorkshopFiles"}), .{ eEnumerationType, unStartIndex, unCount, unDays, pTags, pUserTags, }, .{ "eEnumerationType", "unStartIndex", "unCount", "unDays", "pTags", "pUserTags", }, @TypeOf(S.EnumeratePublishedWorkshopFiles));
    }
    comptime { @export(EnumeratePublishedWorkshopFiles, .{ .name = "SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles", .linkage = .Strong }); }
    pub fn UGCDownloadToLocation(hContent: t.UGCHandle_t, pchLocation: [*c]const u8, unPriority: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCDownloadToLocation"}), .{ hContent, pchLocation, unPriority, }, .{ "hContent", "pchLocation", "unPriority", }, @TypeOf(S.UGCDownloadToLocation));
    }
    comptime { @export(UGCDownloadToLocation, .{ .name = "SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation", .linkage = .Strong }); }
    pub fn GetLocalFileChangeCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalFileChangeCount"}), .{ }, .{ }, @TypeOf(S.GetLocalFileChangeCount));
    }
    comptime { @export(GetLocalFileChangeCount, .{ .name = "SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount", .linkage = .Strong }); }
    pub fn GetLocalFileChange(iFile: i32, pEChangeType: [*c]t.ERemoteStorageLocalFileChange, pEFilePathType: [*c]t.ERemoteStorageFilePathType, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalFileChange"}), .{ iFile, pEChangeType, pEFilePathType, }, .{ "iFile", "pEChangeType", "pEFilePathType", }, @TypeOf(S.GetLocalFileChange));
    }
    comptime { @export(GetLocalFileChange, .{ .name = "SteamAPI_ISteamRemoteStorage_GetLocalFileChange", .linkage = .Strong }); }
    pub fn BeginFileWriteBatch() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginFileWriteBatch"}), .{ }, .{ }, @TypeOf(S.BeginFileWriteBatch));
    }
    comptime { @export(BeginFileWriteBatch, .{ .name = "SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch", .linkage = .Strong }); }
    pub fn EndFileWriteBatch() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndFileWriteBatch"}), .{ }, .{ }, @TypeOf(S.EndFileWriteBatch));
    }
    comptime { @export(EndFileWriteBatch, .{ .name = "SteamAPI_ISteamRemoteStorage_EndFileWriteBatch", .linkage = .Strong }); }
};
comptime { _ = ISteamRemoteStorage; }
pub const SteamRemoteStorage = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamRemoteStorage"};
    pub fn v016() callconv(.C) [*c]t.ISteamRemoteStorage {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
    comptime { @export(v016, .{ .name = "SteamAPI_SteamRemoteStorage_v016", .linkage = .Strong }); }
};
comptime { _ = SteamRemoteStorage; }
pub const ISteamUserStats = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUserStats"};
    _: u8 = 1,
    pub const version = "STEAMUSERSTATS_INTERFACE_VERSION012";
    pub fn RequestCurrentStats() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestCurrentStats"}), .{ }, .{ }, @TypeOf(S.RequestCurrentStats));
    }
    comptime { @export(RequestCurrentStats, .{ .name = "SteamAPI_ISteamUserStats_RequestCurrentStats", .linkage = .Strong }); }
    pub fn GetStatInt32(pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStatInt32"}), .{ pchName, pData, }, .{ "pchName", "pData", }, @TypeOf(S.GetStatInt32));
    }
    comptime { @export(GetStatInt32, .{ .name = "SteamAPI_ISteamUserStats_GetStatInt32", .linkage = .Strong }); }
    pub fn GetStatFloat(pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStatFloat"}), .{ pchName, pData, }, .{ "pchName", "pData", }, @TypeOf(S.GetStatFloat));
    }
    comptime { @export(GetStatFloat, .{ .name = "SteamAPI_ISteamUserStats_GetStatFloat", .linkage = .Strong }); }
    pub fn SetStatInt32(pchName: [*c]const u8, nData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetStatInt32"}), .{ pchName, nData, }, .{ "pchName", "nData", }, @TypeOf(S.SetStatInt32));
    }
    comptime { @export(SetStatInt32, .{ .name = "SteamAPI_ISteamUserStats_SetStatInt32", .linkage = .Strong }); }
    pub fn SetStatFloat(pchName: [*c]const u8, fData: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetStatFloat"}), .{ pchName, fData, }, .{ "pchName", "fData", }, @TypeOf(S.SetStatFloat));
    }
    comptime { @export(SetStatFloat, .{ .name = "SteamAPI_ISteamUserStats_SetStatFloat", .linkage = .Strong }); }
    pub fn UpdateAvgRateStat(pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateAvgRateStat"}), .{ pchName, flCountThisSession, dSessionLength, }, .{ "pchName", "flCountThisSession", "dSessionLength", }, @TypeOf(S.UpdateAvgRateStat));
    }
    comptime { @export(UpdateAvgRateStat, .{ .name = "SteamAPI_ISteamUserStats_UpdateAvgRateStat", .linkage = .Strong }); }
    pub fn GetAchievement(pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievement"}), .{ pchName, pbAchieved, }, .{ "pchName", "pbAchieved", }, @TypeOf(S.GetAchievement));
    }
    comptime { @export(GetAchievement, .{ .name = "SteamAPI_ISteamUserStats_GetAchievement", .linkage = .Strong }); }
    pub fn SetAchievement(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAchievement"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.SetAchievement));
    }
    comptime { @export(SetAchievement, .{ .name = "SteamAPI_ISteamUserStats_SetAchievement", .linkage = .Strong }); }
    pub fn ClearAchievement(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearAchievement"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.ClearAchievement));
    }
    comptime { @export(ClearAchievement, .{ .name = "SteamAPI_ISteamUserStats_ClearAchievement", .linkage = .Strong }); }
    pub fn GetAchievementAndUnlockTime(pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementAndUnlockTime"}), .{ pchName, pbAchieved, punUnlockTime, }, .{ "pchName", "pbAchieved", "punUnlockTime", }, @TypeOf(S.GetAchievementAndUnlockTime));
    }
    comptime { @export(GetAchievementAndUnlockTime, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime", .linkage = .Strong }); }
    pub fn StoreStats() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StoreStats"}), .{ }, .{ }, @TypeOf(S.StoreStats));
    }
    comptime { @export(StoreStats, .{ .name = "SteamAPI_ISteamUserStats_StoreStats", .linkage = .Strong }); }
    pub fn GetAchievementIcon(pchName: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementIcon"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.GetAchievementIcon));
    }
    comptime { @export(GetAchievementIcon, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementIcon", .linkage = .Strong }); }
    pub fn GetAchievementDisplayAttribute(pchName: [*c]const u8, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementDisplayAttribute"}), .{ pchName, pchKey, }, .{ "pchName", "pchKey", }, @TypeOf(S.GetAchievementDisplayAttribute));
    }
    comptime { @export(GetAchievementDisplayAttribute, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute", .linkage = .Strong }); }
    pub fn IndicateAchievementProgress(pchName: [*c]const u8, nCurProgress: t.uint32, nMaxProgress: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IndicateAchievementProgress"}), .{ pchName, nCurProgress, nMaxProgress, }, .{ "pchName", "nCurProgress", "nMaxProgress", }, @TypeOf(S.IndicateAchievementProgress));
    }
    comptime { @export(IndicateAchievementProgress, .{ .name = "SteamAPI_ISteamUserStats_IndicateAchievementProgress", .linkage = .Strong }); }
    pub fn GetNumAchievements() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumAchievements"}), .{ }, .{ }, @TypeOf(S.GetNumAchievements));
    }
    comptime { @export(GetNumAchievements, .{ .name = "SteamAPI_ISteamUserStats_GetNumAchievements", .linkage = .Strong }); }
    pub fn GetAchievementName(iAchievement: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementName"}), .{ iAchievement, }, .{ "iAchievement", }, @TypeOf(S.GetAchievementName));
    }
    comptime { @export(GetAchievementName, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementName", .linkage = .Strong }); }
    pub fn RequestUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.RequestUserStats));
    }
    comptime { @export(RequestUserStats, .{ .name = "SteamAPI_ISteamUserStats_RequestUserStats", .linkage = .Strong }); }
    pub fn GetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatInt32"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatInt32));
    }
    comptime { @export(GetUserStatInt32, .{ .name = "SteamAPI_ISteamUserStats_GetUserStatInt32", .linkage = .Strong }); }
    pub fn GetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatFloat"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatFloat));
    }
    comptime { @export(GetUserStatFloat, .{ .name = "SteamAPI_ISteamUserStats_GetUserStatFloat", .linkage = .Strong }); }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievement"}), .{ steamIDUser, pchName, pbAchieved, }, .{ "steamIDUser", "pchName", "pbAchieved", }, @TypeOf(S.GetUserAchievement));
    }
    comptime { @export(GetUserAchievement, .{ .name = "SteamAPI_ISteamUserStats_GetUserAchievement", .linkage = .Strong }); }
    pub fn GetUserAchievementAndUnlockTime(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievementAndUnlockTime"}), .{ steamIDUser, pchName, pbAchieved, punUnlockTime, }, .{ "steamIDUser", "pchName", "pbAchieved", "punUnlockTime", }, @TypeOf(S.GetUserAchievementAndUnlockTime));
    }
    comptime { @export(GetUserAchievementAndUnlockTime, .{ .name = "SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime", .linkage = .Strong }); }
    pub fn ResetAllStats(bAchievementsToo: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetAllStats"}), .{ bAchievementsToo, }, .{ "bAchievementsToo", }, @TypeOf(S.ResetAllStats));
    }
    comptime { @export(ResetAllStats, .{ .name = "SteamAPI_ISteamUserStats_ResetAllStats", .linkage = .Strong }); }
    pub fn FindOrCreateLeaderboard(pchLeaderboardName: [*c]const u8, eLeaderboardSortMethod: t.ELeaderboardSortMethod, eLeaderboardDisplayType: t.ELeaderboardDisplayType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindOrCreateLeaderboard"}), .{ pchLeaderboardName, eLeaderboardSortMethod, eLeaderboardDisplayType, }, .{ "pchLeaderboardName", "eLeaderboardSortMethod", "eLeaderboardDisplayType", }, @TypeOf(S.FindOrCreateLeaderboard));
    }
    comptime { @export(FindOrCreateLeaderboard, .{ .name = "SteamAPI_ISteamUserStats_FindOrCreateLeaderboard", .linkage = .Strong }); }
    pub fn FindLeaderboard(pchLeaderboardName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindLeaderboard"}), .{ pchLeaderboardName, }, .{ "pchLeaderboardName", }, @TypeOf(S.FindLeaderboard));
    }
    comptime { @export(FindLeaderboard, .{ .name = "SteamAPI_ISteamUserStats_FindLeaderboard", .linkage = .Strong }); }
    pub fn GetLeaderboardName(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardName"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardName));
    }
    comptime { @export(GetLeaderboardName, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardName", .linkage = .Strong }); }
    pub fn GetLeaderboardEntryCount(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardEntryCount"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardEntryCount));
    }
    comptime { @export(GetLeaderboardEntryCount, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardEntryCount", .linkage = .Strong }); }
    pub fn GetLeaderboardSortMethod(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) t.ELeaderboardSortMethod {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardSortMethod"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardSortMethod));
    }
    comptime { @export(GetLeaderboardSortMethod, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardSortMethod", .linkage = .Strong }); }
    pub fn GetLeaderboardDisplayType(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) t.ELeaderboardDisplayType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardDisplayType"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardDisplayType));
    }
    comptime { @export(GetLeaderboardDisplayType, .{ .name = "SteamAPI_ISteamUserStats_GetLeaderboardDisplayType", .linkage = .Strong }); }
    pub fn DownloadLeaderboardEntries(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardDataRequest: t.ELeaderboardDataRequest, nRangeStart: i32, nRangeEnd: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadLeaderboardEntries"}), .{ hSteamLeaderboard, eLeaderboardDataRequest, nRangeStart, nRangeEnd, }, .{ "hSteamLeaderboard", "eLeaderboardDataRequest", "nRangeStart", "nRangeEnd", }, @TypeOf(S.DownloadLeaderboardEntries));
    }
    comptime { @export(DownloadLeaderboardEntries, .{ .name = "SteamAPI_ISteamUserStats_DownloadLeaderboardEntries", .linkage = .Strong }); }
    pub fn DownloadLeaderboardEntriesForUsers(hSteamLeaderboard: t.SteamLeaderboard_t, prgUsers: [*c]t.CSteamID, cUsers: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadLeaderboardEntriesForUsers"}), .{ hSteamLeaderboard, prgUsers, cUsers, }, .{ "hSteamLeaderboard", "prgUsers", "cUsers", }, @TypeOf(S.DownloadLeaderboardEntriesForUsers));
    }
    comptime { @export(DownloadLeaderboardEntriesForUsers, .{ .name = "SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers", .linkage = .Strong }); }
    pub fn GetDownloadedLeaderboardEntry(hSteamLeaderboardEntries: t.SteamLeaderboardEntries_t, index: i32, pLeaderboardEntry: [*c]t.LeaderboardEntry_t, pDetails: [*c]i32, cDetailsMax: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDownloadedLeaderboardEntry"}), .{ hSteamLeaderboardEntries, index, pLeaderboardEntry, pDetails, cDetailsMax, }, .{ "hSteamLeaderboardEntries", "index", "pLeaderboardEntry", "pDetails", "cDetailsMax", }, @TypeOf(S.GetDownloadedLeaderboardEntry));
    }
    comptime { @export(GetDownloadedLeaderboardEntry, .{ .name = "SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry", .linkage = .Strong }); }
    pub fn UploadLeaderboardScore(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardUploadScoreMethod: t.ELeaderboardUploadScoreMethod, nScore: i32, pScoreDetails: [*c]const i32, cScoreDetailsCount: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UploadLeaderboardScore"}), .{ hSteamLeaderboard, eLeaderboardUploadScoreMethod, nScore, pScoreDetails, cScoreDetailsCount, }, .{ "hSteamLeaderboard", "eLeaderboardUploadScoreMethod", "nScore", "pScoreDetails", "cScoreDetailsCount", }, @TypeOf(S.UploadLeaderboardScore));
    }
    comptime { @export(UploadLeaderboardScore, .{ .name = "SteamAPI_ISteamUserStats_UploadLeaderboardScore", .linkage = .Strong }); }
    pub fn AttachLeaderboardUGC(hSteamLeaderboard: t.SteamLeaderboard_t, hUGC: t.UGCHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AttachLeaderboardUGC"}), .{ hSteamLeaderboard, hUGC, }, .{ "hSteamLeaderboard", "hUGC", }, @TypeOf(S.AttachLeaderboardUGC));
    }
    comptime { @export(AttachLeaderboardUGC, .{ .name = "SteamAPI_ISteamUserStats_AttachLeaderboardUGC", .linkage = .Strong }); }
    pub fn GetNumberOfCurrentPlayers() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumberOfCurrentPlayers"}), .{ }, .{ }, @TypeOf(S.GetNumberOfCurrentPlayers));
    }
    comptime { @export(GetNumberOfCurrentPlayers, .{ .name = "SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers", .linkage = .Strong }); }
    pub fn RequestGlobalAchievementPercentages() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestGlobalAchievementPercentages"}), .{ }, .{ }, @TypeOf(S.RequestGlobalAchievementPercentages));
    }
    comptime { @export(RequestGlobalAchievementPercentages, .{ .name = "SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages", .linkage = .Strong }); }
    pub fn GetMostAchievedAchievementInfo(pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMostAchievedAchievementInfo"}), .{ pchName, unNameBufLen, pflPercent, pbAchieved, }, .{ "pchName", "unNameBufLen", "pflPercent", "pbAchieved", }, @TypeOf(S.GetMostAchievedAchievementInfo));
    }
    comptime { @export(GetMostAchievedAchievementInfo, .{ .name = "SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo", .linkage = .Strong }); }
    pub fn GetNextMostAchievedAchievementInfo(iIteratorPrevious: i32, pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNextMostAchievedAchievementInfo"}), .{ iIteratorPrevious, pchName, unNameBufLen, pflPercent, pbAchieved, }, .{ "iIteratorPrevious", "pchName", "unNameBufLen", "pflPercent", "pbAchieved", }, @TypeOf(S.GetNextMostAchievedAchievementInfo));
    }
    comptime { @export(GetNextMostAchievedAchievementInfo, .{ .name = "SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo", .linkage = .Strong }); }
    pub fn GetAchievementAchievedPercent(pchName: [*c]const u8, pflPercent: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementAchievedPercent"}), .{ pchName, pflPercent, }, .{ "pchName", "pflPercent", }, @TypeOf(S.GetAchievementAchievedPercent));
    }
    comptime { @export(GetAchievementAchievedPercent, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementAchievedPercent", .linkage = .Strong }); }
    pub fn RequestGlobalStats(nHistoryDays: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestGlobalStats"}), .{ nHistoryDays, }, .{ "nHistoryDays", }, @TypeOf(S.RequestGlobalStats));
    }
    comptime { @export(RequestGlobalStats, .{ .name = "SteamAPI_ISteamUserStats_RequestGlobalStats", .linkage = .Strong }); }
    pub fn GetGlobalStatInt64(pchStatName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatInt64"}), .{ pchStatName, pData, }, .{ "pchStatName", "pData", }, @TypeOf(S.GetGlobalStatInt64));
    }
    comptime { @export(GetGlobalStatInt64, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatInt64", .linkage = .Strong }); }
    pub fn GetGlobalStatDouble(pchStatName: [*c]const u8, pData: [*c]f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatDouble"}), .{ pchStatName, pData, }, .{ "pchStatName", "pData", }, @TypeOf(S.GetGlobalStatDouble));
    }
    comptime { @export(GetGlobalStatDouble, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatDouble", .linkage = .Strong }); }
    pub fn GetGlobalStatHistoryInt64(pchStatName: [*c]const u8, pData: [*c]i32, cubData: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatHistoryInt64"}), .{ pchStatName, pData, cubData, }, .{ "pchStatName", "pData", "cubData", }, @TypeOf(S.GetGlobalStatHistoryInt64));
    }
    comptime { @export(GetGlobalStatHistoryInt64, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64", .linkage = .Strong }); }
    pub fn GetGlobalStatHistoryDouble(pchStatName: [*c]const u8, pData: [*c]f64, cubData: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatHistoryDouble"}), .{ pchStatName, pData, cubData, }, .{ "pchStatName", "pData", "cubData", }, @TypeOf(S.GetGlobalStatHistoryDouble));
    }
    comptime { @export(GetGlobalStatHistoryDouble, .{ .name = "SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble", .linkage = .Strong }); }
    pub fn GetAchievementProgressLimitsInt32(pchName: [*c]const u8, pnMinProgress: [*c]i32, pnMaxProgress: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementProgressLimitsInt32"}), .{ pchName, pnMinProgress, pnMaxProgress, }, .{ "pchName", "pnMinProgress", "pnMaxProgress", }, @TypeOf(S.GetAchievementProgressLimitsInt32));
    }
    comptime { @export(GetAchievementProgressLimitsInt32, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32", .linkage = .Strong }); }
    pub fn GetAchievementProgressLimitsFloat(pchName: [*c]const u8, pfMinProgress: [*c]f32, pfMaxProgress: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementProgressLimitsFloat"}), .{ pchName, pfMinProgress, pfMaxProgress, }, .{ "pchName", "pfMinProgress", "pfMaxProgress", }, @TypeOf(S.GetAchievementProgressLimitsFloat));
    }
    comptime { @export(GetAchievementProgressLimitsFloat, .{ .name = "SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat", .linkage = .Strong }); }
};
comptime { _ = ISteamUserStats; }
pub const SteamUserStats = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUserStats"};
    pub fn v012() callconv(.C) [*c]t.ISteamUserStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
    comptime { @export(v012, .{ .name = "SteamAPI_SteamUserStats_v012", .linkage = .Strong }); }
};
comptime { _ = SteamUserStats; }
pub const ISteamApps = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamApps"};
    _: u8 = 1,
    pub const version = "STEAMAPPS_INTERFACE_VERSION008";
    pub fn BIsSubscribed() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribed"}), .{ }, .{ }, @TypeOf(S.BIsSubscribed));
    }
    comptime { @export(BIsSubscribed, .{ .name = "SteamAPI_ISteamApps_BIsSubscribed", .linkage = .Strong }); }
    pub fn BIsLowViolence() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsLowViolence"}), .{ }, .{ }, @TypeOf(S.BIsLowViolence));
    }
    comptime { @export(BIsLowViolence, .{ .name = "SteamAPI_ISteamApps_BIsLowViolence", .linkage = .Strong }); }
    pub fn BIsCybercafe() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsCybercafe"}), .{ }, .{ }, @TypeOf(S.BIsCybercafe));
    }
    comptime { @export(BIsCybercafe, .{ .name = "SteamAPI_ISteamApps_BIsCybercafe", .linkage = .Strong }); }
    pub fn BIsVACBanned() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsVACBanned"}), .{ }, .{ }, @TypeOf(S.BIsVACBanned));
    }
    comptime { @export(BIsVACBanned, .{ .name = "SteamAPI_ISteamApps_BIsVACBanned", .linkage = .Strong }); }
    pub fn GetCurrentGameLanguage() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentGameLanguage"}), .{ }, .{ }, @TypeOf(S.GetCurrentGameLanguage));
    }
    comptime { @export(GetCurrentGameLanguage, .{ .name = "SteamAPI_ISteamApps_GetCurrentGameLanguage", .linkage = .Strong }); }
    pub fn GetAvailableGameLanguages() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableGameLanguages"}), .{ }, .{ }, @TypeOf(S.GetAvailableGameLanguages));
    }
    comptime { @export(GetAvailableGameLanguages, .{ .name = "SteamAPI_ISteamApps_GetAvailableGameLanguages", .linkage = .Strong }); }
    pub fn BIsSubscribedApp(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedApp"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsSubscribedApp));
    }
    comptime { @export(BIsSubscribedApp, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedApp", .linkage = .Strong }); }
    pub fn BIsDlcInstalled(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsDlcInstalled"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsDlcInstalled));
    }
    comptime { @export(BIsDlcInstalled, .{ .name = "SteamAPI_ISteamApps_BIsDlcInstalled", .linkage = .Strong }); }
    pub fn GetEarliestPurchaseUnixTime(nAppID: t.AppId_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEarliestPurchaseUnixTime"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.GetEarliestPurchaseUnixTime));
    }
    comptime { @export(GetEarliestPurchaseUnixTime, .{ .name = "SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime", .linkage = .Strong }); }
    pub fn BIsSubscribedFromFreeWeekend() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedFromFreeWeekend"}), .{ }, .{ }, @TypeOf(S.BIsSubscribedFromFreeWeekend));
    }
    comptime { @export(BIsSubscribedFromFreeWeekend, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend", .linkage = .Strong }); }
    pub fn GetDLCCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDLCCount"}), .{ }, .{ }, @TypeOf(S.GetDLCCount));
    }
    comptime { @export(GetDLCCount, .{ .name = "SteamAPI_ISteamApps_GetDLCCount", .linkage = .Strong }); }
    pub fn BGetDLCDataByIndex(iDLC: i32, pAppID: [*c]t.AppId_t, pbAvailable: [*c]bool, pchName: [*c]u8, cchNameBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BGetDLCDataByIndex"}), .{ iDLC, pAppID, pbAvailable, pchName, cchNameBufferSize, }, .{ "iDLC", "pAppID", "pbAvailable", "pchName", "cchNameBufferSize", }, @TypeOf(S.BGetDLCDataByIndex));
    }
    comptime { @export(BGetDLCDataByIndex, .{ .name = "SteamAPI_ISteamApps_BGetDLCDataByIndex", .linkage = .Strong }); }
    pub fn InstallDLC(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InstallDLC"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.InstallDLC));
    }
    comptime { @export(InstallDLC, .{ .name = "SteamAPI_ISteamApps_InstallDLC", .linkage = .Strong }); }
    pub fn UninstallDLC(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UninstallDLC"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.UninstallDLC));
    }
    comptime { @export(UninstallDLC, .{ .name = "SteamAPI_ISteamApps_UninstallDLC", .linkage = .Strong }); }
    pub fn RequestAppProofOfPurchaseKey(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestAppProofOfPurchaseKey"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.RequestAppProofOfPurchaseKey));
    }
    comptime { @export(RequestAppProofOfPurchaseKey, .{ .name = "SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey", .linkage = .Strong }); }
    pub fn GetCurrentBetaName(pchName: [*c]u8, cchNameBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentBetaName"}), .{ pchName, cchNameBufferSize, }, .{ "pchName", "cchNameBufferSize", }, @TypeOf(S.GetCurrentBetaName));
    }
    comptime { @export(GetCurrentBetaName, .{ .name = "SteamAPI_ISteamApps_GetCurrentBetaName", .linkage = .Strong }); }
    pub fn MarkContentCorrupt(bMissingFilesOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MarkContentCorrupt"}), .{ bMissingFilesOnly, }, .{ "bMissingFilesOnly", }, @TypeOf(S.MarkContentCorrupt));
    }
    comptime { @export(MarkContentCorrupt, .{ .name = "SteamAPI_ISteamApps_MarkContentCorrupt", .linkage = .Strong }); }
    pub fn GetInstalledDepots(appID: t.AppId_t, pvecDepots: [*c]t.DepotId_t, cMaxDepots: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInstalledDepots"}), .{ appID, pvecDepots, cMaxDepots, }, .{ "appID", "pvecDepots", "cMaxDepots", }, @TypeOf(S.GetInstalledDepots));
    }
    comptime { @export(GetInstalledDepots, .{ .name = "SteamAPI_ISteamApps_GetInstalledDepots", .linkage = .Strong }); }
    pub fn GetAppInstallDir(appID: t.AppId_t, pchFolder: [*c]u8, cchFolderBufferSize: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppInstallDir"}), .{ appID, pchFolder, cchFolderBufferSize, }, .{ "appID", "pchFolder", "cchFolderBufferSize", }, @TypeOf(S.GetAppInstallDir));
    }
    comptime { @export(GetAppInstallDir, .{ .name = "SteamAPI_ISteamApps_GetAppInstallDir", .linkage = .Strong }); }
    pub fn BIsAppInstalled(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppInstalled"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsAppInstalled));
    }
    comptime { @export(BIsAppInstalled, .{ .name = "SteamAPI_ISteamApps_BIsAppInstalled", .linkage = .Strong }); }
    pub fn GetAppOwner() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppOwner"}), .{ }, .{ }, @TypeOf(S.GetAppOwner));
    }
    comptime { @export(GetAppOwner, .{ .name = "SteamAPI_ISteamApps_GetAppOwner", .linkage = .Strong }); }
    pub fn GetLaunchQueryParam(pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLaunchQueryParam"}), .{ pchKey, }, .{ "pchKey", }, @TypeOf(S.GetLaunchQueryParam));
    }
    comptime { @export(GetLaunchQueryParam, .{ .name = "SteamAPI_ISteamApps_GetLaunchQueryParam", .linkage = .Strong }); }
    pub fn GetDlcDownloadProgress(nAppID: t.AppId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDlcDownloadProgress"}), .{ nAppID, punBytesDownloaded, punBytesTotal, }, .{ "nAppID", "punBytesDownloaded", "punBytesTotal", }, @TypeOf(S.GetDlcDownloadProgress));
    }
    comptime { @export(GetDlcDownloadProgress, .{ .name = "SteamAPI_ISteamApps_GetDlcDownloadProgress", .linkage = .Strong }); }
    pub fn GetAppBuildId() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppBuildId"}), .{ }, .{ }, @TypeOf(S.GetAppBuildId));
    }
    comptime { @export(GetAppBuildId, .{ .name = "SteamAPI_ISteamApps_GetAppBuildId", .linkage = .Strong }); }
    pub fn RequestAllProofOfPurchaseKeys() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestAllProofOfPurchaseKeys"}), .{ }, .{ }, @TypeOf(S.RequestAllProofOfPurchaseKeys));
    }
    comptime { @export(RequestAllProofOfPurchaseKeys, .{ .name = "SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys", .linkage = .Strong }); }
    pub fn GetFileDetails(pszFileName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileDetails"}), .{ pszFileName, }, .{ "pszFileName", }, @TypeOf(S.GetFileDetails));
    }
    comptime { @export(GetFileDetails, .{ .name = "SteamAPI_ISteamApps_GetFileDetails", .linkage = .Strong }); }
    pub fn GetLaunchCommandLine(pszCommandLine: [*c]u8, cubCommandLine: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLaunchCommandLine"}), .{ pszCommandLine, cubCommandLine, }, .{ "pszCommandLine", "cubCommandLine", }, @TypeOf(S.GetLaunchCommandLine));
    }
    comptime { @export(GetLaunchCommandLine, .{ .name = "SteamAPI_ISteamApps_GetLaunchCommandLine", .linkage = .Strong }); }
    pub fn BIsSubscribedFromFamilySharing() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedFromFamilySharing"}), .{ }, .{ }, @TypeOf(S.BIsSubscribedFromFamilySharing));
    }
    comptime { @export(BIsSubscribedFromFamilySharing, .{ .name = "SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing", .linkage = .Strong }); }
    pub fn BIsTimedTrial(punSecondsAllowed: [*c]t.uint32, punSecondsPlayed: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsTimedTrial"}), .{ punSecondsAllowed, punSecondsPlayed, }, .{ "punSecondsAllowed", "punSecondsPlayed", }, @TypeOf(S.BIsTimedTrial));
    }
    comptime { @export(BIsTimedTrial, .{ .name = "SteamAPI_ISteamApps_BIsTimedTrial", .linkage = .Strong }); }
};
comptime { _ = ISteamApps; }
pub const SteamApps = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamApps"};
    pub fn v008() callconv(.C) [*c]t.ISteamApps {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v008"}), .{ }, .{ }, @TypeOf(S.v008));
    }
    comptime { @export(v008, .{ .name = "SteamAPI_SteamApps_v008", .linkage = .Strong }); }
};
comptime { _ = SteamApps; }
pub const ISteamNetworking = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworking"};
    _: u8 = 1,
    pub const version = "SteamNetworking006";
    pub fn SendP2PPacket(steamIDRemote: t.CSteamID, pubData: ?*const anyopaque, cubData: t.uint32, eP2PSendType: t.EP2PSend, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendP2PPacket"}), .{ steamIDRemote, pubData, cubData, eP2PSendType, nChannel, }, .{ "steamIDRemote", "pubData", "cubData", "eP2PSendType", "nChannel", }, @TypeOf(S.SendP2PPacket));
    }
    comptime { @export(SendP2PPacket, .{ .name = "SteamAPI_ISteamNetworking_SendP2PPacket", .linkage = .Strong }); }
    pub fn IsP2PPacketAvailable(pcubMsgSize: [*c]t.uint32, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsP2PPacketAvailable"}), .{ pcubMsgSize, nChannel, }, .{ "pcubMsgSize", "nChannel", }, @TypeOf(S.IsP2PPacketAvailable));
    }
    comptime { @export(IsP2PPacketAvailable, .{ .name = "SteamAPI_ISteamNetworking_IsP2PPacketAvailable", .linkage = .Strong }); }
    pub fn ReadP2PPacket(pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, psteamIDRemote: [*c]t.CSteamID, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReadP2PPacket"}), .{ pubDest, cubDest, pcubMsgSize, psteamIDRemote, nChannel, }, .{ "pubDest", "cubDest", "pcubMsgSize", "psteamIDRemote", "nChannel", }, @TypeOf(S.ReadP2PPacket));
    }
    comptime { @export(ReadP2PPacket, .{ .name = "SteamAPI_ISteamNetworking_ReadP2PPacket", .linkage = .Strong }); }
    pub fn AcceptP2PSessionWithUser(steamIDRemote: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptP2PSessionWithUser"}), .{ steamIDRemote, }, .{ "steamIDRemote", }, @TypeOf(S.AcceptP2PSessionWithUser));
    }
    comptime { @export(AcceptP2PSessionWithUser, .{ .name = "SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser", .linkage = .Strong }); }
    pub fn CloseP2PSessionWithUser(steamIDRemote: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseP2PSessionWithUser"}), .{ steamIDRemote, }, .{ "steamIDRemote", }, @TypeOf(S.CloseP2PSessionWithUser));
    }
    comptime { @export(CloseP2PSessionWithUser, .{ .name = "SteamAPI_ISteamNetworking_CloseP2PSessionWithUser", .linkage = .Strong }); }
    pub fn CloseP2PChannelWithUser(steamIDRemote: t.CSteamID, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseP2PChannelWithUser"}), .{ steamIDRemote, nChannel, }, .{ "steamIDRemote", "nChannel", }, @TypeOf(S.CloseP2PChannelWithUser));
    }
    comptime { @export(CloseP2PChannelWithUser, .{ .name = "SteamAPI_ISteamNetworking_CloseP2PChannelWithUser", .linkage = .Strong }); }
    pub fn GetP2PSessionState(steamIDRemote: t.CSteamID, pConnectionState: [*c]t.P2PSessionState_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetP2PSessionState"}), .{ steamIDRemote, pConnectionState, }, .{ "steamIDRemote", "pConnectionState", }, @TypeOf(S.GetP2PSessionState));
    }
    comptime { @export(GetP2PSessionState, .{ .name = "SteamAPI_ISteamNetworking_GetP2PSessionState", .linkage = .Strong }); }
    pub fn AllowP2PPacketRelay(bAllow: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllowP2PPacketRelay"}), .{ bAllow, }, .{ "bAllow", }, @TypeOf(S.AllowP2PPacketRelay));
    }
    comptime { @export(AllowP2PPacketRelay, .{ .name = "SteamAPI_ISteamNetworking_AllowP2PPacketRelay", .linkage = .Strong }); }
    pub fn CreateListenSocket(nVirtualP2PPort: i32, nIP: t.SteamIPAddress_t, nPort: t.uint16, bAllowUseOfPacketRelay: bool, ) callconv(.C) t.SNetListenSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocket"}), .{ nVirtualP2PPort, nIP, nPort, bAllowUseOfPacketRelay, }, .{ "nVirtualP2PPort", "nIP", "nPort", "bAllowUseOfPacketRelay", }, @TypeOf(S.CreateListenSocket));
    }
    comptime { @export(CreateListenSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateListenSocket", .linkage = .Strong }); }
    pub fn CreateP2PConnectionSocket(steamIDTarget: t.CSteamID, nVirtualPort: i32, nTimeoutSec: i32, bAllowUseOfPacketRelay: bool, ) callconv(.C) t.SNetSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateP2PConnectionSocket"}), .{ steamIDTarget, nVirtualPort, nTimeoutSec, bAllowUseOfPacketRelay, }, .{ "steamIDTarget", "nVirtualPort", "nTimeoutSec", "bAllowUseOfPacketRelay", }, @TypeOf(S.CreateP2PConnectionSocket));
    }
    comptime { @export(CreateP2PConnectionSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateP2PConnectionSocket", .linkage = .Strong }); }
    pub fn CreateConnectionSocket(nIP: t.SteamIPAddress_t, nPort: t.uint16, nTimeoutSec: i32, ) callconv(.C) t.SNetSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateConnectionSocket"}), .{ nIP, nPort, nTimeoutSec, }, .{ "nIP", "nPort", "nTimeoutSec", }, @TypeOf(S.CreateConnectionSocket));
    }
    comptime { @export(CreateConnectionSocket, .{ .name = "SteamAPI_ISteamNetworking_CreateConnectionSocket", .linkage = .Strong }); }
    pub fn DestroySocket(hSocket: t.SNetSocket_t, bNotifyRemoteEnd: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroySocket"}), .{ hSocket, bNotifyRemoteEnd, }, .{ "hSocket", "bNotifyRemoteEnd", }, @TypeOf(S.DestroySocket));
    }
    comptime { @export(DestroySocket, .{ .name = "SteamAPI_ISteamNetworking_DestroySocket", .linkage = .Strong }); }
    pub fn DestroyListenSocket(hSocket: t.SNetListenSocket_t, bNotifyRemoteEnd: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyListenSocket"}), .{ hSocket, bNotifyRemoteEnd, }, .{ "hSocket", "bNotifyRemoteEnd", }, @TypeOf(S.DestroyListenSocket));
    }
    comptime { @export(DestroyListenSocket, .{ .name = "SteamAPI_ISteamNetworking_DestroyListenSocket", .linkage = .Strong }); }
    pub fn SendDataOnSocket(hSocket: t.SNetSocket_t, pubData: ?*anyopaque, cubData: t.uint32, bReliable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendDataOnSocket"}), .{ hSocket, pubData, cubData, bReliable, }, .{ "hSocket", "pubData", "cubData", "bReliable", }, @TypeOf(S.SendDataOnSocket));
    }
    comptime { @export(SendDataOnSocket, .{ .name = "SteamAPI_ISteamNetworking_SendDataOnSocket", .linkage = .Strong }); }
    pub fn IsDataAvailableOnSocket(hSocket: t.SNetSocket_t, pcubMsgSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsDataAvailableOnSocket"}), .{ hSocket, pcubMsgSize, }, .{ "hSocket", "pcubMsgSize", }, @TypeOf(S.IsDataAvailableOnSocket));
    }
    comptime { @export(IsDataAvailableOnSocket, .{ .name = "SteamAPI_ISteamNetworking_IsDataAvailableOnSocket", .linkage = .Strong }); }
    pub fn RetrieveDataFromSocket(hSocket: t.SNetSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveDataFromSocket"}), .{ hSocket, pubDest, cubDest, pcubMsgSize, }, .{ "hSocket", "pubDest", "cubDest", "pcubMsgSize", }, @TypeOf(S.RetrieveDataFromSocket));
    }
    comptime { @export(RetrieveDataFromSocket, .{ .name = "SteamAPI_ISteamNetworking_RetrieveDataFromSocket", .linkage = .Strong }); }
    pub fn IsDataAvailable(hListenSocket: t.SNetListenSocket_t, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsDataAvailable"}), .{ hListenSocket, pcubMsgSize, phSocket, }, .{ "hListenSocket", "pcubMsgSize", "phSocket", }, @TypeOf(S.IsDataAvailable));
    }
    comptime { @export(IsDataAvailable, .{ .name = "SteamAPI_ISteamNetworking_IsDataAvailable", .linkage = .Strong }); }
    pub fn RetrieveData(hListenSocket: t.SNetListenSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveData"}), .{ hListenSocket, pubDest, cubDest, pcubMsgSize, phSocket, }, .{ "hListenSocket", "pubDest", "cubDest", "pcubMsgSize", "phSocket", }, @TypeOf(S.RetrieveData));
    }
    comptime { @export(RetrieveData, .{ .name = "SteamAPI_ISteamNetworking_RetrieveData", .linkage = .Strong }); }
    pub fn GetSocketInfo(hSocket: t.SNetSocket_t, pSteamIDRemote: [*c]t.CSteamID, peSocketStatus: [*c]i32, punIPRemote: [*c]t.SteamIPAddress_t, punPortRemote: [*c]t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSocketInfo"}), .{ hSocket, pSteamIDRemote, peSocketStatus, punIPRemote, punPortRemote, }, .{ "hSocket", "pSteamIDRemote", "peSocketStatus", "punIPRemote", "punPortRemote", }, @TypeOf(S.GetSocketInfo));
    }
    comptime { @export(GetSocketInfo, .{ .name = "SteamAPI_ISteamNetworking_GetSocketInfo", .linkage = .Strong }); }
    pub fn GetListenSocketInfo(hListenSocket: t.SNetListenSocket_t, pnIP: [*c]t.SteamIPAddress_t, pnPort: [*c]t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetListenSocketInfo"}), .{ hListenSocket, pnIP, pnPort, }, .{ "hListenSocket", "pnIP", "pnPort", }, @TypeOf(S.GetListenSocketInfo));
    }
    comptime { @export(GetListenSocketInfo, .{ .name = "SteamAPI_ISteamNetworking_GetListenSocketInfo", .linkage = .Strong }); }
    pub fn GetSocketConnectionType(hSocket: t.SNetSocket_t, ) callconv(.C) t.ESNetSocketConnectionType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSocketConnectionType"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.GetSocketConnectionType));
    }
    comptime { @export(GetSocketConnectionType, .{ .name = "SteamAPI_ISteamNetworking_GetSocketConnectionType", .linkage = .Strong }); }
    pub fn GetMaxPacketSize(hSocket: t.SNetSocket_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMaxPacketSize"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.GetMaxPacketSize));
    }
    comptime { @export(GetMaxPacketSize, .{ .name = "SteamAPI_ISteamNetworking_GetMaxPacketSize", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworking; }
pub const SteamNetworking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworking"};
    pub fn v006() callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
    comptime { @export(v006, .{ .name = "SteamAPI_SteamNetworking_v006", .linkage = .Strong }); }
};
comptime { _ = SteamNetworking; }
pub const SteamGameServerNetworking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworking"};
    pub fn v006() callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
    comptime { @export(v006, .{ .name = "SteamAPI_SteamGameServerNetworking_v006", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworking; }
pub const ISteamScreenshots = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamScreenshots"};
    _: u8 = 1,
    pub const version = "STEAMSCREENSHOTS_INTERFACE_VERSION003";
    pub fn WriteScreenshot(pubRGB: ?*anyopaque, cubRGB: t.uint32, nWidth: i32, nHeight: i32, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"WriteScreenshot"}), .{ pubRGB, cubRGB, nWidth, nHeight, }, .{ "pubRGB", "cubRGB", "nWidth", "nHeight", }, @TypeOf(S.WriteScreenshot));
    }
    comptime { @export(WriteScreenshot, .{ .name = "SteamAPI_ISteamScreenshots_WriteScreenshot", .linkage = .Strong }); }
    pub fn AddScreenshotToLibrary(pchFilename: [*c]const u8, pchThumbnailFilename: [*c]const u8, nWidth: i32, nHeight: i32, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddScreenshotToLibrary"}), .{ pchFilename, pchThumbnailFilename, nWidth, nHeight, }, .{ "pchFilename", "pchThumbnailFilename", "nWidth", "nHeight", }, @TypeOf(S.AddScreenshotToLibrary));
    }
    comptime { @export(AddScreenshotToLibrary, .{ .name = "SteamAPI_ISteamScreenshots_AddScreenshotToLibrary", .linkage = .Strong }); }
    pub fn TriggerScreenshot() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerScreenshot"}), .{ }, .{ }, @TypeOf(S.TriggerScreenshot));
    }
    comptime { @export(TriggerScreenshot, .{ .name = "SteamAPI_ISteamScreenshots_TriggerScreenshot", .linkage = .Strong }); }
    pub fn HookScreenshots(bHook: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HookScreenshots"}), .{ bHook, }, .{ "bHook", }, @TypeOf(S.HookScreenshots));
    }
    comptime { @export(HookScreenshots, .{ .name = "SteamAPI_ISteamScreenshots_HookScreenshots", .linkage = .Strong }); }
    pub fn SetLocation(hScreenshot: t.ScreenshotHandle, pchLocation: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLocation"}), .{ hScreenshot, pchLocation, }, .{ "hScreenshot", "pchLocation", }, @TypeOf(S.SetLocation));
    }
    comptime { @export(SetLocation, .{ .name = "SteamAPI_ISteamScreenshots_SetLocation", .linkage = .Strong }); }
    pub fn TagUser(hScreenshot: t.ScreenshotHandle, steamID: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TagUser"}), .{ hScreenshot, steamID, }, .{ "hScreenshot", "steamID", }, @TypeOf(S.TagUser));
    }
    comptime { @export(TagUser, .{ .name = "SteamAPI_ISteamScreenshots_TagUser", .linkage = .Strong }); }
    pub fn TagPublishedFile(hScreenshot: t.ScreenshotHandle, unPublishedFileID: t.PublishedFileId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TagPublishedFile"}), .{ hScreenshot, unPublishedFileID, }, .{ "hScreenshot", "unPublishedFileID", }, @TypeOf(S.TagPublishedFile));
    }
    comptime { @export(TagPublishedFile, .{ .name = "SteamAPI_ISteamScreenshots_TagPublishedFile", .linkage = .Strong }); }
    pub fn IsScreenshotsHooked() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsScreenshotsHooked"}), .{ }, .{ }, @TypeOf(S.IsScreenshotsHooked));
    }
    comptime { @export(IsScreenshotsHooked, .{ .name = "SteamAPI_ISteamScreenshots_IsScreenshotsHooked", .linkage = .Strong }); }
    pub fn AddVRScreenshotToLibrary(eType: t.EVRScreenshotType, pchFilename: [*c]const u8, pchVRFilename: [*c]const u8, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddVRScreenshotToLibrary"}), .{ eType, pchFilename, pchVRFilename, }, .{ "eType", "pchFilename", "pchVRFilename", }, @TypeOf(S.AddVRScreenshotToLibrary));
    }
    comptime { @export(AddVRScreenshotToLibrary, .{ .name = "SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary", .linkage = .Strong }); }
};
comptime { _ = ISteamScreenshots; }
pub const SteamScreenshots = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamScreenshots"};
    pub fn v003() callconv(.C) [*c]t.ISteamScreenshots {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
    comptime { @export(v003, .{ .name = "SteamAPI_SteamScreenshots_v003", .linkage = .Strong }); }
};
comptime { _ = SteamScreenshots; }
pub const ISteamMusic = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMusic"};
    _: u8 = 1,
    pub const version = "STEAMMUSIC_INTERFACE_VERSION001";
    pub fn BIsEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsEnabled"}), .{ }, .{ }, @TypeOf(S.BIsEnabled));
    }
    comptime { @export(BIsEnabled, .{ .name = "SteamAPI_ISteamMusic_BIsEnabled", .linkage = .Strong }); }
    pub fn BIsPlaying() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPlaying"}), .{ }, .{ }, @TypeOf(S.BIsPlaying));
    }
    comptime { @export(BIsPlaying, .{ .name = "SteamAPI_ISteamMusic_BIsPlaying", .linkage = .Strong }); }
    pub fn GetPlaybackStatus() callconv(.C) t.AudioPlayback_Status {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlaybackStatus"}), .{ }, .{ }, @TypeOf(S.GetPlaybackStatus));
    }
    comptime { @export(GetPlaybackStatus, .{ .name = "SteamAPI_ISteamMusic_GetPlaybackStatus", .linkage = .Strong }); }
    pub fn Play() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Play"}), .{ }, .{ }, @TypeOf(S.Play));
    }
    comptime { @export(Play, .{ .name = "SteamAPI_ISteamMusic_Play", .linkage = .Strong }); }
    pub fn Pause() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Pause"}), .{ }, .{ }, @TypeOf(S.Pause));
    }
    comptime { @export(Pause, .{ .name = "SteamAPI_ISteamMusic_Pause", .linkage = .Strong }); }
    pub fn PlayPrevious() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayPrevious"}), .{ }, .{ }, @TypeOf(S.PlayPrevious));
    }
    comptime { @export(PlayPrevious, .{ .name = "SteamAPI_ISteamMusic_PlayPrevious", .linkage = .Strong }); }
    pub fn PlayNext() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayNext"}), .{ }, .{ }, @TypeOf(S.PlayNext));
    }
    comptime { @export(PlayNext, .{ .name = "SteamAPI_ISteamMusic_PlayNext", .linkage = .Strong }); }
    pub fn SetVolume(flVolume: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVolume"}), .{ flVolume, }, .{ "flVolume", }, @TypeOf(S.SetVolume));
    }
    comptime { @export(SetVolume, .{ .name = "SteamAPI_ISteamMusic_SetVolume", .linkage = .Strong }); }
    pub fn GetVolume() callconv(.C) f32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVolume"}), .{ }, .{ }, @TypeOf(S.GetVolume));
    }
    comptime { @export(GetVolume, .{ .name = "SteamAPI_ISteamMusic_GetVolume", .linkage = .Strong }); }
};
comptime { _ = ISteamMusic; }
pub const SteamMusic = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMusic"};
    pub fn v001() callconv(.C) [*c]t.ISteamMusic {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamMusic_v001", .linkage = .Strong }); }
};
comptime { _ = SteamMusic; }
pub const ISteamMusicRemote = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMusicRemote"};
    _: u8 = 1,
    pub const version = "STEAMMUSICREMOTE_INTERFACE_VERSION001";
    pub fn RegisterSteamMusicRemote(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RegisterSteamMusicRemote"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.RegisterSteamMusicRemote));
    }
    comptime { @export(RegisterSteamMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote", .linkage = .Strong }); }
    pub fn DeregisterSteamMusicRemote() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeregisterSteamMusicRemote"}), .{ }, .{ }, @TypeOf(S.DeregisterSteamMusicRemote));
    }
    comptime { @export(DeregisterSteamMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote", .linkage = .Strong }); }
    pub fn BIsCurrentMusicRemote() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsCurrentMusicRemote"}), .{ }, .{ }, @TypeOf(S.BIsCurrentMusicRemote));
    }
    comptime { @export(BIsCurrentMusicRemote, .{ .name = "SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote", .linkage = .Strong }); }
    pub fn BActivationSuccess(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BActivationSuccess"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.BActivationSuccess));
    }
    comptime { @export(BActivationSuccess, .{ .name = "SteamAPI_ISteamMusicRemote_BActivationSuccess", .linkage = .Strong }); }
    pub fn SetDisplayName(pchDisplayName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDisplayName"}), .{ pchDisplayName, }, .{ "pchDisplayName", }, @TypeOf(S.SetDisplayName));
    }
    comptime { @export(SetDisplayName, .{ .name = "SteamAPI_ISteamMusicRemote_SetDisplayName", .linkage = .Strong }); }
    pub fn SetPNGIcon_64x64(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPNGIcon_64x64"}), .{ pvBuffer, cbBufferLength, }, .{ "pvBuffer", "cbBufferLength", }, @TypeOf(S.SetPNGIcon_64x64));
    }
    comptime { @export(SetPNGIcon_64x64, .{ .name = "SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64", .linkage = .Strong }); }
    pub fn EnablePlayPrevious(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlayPrevious"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlayPrevious));
    }
    comptime { @export(EnablePlayPrevious, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlayPrevious", .linkage = .Strong }); }
    pub fn EnablePlayNext(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlayNext"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlayNext));
    }
    comptime { @export(EnablePlayNext, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlayNext", .linkage = .Strong }); }
    pub fn EnableShuffled(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableShuffled"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableShuffled));
    }
    comptime { @export(EnableShuffled, .{ .name = "SteamAPI_ISteamMusicRemote_EnableShuffled", .linkage = .Strong }); }
    pub fn EnableLooped(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableLooped"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableLooped));
    }
    comptime { @export(EnableLooped, .{ .name = "SteamAPI_ISteamMusicRemote_EnableLooped", .linkage = .Strong }); }
    pub fn EnableQueue(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableQueue"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableQueue));
    }
    comptime { @export(EnableQueue, .{ .name = "SteamAPI_ISteamMusicRemote_EnableQueue", .linkage = .Strong }); }
    pub fn EnablePlaylists(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlaylists"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlaylists));
    }
    comptime { @export(EnablePlaylists, .{ .name = "SteamAPI_ISteamMusicRemote_EnablePlaylists", .linkage = .Strong }); }
    pub fn UpdatePlaybackStatus(nStatus: t.AudioPlayback_Status, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePlaybackStatus"}), .{ nStatus, }, .{ "nStatus", }, @TypeOf(S.UpdatePlaybackStatus));
    }
    comptime { @export(UpdatePlaybackStatus, .{ .name = "SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus", .linkage = .Strong }); }
    pub fn UpdateShuffled(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateShuffled"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.UpdateShuffled));
    }
    comptime { @export(UpdateShuffled, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateShuffled", .linkage = .Strong }); }
    pub fn UpdateLooped(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateLooped"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.UpdateLooped));
    }
    comptime { @export(UpdateLooped, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateLooped", .linkage = .Strong }); }
    pub fn UpdateVolume(flValue: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateVolume"}), .{ flValue, }, .{ "flValue", }, @TypeOf(S.UpdateVolume));
    }
    comptime { @export(UpdateVolume, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateVolume", .linkage = .Strong }); }
    pub fn CurrentEntryWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryWillChange"}), .{ }, .{ }, @TypeOf(S.CurrentEntryWillChange));
    }
    comptime { @export(CurrentEntryWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryWillChange", .linkage = .Strong }); }
    pub fn CurrentEntryIsAvailable(bAvailable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryIsAvailable"}), .{ bAvailable, }, .{ "bAvailable", }, @TypeOf(S.CurrentEntryIsAvailable));
    }
    comptime { @export(CurrentEntryIsAvailable, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable", .linkage = .Strong }); }
    pub fn UpdateCurrentEntryText(pchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryText"}), .{ pchText, }, .{ "pchText", }, @TypeOf(S.UpdateCurrentEntryText));
    }
    comptime { @export(UpdateCurrentEntryText, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText", .linkage = .Strong }); }
    pub fn UpdateCurrentEntryElapsedSeconds(nValue: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryElapsedSeconds"}), .{ nValue, }, .{ "nValue", }, @TypeOf(S.UpdateCurrentEntryElapsedSeconds));
    }
    comptime { @export(UpdateCurrentEntryElapsedSeconds, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds", .linkage = .Strong }); }
    pub fn UpdateCurrentEntryCoverArt(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryCoverArt"}), .{ pvBuffer, cbBufferLength, }, .{ "pvBuffer", "cbBufferLength", }, @TypeOf(S.UpdateCurrentEntryCoverArt));
    }
    comptime { @export(UpdateCurrentEntryCoverArt, .{ .name = "SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt", .linkage = .Strong }); }
    pub fn CurrentEntryDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryDidChange"}), .{ }, .{ }, @TypeOf(S.CurrentEntryDidChange));
    }
    comptime { @export(CurrentEntryDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_CurrentEntryDidChange", .linkage = .Strong }); }
    pub fn QueueWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"QueueWillChange"}), .{ }, .{ }, @TypeOf(S.QueueWillChange));
    }
    comptime { @export(QueueWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_QueueWillChange", .linkage = .Strong }); }
    pub fn ResetQueueEntries() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetQueueEntries"}), .{ }, .{ }, @TypeOf(S.ResetQueueEntries));
    }
    comptime { @export(ResetQueueEntries, .{ .name = "SteamAPI_ISteamMusicRemote_ResetQueueEntries", .linkage = .Strong }); }
    pub fn SetQueueEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetQueueEntry"}), .{ nID, nPosition, pchEntryText, }, .{ "nID", "nPosition", "pchEntryText", }, @TypeOf(S.SetQueueEntry));
    }
    comptime { @export(SetQueueEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetQueueEntry", .linkage = .Strong }); }
    pub fn SetCurrentQueueEntry(nID: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCurrentQueueEntry"}), .{ nID, }, .{ "nID", }, @TypeOf(S.SetCurrentQueueEntry));
    }
    comptime { @export(SetCurrentQueueEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry", .linkage = .Strong }); }
    pub fn QueueDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"QueueDidChange"}), .{ }, .{ }, @TypeOf(S.QueueDidChange));
    }
    comptime { @export(QueueDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_QueueDidChange", .linkage = .Strong }); }
    pub fn PlaylistWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlaylistWillChange"}), .{ }, .{ }, @TypeOf(S.PlaylistWillChange));
    }
    comptime { @export(PlaylistWillChange, .{ .name = "SteamAPI_ISteamMusicRemote_PlaylistWillChange", .linkage = .Strong }); }
    pub fn ResetPlaylistEntries() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetPlaylistEntries"}), .{ }, .{ }, @TypeOf(S.ResetPlaylistEntries));
    }
    comptime { @export(ResetPlaylistEntries, .{ .name = "SteamAPI_ISteamMusicRemote_ResetPlaylistEntries", .linkage = .Strong }); }
    pub fn SetPlaylistEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPlaylistEntry"}), .{ nID, nPosition, pchEntryText, }, .{ "nID", "nPosition", "pchEntryText", }, @TypeOf(S.SetPlaylistEntry));
    }
    comptime { @export(SetPlaylistEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetPlaylistEntry", .linkage = .Strong }); }
    pub fn SetCurrentPlaylistEntry(nID: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCurrentPlaylistEntry"}), .{ nID, }, .{ "nID", }, @TypeOf(S.SetCurrentPlaylistEntry));
    }
    comptime { @export(SetCurrentPlaylistEntry, .{ .name = "SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry", .linkage = .Strong }); }
    pub fn PlaylistDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlaylistDidChange"}), .{ }, .{ }, @TypeOf(S.PlaylistDidChange));
    }
    comptime { @export(PlaylistDidChange, .{ .name = "SteamAPI_ISteamMusicRemote_PlaylistDidChange", .linkage = .Strong }); }
};
comptime { _ = ISteamMusicRemote; }
pub const SteamMusicRemote = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMusicRemote"};
    pub fn v001() callconv(.C) [*c]t.ISteamMusicRemote {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamMusicRemote_v001", .linkage = .Strong }); }
};
comptime { _ = SteamMusicRemote; }
pub const ISteamHTTP = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamHTTP"};
    _: u8 = 1,
    pub const version = "STEAMHTTP_INTERFACE_VERSION003";
    pub fn CreateHTTPRequest(eHTTPRequestMethod: t.EHTTPMethod, pchAbsoluteURL: [*c]const u8, ) callconv(.C) t.HTTPRequestHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateHTTPRequest"}), .{ eHTTPRequestMethod, pchAbsoluteURL, }, .{ "eHTTPRequestMethod", "pchAbsoluteURL", }, @TypeOf(S.CreateHTTPRequest));
    }
    comptime { @export(CreateHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_CreateHTTPRequest", .linkage = .Strong }); }
    pub fn SetHTTPRequestContextValue(hRequest: t.HTTPRequestHandle, ulContextValue: t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestContextValue"}), .{ hRequest, ulContextValue, }, .{ "hRequest", "ulContextValue", }, @TypeOf(S.SetHTTPRequestContextValue));
    }
    comptime { @export(SetHTTPRequestContextValue, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestContextValue", .linkage = .Strong }); }
    pub fn SetHTTPRequestNetworkActivityTimeout(hRequest: t.HTTPRequestHandle, unTimeoutSeconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestNetworkActivityTimeout"}), .{ hRequest, unTimeoutSeconds, }, .{ "hRequest", "unTimeoutSeconds", }, @TypeOf(S.SetHTTPRequestNetworkActivityTimeout));
    }
    comptime { @export(SetHTTPRequestNetworkActivityTimeout, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout", .linkage = .Strong }); }
    pub fn SetHTTPRequestHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pchHeaderValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestHeaderValue"}), .{ hRequest, pchHeaderName, pchHeaderValue, }, .{ "hRequest", "pchHeaderName", "pchHeaderValue", }, @TypeOf(S.SetHTTPRequestHeaderValue));
    }
    comptime { @export(SetHTTPRequestHeaderValue, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue", .linkage = .Strong }); }
    pub fn SetHTTPRequestGetOrPostParameter(hRequest: t.HTTPRequestHandle, pchParamName: [*c]const u8, pchParamValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestGetOrPostParameter"}), .{ hRequest, pchParamName, pchParamValue, }, .{ "hRequest", "pchParamName", "pchParamValue", }, @TypeOf(S.SetHTTPRequestGetOrPostParameter));
    }
    comptime { @export(SetHTTPRequestGetOrPostParameter, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter", .linkage = .Strong }); }
    pub fn SendHTTPRequest(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendHTTPRequest"}), .{ hRequest, pCallHandle, }, .{ "hRequest", "pCallHandle", }, @TypeOf(S.SendHTTPRequest));
    }
    comptime { @export(SendHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_SendHTTPRequest", .linkage = .Strong }); }
    pub fn SendHTTPRequestAndStreamResponse(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendHTTPRequestAndStreamResponse"}), .{ hRequest, pCallHandle, }, .{ "hRequest", "pCallHandle", }, @TypeOf(S.SendHTTPRequestAndStreamResponse));
    }
    comptime { @export(SendHTTPRequestAndStreamResponse, .{ .name = "SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse", .linkage = .Strong }); }
    pub fn DeferHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeferHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.DeferHTTPRequest));
    }
    comptime { @export(DeferHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_DeferHTTPRequest", .linkage = .Strong }); }
    pub fn PrioritizeHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PrioritizeHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.PrioritizeHTTPRequest));
    }
    comptime { @export(PrioritizeHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_PrioritizeHTTPRequest", .linkage = .Strong }); }
    pub fn GetHTTPResponseHeaderSize(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, unResponseHeaderSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseHeaderSize"}), .{ hRequest, pchHeaderName, unResponseHeaderSize, }, .{ "hRequest", "pchHeaderName", "unResponseHeaderSize", }, @TypeOf(S.GetHTTPResponseHeaderSize));
    }
    comptime { @export(GetHTTPResponseHeaderSize, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize", .linkage = .Strong }); }
    pub fn GetHTTPResponseHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pHeaderValueBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseHeaderValue"}), .{ hRequest, pchHeaderName, pHeaderValueBuffer, unBufferSize, }, .{ "hRequest", "pchHeaderName", "pHeaderValueBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPResponseHeaderValue));
    }
    comptime { @export(GetHTTPResponseHeaderValue, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue", .linkage = .Strong }); }
    pub fn GetHTTPResponseBodySize(hRequest: t.HTTPRequestHandle, unBodySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseBodySize"}), .{ hRequest, unBodySize, }, .{ "hRequest", "unBodySize", }, @TypeOf(S.GetHTTPResponseBodySize));
    }
    comptime { @export(GetHTTPResponseBodySize, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseBodySize", .linkage = .Strong }); }
    pub fn GetHTTPResponseBodyData(hRequest: t.HTTPRequestHandle, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseBodyData"}), .{ hRequest, pBodyDataBuffer, unBufferSize, }, .{ "hRequest", "pBodyDataBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPResponseBodyData));
    }
    comptime { @export(GetHTTPResponseBodyData, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPResponseBodyData", .linkage = .Strong }); }
    pub fn GetHTTPStreamingResponseBodyData(hRequest: t.HTTPRequestHandle, cOffset: t.uint32, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPStreamingResponseBodyData"}), .{ hRequest, cOffset, pBodyDataBuffer, unBufferSize, }, .{ "hRequest", "cOffset", "pBodyDataBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPStreamingResponseBodyData));
    }
    comptime { @export(GetHTTPStreamingResponseBodyData, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData", .linkage = .Strong }); }
    pub fn ReleaseHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.ReleaseHTTPRequest));
    }
    comptime { @export(ReleaseHTTPRequest, .{ .name = "SteamAPI_ISteamHTTP_ReleaseHTTPRequest", .linkage = .Strong }); }
    pub fn GetHTTPDownloadProgressPct(hRequest: t.HTTPRequestHandle, pflPercentOut: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPDownloadProgressPct"}), .{ hRequest, pflPercentOut, }, .{ "hRequest", "pflPercentOut", }, @TypeOf(S.GetHTTPDownloadProgressPct));
    }
    comptime { @export(GetHTTPDownloadProgressPct, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct", .linkage = .Strong }); }
    pub fn SetHTTPRequestRawPostBody(hRequest: t.HTTPRequestHandle, pchContentType: [*c]const u8, pubBody: [*c]t.uint8, unBodyLen: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestRawPostBody"}), .{ hRequest, pchContentType, pubBody, unBodyLen, }, .{ "hRequest", "pchContentType", "pubBody", "unBodyLen", }, @TypeOf(S.SetHTTPRequestRawPostBody));
    }
    comptime { @export(SetHTTPRequestRawPostBody, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody", .linkage = .Strong }); }
    pub fn CreateCookieContainer(bAllowResponsesToModify: bool, ) callconv(.C) t.HTTPCookieContainerHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateCookieContainer"}), .{ bAllowResponsesToModify, }, .{ "bAllowResponsesToModify", }, @TypeOf(S.CreateCookieContainer));
    }
    comptime { @export(CreateCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_CreateCookieContainer", .linkage = .Strong }); }
    pub fn ReleaseCookieContainer(hCookieContainer: t.HTTPCookieContainerHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseCookieContainer"}), .{ hCookieContainer, }, .{ "hCookieContainer", }, @TypeOf(S.ReleaseCookieContainer));
    }
    comptime { @export(ReleaseCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_ReleaseCookieContainer", .linkage = .Strong }); }
    pub fn SetCookie(hCookieContainer: t.HTTPCookieContainerHandle, pchHost: [*c]const u8, pchUrl: [*c]const u8, pchCookie: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCookie"}), .{ hCookieContainer, pchHost, pchUrl, pchCookie, }, .{ "hCookieContainer", "pchHost", "pchUrl", "pchCookie", }, @TypeOf(S.SetCookie));
    }
    comptime { @export(SetCookie, .{ .name = "SteamAPI_ISteamHTTP_SetCookie", .linkage = .Strong }); }
    pub fn SetHTTPRequestCookieContainer(hRequest: t.HTTPRequestHandle, hCookieContainer: t.HTTPCookieContainerHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestCookieContainer"}), .{ hRequest, hCookieContainer, }, .{ "hRequest", "hCookieContainer", }, @TypeOf(S.SetHTTPRequestCookieContainer));
    }
    comptime { @export(SetHTTPRequestCookieContainer, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer", .linkage = .Strong }); }
    pub fn SetHTTPRequestUserAgentInfo(hRequest: t.HTTPRequestHandle, pchUserAgentInfo: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestUserAgentInfo"}), .{ hRequest, pchUserAgentInfo, }, .{ "hRequest", "pchUserAgentInfo", }, @TypeOf(S.SetHTTPRequestUserAgentInfo));
    }
    comptime { @export(SetHTTPRequestUserAgentInfo, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo", .linkage = .Strong }); }
    pub fn SetHTTPRequestRequiresVerifiedCertificate(hRequest: t.HTTPRequestHandle, bRequireVerifiedCertificate: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestRequiresVerifiedCertificate"}), .{ hRequest, bRequireVerifiedCertificate, }, .{ "hRequest", "bRequireVerifiedCertificate", }, @TypeOf(S.SetHTTPRequestRequiresVerifiedCertificate));
    }
    comptime { @export(SetHTTPRequestRequiresVerifiedCertificate, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate", .linkage = .Strong }); }
    pub fn SetHTTPRequestAbsoluteTimeoutMS(hRequest: t.HTTPRequestHandle, unMilliseconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestAbsoluteTimeoutMS"}), .{ hRequest, unMilliseconds, }, .{ "hRequest", "unMilliseconds", }, @TypeOf(S.SetHTTPRequestAbsoluteTimeoutMS));
    }
    comptime { @export(SetHTTPRequestAbsoluteTimeoutMS, .{ .name = "SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS", .linkage = .Strong }); }
    pub fn GetHTTPRequestWasTimedOut(hRequest: t.HTTPRequestHandle, pbWasTimedOut: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPRequestWasTimedOut"}), .{ hRequest, pbWasTimedOut, }, .{ "hRequest", "pbWasTimedOut", }, @TypeOf(S.GetHTTPRequestWasTimedOut));
    }
    comptime { @export(GetHTTPRequestWasTimedOut, .{ .name = "SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut", .linkage = .Strong }); }
};
comptime { _ = ISteamHTTP; }
pub const SteamHTTP = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamHTTP"};
    pub fn v003() callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
    comptime { @export(v003, .{ .name = "SteamAPI_SteamHTTP_v003", .linkage = .Strong }); }
};
comptime { _ = SteamHTTP; }
pub const SteamGameServerHTTP = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerHTTP"};
    pub fn v003() callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
    comptime { @export(v003, .{ .name = "SteamAPI_SteamGameServerHTTP_v003", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerHTTP; }
pub const ISteamInput = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamInput"};
    _: u8 = 1,
    pub const version = "SteamInput006";
    pub fn Init(bExplicitlyCallRunFrame: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ bExplicitlyCallRunFrame, }, .{ "bExplicitlyCallRunFrame", }, @TypeOf(S.Init));
    }
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamInput_Init", .linkage = .Strong }); }
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamInput_Shutdown", .linkage = .Strong }); }
    pub fn SetInputActionManifestFilePath(pchInputActionManifestAbsolutePath: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInputActionManifestFilePath"}), .{ pchInputActionManifestAbsolutePath, }, .{ "pchInputActionManifestAbsolutePath", }, @TypeOf(S.SetInputActionManifestFilePath));
    }
    comptime { @export(SetInputActionManifestFilePath, .{ .name = "SteamAPI_ISteamInput_SetInputActionManifestFilePath", .linkage = .Strong }); }
    pub fn RunFrame(bReservedValue: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunFrame"}), .{ bReservedValue, }, .{ "bReservedValue", }, @TypeOf(S.RunFrame));
    }
    comptime { @export(RunFrame, .{ .name = "SteamAPI_ISteamInput_RunFrame", .linkage = .Strong }); }
    pub fn BWaitForData(bWaitForever: bool, unTimeout: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BWaitForData"}), .{ bWaitForever, unTimeout, }, .{ "bWaitForever", "unTimeout", }, @TypeOf(S.BWaitForData));
    }
    comptime { @export(BWaitForData, .{ .name = "SteamAPI_ISteamInput_BWaitForData", .linkage = .Strong }); }
    pub fn BNewDataAvailable() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BNewDataAvailable"}), .{ }, .{ }, @TypeOf(S.BNewDataAvailable));
    }
    comptime { @export(BNewDataAvailable, .{ .name = "SteamAPI_ISteamInput_BNewDataAvailable", .linkage = .Strong }); }
    pub fn GetConnectedControllers(handlesOut: [*c]t.InputHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedControllers"}), .{ handlesOut, }, .{ "handlesOut", }, @TypeOf(S.GetConnectedControllers));
    }
    comptime { @export(GetConnectedControllers, .{ .name = "SteamAPI_ISteamInput_GetConnectedControllers", .linkage = .Strong }); }
    pub fn EnableDeviceCallbacks() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableDeviceCallbacks"}), .{ }, .{ }, @TypeOf(S.EnableDeviceCallbacks));
    }
    comptime { @export(EnableDeviceCallbacks, .{ .name = "SteamAPI_ISteamInput_EnableDeviceCallbacks", .linkage = .Strong }); }
    pub fn EnableActionEventCallbacks(pCallback: t.SteamInputActionEventCallbackPointer, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableActionEventCallbacks"}), .{ pCallback, }, .{ "pCallback", }, @TypeOf(S.EnableActionEventCallbacks));
    }
    comptime { @export(EnableActionEventCallbacks, .{ .name = "SteamAPI_ISteamInput_EnableActionEventCallbacks", .linkage = .Strong }); }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8, ) callconv(.C) t.InputActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionSetHandle"}), .{ pszActionSetName, }, .{ "pszActionSetName", }, @TypeOf(S.GetActionSetHandle));
    }
    comptime { @export(GetActionSetHandle, .{ .name = "SteamAPI_ISteamInput_GetActionSetHandle", .linkage = .Strong }); }
    pub fn ActivateActionSet(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSet"}), .{ inputHandle, actionSetHandle, }, .{ "inputHandle", "actionSetHandle", }, @TypeOf(S.ActivateActionSet));
    }
    comptime { @export(ActivateActionSet, .{ .name = "SteamAPI_ISteamInput_ActivateActionSet", .linkage = .Strong }); }
    pub fn GetCurrentActionSet(inputHandle: t.InputHandle_t, ) callconv(.C) t.InputActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentActionSet"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetCurrentActionSet));
    }
    comptime { @export(GetCurrentActionSet, .{ .name = "SteamAPI_ISteamInput_GetCurrentActionSet", .linkage = .Strong }); }
    pub fn ActivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSetLayer"}), .{ inputHandle, actionSetLayerHandle, }, .{ "inputHandle", "actionSetLayerHandle", }, @TypeOf(S.ActivateActionSetLayer));
    }
    comptime { @export(ActivateActionSetLayer, .{ .name = "SteamAPI_ISteamInput_ActivateActionSetLayer", .linkage = .Strong }); }
    pub fn DeactivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateActionSetLayer"}), .{ inputHandle, actionSetLayerHandle, }, .{ "inputHandle", "actionSetLayerHandle", }, @TypeOf(S.DeactivateActionSetLayer));
    }
    comptime { @export(DeactivateActionSetLayer, .{ .name = "SteamAPI_ISteamInput_DeactivateActionSetLayer", .linkage = .Strong }); }
    pub fn DeactivateAllActionSetLayers(inputHandle: t.InputHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateAllActionSetLayers"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.DeactivateAllActionSetLayers));
    }
    comptime { @export(DeactivateAllActionSetLayers, .{ .name = "SteamAPI_ISteamInput_DeactivateAllActionSetLayers", .linkage = .Strong }); }
    pub fn GetActiveActionSetLayers(inputHandle: t.InputHandle_t, handlesOut: [*c]t.InputActionSetHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActiveActionSetLayers"}), .{ inputHandle, handlesOut, }, .{ "inputHandle", "handlesOut", }, @TypeOf(S.GetActiveActionSetLayers));
    }
    comptime { @export(GetActiveActionSetLayers, .{ .name = "SteamAPI_ISteamInput_GetActiveActionSetLayers", .linkage = .Strong }); }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.InputDigitalActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetDigitalActionHandle));
    }
    comptime { @export(GetDigitalActionHandle, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionHandle", .linkage = .Strong }); }
    pub fn GetDigitalActionData(inputHandle: t.InputHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, ) callconv(.C) t.InputDigitalActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionData"}), .{ inputHandle, digitalActionHandle, }, .{ "inputHandle", "digitalActionHandle", }, @TypeOf(S.GetDigitalActionData));
    }
    comptime { @export(GetDigitalActionData, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionData", .linkage = .Strong }); }
    pub fn GetDigitalActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, originsOut: [*c]t.EInputActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionOrigins"}), .{ inputHandle, actionSetHandle, digitalActionHandle, originsOut, }, .{ "inputHandle", "actionSetHandle", "digitalActionHandle", "originsOut", }, @TypeOf(S.GetDigitalActionOrigins));
    }
    comptime { @export(GetDigitalActionOrigins, .{ .name = "SteamAPI_ISteamInput_GetDigitalActionOrigins", .linkage = .Strong }); }
    pub fn GetStringForDigitalActionName(eActionHandle: t.InputDigitalActionHandle_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForDigitalActionName"}), .{ eActionHandle, }, .{ "eActionHandle", }, @TypeOf(S.GetStringForDigitalActionName));
    }
    comptime { @export(GetStringForDigitalActionName, .{ .name = "SteamAPI_ISteamInput_GetStringForDigitalActionName", .linkage = .Strong }); }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.InputAnalogActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetAnalogActionHandle));
    }
    comptime { @export(GetAnalogActionHandle, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionHandle", .linkage = .Strong }); }
    pub fn GetAnalogActionData(inputHandle: t.InputHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, ) callconv(.C) t.InputAnalogActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionData"}), .{ inputHandle, analogActionHandle, }, .{ "inputHandle", "analogActionHandle", }, @TypeOf(S.GetAnalogActionData));
    }
    comptime { @export(GetAnalogActionData, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionData", .linkage = .Strong }); }
    pub fn GetAnalogActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, originsOut: [*c]t.EInputActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionOrigins"}), .{ inputHandle, actionSetHandle, analogActionHandle, originsOut, }, .{ "inputHandle", "actionSetHandle", "analogActionHandle", "originsOut", }, @TypeOf(S.GetAnalogActionOrigins));
    }
    comptime { @export(GetAnalogActionOrigins, .{ .name = "SteamAPI_ISteamInput_GetAnalogActionOrigins", .linkage = .Strong }); }
    pub fn GetGlyphPNGForActionOrigin(eOrigin: t.EInputActionOrigin, eSize: t.ESteamInputGlyphSize, unFlags: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphPNGForActionOrigin"}), .{ eOrigin, eSize, unFlags, }, .{ "eOrigin", "eSize", "unFlags", }, @TypeOf(S.GetGlyphPNGForActionOrigin));
    }
    comptime { @export(GetGlyphPNGForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin", .linkage = .Strong }); }
    pub fn GetGlyphSVGForActionOrigin(eOrigin: t.EInputActionOrigin, unFlags: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphSVGForActionOrigin"}), .{ eOrigin, unFlags, }, .{ "eOrigin", "unFlags", }, @TypeOf(S.GetGlyphSVGForActionOrigin));
    }
    comptime { @export(GetGlyphSVGForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin", .linkage = .Strong }); }
    pub fn GetGlyphForActionOrigin_Legacy(eOrigin: t.EInputActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForActionOrigin_Legacy"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForActionOrigin_Legacy));
    }
    comptime { @export(GetGlyphForActionOrigin_Legacy, .{ .name = "SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy", .linkage = .Strong }); }
    pub fn GetStringForActionOrigin(eOrigin: t.EInputActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForActionOrigin));
    }
    comptime { @export(GetStringForActionOrigin, .{ .name = "SteamAPI_ISteamInput_GetStringForActionOrigin", .linkage = .Strong }); }
    pub fn GetStringForAnalogActionName(eActionHandle: t.InputAnalogActionHandle_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForAnalogActionName"}), .{ eActionHandle, }, .{ "eActionHandle", }, @TypeOf(S.GetStringForAnalogActionName));
    }
    comptime { @export(GetStringForAnalogActionName, .{ .name = "SteamAPI_ISteamInput_GetStringForAnalogActionName", .linkage = .Strong }); }
    pub fn StopAnalogActionMomentum(inputHandle: t.InputHandle_t, eAction: t.InputAnalogActionHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopAnalogActionMomentum"}), .{ inputHandle, eAction, }, .{ "inputHandle", "eAction", }, @TypeOf(S.StopAnalogActionMomentum));
    }
    comptime { @export(StopAnalogActionMomentum, .{ .name = "SteamAPI_ISteamInput_StopAnalogActionMomentum", .linkage = .Strong }); }
    pub fn GetMotionData(inputHandle: t.InputHandle_t, ) callconv(.C) t.InputMotionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMotionData"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetMotionData));
    }
    comptime { @export(GetMotionData, .{ .name = "SteamAPI_ISteamInput_GetMotionData", .linkage = .Strong }); }
    pub fn TriggerVibration(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibration"}), .{ inputHandle, usLeftSpeed, usRightSpeed, }, .{ "inputHandle", "usLeftSpeed", "usRightSpeed", }, @TypeOf(S.TriggerVibration));
    }
    comptime { @export(TriggerVibration, .{ .name = "SteamAPI_ISteamInput_TriggerVibration", .linkage = .Strong }); }
    pub fn TriggerVibrationExtended(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibrationExtended"}), .{ inputHandle, usLeftSpeed, usRightSpeed, usLeftTriggerSpeed, usRightTriggerSpeed, }, .{ "inputHandle", "usLeftSpeed", "usRightSpeed", "usLeftTriggerSpeed", "usRightTriggerSpeed", }, @TypeOf(S.TriggerVibrationExtended));
    }
    comptime { @export(TriggerVibrationExtended, .{ .name = "SteamAPI_ISteamInput_TriggerVibrationExtended", .linkage = .Strong }); }
    pub fn TriggerSimpleHapticEvent(inputHandle: t.InputHandle_t, eHapticLocation: t.EControllerHapticLocation, nIntensity: t.uint8, nGainDB: u8, nOtherIntensity: t.uint8, nOtherGainDB: u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerSimpleHapticEvent"}), .{ inputHandle, eHapticLocation, nIntensity, nGainDB, nOtherIntensity, nOtherGainDB, }, .{ "inputHandle", "eHapticLocation", "nIntensity", "nGainDB", "nOtherIntensity", "nOtherGainDB", }, @TypeOf(S.TriggerSimpleHapticEvent));
    }
    comptime { @export(TriggerSimpleHapticEvent, .{ .name = "SteamAPI_ISteamInput_TriggerSimpleHapticEvent", .linkage = .Strong }); }
    pub fn SetLEDColor(inputHandle: t.InputHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLEDColor"}), .{ inputHandle, nColorR, nColorG, nColorB, nFlags, }, .{ "inputHandle", "nColorR", "nColorG", "nColorB", "nFlags", }, @TypeOf(S.SetLEDColor));
    }
    comptime { @export(SetLEDColor, .{ .name = "SteamAPI_ISteamInput_SetLEDColor", .linkage = .Strong }); }
    pub fn Legacy_TriggerHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Legacy_TriggerHapticPulse"}), .{ inputHandle, eTargetPad, usDurationMicroSec, }, .{ "inputHandle", "eTargetPad", "usDurationMicroSec", }, @TypeOf(S.Legacy_TriggerHapticPulse));
    }
    comptime { @export(Legacy_TriggerHapticPulse, .{ .name = "SteamAPI_ISteamInput_Legacy_TriggerHapticPulse", .linkage = .Strong }); }
    pub fn Legacy_TriggerRepeatedHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Legacy_TriggerRepeatedHapticPulse"}), .{ inputHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags, }, .{ "inputHandle", "eTargetPad", "usDurationMicroSec", "usOffMicroSec", "unRepeat", "nFlags", }, @TypeOf(S.Legacy_TriggerRepeatedHapticPulse));
    }
    comptime { @export(Legacy_TriggerRepeatedHapticPulse, .{ .name = "SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse", .linkage = .Strong }); }
    pub fn ShowBindingPanel(inputHandle: t.InputHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowBindingPanel"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.ShowBindingPanel));
    }
    comptime { @export(ShowBindingPanel, .{ .name = "SteamAPI_ISteamInput_ShowBindingPanel", .linkage = .Strong }); }
    pub fn GetInputTypeForHandle(inputHandle: t.InputHandle_t, ) callconv(.C) t.ESteamInputType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInputTypeForHandle"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetInputTypeForHandle));
    }
    comptime { @export(GetInputTypeForHandle, .{ .name = "SteamAPI_ISteamInput_GetInputTypeForHandle", .linkage = .Strong }); }
    pub fn GetControllerForGamepadIndex(nIndex: i32, ) callconv(.C) t.InputHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerForGamepadIndex"}), .{ nIndex, }, .{ "nIndex", }, @TypeOf(S.GetControllerForGamepadIndex));
    }
    comptime { @export(GetControllerForGamepadIndex, .{ .name = "SteamAPI_ISteamInput_GetControllerForGamepadIndex", .linkage = .Strong }); }
    pub fn GetGamepadIndexForController(ulinputHandle: t.InputHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGamepadIndexForController"}), .{ ulinputHandle, }, .{ "ulinputHandle", }, @TypeOf(S.GetGamepadIndexForController));
    }
    comptime { @export(GetGamepadIndexForController, .{ .name = "SteamAPI_ISteamInput_GetGamepadIndexForController", .linkage = .Strong }); }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForXboxOrigin));
    }
    comptime { @export(GetStringForXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetStringForXboxOrigin", .linkage = .Strong }); }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForXboxOrigin));
    }
    comptime { @export(GetGlyphForXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetGlyphForXboxOrigin", .linkage = .Strong }); }
    pub fn GetActionOriginFromXboxOrigin(inputHandle: t.InputHandle_t, eOrigin: t.EXboxOrigin, ) callconv(.C) t.EInputActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionOriginFromXboxOrigin"}), .{ inputHandle, eOrigin, }, .{ "inputHandle", "eOrigin", }, @TypeOf(S.GetActionOriginFromXboxOrigin));
    }
    comptime { @export(GetActionOriginFromXboxOrigin, .{ .name = "SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin", .linkage = .Strong }); }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EInputActionOrigin, ) callconv(.C) t.EInputActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TranslateActionOrigin"}), .{ eDestinationInputType, eSourceOrigin, }, .{ "eDestinationInputType", "eSourceOrigin", }, @TypeOf(S.TranslateActionOrigin));
    }
    comptime { @export(TranslateActionOrigin, .{ .name = "SteamAPI_ISteamInput_TranslateActionOrigin", .linkage = .Strong }); }
    pub fn GetDeviceBindingRevision(inputHandle: t.InputHandle_t, pMajor: [*c]i32, pMinor: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDeviceBindingRevision"}), .{ inputHandle, pMajor, pMinor, }, .{ "inputHandle", "pMajor", "pMinor", }, @TypeOf(S.GetDeviceBindingRevision));
    }
    comptime { @export(GetDeviceBindingRevision, .{ .name = "SteamAPI_ISteamInput_GetDeviceBindingRevision", .linkage = .Strong }); }
    pub fn GetRemotePlaySessionID(inputHandle: t.InputHandle_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRemotePlaySessionID"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetRemotePlaySessionID));
    }
    comptime { @export(GetRemotePlaySessionID, .{ .name = "SteamAPI_ISteamInput_GetRemotePlaySessionID", .linkage = .Strong }); }
    pub fn GetSessionInputConfigurationSettings() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionInputConfigurationSettings"}), .{ }, .{ }, @TypeOf(S.GetSessionInputConfigurationSettings));
    }
    comptime { @export(GetSessionInputConfigurationSettings, .{ .name = "SteamAPI_ISteamInput_GetSessionInputConfigurationSettings", .linkage = .Strong }); }
};
comptime { _ = ISteamInput; }
pub const SteamInput = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamInput"};
    pub fn v006() callconv(.C) [*c]t.ISteamInput {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
    comptime { @export(v006, .{ .name = "SteamAPI_SteamInput_v006", .linkage = .Strong }); }
};
comptime { _ = SteamInput; }
pub const ISteamController = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamController"};
    _: u8 = 1,
    pub const version = "SteamController008";
    pub fn Init() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ }, .{ }, @TypeOf(S.Init));
    }
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamController_Init", .linkage = .Strong }); }
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamController_Shutdown", .linkage = .Strong }); }
    pub fn RunFrame() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunFrame"}), .{ }, .{ }, @TypeOf(S.RunFrame));
    }
    comptime { @export(RunFrame, .{ .name = "SteamAPI_ISteamController_RunFrame", .linkage = .Strong }); }
    pub fn GetConnectedControllers(handlesOut: [*c]t.ControllerHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedControllers"}), .{ handlesOut, }, .{ "handlesOut", }, @TypeOf(S.GetConnectedControllers));
    }
    comptime { @export(GetConnectedControllers, .{ .name = "SteamAPI_ISteamController_GetConnectedControllers", .linkage = .Strong }); }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8, ) callconv(.C) t.ControllerActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionSetHandle"}), .{ pszActionSetName, }, .{ "pszActionSetName", }, @TypeOf(S.GetActionSetHandle));
    }
    comptime { @export(GetActionSetHandle, .{ .name = "SteamAPI_ISteamController_GetActionSetHandle", .linkage = .Strong }); }
    pub fn ActivateActionSet(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSet"}), .{ controllerHandle, actionSetHandle, }, .{ "controllerHandle", "actionSetHandle", }, @TypeOf(S.ActivateActionSet));
    }
    comptime { @export(ActivateActionSet, .{ .name = "SteamAPI_ISteamController_ActivateActionSet", .linkage = .Strong }); }
    pub fn GetCurrentActionSet(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.ControllerActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentActionSet"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetCurrentActionSet));
    }
    comptime { @export(GetCurrentActionSet, .{ .name = "SteamAPI_ISteamController_GetCurrentActionSet", .linkage = .Strong }); }
    pub fn ActivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSetLayer"}), .{ controllerHandle, actionSetLayerHandle, }, .{ "controllerHandle", "actionSetLayerHandle", }, @TypeOf(S.ActivateActionSetLayer));
    }
    comptime { @export(ActivateActionSetLayer, .{ .name = "SteamAPI_ISteamController_ActivateActionSetLayer", .linkage = .Strong }); }
    pub fn DeactivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateActionSetLayer"}), .{ controllerHandle, actionSetLayerHandle, }, .{ "controllerHandle", "actionSetLayerHandle", }, @TypeOf(S.DeactivateActionSetLayer));
    }
    comptime { @export(DeactivateActionSetLayer, .{ .name = "SteamAPI_ISteamController_DeactivateActionSetLayer", .linkage = .Strong }); }
    pub fn DeactivateAllActionSetLayers(controllerHandle: t.ControllerHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateAllActionSetLayers"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.DeactivateAllActionSetLayers));
    }
    comptime { @export(DeactivateAllActionSetLayers, .{ .name = "SteamAPI_ISteamController_DeactivateAllActionSetLayers", .linkage = .Strong }); }
    pub fn GetActiveActionSetLayers(controllerHandle: t.ControllerHandle_t, handlesOut: [*c]t.ControllerActionSetHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActiveActionSetLayers"}), .{ controllerHandle, handlesOut, }, .{ "controllerHandle", "handlesOut", }, @TypeOf(S.GetActiveActionSetLayers));
    }
    comptime { @export(GetActiveActionSetLayers, .{ .name = "SteamAPI_ISteamController_GetActiveActionSetLayers", .linkage = .Strong }); }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.ControllerDigitalActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetDigitalActionHandle));
    }
    comptime { @export(GetDigitalActionHandle, .{ .name = "SteamAPI_ISteamController_GetDigitalActionHandle", .linkage = .Strong }); }
    pub fn GetDigitalActionData(controllerHandle: t.ControllerHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, ) callconv(.C) t.InputDigitalActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionData"}), .{ controllerHandle, digitalActionHandle, }, .{ "controllerHandle", "digitalActionHandle", }, @TypeOf(S.GetDigitalActionData));
    }
    comptime { @export(GetDigitalActionData, .{ .name = "SteamAPI_ISteamController_GetDigitalActionData", .linkage = .Strong }); }
    pub fn GetDigitalActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, originsOut: [*c]t.EControllerActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionOrigins"}), .{ controllerHandle, actionSetHandle, digitalActionHandle, originsOut, }, .{ "controllerHandle", "actionSetHandle", "digitalActionHandle", "originsOut", }, @TypeOf(S.GetDigitalActionOrigins));
    }
    comptime { @export(GetDigitalActionOrigins, .{ .name = "SteamAPI_ISteamController_GetDigitalActionOrigins", .linkage = .Strong }); }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.ControllerAnalogActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetAnalogActionHandle));
    }
    comptime { @export(GetAnalogActionHandle, .{ .name = "SteamAPI_ISteamController_GetAnalogActionHandle", .linkage = .Strong }); }
    pub fn GetAnalogActionData(controllerHandle: t.ControllerHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, ) callconv(.C) t.InputAnalogActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionData"}), .{ controllerHandle, analogActionHandle, }, .{ "controllerHandle", "analogActionHandle", }, @TypeOf(S.GetAnalogActionData));
    }
    comptime { @export(GetAnalogActionData, .{ .name = "SteamAPI_ISteamController_GetAnalogActionData", .linkage = .Strong }); }
    pub fn GetAnalogActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, originsOut: [*c]t.EControllerActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionOrigins"}), .{ controllerHandle, actionSetHandle, analogActionHandle, originsOut, }, .{ "controllerHandle", "actionSetHandle", "analogActionHandle", "originsOut", }, @TypeOf(S.GetAnalogActionOrigins));
    }
    comptime { @export(GetAnalogActionOrigins, .{ .name = "SteamAPI_ISteamController_GetAnalogActionOrigins", .linkage = .Strong }); }
    pub fn GetGlyphForActionOrigin(eOrigin: t.EControllerActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForActionOrigin));
    }
    comptime { @export(GetGlyphForActionOrigin, .{ .name = "SteamAPI_ISteamController_GetGlyphForActionOrigin", .linkage = .Strong }); }
    pub fn GetStringForActionOrigin(eOrigin: t.EControllerActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForActionOrigin));
    }
    comptime { @export(GetStringForActionOrigin, .{ .name = "SteamAPI_ISteamController_GetStringForActionOrigin", .linkage = .Strong }); }
    pub fn StopAnalogActionMomentum(controllerHandle: t.ControllerHandle_t, eAction: t.ControllerAnalogActionHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopAnalogActionMomentum"}), .{ controllerHandle, eAction, }, .{ "controllerHandle", "eAction", }, @TypeOf(S.StopAnalogActionMomentum));
    }
    comptime { @export(StopAnalogActionMomentum, .{ .name = "SteamAPI_ISteamController_StopAnalogActionMomentum", .linkage = .Strong }); }
    pub fn GetMotionData(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.InputMotionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMotionData"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetMotionData));
    }
    comptime { @export(GetMotionData, .{ .name = "SteamAPI_ISteamController_GetMotionData", .linkage = .Strong }); }
    pub fn TriggerHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerHapticPulse"}), .{ controllerHandle, eTargetPad, usDurationMicroSec, }, .{ "controllerHandle", "eTargetPad", "usDurationMicroSec", }, @TypeOf(S.TriggerHapticPulse));
    }
    comptime { @export(TriggerHapticPulse, .{ .name = "SteamAPI_ISteamController_TriggerHapticPulse", .linkage = .Strong }); }
    pub fn TriggerRepeatedHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerRepeatedHapticPulse"}), .{ controllerHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags, }, .{ "controllerHandle", "eTargetPad", "usDurationMicroSec", "usOffMicroSec", "unRepeat", "nFlags", }, @TypeOf(S.TriggerRepeatedHapticPulse));
    }
    comptime { @export(TriggerRepeatedHapticPulse, .{ .name = "SteamAPI_ISteamController_TriggerRepeatedHapticPulse", .linkage = .Strong }); }
    pub fn TriggerVibration(controllerHandle: t.ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibration"}), .{ controllerHandle, usLeftSpeed, usRightSpeed, }, .{ "controllerHandle", "usLeftSpeed", "usRightSpeed", }, @TypeOf(S.TriggerVibration));
    }
    comptime { @export(TriggerVibration, .{ .name = "SteamAPI_ISteamController_TriggerVibration", .linkage = .Strong }); }
    pub fn SetLEDColor(controllerHandle: t.ControllerHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLEDColor"}), .{ controllerHandle, nColorR, nColorG, nColorB, nFlags, }, .{ "controllerHandle", "nColorR", "nColorG", "nColorB", "nFlags", }, @TypeOf(S.SetLEDColor));
    }
    comptime { @export(SetLEDColor, .{ .name = "SteamAPI_ISteamController_SetLEDColor", .linkage = .Strong }); }
    pub fn ShowBindingPanel(controllerHandle: t.ControllerHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowBindingPanel"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.ShowBindingPanel));
    }
    comptime { @export(ShowBindingPanel, .{ .name = "SteamAPI_ISteamController_ShowBindingPanel", .linkage = .Strong }); }
    pub fn GetInputTypeForHandle(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.ESteamInputType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInputTypeForHandle"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetInputTypeForHandle));
    }
    comptime { @export(GetInputTypeForHandle, .{ .name = "SteamAPI_ISteamController_GetInputTypeForHandle", .linkage = .Strong }); }
    pub fn GetControllerForGamepadIndex(nIndex: i32, ) callconv(.C) t.ControllerHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerForGamepadIndex"}), .{ nIndex, }, .{ "nIndex", }, @TypeOf(S.GetControllerForGamepadIndex));
    }
    comptime { @export(GetControllerForGamepadIndex, .{ .name = "SteamAPI_ISteamController_GetControllerForGamepadIndex", .linkage = .Strong }); }
    pub fn GetGamepadIndexForController(ulControllerHandle: t.ControllerHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGamepadIndexForController"}), .{ ulControllerHandle, }, .{ "ulControllerHandle", }, @TypeOf(S.GetGamepadIndexForController));
    }
    comptime { @export(GetGamepadIndexForController, .{ .name = "SteamAPI_ISteamController_GetGamepadIndexForController", .linkage = .Strong }); }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForXboxOrigin));
    }
    comptime { @export(GetStringForXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetStringForXboxOrigin", .linkage = .Strong }); }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForXboxOrigin));
    }
    comptime { @export(GetGlyphForXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetGlyphForXboxOrigin", .linkage = .Strong }); }
    pub fn GetActionOriginFromXboxOrigin(controllerHandle: t.ControllerHandle_t, eOrigin: t.EXboxOrigin, ) callconv(.C) t.EControllerActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionOriginFromXboxOrigin"}), .{ controllerHandle, eOrigin, }, .{ "controllerHandle", "eOrigin", }, @TypeOf(S.GetActionOriginFromXboxOrigin));
    }
    comptime { @export(GetActionOriginFromXboxOrigin, .{ .name = "SteamAPI_ISteamController_GetActionOriginFromXboxOrigin", .linkage = .Strong }); }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EControllerActionOrigin, ) callconv(.C) t.EControllerActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TranslateActionOrigin"}), .{ eDestinationInputType, eSourceOrigin, }, .{ "eDestinationInputType", "eSourceOrigin", }, @TypeOf(S.TranslateActionOrigin));
    }
    comptime { @export(TranslateActionOrigin, .{ .name = "SteamAPI_ISteamController_TranslateActionOrigin", .linkage = .Strong }); }
    pub fn GetControllerBindingRevision(controllerHandle: t.ControllerHandle_t, pMajor: [*c]i32, pMinor: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerBindingRevision"}), .{ controllerHandle, pMajor, pMinor, }, .{ "controllerHandle", "pMajor", "pMinor", }, @TypeOf(S.GetControllerBindingRevision));
    }
    comptime { @export(GetControllerBindingRevision, .{ .name = "SteamAPI_ISteamController_GetControllerBindingRevision", .linkage = .Strong }); }
};
comptime { _ = ISteamController; }
pub const SteamController = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamController"};
    pub fn v008() callconv(.C) [*c]t.ISteamController {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v008"}), .{ }, .{ }, @TypeOf(S.v008));
    }
    comptime { @export(v008, .{ .name = "SteamAPI_SteamController_v008", .linkage = .Strong }); }
};
comptime { _ = SteamController; }
pub const ISteamUGC = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUGC"};
    _: u8 = 1,
    pub const version = "STEAMUGC_INTERFACE_VERSION016";
    pub fn CreateQueryUserUGCRequest(unAccountID: t.AccountID_t, eListType: t.EUserUGCList, eMatchingUGCType: t.EUGCMatchingUGCType, eSortOrder: t.EUserUGCListSortOrder, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryUserUGCRequest"}), .{ unAccountID, eListType, eMatchingUGCType, eSortOrder, nCreatorAppID, nConsumerAppID, unPage, }, .{ "unAccountID", "eListType", "eMatchingUGCType", "eSortOrder", "nCreatorAppID", "nConsumerAppID", "unPage", }, @TypeOf(S.CreateQueryUserUGCRequest));
    }
    comptime { @export(CreateQueryUserUGCRequest, .{ .name = "SteamAPI_ISteamUGC_CreateQueryUserUGCRequest", .linkage = .Strong }); }
    pub fn CreateQueryAllUGCRequestPage(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryAllUGCRequestPage"}), .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, unPage, }, .{ "eQueryType", "eMatchingeMatchingUGCTypeFileType", "nCreatorAppID", "nConsumerAppID", "unPage", }, @TypeOf(S.CreateQueryAllUGCRequestPage));
    }
    comptime { @export(CreateQueryAllUGCRequestPage, .{ .name = "SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage", .linkage = .Strong }); }
    pub fn CreateQueryAllUGCRequestCursor(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, pchCursor: [*c]const u8, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryAllUGCRequestCursor"}), .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, pchCursor, }, .{ "eQueryType", "eMatchingeMatchingUGCTypeFileType", "nCreatorAppID", "nConsumerAppID", "pchCursor", }, @TypeOf(S.CreateQueryAllUGCRequestCursor));
    }
    comptime { @export(CreateQueryAllUGCRequestCursor, .{ .name = "SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor", .linkage = .Strong }); }
    pub fn CreateQueryUGCDetailsRequest(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryUGCDetailsRequest"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.CreateQueryUGCDetailsRequest));
    }
    comptime { @export(CreateQueryUGCDetailsRequest, .{ .name = "SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest", .linkage = .Strong }); }
    pub fn SendQueryUGCRequest(handle: t.UGCQueryHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendQueryUGCRequest"}), .{ handle, }, .{ "handle", }, @TypeOf(S.SendQueryUGCRequest));
    }
    comptime { @export(SendQueryUGCRequest, .{ .name = "SteamAPI_ISteamUGC_SendQueryUGCRequest", .linkage = .Strong }); }
    pub fn GetQueryUGCResult(handle: t.UGCQueryHandle_t, index: t.uint32, pDetails: [*c]t.SteamUGCDetails_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCResult"}), .{ handle, index, pDetails, }, .{ "handle", "index", "pDetails", }, @TypeOf(S.GetQueryUGCResult));
    }
    comptime { @export(GetQueryUGCResult, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCResult", .linkage = .Strong }); }
    pub fn GetQueryUGCNumTags(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumTags"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumTags));
    }
    comptime { @export(GetQueryUGCNumTags, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumTags", .linkage = .Strong }); }
    pub fn GetQueryUGCTag(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCTag"}), .{ handle, index, indexTag, pchValue, cchValueSize, }, .{ "handle", "index", "indexTag", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCTag));
    }
    comptime { @export(GetQueryUGCTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCTag", .linkage = .Strong }); }
    pub fn GetQueryUGCTagDisplayName(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCTagDisplayName"}), .{ handle, index, indexTag, pchValue, cchValueSize, }, .{ "handle", "index", "indexTag", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCTagDisplayName));
    }
    comptime { @export(GetQueryUGCTagDisplayName, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName", .linkage = .Strong }); }
    pub fn GetQueryUGCPreviewURL(handle: t.UGCQueryHandle_t, index: t.uint32, pchURL: [*c]u8, cchURLSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCPreviewURL"}), .{ handle, index, pchURL, cchURLSize, }, .{ "handle", "index", "pchURL", "cchURLSize", }, @TypeOf(S.GetQueryUGCPreviewURL));
    }
    comptime { @export(GetQueryUGCPreviewURL, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCPreviewURL", .linkage = .Strong }); }
    pub fn GetQueryUGCMetadata(handle: t.UGCQueryHandle_t, index: t.uint32, pchMetadata: [*c]u8, cchMetadatasize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCMetadata"}), .{ handle, index, pchMetadata, cchMetadatasize, }, .{ "handle", "index", "pchMetadata", "cchMetadatasize", }, @TypeOf(S.GetQueryUGCMetadata));
    }
    comptime { @export(GetQueryUGCMetadata, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCMetadata", .linkage = .Strong }); }
    pub fn GetQueryUGCChildren(handle: t.UGCQueryHandle_t, index: t.uint32, pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCChildren"}), .{ handle, index, pvecPublishedFileID, cMaxEntries, }, .{ "handle", "index", "pvecPublishedFileID", "cMaxEntries", }, @TypeOf(S.GetQueryUGCChildren));
    }
    comptime { @export(GetQueryUGCChildren, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCChildren", .linkage = .Strong }); }
    pub fn GetQueryUGCStatistic(handle: t.UGCQueryHandle_t, index: t.uint32, eStatType: t.EItemStatistic, pStatValue: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCStatistic"}), .{ handle, index, eStatType, pStatValue, }, .{ "handle", "index", "eStatType", "pStatValue", }, @TypeOf(S.GetQueryUGCStatistic));
    }
    comptime { @export(GetQueryUGCStatistic, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCStatistic", .linkage = .Strong }); }
    pub fn GetQueryUGCNumAdditionalPreviews(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumAdditionalPreviews"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumAdditionalPreviews));
    }
    comptime { @export(GetQueryUGCNumAdditionalPreviews, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews", .linkage = .Strong }); }
    pub fn GetQueryUGCAdditionalPreview(handle: t.UGCQueryHandle_t, index: t.uint32, previewIndex: t.uint32, pchURLOrVideoID: [*c]u8, cchURLSize: t.uint32, pchOriginalFileName: [*c]u8, cchOriginalFileNameSize: t.uint32, pPreviewType: [*c]t.EItemPreviewType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCAdditionalPreview"}), .{ handle, index, previewIndex, pchURLOrVideoID, cchURLSize, pchOriginalFileName, cchOriginalFileNameSize, pPreviewType, }, .{ "handle", "index", "previewIndex", "pchURLOrVideoID", "cchURLSize", "pchOriginalFileName", "cchOriginalFileNameSize", "pPreviewType", }, @TypeOf(S.GetQueryUGCAdditionalPreview));
    }
    comptime { @export(GetQueryUGCAdditionalPreview, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview", .linkage = .Strong }); }
    pub fn GetQueryUGCNumKeyValueTags(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumKeyValueTags"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumKeyValueTags));
    }
    comptime { @export(GetQueryUGCNumKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags", .linkage = .Strong }); }
    pub fn GetQueryUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, keyValueTagIndex: t.uint32, pchKey: [*c]u8, cchKeySize: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCKeyValueTag"}), .{ handle, index, keyValueTagIndex, pchKey, cchKeySize, pchValue, cchValueSize, }, .{ "handle", "index", "keyValueTagIndex", "pchKey", "cchKeySize", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCKeyValueTag));
    }
    comptime { @export(GetQueryUGCKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag", .linkage = .Strong }); }
    pub fn GetQueryFirstUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, pchKey: [*c]const u8, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryFirstUGCKeyValueTag"}), .{ handle, index, pchKey, pchValue, cchValueSize, }, .{ "handle", "index", "pchKey", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryFirstUGCKeyValueTag));
    }
    comptime { @export(GetQueryFirstUGCKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag", .linkage = .Strong }); }
    pub fn ReleaseQueryUGCRequest(handle: t.UGCQueryHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseQueryUGCRequest"}), .{ handle, }, .{ "handle", }, @TypeOf(S.ReleaseQueryUGCRequest));
    }
    comptime { @export(ReleaseQueryUGCRequest, .{ .name = "SteamAPI_ISteamUGC_ReleaseQueryUGCRequest", .linkage = .Strong }); }
    pub fn AddRequiredTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredTag"}), .{ handle, pTagName, }, .{ "handle", "pTagName", }, @TypeOf(S.AddRequiredTag));
    }
    comptime { @export(AddRequiredTag, .{ .name = "SteamAPI_ISteamUGC_AddRequiredTag", .linkage = .Strong }); }
    pub fn AddRequiredTagGroup(handle: t.UGCQueryHandle_t, pTagGroups: [*c]const t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredTagGroup"}), .{ handle, pTagGroups, }, .{ "handle", "pTagGroups", }, @TypeOf(S.AddRequiredTagGroup));
    }
    comptime { @export(AddRequiredTagGroup, .{ .name = "SteamAPI_ISteamUGC_AddRequiredTagGroup", .linkage = .Strong }); }
    pub fn AddExcludedTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddExcludedTag"}), .{ handle, pTagName, }, .{ "handle", "pTagName", }, @TypeOf(S.AddExcludedTag));
    }
    comptime { @export(AddExcludedTag, .{ .name = "SteamAPI_ISteamUGC_AddExcludedTag", .linkage = .Strong }); }
    pub fn SetReturnOnlyIDs(handle: t.UGCQueryHandle_t, bReturnOnlyIDs: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnOnlyIDs"}), .{ handle, bReturnOnlyIDs, }, .{ "handle", "bReturnOnlyIDs", }, @TypeOf(S.SetReturnOnlyIDs));
    }
    comptime { @export(SetReturnOnlyIDs, .{ .name = "SteamAPI_ISteamUGC_SetReturnOnlyIDs", .linkage = .Strong }); }
    pub fn SetReturnKeyValueTags(handle: t.UGCQueryHandle_t, bReturnKeyValueTags: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnKeyValueTags"}), .{ handle, bReturnKeyValueTags, }, .{ "handle", "bReturnKeyValueTags", }, @TypeOf(S.SetReturnKeyValueTags));
    }
    comptime { @export(SetReturnKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_SetReturnKeyValueTags", .linkage = .Strong }); }
    pub fn SetReturnLongDescription(handle: t.UGCQueryHandle_t, bReturnLongDescription: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnLongDescription"}), .{ handle, bReturnLongDescription, }, .{ "handle", "bReturnLongDescription", }, @TypeOf(S.SetReturnLongDescription));
    }
    comptime { @export(SetReturnLongDescription, .{ .name = "SteamAPI_ISteamUGC_SetReturnLongDescription", .linkage = .Strong }); }
    pub fn SetReturnMetadata(handle: t.UGCQueryHandle_t, bReturnMetadata: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnMetadata"}), .{ handle, bReturnMetadata, }, .{ "handle", "bReturnMetadata", }, @TypeOf(S.SetReturnMetadata));
    }
    comptime { @export(SetReturnMetadata, .{ .name = "SteamAPI_ISteamUGC_SetReturnMetadata", .linkage = .Strong }); }
    pub fn SetReturnChildren(handle: t.UGCQueryHandle_t, bReturnChildren: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnChildren"}), .{ handle, bReturnChildren, }, .{ "handle", "bReturnChildren", }, @TypeOf(S.SetReturnChildren));
    }
    comptime { @export(SetReturnChildren, .{ .name = "SteamAPI_ISteamUGC_SetReturnChildren", .linkage = .Strong }); }
    pub fn SetReturnAdditionalPreviews(handle: t.UGCQueryHandle_t, bReturnAdditionalPreviews: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnAdditionalPreviews"}), .{ handle, bReturnAdditionalPreviews, }, .{ "handle", "bReturnAdditionalPreviews", }, @TypeOf(S.SetReturnAdditionalPreviews));
    }
    comptime { @export(SetReturnAdditionalPreviews, .{ .name = "SteamAPI_ISteamUGC_SetReturnAdditionalPreviews", .linkage = .Strong }); }
    pub fn SetReturnTotalOnly(handle: t.UGCQueryHandle_t, bReturnTotalOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnTotalOnly"}), .{ handle, bReturnTotalOnly, }, .{ "handle", "bReturnTotalOnly", }, @TypeOf(S.SetReturnTotalOnly));
    }
    comptime { @export(SetReturnTotalOnly, .{ .name = "SteamAPI_ISteamUGC_SetReturnTotalOnly", .linkage = .Strong }); }
    pub fn SetReturnPlaytimeStats(handle: t.UGCQueryHandle_t, unDays: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnPlaytimeStats"}), .{ handle, unDays, }, .{ "handle", "unDays", }, @TypeOf(S.SetReturnPlaytimeStats));
    }
    comptime { @export(SetReturnPlaytimeStats, .{ .name = "SteamAPI_ISteamUGC_SetReturnPlaytimeStats", .linkage = .Strong }); }
    pub fn SetLanguage(handle: t.UGCQueryHandle_t, pchLanguage: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLanguage"}), .{ handle, pchLanguage, }, .{ "handle", "pchLanguage", }, @TypeOf(S.SetLanguage));
    }
    comptime { @export(SetLanguage, .{ .name = "SteamAPI_ISteamUGC_SetLanguage", .linkage = .Strong }); }
    pub fn SetAllowCachedResponse(handle: t.UGCQueryHandle_t, unMaxAgeSeconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAllowCachedResponse"}), .{ handle, unMaxAgeSeconds, }, .{ "handle", "unMaxAgeSeconds", }, @TypeOf(S.SetAllowCachedResponse));
    }
    comptime { @export(SetAllowCachedResponse, .{ .name = "SteamAPI_ISteamUGC_SetAllowCachedResponse", .linkage = .Strong }); }
    pub fn SetCloudFileNameFilter(handle: t.UGCQueryHandle_t, pMatchCloudFileName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCloudFileNameFilter"}), .{ handle, pMatchCloudFileName, }, .{ "handle", "pMatchCloudFileName", }, @TypeOf(S.SetCloudFileNameFilter));
    }
    comptime { @export(SetCloudFileNameFilter, .{ .name = "SteamAPI_ISteamUGC_SetCloudFileNameFilter", .linkage = .Strong }); }
    pub fn SetMatchAnyTag(handle: t.UGCQueryHandle_t, bMatchAnyTag: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMatchAnyTag"}), .{ handle, bMatchAnyTag, }, .{ "handle", "bMatchAnyTag", }, @TypeOf(S.SetMatchAnyTag));
    }
    comptime { @export(SetMatchAnyTag, .{ .name = "SteamAPI_ISteamUGC_SetMatchAnyTag", .linkage = .Strong }); }
    pub fn SetSearchText(handle: t.UGCQueryHandle_t, pSearchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSearchText"}), .{ handle, pSearchText, }, .{ "handle", "pSearchText", }, @TypeOf(S.SetSearchText));
    }
    comptime { @export(SetSearchText, .{ .name = "SteamAPI_ISteamUGC_SetSearchText", .linkage = .Strong }); }
    pub fn SetRankedByTrendDays(handle: t.UGCQueryHandle_t, unDays: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRankedByTrendDays"}), .{ handle, unDays, }, .{ "handle", "unDays", }, @TypeOf(S.SetRankedByTrendDays));
    }
    comptime { @export(SetRankedByTrendDays, .{ .name = "SteamAPI_ISteamUGC_SetRankedByTrendDays", .linkage = .Strong }); }
    pub fn SetTimeCreatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetTimeCreatedDateRange"}), .{ handle, rtStart, rtEnd, }, .{ "handle", "rtStart", "rtEnd", }, @TypeOf(S.SetTimeCreatedDateRange));
    }
    comptime { @export(SetTimeCreatedDateRange, .{ .name = "SteamAPI_ISteamUGC_SetTimeCreatedDateRange", .linkage = .Strong }); }
    pub fn SetTimeUpdatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetTimeUpdatedDateRange"}), .{ handle, rtStart, rtEnd, }, .{ "handle", "rtStart", "rtEnd", }, @TypeOf(S.SetTimeUpdatedDateRange));
    }
    comptime { @export(SetTimeUpdatedDateRange, .{ .name = "SteamAPI_ISteamUGC_SetTimeUpdatedDateRange", .linkage = .Strong }); }
    pub fn AddRequiredKeyValueTag(handle: t.UGCQueryHandle_t, pKey: [*c]const u8, pValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredKeyValueTag"}), .{ handle, pKey, pValue, }, .{ "handle", "pKey", "pValue", }, @TypeOf(S.AddRequiredKeyValueTag));
    }
    comptime { @export(AddRequiredKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_AddRequiredKeyValueTag", .linkage = .Strong }); }
    pub fn RequestUGCDetails(nPublishedFileID: t.PublishedFileId_t, unMaxAgeSeconds: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUGCDetails"}), .{ nPublishedFileID, unMaxAgeSeconds, }, .{ "nPublishedFileID", "unMaxAgeSeconds", }, @TypeOf(S.RequestUGCDetails));
    }
    comptime { @export(RequestUGCDetails, .{ .name = "SteamAPI_ISteamUGC_RequestUGCDetails", .linkage = .Strong }); }
    pub fn CreateItem(nConsumerAppId: t.AppId_t, eFileType: t.EWorkshopFileType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateItem"}), .{ nConsumerAppId, eFileType, }, .{ "nConsumerAppId", "eFileType", }, @TypeOf(S.CreateItem));
    }
    comptime { @export(CreateItem, .{ .name = "SteamAPI_ISteamUGC_CreateItem", .linkage = .Strong }); }
    pub fn StartItemUpdate(nConsumerAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.UGCUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartItemUpdate"}), .{ nConsumerAppId, nPublishedFileID, }, .{ "nConsumerAppId", "nPublishedFileID", }, @TypeOf(S.StartItemUpdate));
    }
    comptime { @export(StartItemUpdate, .{ .name = "SteamAPI_ISteamUGC_StartItemUpdate", .linkage = .Strong }); }
    pub fn SetItemTitle(handle: t.UGCUpdateHandle_t, pchTitle: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemTitle"}), .{ handle, pchTitle, }, .{ "handle", "pchTitle", }, @TypeOf(S.SetItemTitle));
    }
    comptime { @export(SetItemTitle, .{ .name = "SteamAPI_ISteamUGC_SetItemTitle", .linkage = .Strong }); }
    pub fn SetItemDescription(handle: t.UGCUpdateHandle_t, pchDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemDescription"}), .{ handle, pchDescription, }, .{ "handle", "pchDescription", }, @TypeOf(S.SetItemDescription));
    }
    comptime { @export(SetItemDescription, .{ .name = "SteamAPI_ISteamUGC_SetItemDescription", .linkage = .Strong }); }
    pub fn SetItemUpdateLanguage(handle: t.UGCUpdateHandle_t, pchLanguage: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemUpdateLanguage"}), .{ handle, pchLanguage, }, .{ "handle", "pchLanguage", }, @TypeOf(S.SetItemUpdateLanguage));
    }
    comptime { @export(SetItemUpdateLanguage, .{ .name = "SteamAPI_ISteamUGC_SetItemUpdateLanguage", .linkage = .Strong }); }
    pub fn SetItemMetadata(handle: t.UGCUpdateHandle_t, pchMetaData: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemMetadata"}), .{ handle, pchMetaData, }, .{ "handle", "pchMetaData", }, @TypeOf(S.SetItemMetadata));
    }
    comptime { @export(SetItemMetadata, .{ .name = "SteamAPI_ISteamUGC_SetItemMetadata", .linkage = .Strong }); }
    pub fn SetItemVisibility(handle: t.UGCUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemVisibility"}), .{ handle, eVisibility, }, .{ "handle", "eVisibility", }, @TypeOf(S.SetItemVisibility));
    }
    comptime { @export(SetItemVisibility, .{ .name = "SteamAPI_ISteamUGC_SetItemVisibility", .linkage = .Strong }); }
    pub fn SetItemTags(updateHandle: t.UGCUpdateHandle_t, pTags: [*c]const t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemTags"}), .{ updateHandle, pTags, }, .{ "updateHandle", "pTags", }, @TypeOf(S.SetItemTags));
    }
    comptime { @export(SetItemTags, .{ .name = "SteamAPI_ISteamUGC_SetItemTags", .linkage = .Strong }); }
    pub fn SetItemContent(handle: t.UGCUpdateHandle_t, pszContentFolder: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemContent"}), .{ handle, pszContentFolder, }, .{ "handle", "pszContentFolder", }, @TypeOf(S.SetItemContent));
    }
    comptime { @export(SetItemContent, .{ .name = "SteamAPI_ISteamUGC_SetItemContent", .linkage = .Strong }); }
    pub fn SetItemPreview(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemPreview"}), .{ handle, pszPreviewFile, }, .{ "handle", "pszPreviewFile", }, @TypeOf(S.SetItemPreview));
    }
    comptime { @export(SetItemPreview, .{ .name = "SteamAPI_ISteamUGC_SetItemPreview", .linkage = .Strong }); }
    pub fn SetAllowLegacyUpload(handle: t.UGCUpdateHandle_t, bAllowLegacyUpload: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAllowLegacyUpload"}), .{ handle, bAllowLegacyUpload, }, .{ "handle", "bAllowLegacyUpload", }, @TypeOf(S.SetAllowLegacyUpload));
    }
    comptime { @export(SetAllowLegacyUpload, .{ .name = "SteamAPI_ISteamUGC_SetAllowLegacyUpload", .linkage = .Strong }); }
    pub fn RemoveAllItemKeyValueTags(handle: t.UGCUpdateHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveAllItemKeyValueTags"}), .{ handle, }, .{ "handle", }, @TypeOf(S.RemoveAllItemKeyValueTags));
    }
    comptime { @export(RemoveAllItemKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags", .linkage = .Strong }); }
    pub fn RemoveItemKeyValueTags(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemKeyValueTags"}), .{ handle, pchKey, }, .{ "handle", "pchKey", }, @TypeOf(S.RemoveItemKeyValueTags));
    }
    comptime { @export(RemoveItemKeyValueTags, .{ .name = "SteamAPI_ISteamUGC_RemoveItemKeyValueTags", .linkage = .Strong }); }
    pub fn AddItemKeyValueTag(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemKeyValueTag"}), .{ handle, pchKey, pchValue, }, .{ "handle", "pchKey", "pchValue", }, @TypeOf(S.AddItemKeyValueTag));
    }
    comptime { @export(AddItemKeyValueTag, .{ .name = "SteamAPI_ISteamUGC_AddItemKeyValueTag", .linkage = .Strong }); }
    pub fn AddItemPreviewFile(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, @"type": t.EItemPreviewType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemPreviewFile"}), .{ handle, pszPreviewFile, @"type", }, .{ "handle", "pszPreviewFile", "type", }, @TypeOf(S.AddItemPreviewFile));
    }
    comptime { @export(AddItemPreviewFile, .{ .name = "SteamAPI_ISteamUGC_AddItemPreviewFile", .linkage = .Strong }); }
    pub fn AddItemPreviewVideo(handle: t.UGCUpdateHandle_t, pszVideoID: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemPreviewVideo"}), .{ handle, pszVideoID, }, .{ "handle", "pszVideoID", }, @TypeOf(S.AddItemPreviewVideo));
    }
    comptime { @export(AddItemPreviewVideo, .{ .name = "SteamAPI_ISteamUGC_AddItemPreviewVideo", .linkage = .Strong }); }
    pub fn UpdateItemPreviewFile(handle: t.UGCUpdateHandle_t, index: t.uint32, pszPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateItemPreviewFile"}), .{ handle, index, pszPreviewFile, }, .{ "handle", "index", "pszPreviewFile", }, @TypeOf(S.UpdateItemPreviewFile));
    }
    comptime { @export(UpdateItemPreviewFile, .{ .name = "SteamAPI_ISteamUGC_UpdateItemPreviewFile", .linkage = .Strong }); }
    pub fn UpdateItemPreviewVideo(handle: t.UGCUpdateHandle_t, index: t.uint32, pszVideoID: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateItemPreviewVideo"}), .{ handle, index, pszVideoID, }, .{ "handle", "index", "pszVideoID", }, @TypeOf(S.UpdateItemPreviewVideo));
    }
    comptime { @export(UpdateItemPreviewVideo, .{ .name = "SteamAPI_ISteamUGC_UpdateItemPreviewVideo", .linkage = .Strong }); }
    pub fn RemoveItemPreview(handle: t.UGCUpdateHandle_t, index: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemPreview"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.RemoveItemPreview));
    }
    comptime { @export(RemoveItemPreview, .{ .name = "SteamAPI_ISteamUGC_RemoveItemPreview", .linkage = .Strong }); }
    pub fn SubmitItemUpdate(handle: t.UGCUpdateHandle_t, pchChangeNote: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitItemUpdate"}), .{ handle, pchChangeNote, }, .{ "handle", "pchChangeNote", }, @TypeOf(S.SubmitItemUpdate));
    }
    comptime { @export(SubmitItemUpdate, .{ .name = "SteamAPI_ISteamUGC_SubmitItemUpdate", .linkage = .Strong }); }
    pub fn GetItemUpdateProgress(handle: t.UGCUpdateHandle_t, punBytesProcessed: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) t.EItemUpdateStatus {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemUpdateProgress"}), .{ handle, punBytesProcessed, punBytesTotal, }, .{ "handle", "punBytesProcessed", "punBytesTotal", }, @TypeOf(S.GetItemUpdateProgress));
    }
    comptime { @export(GetItemUpdateProgress, .{ .name = "SteamAPI_ISteamUGC_GetItemUpdateProgress", .linkage = .Strong }); }
    pub fn SetUserItemVote(nPublishedFileID: t.PublishedFileId_t, bVoteUp: bool, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserItemVote"}), .{ nPublishedFileID, bVoteUp, }, .{ "nPublishedFileID", "bVoteUp", }, @TypeOf(S.SetUserItemVote));
    }
    comptime { @export(SetUserItemVote, .{ .name = "SteamAPI_ISteamUGC_SetUserItemVote", .linkage = .Strong }); }
    pub fn GetUserItemVote(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserItemVote"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetUserItemVote));
    }
    comptime { @export(GetUserItemVote, .{ .name = "SteamAPI_ISteamUGC_GetUserItemVote", .linkage = .Strong }); }
    pub fn AddItemToFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemToFavorites"}), .{ nAppId, nPublishedFileID, }, .{ "nAppId", "nPublishedFileID", }, @TypeOf(S.AddItemToFavorites));
    }
    comptime { @export(AddItemToFavorites, .{ .name = "SteamAPI_ISteamUGC_AddItemToFavorites", .linkage = .Strong }); }
    pub fn RemoveItemFromFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemFromFavorites"}), .{ nAppId, nPublishedFileID, }, .{ "nAppId", "nPublishedFileID", }, @TypeOf(S.RemoveItemFromFavorites));
    }
    comptime { @export(RemoveItemFromFavorites, .{ .name = "SteamAPI_ISteamUGC_RemoveItemFromFavorites", .linkage = .Strong }); }
    pub fn SubscribeItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubscribeItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.SubscribeItem));
    }
    comptime { @export(SubscribeItem, .{ .name = "SteamAPI_ISteamUGC_SubscribeItem", .linkage = .Strong }); }
    pub fn UnsubscribeItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UnsubscribeItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.UnsubscribeItem));
    }
    comptime { @export(UnsubscribeItem, .{ .name = "SteamAPI_ISteamUGC_UnsubscribeItem", .linkage = .Strong }); }
    pub fn GetNumSubscribedItems() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumSubscribedItems"}), .{ }, .{ }, @TypeOf(S.GetNumSubscribedItems));
    }
    comptime { @export(GetNumSubscribedItems, .{ .name = "SteamAPI_ISteamUGC_GetNumSubscribedItems", .linkage = .Strong }); }
    pub fn GetSubscribedItems(pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSubscribedItems"}), .{ pvecPublishedFileID, cMaxEntries, }, .{ "pvecPublishedFileID", "cMaxEntries", }, @TypeOf(S.GetSubscribedItems));
    }
    comptime { @export(GetSubscribedItems, .{ .name = "SteamAPI_ISteamUGC_GetSubscribedItems", .linkage = .Strong }); }
    pub fn GetItemState(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemState"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetItemState));
    }
    comptime { @export(GetItemState, .{ .name = "SteamAPI_ISteamUGC_GetItemState", .linkage = .Strong }); }
    pub fn GetItemInstallInfo(nPublishedFileID: t.PublishedFileId_t, punSizeOnDisk: [*c]t.uint64, pchFolder: [*c]u8, cchFolderSize: t.uint32, punTimeStamp: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemInstallInfo"}), .{ nPublishedFileID, punSizeOnDisk, pchFolder, cchFolderSize, punTimeStamp, }, .{ "nPublishedFileID", "punSizeOnDisk", "pchFolder", "cchFolderSize", "punTimeStamp", }, @TypeOf(S.GetItemInstallInfo));
    }
    comptime { @export(GetItemInstallInfo, .{ .name = "SteamAPI_ISteamUGC_GetItemInstallInfo", .linkage = .Strong }); }
    pub fn GetItemDownloadInfo(nPublishedFileID: t.PublishedFileId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDownloadInfo"}), .{ nPublishedFileID, punBytesDownloaded, punBytesTotal, }, .{ "nPublishedFileID", "punBytesDownloaded", "punBytesTotal", }, @TypeOf(S.GetItemDownloadInfo));
    }
    comptime { @export(GetItemDownloadInfo, .{ .name = "SteamAPI_ISteamUGC_GetItemDownloadInfo", .linkage = .Strong }); }
    pub fn DownloadItem(nPublishedFileID: t.PublishedFileId_t, bHighPriority: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadItem"}), .{ nPublishedFileID, bHighPriority, }, .{ "nPublishedFileID", "bHighPriority", }, @TypeOf(S.DownloadItem));
    }
    comptime { @export(DownloadItem, .{ .name = "SteamAPI_ISteamUGC_DownloadItem", .linkage = .Strong }); }
    pub fn BInitWorkshopForGameServer(unWorkshopDepotID: t.DepotId_t, pszFolder: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BInitWorkshopForGameServer"}), .{ unWorkshopDepotID, pszFolder, }, .{ "unWorkshopDepotID", "pszFolder", }, @TypeOf(S.BInitWorkshopForGameServer));
    }
    comptime { @export(BInitWorkshopForGameServer, .{ .name = "SteamAPI_ISteamUGC_BInitWorkshopForGameServer", .linkage = .Strong }); }
    pub fn SuspendDownloads(bSuspend: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SuspendDownloads"}), .{ bSuspend, }, .{ "bSuspend", }, @TypeOf(S.SuspendDownloads));
    }
    comptime { @export(SuspendDownloads, .{ .name = "SteamAPI_ISteamUGC_SuspendDownloads", .linkage = .Strong }); }
    pub fn StartPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartPlaytimeTracking"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.StartPlaytimeTracking));
    }
    comptime { @export(StartPlaytimeTracking, .{ .name = "SteamAPI_ISteamUGC_StartPlaytimeTracking", .linkage = .Strong }); }
    pub fn StopPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopPlaytimeTracking"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.StopPlaytimeTracking));
    }
    comptime { @export(StopPlaytimeTracking, .{ .name = "SteamAPI_ISteamUGC_StopPlaytimeTracking", .linkage = .Strong }); }
    pub fn StopPlaytimeTrackingForAllItems() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopPlaytimeTrackingForAllItems"}), .{ }, .{ }, @TypeOf(S.StopPlaytimeTrackingForAllItems));
    }
    comptime { @export(StopPlaytimeTrackingForAllItems, .{ .name = "SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems", .linkage = .Strong }); }
    pub fn AddDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddDependency"}), .{ nParentPublishedFileID, nChildPublishedFileID, }, .{ "nParentPublishedFileID", "nChildPublishedFileID", }, @TypeOf(S.AddDependency));
    }
    comptime { @export(AddDependency, .{ .name = "SteamAPI_ISteamUGC_AddDependency", .linkage = .Strong }); }
    pub fn RemoveDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveDependency"}), .{ nParentPublishedFileID, nChildPublishedFileID, }, .{ "nParentPublishedFileID", "nChildPublishedFileID", }, @TypeOf(S.RemoveDependency));
    }
    comptime { @export(RemoveDependency, .{ .name = "SteamAPI_ISteamUGC_RemoveDependency", .linkage = .Strong }); }
    pub fn AddAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddAppDependency"}), .{ nPublishedFileID, nAppID, }, .{ "nPublishedFileID", "nAppID", }, @TypeOf(S.AddAppDependency));
    }
    comptime { @export(AddAppDependency, .{ .name = "SteamAPI_ISteamUGC_AddAppDependency", .linkage = .Strong }); }
    pub fn RemoveAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveAppDependency"}), .{ nPublishedFileID, nAppID, }, .{ "nPublishedFileID", "nAppID", }, @TypeOf(S.RemoveAppDependency));
    }
    comptime { @export(RemoveAppDependency, .{ .name = "SteamAPI_ISteamUGC_RemoveAppDependency", .linkage = .Strong }); }
    pub fn GetAppDependencies(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppDependencies"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetAppDependencies));
    }
    comptime { @export(GetAppDependencies, .{ .name = "SteamAPI_ISteamUGC_GetAppDependencies", .linkage = .Strong }); }
    pub fn DeleteItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeleteItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.DeleteItem));
    }
    comptime { @export(DeleteItem, .{ .name = "SteamAPI_ISteamUGC_DeleteItem", .linkage = .Strong }); }
    pub fn ShowWorkshopEULA() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowWorkshopEULA"}), .{ }, .{ }, @TypeOf(S.ShowWorkshopEULA));
    }
    comptime { @export(ShowWorkshopEULA, .{ .name = "SteamAPI_ISteamUGC_ShowWorkshopEULA", .linkage = .Strong }); }
    pub fn GetWorkshopEULAStatus() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetWorkshopEULAStatus"}), .{ }, .{ }, @TypeOf(S.GetWorkshopEULAStatus));
    }
    comptime { @export(GetWorkshopEULAStatus, .{ .name = "SteamAPI_ISteamUGC_GetWorkshopEULAStatus", .linkage = .Strong }); }
};
comptime { _ = ISteamUGC; }
pub const SteamUGC = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUGC"};
    pub fn v016() callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
    comptime { @export(v016, .{ .name = "SteamAPI_SteamUGC_v016", .linkage = .Strong }); }
};
comptime { _ = SteamUGC; }
pub const SteamGameServerUGC = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerUGC"};
    pub fn v016() callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
    comptime { @export(v016, .{ .name = "SteamAPI_SteamGameServerUGC_v016", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerUGC; }
pub const ISteamAppList = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamAppList"};
    _: u8 = 1,
    pub const version = "STEAMAPPLIST_INTERFACE_VERSION001";
    pub fn GetNumInstalledApps() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumInstalledApps"}), .{ }, .{ }, @TypeOf(S.GetNumInstalledApps));
    }
    comptime { @export(GetNumInstalledApps, .{ .name = "SteamAPI_ISteamAppList_GetNumInstalledApps", .linkage = .Strong }); }
    pub fn GetInstalledApps(pvecAppID: [*c]t.AppId_t, unMaxAppIDs: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInstalledApps"}), .{ pvecAppID, unMaxAppIDs, }, .{ "pvecAppID", "unMaxAppIDs", }, @TypeOf(S.GetInstalledApps));
    }
    comptime { @export(GetInstalledApps, .{ .name = "SteamAPI_ISteamAppList_GetInstalledApps", .linkage = .Strong }); }
    pub fn GetAppName(nAppID: t.AppId_t, pchName: [*c]u8, cchNameMax: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppName"}), .{ nAppID, pchName, cchNameMax, }, .{ "nAppID", "pchName", "cchNameMax", }, @TypeOf(S.GetAppName));
    }
    comptime { @export(GetAppName, .{ .name = "SteamAPI_ISteamAppList_GetAppName", .linkage = .Strong }); }
    pub fn GetAppInstallDir(nAppID: t.AppId_t, pchDirectory: [*c]u8, cchNameMax: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppInstallDir"}), .{ nAppID, pchDirectory, cchNameMax, }, .{ "nAppID", "pchDirectory", "cchNameMax", }, @TypeOf(S.GetAppInstallDir));
    }
    comptime { @export(GetAppInstallDir, .{ .name = "SteamAPI_ISteamAppList_GetAppInstallDir", .linkage = .Strong }); }
    pub fn GetAppBuildId(nAppID: t.AppId_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppBuildId"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.GetAppBuildId));
    }
    comptime { @export(GetAppBuildId, .{ .name = "SteamAPI_ISteamAppList_GetAppBuildId", .linkage = .Strong }); }
};
comptime { _ = ISteamAppList; }
pub const SteamAppList = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamAppList"};
    pub fn v001() callconv(.C) [*c]t.ISteamAppList {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamAppList_v001", .linkage = .Strong }); }
};
comptime { _ = SteamAppList; }
pub const ISteamHTMLSurface = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamHTMLSurface"};
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
    pub fn Init() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ }, .{ }, @TypeOf(S.Init));
    }
    comptime { @export(Init, .{ .name = "SteamAPI_ISteamHTMLSurface_Init", .linkage = .Strong }); }
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    comptime { @export(Shutdown, .{ .name = "SteamAPI_ISteamHTMLSurface_Shutdown", .linkage = .Strong }); }
    pub fn CreateBrowser(pchUserAgent: [*c]const u8, pchUserCSS: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateBrowser"}), .{ pchUserAgent, pchUserCSS, }, .{ "pchUserAgent", "pchUserCSS", }, @TypeOf(S.CreateBrowser));
    }
    comptime { @export(CreateBrowser, .{ .name = "SteamAPI_ISteamHTMLSurface_CreateBrowser", .linkage = .Strong }); }
    pub fn RemoveBrowser(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveBrowser"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.RemoveBrowser));
    }
    comptime { @export(RemoveBrowser, .{ .name = "SteamAPI_ISteamHTMLSurface_RemoveBrowser", .linkage = .Strong }); }
    pub fn LoadURL(unBrowserHandle: t.HHTMLBrowser, pchURL: [*c]const u8, pchPostData: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LoadURL"}), .{ unBrowserHandle, pchURL, pchPostData, }, .{ "unBrowserHandle", "pchURL", "pchPostData", }, @TypeOf(S.LoadURL));
    }
    comptime { @export(LoadURL, .{ .name = "SteamAPI_ISteamHTMLSurface_LoadURL", .linkage = .Strong }); }
    pub fn SetSize(unBrowserHandle: t.HHTMLBrowser, unWidth: t.uint32, unHeight: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSize"}), .{ unBrowserHandle, unWidth, unHeight, }, .{ "unBrowserHandle", "unWidth", "unHeight", }, @TypeOf(S.SetSize));
    }
    comptime { @export(SetSize, .{ .name = "SteamAPI_ISteamHTMLSurface_SetSize", .linkage = .Strong }); }
    pub fn StopLoad(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopLoad"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.StopLoad));
    }
    comptime { @export(StopLoad, .{ .name = "SteamAPI_ISteamHTMLSurface_StopLoad", .linkage = .Strong }); }
    pub fn Reload(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Reload"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.Reload));
    }
    comptime { @export(Reload, .{ .name = "SteamAPI_ISteamHTMLSurface_Reload", .linkage = .Strong }); }
    pub fn GoBack(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GoBack"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.GoBack));
    }
    comptime { @export(GoBack, .{ .name = "SteamAPI_ISteamHTMLSurface_GoBack", .linkage = .Strong }); }
    pub fn GoForward(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GoForward"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.GoForward));
    }
    comptime { @export(GoForward, .{ .name = "SteamAPI_ISteamHTMLSurface_GoForward", .linkage = .Strong }); }
    pub fn AddHeader(unBrowserHandle: t.HHTMLBrowser, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddHeader"}), .{ unBrowserHandle, pchKey, pchValue, }, .{ "unBrowserHandle", "pchKey", "pchValue", }, @TypeOf(S.AddHeader));
    }
    comptime { @export(AddHeader, .{ .name = "SteamAPI_ISteamHTMLSurface_AddHeader", .linkage = .Strong }); }
    pub fn ExecuteJavascript(unBrowserHandle: t.HHTMLBrowser, pchScript: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ExecuteJavascript"}), .{ unBrowserHandle, pchScript, }, .{ "unBrowserHandle", "pchScript", }, @TypeOf(S.ExecuteJavascript));
    }
    comptime { @export(ExecuteJavascript, .{ .name = "SteamAPI_ISteamHTMLSurface_ExecuteJavascript", .linkage = .Strong }); }
    pub fn MouseUp(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseUp"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseUp));
    }
    comptime { @export(MouseUp, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseUp", .linkage = .Strong }); }
    pub fn MouseDown(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseDown"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseDown));
    }
    comptime { @export(MouseDown, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseDown", .linkage = .Strong }); }
    pub fn MouseDoubleClick(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseDoubleClick"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseDoubleClick));
    }
    comptime { @export(MouseDoubleClick, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseDoubleClick", .linkage = .Strong }); }
    pub fn MouseMove(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseMove"}), .{ unBrowserHandle, x, y, }, .{ "unBrowserHandle", "x", "y", }, @TypeOf(S.MouseMove));
    }
    comptime { @export(MouseMove, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseMove", .linkage = .Strong }); }
    pub fn MouseWheel(unBrowserHandle: t.HHTMLBrowser, nDelta: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseWheel"}), .{ unBrowserHandle, nDelta, }, .{ "unBrowserHandle", "nDelta", }, @TypeOf(S.MouseWheel));
    }
    comptime { @export(MouseWheel, .{ .name = "SteamAPI_ISteamHTMLSurface_MouseWheel", .linkage = .Strong }); }
    pub fn KeyDown(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyDown"}), .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, bIsSystemKey, }, .{ "unBrowserHandle", "nNativeKeyCode", "eHTMLKeyModifiers", "bIsSystemKey", }, @TypeOf(S.KeyDown));
    }
    comptime { @export(KeyDown, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyDown", .linkage = .Strong }); }
    pub fn KeyUp(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyUp"}), .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, }, .{ "unBrowserHandle", "nNativeKeyCode", "eHTMLKeyModifiers", }, @TypeOf(S.KeyUp));
    }
    comptime { @export(KeyUp, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyUp", .linkage = .Strong }); }
    pub fn KeyChar(unBrowserHandle: t.HHTMLBrowser, cUnicodeChar: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyChar"}), .{ unBrowserHandle, cUnicodeChar, eHTMLKeyModifiers, }, .{ "unBrowserHandle", "cUnicodeChar", "eHTMLKeyModifiers", }, @TypeOf(S.KeyChar));
    }
    comptime { @export(KeyChar, .{ .name = "SteamAPI_ISteamHTMLSurface_KeyChar", .linkage = .Strong }); }
    pub fn SetHorizontalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHorizontalScroll"}), .{ unBrowserHandle, nAbsolutePixelScroll, }, .{ "unBrowserHandle", "nAbsolutePixelScroll", }, @TypeOf(S.SetHorizontalScroll));
    }
    comptime { @export(SetHorizontalScroll, .{ .name = "SteamAPI_ISteamHTMLSurface_SetHorizontalScroll", .linkage = .Strong }); }
    pub fn SetVerticalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVerticalScroll"}), .{ unBrowserHandle, nAbsolutePixelScroll, }, .{ "unBrowserHandle", "nAbsolutePixelScroll", }, @TypeOf(S.SetVerticalScroll));
    }
    comptime { @export(SetVerticalScroll, .{ .name = "SteamAPI_ISteamHTMLSurface_SetVerticalScroll", .linkage = .Strong }); }
    pub fn SetKeyFocus(unBrowserHandle: t.HHTMLBrowser, bHasKeyFocus: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetKeyFocus"}), .{ unBrowserHandle, bHasKeyFocus, }, .{ "unBrowserHandle", "bHasKeyFocus", }, @TypeOf(S.SetKeyFocus));
    }
    comptime { @export(SetKeyFocus, .{ .name = "SteamAPI_ISteamHTMLSurface_SetKeyFocus", .linkage = .Strong }); }
    pub fn ViewSource(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ViewSource"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.ViewSource));
    }
    comptime { @export(ViewSource, .{ .name = "SteamAPI_ISteamHTMLSurface_ViewSource", .linkage = .Strong }); }
    pub fn CopyToClipboard(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CopyToClipboard"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.CopyToClipboard));
    }
    comptime { @export(CopyToClipboard, .{ .name = "SteamAPI_ISteamHTMLSurface_CopyToClipboard", .linkage = .Strong }); }
    pub fn PasteFromClipboard(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PasteFromClipboard"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.PasteFromClipboard));
    }
    comptime { @export(PasteFromClipboard, .{ .name = "SteamAPI_ISteamHTMLSurface_PasteFromClipboard", .linkage = .Strong }); }
    pub fn Find(unBrowserHandle: t.HHTMLBrowser, pchSearchStr: [*c]const u8, bCurrentlyInFind: bool, bReverse: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Find"}), .{ unBrowserHandle, pchSearchStr, bCurrentlyInFind, bReverse, }, .{ "unBrowserHandle", "pchSearchStr", "bCurrentlyInFind", "bReverse", }, @TypeOf(S.Find));
    }
    comptime { @export(Find, .{ .name = "SteamAPI_ISteamHTMLSurface_Find", .linkage = .Strong }); }
    pub fn StopFind(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopFind"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.StopFind));
    }
    comptime { @export(StopFind, .{ .name = "SteamAPI_ISteamHTMLSurface_StopFind", .linkage = .Strong }); }
    pub fn GetLinkAtPosition(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLinkAtPosition"}), .{ unBrowserHandle, x, y, }, .{ "unBrowserHandle", "x", "y", }, @TypeOf(S.GetLinkAtPosition));
    }
    comptime { @export(GetLinkAtPosition, .{ .name = "SteamAPI_ISteamHTMLSurface_GetLinkAtPosition", .linkage = .Strong }); }
    pub fn SetCookie(pchHostname: [*c]const u8, pchKey: [*c]const u8, pchValue: [*c]const u8, pchPath: [*c]const u8, nExpires: t.RTime32, bSecure: bool, bHTTPOnly: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCookie"}), .{ pchHostname, pchKey, pchValue, pchPath, nExpires, bSecure, bHTTPOnly, }, .{ "pchHostname", "pchKey", "pchValue", "pchPath", "nExpires", "bSecure", "bHTTPOnly", }, @TypeOf(S.SetCookie));
    }
    comptime { @export(SetCookie, .{ .name = "SteamAPI_ISteamHTMLSurface_SetCookie", .linkage = .Strong }); }
    pub fn SetPageScaleFactor(unBrowserHandle: t.HHTMLBrowser, flZoom: f32, nPointX: i32, nPointY: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPageScaleFactor"}), .{ unBrowserHandle, flZoom, nPointX, nPointY, }, .{ "unBrowserHandle", "flZoom", "nPointX", "nPointY", }, @TypeOf(S.SetPageScaleFactor));
    }
    comptime { @export(SetPageScaleFactor, .{ .name = "SteamAPI_ISteamHTMLSurface_SetPageScaleFactor", .linkage = .Strong }); }
    pub fn SetBackgroundMode(unBrowserHandle: t.HHTMLBrowser, bBackgroundMode: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetBackgroundMode"}), .{ unBrowserHandle, bBackgroundMode, }, .{ "unBrowserHandle", "bBackgroundMode", }, @TypeOf(S.SetBackgroundMode));
    }
    comptime { @export(SetBackgroundMode, .{ .name = "SteamAPI_ISteamHTMLSurface_SetBackgroundMode", .linkage = .Strong }); }
    pub fn SetDPIScalingFactor(unBrowserHandle: t.HHTMLBrowser, flDPIScaling: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDPIScalingFactor"}), .{ unBrowserHandle, flDPIScaling, }, .{ "unBrowserHandle", "flDPIScaling", }, @TypeOf(S.SetDPIScalingFactor));
    }
    comptime { @export(SetDPIScalingFactor, .{ .name = "SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor", .linkage = .Strong }); }
    pub fn OpenDeveloperTools(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OpenDeveloperTools"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.OpenDeveloperTools));
    }
    comptime { @export(OpenDeveloperTools, .{ .name = "SteamAPI_ISteamHTMLSurface_OpenDeveloperTools", .linkage = .Strong }); }
    pub fn AllowStartRequest(unBrowserHandle: t.HHTMLBrowser, bAllowed: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllowStartRequest"}), .{ unBrowserHandle, bAllowed, }, .{ "unBrowserHandle", "bAllowed", }, @TypeOf(S.AllowStartRequest));
    }
    comptime { @export(AllowStartRequest, .{ .name = "SteamAPI_ISteamHTMLSurface_AllowStartRequest", .linkage = .Strong }); }
    pub fn JSDialogResponse(unBrowserHandle: t.HHTMLBrowser, bResult: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JSDialogResponse"}), .{ unBrowserHandle, bResult, }, .{ "unBrowserHandle", "bResult", }, @TypeOf(S.JSDialogResponse));
    }
    comptime { @export(JSDialogResponse, .{ .name = "SteamAPI_ISteamHTMLSurface_JSDialogResponse", .linkage = .Strong }); }
    pub fn FileLoadDialogResponse(unBrowserHandle: t.HHTMLBrowser, pchSelectedFiles: [*c][*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileLoadDialogResponse"}), .{ unBrowserHandle, pchSelectedFiles, }, .{ "unBrowserHandle", "pchSelectedFiles", }, @TypeOf(S.FileLoadDialogResponse));
    }
    comptime { @export(FileLoadDialogResponse, .{ .name = "SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse", .linkage = .Strong }); }
};
comptime { _ = ISteamHTMLSurface; }
pub const SteamHTMLSurface = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamHTMLSurface"};
    pub fn v005() callconv(.C) [*c]t.ISteamHTMLSurface {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v005"}), .{ }, .{ }, @TypeOf(S.v005));
    }
    comptime { @export(v005, .{ .name = "SteamAPI_SteamHTMLSurface_v005", .linkage = .Strong }); }
};
comptime { _ = SteamHTMLSurface; }
pub const ISteamInventory = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamInventory"};
    _: u8 = 1,
    pub const version = "STEAMINVENTORY_INTERFACE_V003";
    pub fn GetResultStatus(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultStatus"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.GetResultStatus));
    }
    comptime { @export(GetResultStatus, .{ .name = "SteamAPI_ISteamInventory_GetResultStatus", .linkage = .Strong }); }
    pub fn GetResultItems(resultHandle: t.SteamInventoryResult_t, pOutItemsArray: [*c]t.SteamItemDetails_t, punOutItemsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultItems"}), .{ resultHandle, pOutItemsArray, punOutItemsArraySize, }, .{ "resultHandle", "pOutItemsArray", "punOutItemsArraySize", }, @TypeOf(S.GetResultItems));
    }
    comptime { @export(GetResultItems, .{ .name = "SteamAPI_ISteamInventory_GetResultItems", .linkage = .Strong }); }
    pub fn GetResultItemProperty(resultHandle: t.SteamInventoryResult_t, unItemIndex: t.uint32, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultItemProperty"}), .{ resultHandle, unItemIndex, pchPropertyName, pchValueBuffer, punValueBufferSizeOut, }, .{ "resultHandle", "unItemIndex", "pchPropertyName", "pchValueBuffer", "punValueBufferSizeOut", }, @TypeOf(S.GetResultItemProperty));
    }
    comptime { @export(GetResultItemProperty, .{ .name = "SteamAPI_ISteamInventory_GetResultItemProperty", .linkage = .Strong }); }
    pub fn GetResultTimestamp(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultTimestamp"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.GetResultTimestamp));
    }
    comptime { @export(GetResultTimestamp, .{ .name = "SteamAPI_ISteamInventory_GetResultTimestamp", .linkage = .Strong }); }
    pub fn CheckResultSteamID(resultHandle: t.SteamInventoryResult_t, steamIDExpected: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckResultSteamID"}), .{ resultHandle, steamIDExpected, }, .{ "resultHandle", "steamIDExpected", }, @TypeOf(S.CheckResultSteamID));
    }
    comptime { @export(CheckResultSteamID, .{ .name = "SteamAPI_ISteamInventory_CheckResultSteamID", .linkage = .Strong }); }
    pub fn DestroyResult(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyResult"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.DestroyResult));
    }
    comptime { @export(DestroyResult, .{ .name = "SteamAPI_ISteamInventory_DestroyResult", .linkage = .Strong }); }
    pub fn GetAllItems(pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAllItems"}), .{ pResultHandle, }, .{ "pResultHandle", }, @TypeOf(S.GetAllItems));
    }
    comptime { @export(GetAllItems, .{ .name = "SteamAPI_ISteamInventory_GetAllItems", .linkage = .Strong }); }
    pub fn GetItemsByID(pResultHandle: [*c]t.SteamInventoryResult_t, pInstanceIDs: [*c]const t.SteamItemInstanceID_t, unCountInstanceIDs: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemsByID"}), .{ pResultHandle, pInstanceIDs, unCountInstanceIDs, }, .{ "pResultHandle", "pInstanceIDs", "unCountInstanceIDs", }, @TypeOf(S.GetItemsByID));
    }
    comptime { @export(GetItemsByID, .{ .name = "SteamAPI_ISteamInventory_GetItemsByID", .linkage = .Strong }); }
    pub fn SerializeResult(resultHandle: t.SteamInventoryResult_t, pOutBuffer: ?*anyopaque, punOutBufferSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SerializeResult"}), .{ resultHandle, pOutBuffer, punOutBufferSize, }, .{ "resultHandle", "pOutBuffer", "punOutBufferSize", }, @TypeOf(S.SerializeResult));
    }
    comptime { @export(SerializeResult, .{ .name = "SteamAPI_ISteamInventory_SerializeResult", .linkage = .Strong }); }
    pub fn DeserializeResult(pOutResultHandle: [*c]t.SteamInventoryResult_t, pBuffer: ?*const anyopaque, unBufferSize: t.uint32, bRESERVED_MUST_BE_FALSE: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeserializeResult"}), .{ pOutResultHandle, pBuffer, unBufferSize, bRESERVED_MUST_BE_FALSE, }, .{ "pOutResultHandle", "pBuffer", "unBufferSize", "bRESERVED_MUST_BE_FALSE", }, @TypeOf(S.DeserializeResult));
    }
    comptime { @export(DeserializeResult, .{ .name = "SteamAPI_ISteamInventory_DeserializeResult", .linkage = .Strong }); }
    pub fn GenerateItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GenerateItems"}), .{ pResultHandle, pArrayItemDefs, punArrayQuantity, unArrayLength, }, .{ "pResultHandle", "pArrayItemDefs", "punArrayQuantity", "unArrayLength", }, @TypeOf(S.GenerateItems));
    }
    comptime { @export(GenerateItems, .{ .name = "SteamAPI_ISteamInventory_GenerateItems", .linkage = .Strong }); }
    pub fn GrantPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GrantPromoItems"}), .{ pResultHandle, }, .{ "pResultHandle", }, @TypeOf(S.GrantPromoItems));
    }
    comptime { @export(GrantPromoItems, .{ .name = "SteamAPI_ISteamInventory_GrantPromoItems", .linkage = .Strong }); }
    pub fn AddPromoItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemDef: t.SteamItemDef_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPromoItem"}), .{ pResultHandle, itemDef, }, .{ "pResultHandle", "itemDef", }, @TypeOf(S.AddPromoItem));
    }
    comptime { @export(AddPromoItem, .{ .name = "SteamAPI_ISteamInventory_AddPromoItem", .linkage = .Strong }); }
    pub fn AddPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPromoItems"}), .{ pResultHandle, pArrayItemDefs, unArrayLength, }, .{ "pResultHandle", "pArrayItemDefs", "unArrayLength", }, @TypeOf(S.AddPromoItems));
    }
    comptime { @export(AddPromoItems, .{ .name = "SteamAPI_ISteamInventory_AddPromoItems", .linkage = .Strong }); }
    pub fn ConsumeItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemConsume: t.SteamItemInstanceID_t, unQuantity: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConsumeItem"}), .{ pResultHandle, itemConsume, unQuantity, }, .{ "pResultHandle", "itemConsume", "unQuantity", }, @TypeOf(S.ConsumeItem));
    }
    comptime { @export(ConsumeItem, .{ .name = "SteamAPI_ISteamInventory_ConsumeItem", .linkage = .Strong }); }
    pub fn ExchangeItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayGenerate: [*c]const t.SteamItemDef_t, punArrayGenerateQuantity: [*c]const t.uint32, unArrayGenerateLength: t.uint32, pArrayDestroy: [*c]const t.SteamItemInstanceID_t, punArrayDestroyQuantity: [*c]const t.uint32, unArrayDestroyLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ExchangeItems"}), .{ pResultHandle, pArrayGenerate, punArrayGenerateQuantity, unArrayGenerateLength, pArrayDestroy, punArrayDestroyQuantity, unArrayDestroyLength, }, .{ "pResultHandle", "pArrayGenerate", "punArrayGenerateQuantity", "unArrayGenerateLength", "pArrayDestroy", "punArrayDestroyQuantity", "unArrayDestroyLength", }, @TypeOf(S.ExchangeItems));
    }
    comptime { @export(ExchangeItems, .{ .name = "SteamAPI_ISteamInventory_ExchangeItems", .linkage = .Strong }); }
    pub fn TransferItemQuantity(pResultHandle: [*c]t.SteamInventoryResult_t, itemIdSource: t.SteamItemInstanceID_t, unQuantity: t.uint32, itemIdDest: t.SteamItemInstanceID_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TransferItemQuantity"}), .{ pResultHandle, itemIdSource, unQuantity, itemIdDest, }, .{ "pResultHandle", "itemIdSource", "unQuantity", "itemIdDest", }, @TypeOf(S.TransferItemQuantity));
    }
    comptime { @export(TransferItemQuantity, .{ .name = "SteamAPI_ISteamInventory_TransferItemQuantity", .linkage = .Strong }); }
    pub fn SendItemDropHeartbeat() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendItemDropHeartbeat"}), .{ }, .{ }, @TypeOf(S.SendItemDropHeartbeat));
    }
    comptime { @export(SendItemDropHeartbeat, .{ .name = "SteamAPI_ISteamInventory_SendItemDropHeartbeat", .linkage = .Strong }); }
    pub fn TriggerItemDrop(pResultHandle: [*c]t.SteamInventoryResult_t, dropListDefinition: t.SteamItemDef_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerItemDrop"}), .{ pResultHandle, dropListDefinition, }, .{ "pResultHandle", "dropListDefinition", }, @TypeOf(S.TriggerItemDrop));
    }
    comptime { @export(TriggerItemDrop, .{ .name = "SteamAPI_ISteamInventory_TriggerItemDrop", .linkage = .Strong }); }
    pub fn TradeItems(pResultHandle: [*c]t.SteamInventoryResult_t, steamIDTradePartner: t.CSteamID, pArrayGive: [*c]const t.SteamItemInstanceID_t, pArrayGiveQuantity: [*c]const t.uint32, nArrayGiveLength: t.uint32, pArrayGet: [*c]const t.SteamItemInstanceID_t, pArrayGetQuantity: [*c]const t.uint32, nArrayGetLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TradeItems"}), .{ pResultHandle, steamIDTradePartner, pArrayGive, pArrayGiveQuantity, nArrayGiveLength, pArrayGet, pArrayGetQuantity, nArrayGetLength, }, .{ "pResultHandle", "steamIDTradePartner", "pArrayGive", "pArrayGiveQuantity", "nArrayGiveLength", "pArrayGet", "pArrayGetQuantity", "nArrayGetLength", }, @TypeOf(S.TradeItems));
    }
    comptime { @export(TradeItems, .{ .name = "SteamAPI_ISteamInventory_TradeItems", .linkage = .Strong }); }
    pub fn LoadItemDefinitions() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LoadItemDefinitions"}), .{ }, .{ }, @TypeOf(S.LoadItemDefinitions));
    }
    comptime { @export(LoadItemDefinitions, .{ .name = "SteamAPI_ISteamInventory_LoadItemDefinitions", .linkage = .Strong }); }
    pub fn GetItemDefinitionIDs(pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDefinitionIDs"}), .{ pItemDefIDs, punItemDefIDsArraySize, }, .{ "pItemDefIDs", "punItemDefIDsArraySize", }, @TypeOf(S.GetItemDefinitionIDs));
    }
    comptime { @export(GetItemDefinitionIDs, .{ .name = "SteamAPI_ISteamInventory_GetItemDefinitionIDs", .linkage = .Strong }); }
    pub fn GetItemDefinitionProperty(iDefinition: t.SteamItemDef_t, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDefinitionProperty"}), .{ iDefinition, pchPropertyName, pchValueBuffer, punValueBufferSizeOut, }, .{ "iDefinition", "pchPropertyName", "pchValueBuffer", "punValueBufferSizeOut", }, @TypeOf(S.GetItemDefinitionProperty));
    }
    comptime { @export(GetItemDefinitionProperty, .{ .name = "SteamAPI_ISteamInventory_GetItemDefinitionProperty", .linkage = .Strong }); }
    pub fn RequestEligiblePromoItemDefinitionsIDs(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestEligiblePromoItemDefinitionsIDs"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.RequestEligiblePromoItemDefinitionsIDs));
    }
    comptime { @export(RequestEligiblePromoItemDefinitionsIDs, .{ .name = "SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs", .linkage = .Strong }); }
    pub fn GetEligiblePromoItemDefinitionIDs(steamID: t.CSteamID, pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEligiblePromoItemDefinitionIDs"}), .{ steamID, pItemDefIDs, punItemDefIDsArraySize, }, .{ "steamID", "pItemDefIDs", "punItemDefIDsArraySize", }, @TypeOf(S.GetEligiblePromoItemDefinitionIDs));
    }
    comptime { @export(GetEligiblePromoItemDefinitionIDs, .{ .name = "SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs", .linkage = .Strong }); }
    pub fn StartPurchase(pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartPurchase"}), .{ pArrayItemDefs, punArrayQuantity, unArrayLength, }, .{ "pArrayItemDefs", "punArrayQuantity", "unArrayLength", }, @TypeOf(S.StartPurchase));
    }
    comptime { @export(StartPurchase, .{ .name = "SteamAPI_ISteamInventory_StartPurchase", .linkage = .Strong }); }
    pub fn RequestPrices() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestPrices"}), .{ }, .{ }, @TypeOf(S.RequestPrices));
    }
    comptime { @export(RequestPrices, .{ .name = "SteamAPI_ISteamInventory_RequestPrices", .linkage = .Strong }); }
    pub fn GetNumItemsWithPrices() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumItemsWithPrices"}), .{ }, .{ }, @TypeOf(S.GetNumItemsWithPrices));
    }
    comptime { @export(GetNumItemsWithPrices, .{ .name = "SteamAPI_ISteamInventory_GetNumItemsWithPrices", .linkage = .Strong }); }
    pub fn GetItemsWithPrices(pArrayItemDefs: [*c]t.SteamItemDef_t, pCurrentPrices: [*c]t.uint64, pBasePrices: [*c]t.uint64, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemsWithPrices"}), .{ pArrayItemDefs, pCurrentPrices, pBasePrices, unArrayLength, }, .{ "pArrayItemDefs", "pCurrentPrices", "pBasePrices", "unArrayLength", }, @TypeOf(S.GetItemsWithPrices));
    }
    comptime { @export(GetItemsWithPrices, .{ .name = "SteamAPI_ISteamInventory_GetItemsWithPrices", .linkage = .Strong }); }
    pub fn GetItemPrice(iDefinition: t.SteamItemDef_t, pCurrentPrice: [*c]t.uint64, pBasePrice: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemPrice"}), .{ iDefinition, pCurrentPrice, pBasePrice, }, .{ "iDefinition", "pCurrentPrice", "pBasePrice", }, @TypeOf(S.GetItemPrice));
    }
    comptime { @export(GetItemPrice, .{ .name = "SteamAPI_ISteamInventory_GetItemPrice", .linkage = .Strong }); }
    pub fn StartUpdateProperties() callconv(.C) t.SteamInventoryUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartUpdateProperties"}), .{ }, .{ }, @TypeOf(S.StartUpdateProperties));
    }
    comptime { @export(StartUpdateProperties, .{ .name = "SteamAPI_ISteamInventory_StartUpdateProperties", .linkage = .Strong }); }
    pub fn RemoveProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveProperty"}), .{ handle, nItemID, pchPropertyName, }, .{ "handle", "nItemID", "pchPropertyName", }, @TypeOf(S.RemoveProperty));
    }
    comptime { @export(RemoveProperty, .{ .name = "SteamAPI_ISteamInventory_RemoveProperty", .linkage = .Strong }); }
    pub fn SetPropertyString(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, pchPropertyValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyString"}), .{ handle, nItemID, pchPropertyName, pchPropertyValue, }, .{ "handle", "nItemID", "pchPropertyName", "pchPropertyValue", }, @TypeOf(S.SetPropertyString));
    }
    comptime { @export(SetPropertyString, .{ .name = "SteamAPI_ISteamInventory_SetPropertyString", .linkage = .Strong }); }
    pub fn SetPropertyBool(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyBool"}), .{ handle, nItemID, pchPropertyName, bValue, }, .{ "handle", "nItemID", "pchPropertyName", "bValue", }, @TypeOf(S.SetPropertyBool));
    }
    comptime { @export(SetPropertyBool, .{ .name = "SteamAPI_ISteamInventory_SetPropertyBool", .linkage = .Strong }); }
    pub fn SetPropertyInt64(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, nValue: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyInt64"}), .{ handle, nItemID, pchPropertyName, nValue, }, .{ "handle", "nItemID", "pchPropertyName", "nValue", }, @TypeOf(S.SetPropertyInt64));
    }
    comptime { @export(SetPropertyInt64, .{ .name = "SteamAPI_ISteamInventory_SetPropertyInt64", .linkage = .Strong }); }
    pub fn SetPropertyFloat(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, flValue: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyFloat"}), .{ handle, nItemID, pchPropertyName, flValue, }, .{ "handle", "nItemID", "pchPropertyName", "flValue", }, @TypeOf(S.SetPropertyFloat));
    }
    comptime { @export(SetPropertyFloat, .{ .name = "SteamAPI_ISteamInventory_SetPropertyFloat", .linkage = .Strong }); }
    pub fn SubmitUpdateProperties(handle: t.SteamInventoryUpdateHandle_t, pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitUpdateProperties"}), .{ handle, pResultHandle, }, .{ "handle", "pResultHandle", }, @TypeOf(S.SubmitUpdateProperties));
    }
    comptime { @export(SubmitUpdateProperties, .{ .name = "SteamAPI_ISteamInventory_SubmitUpdateProperties", .linkage = .Strong }); }
    pub fn InspectItem(pResultHandle: [*c]t.SteamInventoryResult_t, pchItemToken: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InspectItem"}), .{ pResultHandle, pchItemToken, }, .{ "pResultHandle", "pchItemToken", }, @TypeOf(S.InspectItem));
    }
    comptime { @export(InspectItem, .{ .name = "SteamAPI_ISteamInventory_InspectItem", .linkage = .Strong }); }
};
comptime { _ = ISteamInventory; }
pub const SteamInventory = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamInventory"};
    pub fn v003() callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
    comptime { @export(v003, .{ .name = "SteamAPI_SteamInventory_v003", .linkage = .Strong }); }
};
comptime { _ = SteamInventory; }
pub const SteamGameServerInventory = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerInventory"};
    pub fn v003() callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
    comptime { @export(v003, .{ .name = "SteamAPI_SteamGameServerInventory_v003", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerInventory; }
pub const ISteamVideo = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamVideo"};
    _: u8 = 1,
    pub const version = "STEAMVIDEO_INTERFACE_V002";
    pub fn GetVideoURL(unVideoAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVideoURL"}), .{ unVideoAppID, }, .{ "unVideoAppID", }, @TypeOf(S.GetVideoURL));
    }
    comptime { @export(GetVideoURL, .{ .name = "SteamAPI_ISteamVideo_GetVideoURL", .linkage = .Strong }); }
    pub fn IsBroadcasting(pnNumViewers: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsBroadcasting"}), .{ pnNumViewers, }, .{ "pnNumViewers", }, @TypeOf(S.IsBroadcasting));
    }
    comptime { @export(IsBroadcasting, .{ .name = "SteamAPI_ISteamVideo_IsBroadcasting", .linkage = .Strong }); }
    pub fn GetOPFSettings(unVideoAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetOPFSettings"}), .{ unVideoAppID, }, .{ "unVideoAppID", }, @TypeOf(S.GetOPFSettings));
    }
    comptime { @export(GetOPFSettings, .{ .name = "SteamAPI_ISteamVideo_GetOPFSettings", .linkage = .Strong }); }
    pub fn GetOPFStringForApp(unVideoAppID: t.AppId_t, pchBuffer: [*c]u8, pnBufferSize: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetOPFStringForApp"}), .{ unVideoAppID, pchBuffer, pnBufferSize, }, .{ "unVideoAppID", "pchBuffer", "pnBufferSize", }, @TypeOf(S.GetOPFStringForApp));
    }
    comptime { @export(GetOPFStringForApp, .{ .name = "SteamAPI_ISteamVideo_GetOPFStringForApp", .linkage = .Strong }); }
};
comptime { _ = ISteamVideo; }
pub const SteamVideo = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamVideo"};
    pub fn v002() callconv(.C) [*c]t.ISteamVideo {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
    comptime { @export(v002, .{ .name = "SteamAPI_SteamVideo_v002", .linkage = .Strong }); }
};
comptime { _ = SteamVideo; }
pub const ISteamParentalSettings = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamParentalSettings"};
    _: u8 = 1,
    pub const version = "STEAMPARENTALSETTINGS_INTERFACE_VERSION001";
    pub fn BIsParentalLockEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsParentalLockEnabled"}), .{ }, .{ }, @TypeOf(S.BIsParentalLockEnabled));
    }
    comptime { @export(BIsParentalLockEnabled, .{ .name = "SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled", .linkage = .Strong }); }
    pub fn BIsParentalLockLocked() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsParentalLockLocked"}), .{ }, .{ }, @TypeOf(S.BIsParentalLockLocked));
    }
    comptime { @export(BIsParentalLockLocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsParentalLockLocked", .linkage = .Strong }); }
    pub fn BIsAppBlocked(nAppID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppBlocked"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.BIsAppBlocked));
    }
    comptime { @export(BIsAppBlocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsAppBlocked", .linkage = .Strong }); }
    pub fn BIsAppInBlockList(nAppID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppInBlockList"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.BIsAppInBlockList));
    }
    comptime { @export(BIsAppInBlockList, .{ .name = "SteamAPI_ISteamParentalSettings_BIsAppInBlockList", .linkage = .Strong }); }
    pub fn BIsFeatureBlocked(eFeature: t.EParentalFeature, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsFeatureBlocked"}), .{ eFeature, }, .{ "eFeature", }, @TypeOf(S.BIsFeatureBlocked));
    }
    comptime { @export(BIsFeatureBlocked, .{ .name = "SteamAPI_ISteamParentalSettings_BIsFeatureBlocked", .linkage = .Strong }); }
    pub fn BIsFeatureInBlockList(eFeature: t.EParentalFeature, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsFeatureInBlockList"}), .{ eFeature, }, .{ "eFeature", }, @TypeOf(S.BIsFeatureInBlockList));
    }
    comptime { @export(BIsFeatureInBlockList, .{ .name = "SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList", .linkage = .Strong }); }
};
comptime { _ = ISteamParentalSettings; }
pub const SteamParentalSettings = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamParentalSettings"};
    pub fn v001() callconv(.C) [*c]t.ISteamParentalSettings {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamParentalSettings_v001", .linkage = .Strong }); }
};
comptime { _ = SteamParentalSettings; }
pub const ISteamRemotePlay = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamRemotePlay"};
    _: u8 = 1,
    pub const version = "STEAMREMOTEPLAY_INTERFACE_VERSION001";
    pub fn GetSessionCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionCount"}), .{ }, .{ }, @TypeOf(S.GetSessionCount));
    }
    comptime { @export(GetSessionCount, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionCount", .linkage = .Strong }); }
    pub fn GetSessionID(iSessionIndex: i32, ) callconv(.C) t.RemotePlaySessionID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionID"}), .{ iSessionIndex, }, .{ "iSessionIndex", }, @TypeOf(S.GetSessionID));
    }
    comptime { @export(GetSessionID, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionID", .linkage = .Strong }); }
    pub fn GetSessionSteamID(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionSteamID"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionSteamID));
    }
    comptime { @export(GetSessionSteamID, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionSteamID", .linkage = .Strong }); }
    pub fn GetSessionClientName(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionClientName"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionClientName));
    }
    comptime { @export(GetSessionClientName, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionClientName", .linkage = .Strong }); }
    pub fn GetSessionClientFormFactor(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) t.ESteamDeviceFormFactor {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionClientFormFactor"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionClientFormFactor));
    }
    comptime { @export(GetSessionClientFormFactor, .{ .name = "SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor", .linkage = .Strong }); }
    pub fn BGetSessionClientResolution(unSessionID: t.RemotePlaySessionID_t, pnResolutionX: [*c]i32, pnResolutionY: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BGetSessionClientResolution"}), .{ unSessionID, pnResolutionX, pnResolutionY, }, .{ "unSessionID", "pnResolutionX", "pnResolutionY", }, @TypeOf(S.BGetSessionClientResolution));
    }
    comptime { @export(BGetSessionClientResolution, .{ .name = "SteamAPI_ISteamRemotePlay_BGetSessionClientResolution", .linkage = .Strong }); }
    pub fn BSendRemotePlayTogetherInvite(steamIDFriend: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSendRemotePlayTogetherInvite"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.BSendRemotePlayTogetherInvite));
    }
    comptime { @export(BSendRemotePlayTogetherInvite, .{ .name = "SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite", .linkage = .Strong }); }
};
comptime { _ = ISteamRemotePlay; }
pub const SteamRemotePlay = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamRemotePlay"};
    pub fn v001() callconv(.C) [*c]t.ISteamRemotePlay {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamRemotePlay_v001", .linkage = .Strong }); }
};
comptime { _ = SteamRemotePlay; }
pub const ISteamNetworkingMessages = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingMessages"};
    _: u8 = 1,
    pub const version = "SteamNetworkingMessages002";
    pub fn SendMessageToUser(identityRemote: [*c]const t.SteamNetworkingIdentity, pubData: ?*const anyopaque, cubData: t.uint32, nSendFlags: i32, nRemoteChannel: i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToUser"}), .{ identityRemote, pubData, cubData, nSendFlags, nRemoteChannel, }, .{ "identityRemote", "pubData", "cubData", "nSendFlags", "nRemoteChannel", }, @TypeOf(S.SendMessageToUser));
    }
    comptime { @export(SendMessageToUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_SendMessageToUser", .linkage = .Strong }); }
    pub fn ReceiveMessagesOnChannel(nLocalChannel: i32, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnChannel"}), .{ nLocalChannel, ppOutMessages, nMaxMessages, }, .{ "nLocalChannel", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnChannel));
    }
    comptime { @export(ReceiveMessagesOnChannel, .{ .name = "SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel", .linkage = .Strong }); }
    pub fn AcceptSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptSessionWithUser"}), .{ identityRemote, }, .{ "identityRemote", }, @TypeOf(S.AcceptSessionWithUser));
    }
    comptime { @export(AcceptSessionWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser", .linkage = .Strong }); }
    pub fn CloseSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseSessionWithUser"}), .{ identityRemote, }, .{ "identityRemote", }, @TypeOf(S.CloseSessionWithUser));
    }
    comptime { @export(CloseSessionWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser", .linkage = .Strong }); }
    pub fn CloseChannelWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, nLocalChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseChannelWithUser"}), .{ identityRemote, nLocalChannel, }, .{ "identityRemote", "nLocalChannel", }, @TypeOf(S.CloseChannelWithUser));
    }
    comptime { @export(CloseChannelWithUser, .{ .name = "SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser", .linkage = .Strong }); }
    pub fn GetSessionConnectionInfo(identityRemote: [*c]const t.SteamNetworkingIdentity, pConnectionInfo: [*c]t.SteamNetConnectionInfo_t, pQuickStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, ) callconv(.C) t.ESteamNetworkingConnectionState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionConnectionInfo"}), .{ identityRemote, pConnectionInfo, pQuickStatus, }, .{ "identityRemote", "pConnectionInfo", "pQuickStatus", }, @TypeOf(S.GetSessionConnectionInfo));
    }
    comptime { @export(GetSessionConnectionInfo, .{ .name = "SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingMessages; }
pub const SteamNetworkingMessages_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingMessages_SteamAPI"};
    pub fn v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
    comptime { @export(v002, .{ .name = "SteamAPI_SteamNetworkingMessages_SteamAPI_v002", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingMessages_SteamAPI; }
pub const SteamGameServerNetworkingMessages_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworkingMessages_SteamAPI"};
    pub fn v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
    comptime { @export(v002, .{ .name = "SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworkingMessages_SteamAPI; }
pub const ISteamNetworkingSockets = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingSockets"};
    _: u8 = 1,
    pub const version = "SteamNetworkingSockets012";
    pub fn CreateListenSocketIP(localAddress: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketIP"}), .{ localAddress, nOptions, pOptions, }, .{ "localAddress", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketIP));
    }
    comptime { @export(CreateListenSocketIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP", .linkage = .Strong }); }
    pub fn ConnectByIPAddress(address: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectByIPAddress"}), .{ address, nOptions, pOptions, }, .{ "address", "nOptions", "pOptions", }, @TypeOf(S.ConnectByIPAddress));
    }
    comptime { @export(ConnectByIPAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress", .linkage = .Strong }); }
    pub fn CreateListenSocketP2P(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketP2P"}), .{ nLocalVirtualPort, nOptions, pOptions, }, .{ "nLocalVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketP2P));
    }
    comptime { @export(CreateListenSocketP2P, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P", .linkage = .Strong }); }
    pub fn ConnectP2P(identityRemote: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectP2P"}), .{ identityRemote, nRemoteVirtualPort, nOptions, pOptions, }, .{ "identityRemote", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectP2P));
    }
    comptime { @export(ConnectP2P, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectP2P", .linkage = .Strong }); }
    pub fn AcceptConnection(hConn: t.HSteamNetConnection, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptConnection"}), .{ hConn, }, .{ "hConn", }, @TypeOf(S.AcceptConnection));
    }
    comptime { @export(AcceptConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_AcceptConnection", .linkage = .Strong }); }
    pub fn CloseConnection(hPeer: t.HSteamNetConnection, nReason: i32, pszDebug: [*c]const u8, bEnableLinger: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseConnection"}), .{ hPeer, nReason, pszDebug, bEnableLinger, }, .{ "hPeer", "nReason", "pszDebug", "bEnableLinger", }, @TypeOf(S.CloseConnection));
    }
    comptime { @export(CloseConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_CloseConnection", .linkage = .Strong }); }
    pub fn CloseListenSocket(hSocket: t.HSteamListenSocket, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseListenSocket"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.CloseListenSocket));
    }
    comptime { @export(CloseListenSocket, .{ .name = "SteamAPI_ISteamNetworkingSockets_CloseListenSocket", .linkage = .Strong }); }
    pub fn SetConnectionUserData(hPeer: t.HSteamNetConnection, nUserData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionUserData"}), .{ hPeer, nUserData, }, .{ "hPeer", "nUserData", }, @TypeOf(S.SetConnectionUserData));
    }
    comptime { @export(SetConnectionUserData, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionUserData", .linkage = .Strong }); }
    pub fn GetConnectionUserData(hPeer: t.HSteamNetConnection, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionUserData"}), .{ hPeer, }, .{ "hPeer", }, @TypeOf(S.GetConnectionUserData));
    }
    comptime { @export(GetConnectionUserData, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionUserData", .linkage = .Strong }); }
    pub fn SetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionName"}), .{ hPeer, pszName, }, .{ "hPeer", "pszName", }, @TypeOf(S.SetConnectionName));
    }
    comptime { @export(SetConnectionName, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionName", .linkage = .Strong }); }
    pub fn GetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]u8, nMaxLen: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionName"}), .{ hPeer, pszName, nMaxLen, }, .{ "hPeer", "pszName", "nMaxLen", }, @TypeOf(S.GetConnectionName));
    }
    comptime { @export(GetConnectionName, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionName", .linkage = .Strong }); }
    pub fn SendMessageToConnection(hConn: t.HSteamNetConnection, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32, pOutMessageNumber: [*c]i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToConnection"}), .{ hConn, pData, cbData, nSendFlags, pOutMessageNumber, }, .{ "hConn", "pData", "cbData", "nSendFlags", "pOutMessageNumber", }, @TypeOf(S.SendMessageToConnection));
    }
    comptime { @export(SendMessageToConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_SendMessageToConnection", .linkage = .Strong }); }
    pub fn SendMessages(nMessages: i32, pMessages: [*c]const [*c]t.SteamNetworkingMessage_t, pOutMessageNumberOrResult: [*c]i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessages"}), .{ nMessages, pMessages, pOutMessageNumberOrResult, }, .{ "nMessages", "pMessages", "pOutMessageNumberOrResult", }, @TypeOf(S.SendMessages));
    }
    comptime { @export(SendMessages, .{ .name = "SteamAPI_ISteamNetworkingSockets_SendMessages", .linkage = .Strong }); }
    pub fn FlushMessagesOnConnection(hConn: t.HSteamNetConnection, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FlushMessagesOnConnection"}), .{ hConn, }, .{ "hConn", }, @TypeOf(S.FlushMessagesOnConnection));
    }
    comptime { @export(FlushMessagesOnConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection", .linkage = .Strong }); }
    pub fn ReceiveMessagesOnConnection(hConn: t.HSteamNetConnection, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnConnection"}), .{ hConn, ppOutMessages, nMaxMessages, }, .{ "hConn", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnConnection));
    }
    comptime { @export(ReceiveMessagesOnConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection", .linkage = .Strong }); }
    pub fn GetConnectionInfo(hConn: t.HSteamNetConnection, pInfo: [*c]t.SteamNetConnectionInfo_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionInfo"}), .{ hConn, pInfo, }, .{ "hConn", "pInfo", }, @TypeOf(S.GetConnectionInfo));
    }
    comptime { @export(GetConnectionInfo, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionInfo", .linkage = .Strong }); }
    pub fn GetConnectionRealTimeStatus(hConn: t.HSteamNetConnection, pStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, nLanes: i32, pLanes: [*c]t.SteamNetConnectionRealTimeLaneStatus_t, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionRealTimeStatus"}), .{ hConn, pStatus, nLanes, pLanes, }, .{ "hConn", "pStatus", "nLanes", "pLanes", }, @TypeOf(S.GetConnectionRealTimeStatus));
    }
    comptime { @export(GetConnectionRealTimeStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus", .linkage = .Strong }); }
    pub fn GetDetailedConnectionStatus(hConn: t.HSteamNetConnection, pszBuf: [*c]u8, cbBuf: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDetailedConnectionStatus"}), .{ hConn, pszBuf, cbBuf, }, .{ "hConn", "pszBuf", "cbBuf", }, @TypeOf(S.GetDetailedConnectionStatus));
    }
    comptime { @export(GetDetailedConnectionStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus", .linkage = .Strong }); }
    pub fn GetListenSocketAddress(hSocket: t.HSteamListenSocket, address: [*c]t.SteamNetworkingIPAddr, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetListenSocketAddress"}), .{ hSocket, address, }, .{ "hSocket", "address", }, @TypeOf(S.GetListenSocketAddress));
    }
    comptime { @export(GetListenSocketAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress", .linkage = .Strong }); }
    pub fn CreateSocketPair(pOutConnection1: [*c]t.HSteamNetConnection, pOutConnection2: [*c]t.HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: [*c]const t.SteamNetworkingIdentity, pIdentity2: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateSocketPair"}), .{ pOutConnection1, pOutConnection2, bUseNetworkLoopback, pIdentity1, pIdentity2, }, .{ "pOutConnection1", "pOutConnection2", "bUseNetworkLoopback", "pIdentity1", "pIdentity2", }, @TypeOf(S.CreateSocketPair));
    }
    comptime { @export(CreateSocketPair, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateSocketPair", .linkage = .Strong }); }
    pub fn ConfigureConnectionLanes(hConn: t.HSteamNetConnection, nNumLanes: i32, pLanePriorities: [*c]const i32, pLaneWeights: [*c]const t.uint16, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConfigureConnectionLanes"}), .{ hConn, nNumLanes, pLanePriorities, pLaneWeights, }, .{ "hConn", "nNumLanes", "pLanePriorities", "pLaneWeights", }, @TypeOf(S.ConfigureConnectionLanes));
    }
    comptime { @export(ConfigureConnectionLanes, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes", .linkage = .Strong }); }
    pub fn GetIdentity(pIdentity: [*c]t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIdentity"}), .{ pIdentity, }, .{ "pIdentity", }, @TypeOf(S.GetIdentity));
    }
    comptime { @export(GetIdentity, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetIdentity", .linkage = .Strong }); }
    pub fn InitAuthentication() callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitAuthentication"}), .{ }, .{ }, @TypeOf(S.InitAuthentication));
    }
    comptime { @export(InitAuthentication, .{ .name = "SteamAPI_ISteamNetworkingSockets_InitAuthentication", .linkage = .Strong }); }
    pub fn GetAuthenticationStatus(pDetails: [*c]t.SteamNetAuthenticationStatus_t, ) callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthenticationStatus"}), .{ pDetails, }, .{ "pDetails", }, @TypeOf(S.GetAuthenticationStatus));
    }
    comptime { @export(GetAuthenticationStatus, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus", .linkage = .Strong }); }
    pub fn CreatePollGroup() callconv(.C) t.HSteamNetPollGroup {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreatePollGroup"}), .{ }, .{ }, @TypeOf(S.CreatePollGroup));
    }
    comptime { @export(CreatePollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreatePollGroup", .linkage = .Strong }); }
    pub fn DestroyPollGroup(hPollGroup: t.HSteamNetPollGroup, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyPollGroup"}), .{ hPollGroup, }, .{ "hPollGroup", }, @TypeOf(S.DestroyPollGroup));
    }
    comptime { @export(DestroyPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_DestroyPollGroup", .linkage = .Strong }); }
    pub fn SetConnectionPollGroup(hConn: t.HSteamNetConnection, hPollGroup: t.HSteamNetPollGroup, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionPollGroup"}), .{ hConn, hPollGroup, }, .{ "hConn", "hPollGroup", }, @TypeOf(S.SetConnectionPollGroup));
    }
    comptime { @export(SetConnectionPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup", .linkage = .Strong }); }
    pub fn ReceiveMessagesOnPollGroup(hPollGroup: t.HSteamNetPollGroup, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnPollGroup"}), .{ hPollGroup, ppOutMessages, nMaxMessages, }, .{ "hPollGroup", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnPollGroup));
    }
    comptime { @export(ReceiveMessagesOnPollGroup, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup", .linkage = .Strong }); }
    pub fn ReceivedRelayAuthTicket(pvTicket: ?*const anyopaque, cbTicket: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceivedRelayAuthTicket"}), .{ pvTicket, cbTicket, pOutParsedTicket, }, .{ "pvTicket", "cbTicket", "pOutParsedTicket", }, @TypeOf(S.ReceivedRelayAuthTicket));
    }
    comptime { @export(ReceivedRelayAuthTicket, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket", .linkage = .Strong }); }
    pub fn FindRelayAuthTicketForServer(identityGameServer: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindRelayAuthTicketForServer"}), .{ identityGameServer, nRemoteVirtualPort, pOutParsedTicket, }, .{ "identityGameServer", "nRemoteVirtualPort", "pOutParsedTicket", }, @TypeOf(S.FindRelayAuthTicketForServer));
    }
    comptime { @export(FindRelayAuthTicketForServer, .{ .name = "SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer", .linkage = .Strong }); }
    pub fn ConnectToHostedDedicatedServer(identityTarget: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectToHostedDedicatedServer"}), .{ identityTarget, nRemoteVirtualPort, nOptions, pOptions, }, .{ "identityTarget", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectToHostedDedicatedServer));
    }
    comptime { @export(ConnectToHostedDedicatedServer, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer", .linkage = .Strong }); }
    pub fn GetHostedDedicatedServerPort() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerPort"}), .{ }, .{ }, @TypeOf(S.GetHostedDedicatedServerPort));
    }
    comptime { @export(GetHostedDedicatedServerPort, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort", .linkage = .Strong }); }
    pub fn GetHostedDedicatedServerPOPID() callconv(.C) t.SteamNetworkingPOPID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerPOPID"}), .{ }, .{ }, @TypeOf(S.GetHostedDedicatedServerPOPID));
    }
    comptime { @export(GetHostedDedicatedServerPOPID, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID", .linkage = .Strong }); }
    pub fn GetHostedDedicatedServerAddress(pRouting: [*c]t.SteamDatagramHostedAddress, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerAddress"}), .{ pRouting, }, .{ "pRouting", }, @TypeOf(S.GetHostedDedicatedServerAddress));
    }
    comptime { @export(GetHostedDedicatedServerAddress, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress", .linkage = .Strong }); }
    pub fn CreateHostedDedicatedServerListenSocket(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateHostedDedicatedServerListenSocket"}), .{ nLocalVirtualPort, nOptions, pOptions, }, .{ "nLocalVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.CreateHostedDedicatedServerListenSocket));
    }
    comptime { @export(CreateHostedDedicatedServerListenSocket, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket", .linkage = .Strong }); }
    pub fn GetGameCoordinatorServerLogin(pLoginInfo: [*c]t.SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: [*c]i32, pBlob: ?*anyopaque, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameCoordinatorServerLogin"}), .{ pLoginInfo, pcbSignedBlob, pBlob, }, .{ "pLoginInfo", "pcbSignedBlob", "pBlob", }, @TypeOf(S.GetGameCoordinatorServerLogin));
    }
    comptime { @export(GetGameCoordinatorServerLogin, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin", .linkage = .Strong }); }
    pub fn ConnectP2PCustomSignaling(pSignaling: [*c]t.ISteamNetworkingConnectionSignaling, pPeerIdentity: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectP2PCustomSignaling"}), .{ pSignaling, pPeerIdentity, nRemoteVirtualPort, nOptions, pOptions, }, .{ "pSignaling", "pPeerIdentity", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectP2PCustomSignaling));
    }
    comptime { @export(ConnectP2PCustomSignaling, .{ .name = "SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling", .linkage = .Strong }); }
    pub fn ReceivedP2PCustomSignal(pMsg: ?*const anyopaque, cbMsg: i32, pContext: [*c]t.ISteamNetworkingSignalingRecvContext, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceivedP2PCustomSignal"}), .{ pMsg, cbMsg, pContext, }, .{ "pMsg", "cbMsg", "pContext", }, @TypeOf(S.ReceivedP2PCustomSignal));
    }
    comptime { @export(ReceivedP2PCustomSignal, .{ .name = "SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal", .linkage = .Strong }); }
    pub fn GetCertificateRequest(pcbBlob: [*c]i32, pBlob: ?*anyopaque, errMsg: [*c]t.SteamNetworkingErrMsg, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCertificateRequest"}), .{ pcbBlob, pBlob, errMsg, }, .{ "pcbBlob", "pBlob", "errMsg", }, @TypeOf(S.GetCertificateRequest));
    }
    comptime { @export(GetCertificateRequest, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetCertificateRequest", .linkage = .Strong }); }
    pub fn SetCertificate(pCertificate: ?*const anyopaque, cbCertificate: i32, errMsg: [*c]t.SteamNetworkingErrMsg, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCertificate"}), .{ pCertificate, cbCertificate, errMsg, }, .{ "pCertificate", "cbCertificate", "errMsg", }, @TypeOf(S.SetCertificate));
    }
    comptime { @export(SetCertificate, .{ .name = "SteamAPI_ISteamNetworkingSockets_SetCertificate", .linkage = .Strong }); }
    pub fn ResetIdentity(pIdentity: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetIdentity"}), .{ pIdentity, }, .{ "pIdentity", }, @TypeOf(S.ResetIdentity));
    }
    comptime { @export(ResetIdentity, .{ .name = "SteamAPI_ISteamNetworkingSockets_ResetIdentity", .linkage = .Strong }); }
    pub fn RunCallbacks() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunCallbacks"}), .{ }, .{ }, @TypeOf(S.RunCallbacks));
    }
    comptime { @export(RunCallbacks, .{ .name = "SteamAPI_ISteamNetworkingSockets_RunCallbacks", .linkage = .Strong }); }
    pub fn BeginAsyncRequestFakeIP(nNumPorts: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAsyncRequestFakeIP"}), .{ nNumPorts, }, .{ "nNumPorts", }, @TypeOf(S.BeginAsyncRequestFakeIP));
    }
    comptime { @export(BeginAsyncRequestFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP", .linkage = .Strong }); }
    pub fn GetFakeIP(idxFirstPort: i32, pInfo: [*c]t.SteamNetworkingFakeIPResult_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFakeIP"}), .{ idxFirstPort, pInfo, }, .{ "idxFirstPort", "pInfo", }, @TypeOf(S.GetFakeIP));
    }
    comptime { @export(GetFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetFakeIP", .linkage = .Strong }); }
    pub fn CreateListenSocketP2PFakeIP(idxFakePort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketP2PFakeIP"}), .{ idxFakePort, nOptions, pOptions, }, .{ "idxFakePort", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketP2PFakeIP));
    }
    comptime { @export(CreateListenSocketP2PFakeIP, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP", .linkage = .Strong }); }
    pub fn GetRemoteFakeIPForConnection(hConn: t.HSteamNetConnection, pOutAddr: [*c]t.SteamNetworkingIPAddr, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRemoteFakeIPForConnection"}), .{ hConn, pOutAddr, }, .{ "hConn", "pOutAddr", }, @TypeOf(S.GetRemoteFakeIPForConnection));
    }
    comptime { @export(GetRemoteFakeIPForConnection, .{ .name = "SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection", .linkage = .Strong }); }
    pub fn CreateFakeUDPPort(idxFakeServerPort: i32, ) callconv(.C) [*c]t.ISteamNetworkingFakeUDPPort {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateFakeUDPPort"}), .{ idxFakeServerPort, }, .{ "idxFakeServerPort", }, @TypeOf(S.CreateFakeUDPPort));
    }
    comptime { @export(CreateFakeUDPPort, .{ .name = "SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingSockets; }
pub const SteamNetworkingSockets_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingSockets_SteamAPI"};
    pub fn v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
    comptime { @export(v012, .{ .name = "SteamAPI_SteamNetworkingSockets_SteamAPI_v012", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingSockets_SteamAPI; }
pub const SteamGameServerNetworkingSockets_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworkingSockets_SteamAPI"};
    pub fn v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
    comptime { @export(v012, .{ .name = "SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerNetworkingSockets_SteamAPI; }
pub const ISteamNetworkingUtils = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingUtils"};
    _: u8 = 1,
    pub const version = "SteamNetworkingUtils004";
    pub fn AllocateMessage(cbAllocateBuffer: i32, ) callconv(.C) [*c]t.SteamNetworkingMessage_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllocateMessage"}), .{ cbAllocateBuffer, }, .{ "cbAllocateBuffer", }, @TypeOf(S.AllocateMessage));
    }
    comptime { @export(AllocateMessage, .{ .name = "SteamAPI_ISteamNetworkingUtils_AllocateMessage", .linkage = .Strong }); }
    pub fn InitRelayNetworkAccess() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitRelayNetworkAccess"}), .{ }, .{ }, @TypeOf(S.InitRelayNetworkAccess));
    }
    comptime { @export(InitRelayNetworkAccess, .{ .name = "SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess", .linkage = .Strong }); }
    pub fn GetRelayNetworkStatus(pDetails: [*c]t.SteamRelayNetworkStatus_t, ) callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRelayNetworkStatus"}), .{ pDetails, }, .{ "pDetails", }, @TypeOf(S.GetRelayNetworkStatus));
    }
    comptime { @export(GetRelayNetworkStatus, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus", .linkage = .Strong }); }
    pub fn GetLocalPingLocation(result: [*c]t.SteamNetworkPingLocation_t, ) callconv(.C) f32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalPingLocation"}), .{ result, }, .{ "result", }, @TypeOf(S.GetLocalPingLocation));
    }
    comptime { @export(GetLocalPingLocation, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation", .linkage = .Strong }); }
    pub fn EstimatePingTimeBetweenTwoLocations(location1: [*c]const t.SteamNetworkPingLocation_t, location2: [*c]const t.SteamNetworkPingLocation_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EstimatePingTimeBetweenTwoLocations"}), .{ location1, location2, }, .{ "location1", "location2", }, @TypeOf(S.EstimatePingTimeBetweenTwoLocations));
    }
    comptime { @export(EstimatePingTimeBetweenTwoLocations, .{ .name = "SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations", .linkage = .Strong }); }
    pub fn EstimatePingTimeFromLocalHost(remoteLocation: [*c]const t.SteamNetworkPingLocation_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EstimatePingTimeFromLocalHost"}), .{ remoteLocation, }, .{ "remoteLocation", }, @TypeOf(S.EstimatePingTimeFromLocalHost));
    }
    comptime { @export(EstimatePingTimeFromLocalHost, .{ .name = "SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost", .linkage = .Strong }); }
    pub fn ConvertPingLocationToString(location: [*c]const t.SteamNetworkPingLocation_t, pszBuf: [*c]u8, cchBufSize: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConvertPingLocationToString"}), .{ location, pszBuf, cchBufSize, }, .{ "location", "pszBuf", "cchBufSize", }, @TypeOf(S.ConvertPingLocationToString));
    }
    comptime { @export(ConvertPingLocationToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString", .linkage = .Strong }); }
    pub fn ParsePingLocationString(pszString: [*c]const u8, result: [*c]t.SteamNetworkPingLocation_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ParsePingLocationString"}), .{ pszString, result, }, .{ "pszString", "result", }, @TypeOf(S.ParsePingLocationString));
    }
    comptime { @export(ParsePingLocationString, .{ .name = "SteamAPI_ISteamNetworkingUtils_ParsePingLocationString", .linkage = .Strong }); }
    pub fn CheckPingDataUpToDate(flMaxAgeSeconds: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckPingDataUpToDate"}), .{ flMaxAgeSeconds, }, .{ "flMaxAgeSeconds", }, @TypeOf(S.CheckPingDataUpToDate));
    }
    comptime { @export(CheckPingDataUpToDate, .{ .name = "SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate", .linkage = .Strong }); }
    pub fn GetPingToDataCenter(popID: t.SteamNetworkingPOPID, pViaRelayPoP: [*c]t.SteamNetworkingPOPID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPingToDataCenter"}), .{ popID, pViaRelayPoP, }, .{ "popID", "pViaRelayPoP", }, @TypeOf(S.GetPingToDataCenter));
    }
    comptime { @export(GetPingToDataCenter, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter", .linkage = .Strong }); }
    pub fn GetDirectPingToPOP(popID: t.SteamNetworkingPOPID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDirectPingToPOP"}), .{ popID, }, .{ "popID", }, @TypeOf(S.GetDirectPingToPOP));
    }
    comptime { @export(GetDirectPingToPOP, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP", .linkage = .Strong }); }
    pub fn GetPOPCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPOPCount"}), .{ }, .{ }, @TypeOf(S.GetPOPCount));
    }
    comptime { @export(GetPOPCount, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPOPCount", .linkage = .Strong }); }
    pub fn GetPOPList(list: [*c]t.SteamNetworkingPOPID, nListSz: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPOPList"}), .{ list, nListSz, }, .{ "list", "nListSz", }, @TypeOf(S.GetPOPList));
    }
    comptime { @export(GetPOPList, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetPOPList", .linkage = .Strong }); }
    pub fn GetLocalTimestamp() callconv(.C) t.SteamNetworkingMicroseconds {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalTimestamp"}), .{ }, .{ }, @TypeOf(S.GetLocalTimestamp));
    }
    comptime { @export(GetLocalTimestamp, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp", .linkage = .Strong }); }
    pub fn SetDebugOutputFunction(eDetailLevel: t.ESteamNetworkingSocketsDebugOutputType, pfnFunc: t.FSteamNetworkingSocketsDebugOutput, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDebugOutputFunction"}), .{ eDetailLevel, pfnFunc, }, .{ "eDetailLevel", "pfnFunc", }, @TypeOf(S.SetDebugOutputFunction));
    }
    comptime { @export(SetDebugOutputFunction, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction", .linkage = .Strong }); }
    pub fn IsFakeIPv4(nIPv4: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFakeIPv4"}), .{ nIPv4, }, .{ "nIPv4", }, @TypeOf(S.IsFakeIPv4));
    }
    comptime { @export(IsFakeIPv4, .{ .name = "SteamAPI_ISteamNetworkingUtils_IsFakeIPv4", .linkage = .Strong }); }
    pub fn GetIPv4FakeIPType(nIPv4: t.uint32, ) callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv4FakeIPType"}), .{ nIPv4, }, .{ "nIPv4", }, @TypeOf(S.GetIPv4FakeIPType));
    }
    comptime { @export(GetIPv4FakeIPType, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType", .linkage = .Strong }); }
    pub fn GetRealIdentityForFakeIP(fakeIP: [*c]const t.SteamNetworkingIPAddr, pOutRealIdentity: [*c]t.SteamNetworkingIdentity, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRealIdentityForFakeIP"}), .{ fakeIP, pOutRealIdentity, }, .{ "fakeIP", "pOutRealIdentity", }, @TypeOf(S.GetRealIdentityForFakeIP));
    }
    comptime { @export(GetRealIdentityForFakeIP, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP", .linkage = .Strong }); }
    pub fn SetGlobalConfigValueInt32(eValue: t.ESteamNetworkingConfigValue, val: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueInt32"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueInt32));
    }
    comptime { @export(SetGlobalConfigValueInt32, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32", .linkage = .Strong }); }
    pub fn SetGlobalConfigValueFloat(eValue: t.ESteamNetworkingConfigValue, val: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueFloat"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueFloat));
    }
    comptime { @export(SetGlobalConfigValueFloat, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat", .linkage = .Strong }); }
    pub fn SetGlobalConfigValueString(eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueString"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueString));
    }
    comptime { @export(SetGlobalConfigValueString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString", .linkage = .Strong }); }
    pub fn SetGlobalConfigValuePtr(eValue: t.ESteamNetworkingConfigValue, val: ?*anyopaque, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValuePtr"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValuePtr));
    }
    comptime { @export(SetGlobalConfigValuePtr, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr", .linkage = .Strong }); }
    pub fn SetConnectionConfigValueInt32(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueInt32"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueInt32));
    }
    comptime { @export(SetConnectionConfigValueInt32, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32", .linkage = .Strong }); }
    pub fn SetConnectionConfigValueFloat(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueFloat"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueFloat));
    }
    comptime { @export(SetConnectionConfigValueFloat, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat", .linkage = .Strong }); }
    pub fn SetConnectionConfigValueString(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueString"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueString));
    }
    comptime { @export(SetConnectionConfigValueString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString", .linkage = .Strong }); }
    pub fn SetGlobalCallback_SteamNetConnectionStatusChanged(fnCallback: t.FnSteamNetConnectionStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamNetConnectionStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamNetConnectionStatusChanged));
    }
    comptime { @export(SetGlobalCallback_SteamNetConnectionStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged", .linkage = .Strong }); }
    pub fn SetGlobalCallback_SteamNetAuthenticationStatusChanged(fnCallback: t.FnSteamNetAuthenticationStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamNetAuthenticationStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamNetAuthenticationStatusChanged));
    }
    comptime { @export(SetGlobalCallback_SteamNetAuthenticationStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged", .linkage = .Strong }); }
    pub fn SetGlobalCallback_SteamRelayNetworkStatusChanged(fnCallback: t.FnSteamRelayNetworkStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamRelayNetworkStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamRelayNetworkStatusChanged));
    }
    comptime { @export(SetGlobalCallback_SteamRelayNetworkStatusChanged, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged", .linkage = .Strong }); }
    pub fn SetGlobalCallback_FakeIPResult(fnCallback: t.FnSteamNetworkingFakeIPResult, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_FakeIPResult"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_FakeIPResult));
    }
    comptime { @export(SetGlobalCallback_FakeIPResult, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult", .linkage = .Strong }); }
    pub fn SetGlobalCallback_MessagesSessionRequest(fnCallback: t.FnSteamNetworkingMessagesSessionRequest, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_MessagesSessionRequest"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_MessagesSessionRequest));
    }
    comptime { @export(SetGlobalCallback_MessagesSessionRequest, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest", .linkage = .Strong }); }
    pub fn SetGlobalCallback_MessagesSessionFailed(fnCallback: t.FnSteamNetworkingMessagesSessionFailed, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_MessagesSessionFailed"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_MessagesSessionFailed));
    }
    comptime { @export(SetGlobalCallback_MessagesSessionFailed, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed", .linkage = .Strong }); }
    pub fn SetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, eDataType: t.ESteamNetworkingConfigDataType, pArg: ?*const anyopaque, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConfigValue"}), .{ eValue, eScopeType, scopeObj, eDataType, pArg, }, .{ "eValue", "eScopeType", "scopeObj", "eDataType", "pArg", }, @TypeOf(S.SetConfigValue));
    }
    comptime { @export(SetConfigValue, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConfigValue", .linkage = .Strong }); }
    pub fn SetConfigValueStruct(opt: [*c]const t.SteamNetworkingConfigValue_t, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConfigValueStruct"}), .{ opt, eScopeType, scopeObj, }, .{ "opt", "eScopeType", "scopeObj", }, @TypeOf(S.SetConfigValueStruct));
    }
    comptime { @export(SetConfigValueStruct, .{ .name = "SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct", .linkage = .Strong }); }
    pub fn GetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pResult: ?*anyopaque, cbResult: [*c]t.size_t, ) callconv(.C) t.ESteamNetworkingGetConfigValueResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConfigValue"}), .{ eValue, eScopeType, scopeObj, pOutDataType, pResult, cbResult, }, .{ "eValue", "eScopeType", "scopeObj", "pOutDataType", "pResult", "cbResult", }, @TypeOf(S.GetConfigValue));
    }
    comptime { @export(GetConfigValue, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetConfigValue", .linkage = .Strong }); }
    pub fn GetConfigValueInfo(eValue: t.ESteamNetworkingConfigValue, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pOutScope: [*c]t.ESteamNetworkingConfigScope, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConfigValueInfo"}), .{ eValue, pOutDataType, pOutScope, }, .{ "eValue", "pOutDataType", "pOutScope", }, @TypeOf(S.GetConfigValueInfo));
    }
    comptime { @export(GetConfigValueInfo, .{ .name = "SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo", .linkage = .Strong }); }
    pub fn IterateGenericEditableConfigValues(eCurrent: t.ESteamNetworkingConfigValue, bEnumerateDevVars: bool, ) callconv(.C) t.ESteamNetworkingConfigValue {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IterateGenericEditableConfigValues"}), .{ eCurrent, bEnumerateDevVars, }, .{ "eCurrent", "bEnumerateDevVars", }, @TypeOf(S.IterateGenericEditableConfigValues));
    }
    comptime { @export(IterateGenericEditableConfigValues, .{ .name = "SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues", .linkage = .Strong }); }
    pub fn SteamNetworkingIPAddr_ToString(addr: [*c]const t.SteamNetworkingIPAddr, buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_ToString"}), .{ addr, buf, cbBuf, bWithPort, }, .{ "addr", "buf", "cbBuf", "bWithPort", }, @TypeOf(S.SteamNetworkingIPAddr_ToString));
    }
    comptime { @export(SteamNetworkingIPAddr_ToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString", .linkage = .Strong }); }
    pub fn SteamNetworkingIPAddr_ParseString(pAddr: [*c]t.SteamNetworkingIPAddr, pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_ParseString"}), .{ pAddr, pszStr, }, .{ "pAddr", "pszStr", }, @TypeOf(S.SteamNetworkingIPAddr_ParseString));
    }
    comptime { @export(SteamNetworkingIPAddr_ParseString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString", .linkage = .Strong }); }
    pub fn SteamNetworkingIPAddr_GetFakeIPType(addr: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_GetFakeIPType"}), .{ addr, }, .{ "addr", }, @TypeOf(S.SteamNetworkingIPAddr_GetFakeIPType));
    }
    comptime { @export(SteamNetworkingIPAddr_GetFakeIPType, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType", .linkage = .Strong }); }
    pub fn SteamNetworkingIdentity_ToString(identity: [*c]const t.SteamNetworkingIdentity, buf: [*c]u8, cbBuf: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIdentity_ToString"}), .{ identity, buf, cbBuf, }, .{ "identity", "buf", "cbBuf", }, @TypeOf(S.SteamNetworkingIdentity_ToString));
    }
    comptime { @export(SteamNetworkingIdentity_ToString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString", .linkage = .Strong }); }
    pub fn SteamNetworkingIdentity_ParseString(pIdentity: [*c]t.SteamNetworkingIdentity, pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIdentity_ParseString"}), .{ pIdentity, pszStr, }, .{ "pIdentity", "pszStr", }, @TypeOf(S.SteamNetworkingIdentity_ParseString));
    }
    comptime { @export(SteamNetworkingIdentity_ParseString, .{ .name = "SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingUtils; }
pub const SteamNetworkingUtils_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingUtils_SteamAPI"};
    pub fn v004() callconv(.C) [*c]t.ISteamNetworkingUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v004"}), .{ }, .{ }, @TypeOf(S.v004));
    }
    comptime { @export(v004, .{ .name = "SteamAPI_SteamNetworkingUtils_SteamAPI_v004", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingUtils_SteamAPI; }
pub const ISteamGameServer = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameServer"};
    _: u8 = 1,
    pub const version = "SteamGameServer014";
    pub fn SetProduct(pszProduct: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetProduct"}), .{ pszProduct, }, .{ "pszProduct", }, @TypeOf(S.SetProduct));
    }
    comptime { @export(SetProduct, .{ .name = "SteamAPI_ISteamGameServer_SetProduct", .linkage = .Strong }); }
    pub fn SetGameDescription(pszGameDescription: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameDescription"}), .{ pszGameDescription, }, .{ "pszGameDescription", }, @TypeOf(S.SetGameDescription));
    }
    comptime { @export(SetGameDescription, .{ .name = "SteamAPI_ISteamGameServer_SetGameDescription", .linkage = .Strong }); }
    pub fn SetModDir(pszModDir: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetModDir"}), .{ pszModDir, }, .{ "pszModDir", }, @TypeOf(S.SetModDir));
    }
    comptime { @export(SetModDir, .{ .name = "SteamAPI_ISteamGameServer_SetModDir", .linkage = .Strong }); }
    pub fn SetDedicatedServer(bDedicated: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDedicatedServer"}), .{ bDedicated, }, .{ "bDedicated", }, @TypeOf(S.SetDedicatedServer));
    }
    comptime { @export(SetDedicatedServer, .{ .name = "SteamAPI_ISteamGameServer_SetDedicatedServer", .linkage = .Strong }); }
    pub fn LogOn(pszToken: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOn"}), .{ pszToken, }, .{ "pszToken", }, @TypeOf(S.LogOn));
    }
    comptime { @export(LogOn, .{ .name = "SteamAPI_ISteamGameServer_LogOn", .linkage = .Strong }); }
    pub fn LogOnAnonymous() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOnAnonymous"}), .{ }, .{ }, @TypeOf(S.LogOnAnonymous));
    }
    comptime { @export(LogOnAnonymous, .{ .name = "SteamAPI_ISteamGameServer_LogOnAnonymous", .linkage = .Strong }); }
    pub fn LogOff() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOff"}), .{ }, .{ }, @TypeOf(S.LogOff));
    }
    comptime { @export(LogOff, .{ .name = "SteamAPI_ISteamGameServer_LogOff", .linkage = .Strong }); }
    pub fn BLoggedOn() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BLoggedOn"}), .{ }, .{ }, @TypeOf(S.BLoggedOn));
    }
    comptime { @export(BLoggedOn, .{ .name = "SteamAPI_ISteamGameServer_BLoggedOn", .linkage = .Strong }); }
    pub fn BSecure() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSecure"}), .{ }, .{ }, @TypeOf(S.BSecure));
    }
    comptime { @export(BSecure, .{ .name = "SteamAPI_ISteamGameServer_BSecure", .linkage = .Strong }); }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID"}), .{ }, .{ }, @TypeOf(S.GetSteamID));
    }
    comptime { @export(GetSteamID, .{ .name = "SteamAPI_ISteamGameServer_GetSteamID", .linkage = .Strong }); }
    pub fn WasRestartRequested() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"WasRestartRequested"}), .{ }, .{ }, @TypeOf(S.WasRestartRequested));
    }
    comptime { @export(WasRestartRequested, .{ .name = "SteamAPI_ISteamGameServer_WasRestartRequested", .linkage = .Strong }); }
    pub fn SetMaxPlayerCount(cPlayersMax: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMaxPlayerCount"}), .{ cPlayersMax, }, .{ "cPlayersMax", }, @TypeOf(S.SetMaxPlayerCount));
    }
    comptime { @export(SetMaxPlayerCount, .{ .name = "SteamAPI_ISteamGameServer_SetMaxPlayerCount", .linkage = .Strong }); }
    pub fn SetBotPlayerCount(cBotplayers: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetBotPlayerCount"}), .{ cBotplayers, }, .{ "cBotplayers", }, @TypeOf(S.SetBotPlayerCount));
    }
    comptime { @export(SetBotPlayerCount, .{ .name = "SteamAPI_ISteamGameServer_SetBotPlayerCount", .linkage = .Strong }); }
    pub fn SetServerName(pszServerName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetServerName"}), .{ pszServerName, }, .{ "pszServerName", }, @TypeOf(S.SetServerName));
    }
    comptime { @export(SetServerName, .{ .name = "SteamAPI_ISteamGameServer_SetServerName", .linkage = .Strong }); }
    pub fn SetMapName(pszMapName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMapName"}), .{ pszMapName, }, .{ "pszMapName", }, @TypeOf(S.SetMapName));
    }
    comptime { @export(SetMapName, .{ .name = "SteamAPI_ISteamGameServer_SetMapName", .linkage = .Strong }); }
    pub fn SetPasswordProtected(bPasswordProtected: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPasswordProtected"}), .{ bPasswordProtected, }, .{ "bPasswordProtected", }, @TypeOf(S.SetPasswordProtected));
    }
    comptime { @export(SetPasswordProtected, .{ .name = "SteamAPI_ISteamGameServer_SetPasswordProtected", .linkage = .Strong }); }
    pub fn SetSpectatorPort(unSpectatorPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSpectatorPort"}), .{ unSpectatorPort, }, .{ "unSpectatorPort", }, @TypeOf(S.SetSpectatorPort));
    }
    comptime { @export(SetSpectatorPort, .{ .name = "SteamAPI_ISteamGameServer_SetSpectatorPort", .linkage = .Strong }); }
    pub fn SetSpectatorServerName(pszSpectatorServerName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSpectatorServerName"}), .{ pszSpectatorServerName, }, .{ "pszSpectatorServerName", }, @TypeOf(S.SetSpectatorServerName));
    }
    comptime { @export(SetSpectatorServerName, .{ .name = "SteamAPI_ISteamGameServer_SetSpectatorServerName", .linkage = .Strong }); }
    pub fn ClearAllKeyValues() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearAllKeyValues"}), .{ }, .{ }, @TypeOf(S.ClearAllKeyValues));
    }
    comptime { @export(ClearAllKeyValues, .{ .name = "SteamAPI_ISteamGameServer_ClearAllKeyValues", .linkage = .Strong }); }
    pub fn SetKeyValue(pKey: [*c]const u8, pValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetKeyValue"}), .{ pKey, pValue, }, .{ "pKey", "pValue", }, @TypeOf(S.SetKeyValue));
    }
    comptime { @export(SetKeyValue, .{ .name = "SteamAPI_ISteamGameServer_SetKeyValue", .linkage = .Strong }); }
    pub fn SetGameTags(pchGameTags: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameTags"}), .{ pchGameTags, }, .{ "pchGameTags", }, @TypeOf(S.SetGameTags));
    }
    comptime { @export(SetGameTags, .{ .name = "SteamAPI_ISteamGameServer_SetGameTags", .linkage = .Strong }); }
    pub fn SetGameData(pchGameData: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameData"}), .{ pchGameData, }, .{ "pchGameData", }, @TypeOf(S.SetGameData));
    }
    comptime { @export(SetGameData, .{ .name = "SteamAPI_ISteamGameServer_SetGameData", .linkage = .Strong }); }
    pub fn SetRegion(pszRegion: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRegion"}), .{ pszRegion, }, .{ "pszRegion", }, @TypeOf(S.SetRegion));
    }
    comptime { @export(SetRegion, .{ .name = "SteamAPI_ISteamGameServer_SetRegion", .linkage = .Strong }); }
    pub fn SetAdvertiseServerActive(bActive: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAdvertiseServerActive"}), .{ bActive, }, .{ "bActive", }, @TypeOf(S.SetAdvertiseServerActive));
    }
    comptime { @export(SetAdvertiseServerActive, .{ .name = "SteamAPI_ISteamGameServer_SetAdvertiseServerActive", .linkage = .Strong }); }
    pub fn GetAuthSessionTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) t.HAuthTicket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthSessionTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetAuthSessionTicket));
    }
    comptime { @export(GetAuthSessionTicket, .{ .name = "SteamAPI_ISteamGameServer_GetAuthSessionTicket", .linkage = .Strong }); }
    pub fn BeginAuthSession(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID, ) callconv(.C) t.EBeginAuthSessionResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAuthSession"}), .{ pAuthTicket, cbAuthTicket, steamID, }, .{ "pAuthTicket", "cbAuthTicket", "steamID", }, @TypeOf(S.BeginAuthSession));
    }
    comptime { @export(BeginAuthSession, .{ .name = "SteamAPI_ISteamGameServer_BeginAuthSession", .linkage = .Strong }); }
    pub fn EndAuthSession(steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndAuthSession"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.EndAuthSession));
    }
    comptime { @export(EndAuthSession, .{ .name = "SteamAPI_ISteamGameServer_EndAuthSession", .linkage = .Strong }); }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelAuthTicket"}), .{ hAuthTicket, }, .{ "hAuthTicket", }, @TypeOf(S.CancelAuthTicket));
    }
    comptime { @export(CancelAuthTicket, .{ .name = "SteamAPI_ISteamGameServer_CancelAuthTicket", .linkage = .Strong }); }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t, ) callconv(.C) t.EUserHasLicenseForAppResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UserHasLicenseForApp"}), .{ steamID, appID, }, .{ "steamID", "appID", }, @TypeOf(S.UserHasLicenseForApp));
    }
    comptime { @export(UserHasLicenseForApp, .{ .name = "SteamAPI_ISteamGameServer_UserHasLicenseForApp", .linkage = .Strong }); }
    pub fn RequestUserGroupStatus(steamIDUser: t.CSteamID, steamIDGroup: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserGroupStatus"}), .{ steamIDUser, steamIDGroup, }, .{ "steamIDUser", "steamIDGroup", }, @TypeOf(S.RequestUserGroupStatus));
    }
    comptime { @export(RequestUserGroupStatus, .{ .name = "SteamAPI_ISteamGameServer_RequestUserGroupStatus", .linkage = .Strong }); }
    pub fn GetGameplayStats() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameplayStats"}), .{ }, .{ }, @TypeOf(S.GetGameplayStats));
    }
    comptime { @export(GetGameplayStats, .{ .name = "SteamAPI_ISteamGameServer_GetGameplayStats", .linkage = .Strong }); }
    pub fn GetServerReputation() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerReputation"}), .{ }, .{ }, @TypeOf(S.GetServerReputation));
    }
    comptime { @export(GetServerReputation, .{ .name = "SteamAPI_ISteamGameServer_GetServerReputation", .linkage = .Strong }); }
    pub fn GetPublicIP() callconv(.C) t.SteamIPAddress_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublicIP"}), .{ }, .{ }, @TypeOf(S.GetPublicIP));
    }
    comptime { @export(GetPublicIP, .{ .name = "SteamAPI_ISteamGameServer_GetPublicIP", .linkage = .Strong }); }
    pub fn HandleIncomingPacket(pData: ?*const anyopaque, cbData: i32, srcIP: t.uint32, srcPort: t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HandleIncomingPacket"}), .{ pData, cbData, srcIP, srcPort, }, .{ "pData", "cbData", "srcIP", "srcPort", }, @TypeOf(S.HandleIncomingPacket));
    }
    comptime { @export(HandleIncomingPacket, .{ .name = "SteamAPI_ISteamGameServer_HandleIncomingPacket", .linkage = .Strong }); }
    pub fn GetNextOutgoingPacket(pOut: ?*anyopaque, cbMaxOut: i32, pNetAdr: [*c]t.uint32, pPort: [*c]t.uint16, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNextOutgoingPacket"}), .{ pOut, cbMaxOut, pNetAdr, pPort, }, .{ "pOut", "cbMaxOut", "pNetAdr", "pPort", }, @TypeOf(S.GetNextOutgoingPacket));
    }
    comptime { @export(GetNextOutgoingPacket, .{ .name = "SteamAPI_ISteamGameServer_GetNextOutgoingPacket", .linkage = .Strong }); }
    pub fn AssociateWithClan(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AssociateWithClan"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.AssociateWithClan));
    }
    comptime { @export(AssociateWithClan, .{ .name = "SteamAPI_ISteamGameServer_AssociateWithClan", .linkage = .Strong }); }
    pub fn ComputeNewPlayerCompatibility(steamIDNewPlayer: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ComputeNewPlayerCompatibility"}), .{ steamIDNewPlayer, }, .{ "steamIDNewPlayer", }, @TypeOf(S.ComputeNewPlayerCompatibility));
    }
    comptime { @export(ComputeNewPlayerCompatibility, .{ .name = "SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility", .linkage = .Strong }); }
    pub fn SendUserConnectAndAuthenticate_DEPRECATED(unIPClient: t.uint32, pvAuthBlob: ?*const anyopaque, cubAuthBlobSize: t.uint32, pSteamIDUser: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendUserConnectAndAuthenticate_DEPRECATED"}), .{ unIPClient, pvAuthBlob, cubAuthBlobSize, pSteamIDUser, }, .{ "unIPClient", "pvAuthBlob", "cubAuthBlobSize", "pSteamIDUser", }, @TypeOf(S.SendUserConnectAndAuthenticate_DEPRECATED));
    }
    comptime { @export(SendUserConnectAndAuthenticate_DEPRECATED, .{ .name = "SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED", .linkage = .Strong }); }
    pub fn CreateUnauthenticatedUserConnection() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateUnauthenticatedUserConnection"}), .{ }, .{ }, @TypeOf(S.CreateUnauthenticatedUserConnection));
    }
    comptime { @export(CreateUnauthenticatedUserConnection, .{ .name = "SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection", .linkage = .Strong }); }
    pub fn SendUserDisconnect_DEPRECATED(steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendUserDisconnect_DEPRECATED"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.SendUserDisconnect_DEPRECATED));
    }
    comptime { @export(SendUserDisconnect_DEPRECATED, .{ .name = "SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED", .linkage = .Strong }); }
    pub fn BUpdateUserData(steamIDUser: t.CSteamID, pchPlayerName: [*c]const u8, uScore: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BUpdateUserData"}), .{ steamIDUser, pchPlayerName, uScore, }, .{ "steamIDUser", "pchPlayerName", "uScore", }, @TypeOf(S.BUpdateUserData));
    }
    comptime { @export(BUpdateUserData, .{ .name = "SteamAPI_ISteamGameServer_BUpdateUserData", .linkage = .Strong }); }
};
comptime { _ = ISteamGameServer; }
pub const SteamGameServer = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServer"};
    pub fn v014() callconv(.C) [*c]t.ISteamGameServer {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v014"}), .{ }, .{ }, @TypeOf(S.v014));
    }
    comptime { @export(v014, .{ .name = "SteamAPI_SteamGameServer_v014", .linkage = .Strong }); }
};
comptime { _ = SteamGameServer; }
pub const ISteamGameServerStats = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameServerStats"};
    _: u8 = 1,
    pub const version = "SteamGameServerStats001";
    pub fn RequestUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.RequestUserStats));
    }
    comptime { @export(RequestUserStats, .{ .name = "SteamAPI_ISteamGameServerStats_RequestUserStats", .linkage = .Strong }); }
    pub fn GetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatInt32"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatInt32));
    }
    comptime { @export(GetUserStatInt32, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserStatInt32", .linkage = .Strong }); }
    pub fn GetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatFloat"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatFloat));
    }
    comptime { @export(GetUserStatFloat, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserStatFloat", .linkage = .Strong }); }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievement"}), .{ steamIDUser, pchName, pbAchieved, }, .{ "steamIDUser", "pchName", "pbAchieved", }, @TypeOf(S.GetUserAchievement));
    }
    comptime { @export(GetUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_GetUserAchievement", .linkage = .Strong }); }
    pub fn SetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, nData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserStatInt32"}), .{ steamIDUser, pchName, nData, }, .{ "steamIDUser", "pchName", "nData", }, @TypeOf(S.SetUserStatInt32));
    }
    comptime { @export(SetUserStatInt32, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserStatInt32", .linkage = .Strong }); }
    pub fn SetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, fData: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserStatFloat"}), .{ steamIDUser, pchName, fData, }, .{ "steamIDUser", "pchName", "fData", }, @TypeOf(S.SetUserStatFloat));
    }
    comptime { @export(SetUserStatFloat, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserStatFloat", .linkage = .Strong }); }
    pub fn UpdateUserAvgRateStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateUserAvgRateStat"}), .{ steamIDUser, pchName, flCountThisSession, dSessionLength, }, .{ "steamIDUser", "pchName", "flCountThisSession", "dSessionLength", }, @TypeOf(S.UpdateUserAvgRateStat));
    }
    comptime { @export(UpdateUserAvgRateStat, .{ .name = "SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat", .linkage = .Strong }); }
    pub fn SetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserAchievement"}), .{ steamIDUser, pchName, }, .{ "steamIDUser", "pchName", }, @TypeOf(S.SetUserAchievement));
    }
    comptime { @export(SetUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_SetUserAchievement", .linkage = .Strong }); }
    pub fn ClearUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearUserAchievement"}), .{ steamIDUser, pchName, }, .{ "steamIDUser", "pchName", }, @TypeOf(S.ClearUserAchievement));
    }
    comptime { @export(ClearUserAchievement, .{ .name = "SteamAPI_ISteamGameServerStats_ClearUserAchievement", .linkage = .Strong }); }
    pub fn StoreUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StoreUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.StoreUserStats));
    }
    comptime { @export(StoreUserStats, .{ .name = "SteamAPI_ISteamGameServerStats_StoreUserStats", .linkage = .Strong }); }
};
comptime { _ = ISteamGameServerStats; }
pub const SteamGameServerStats = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerStats"};
    pub fn v001() callconv(.C) [*c]t.ISteamGameServerStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
    comptime { @export(v001, .{ .name = "SteamAPI_SteamGameServerStats_v001", .linkage = .Strong }); }
};
comptime { _ = SteamGameServerStats; }
pub const ISteamNetworkingFakeUDPPort = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingFakeUDPPort"};
    _: u8 = 1,
    pub fn DestroyFakeUDPPort() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyFakeUDPPort"}), .{ }, .{ }, @TypeOf(S.DestroyFakeUDPPort));
    }
    comptime { @export(DestroyFakeUDPPort, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort", .linkage = .Strong }); }
    pub fn SendMessageToFakeIP(remoteAddress: [*c]const t.SteamNetworkingIPAddr, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToFakeIP"}), .{ remoteAddress, pData, cbData, nSendFlags, }, .{ "remoteAddress", "pData", "cbData", "nSendFlags", }, @TypeOf(S.SendMessageToFakeIP));
    }
    comptime { @export(SendMessageToFakeIP, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP", .linkage = .Strong }); }
    pub fn ReceiveMessages(ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessages"}), .{ ppOutMessages, nMaxMessages, }, .{ "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessages));
    }
    comptime { @export(ReceiveMessages, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages", .linkage = .Strong }); }
    pub fn ScheduleCleanup(remoteAddress: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ScheduleCleanup"}), .{ remoteAddress, }, .{ "remoteAddress", }, @TypeOf(S.ScheduleCleanup));
    }
    comptime { @export(ScheduleCleanup, .{ .name = "SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup", .linkage = .Strong }); }
};
comptime { _ = ISteamNetworkingFakeUDPPort; }
