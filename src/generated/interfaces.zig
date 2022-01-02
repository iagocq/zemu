const t = @import("../steam_api.zig");
const p0 = t.p;
comptime { _ = ISteamClient; }
pub const ISteamClient = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamClient"};
    _: u8 = 1,
    pub fn CreateSteamPipe() callconv(.C) t.HSteamPipe {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateSteamPipe"}), .{ }, .{ }, @TypeOf(S.CreateSteamPipe));
    }
    comptime { @export(CreateSteamPipe, .{ .name = "kkeaemen", .linkage = .Strong }) ; }
    pub fn BReleaseSteamPipe(hSteamPipe: t.HSteamPipe, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BReleaseSteamPipe"}), .{ hSteamPipe, }, .{ "hSteamPipe", }, @TypeOf(S.BReleaseSteamPipe));
    }
    pub fn ConnectToGlobalUser(hSteamPipe: t.HSteamPipe, ) callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectToGlobalUser"}), .{ hSteamPipe, }, .{ "hSteamPipe", }, @TypeOf(S.ConnectToGlobalUser));
    }
    pub fn CreateLocalUser(phSteamPipe: [*c]t.HSteamPipe, eAccountType: t.EAccountType, ) callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateLocalUser"}), .{ phSteamPipe, eAccountType, }, .{ "phSteamPipe", "eAccountType", }, @TypeOf(S.CreateLocalUser));
    }
    pub fn ReleaseUser(hSteamPipe: t.HSteamPipe, hUser: t.HSteamUser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseUser"}), .{ hSteamPipe, hUser, }, .{ "hSteamPipe", "hUser", }, @TypeOf(S.ReleaseUser));
    }
    pub fn GetISteamUser(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUser"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUser));
    }
    pub fn GetISteamGameServer(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameServer {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameServer"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameServer));
    }
    pub fn SetLocalIPBinding(unIP: [*c]const t.SteamIPAddress_t, usPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLocalIPBinding"}), .{ unIP, usPort, }, .{ "unIP", "usPort", }, @TypeOf(S.SetLocalIPBinding));
    }
    pub fn GetISteamFriends(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamFriends {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamFriends"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamFriends));
    }
    pub fn GetISteamUtils(hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUtils"}), .{ hSteamPipe, pchVersion, }, .{ "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUtils));
    }
    pub fn GetISteamMatchmaking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMatchmaking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMatchmaking"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMatchmaking));
    }
    pub fn GetISteamMatchmakingServers(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMatchmakingServers {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMatchmakingServers"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMatchmakingServers));
    }
    pub fn GetISteamGenericInterface(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) ?*anyopaque {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGenericInterface"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGenericInterface));
    }
    pub fn GetISteamUserStats(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUserStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUserStats"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUserStats));
    }
    pub fn GetISteamGameServerStats(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameServerStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameServerStats"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameServerStats));
    }
    pub fn GetISteamApps(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamApps {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamApps"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamApps));
    }
    pub fn GetISteamNetworking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamNetworking"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamNetworking));
    }
    pub fn GetISteamRemoteStorage(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamRemoteStorage {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamRemoteStorage"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamRemoteStorage));
    }
    pub fn GetISteamScreenshots(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamScreenshots {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamScreenshots"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamScreenshots));
    }
    pub fn GetISteamGameSearch(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamGameSearch {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamGameSearch"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamGameSearch));
    }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCCallCount"}), .{ }, .{ }, @TypeOf(S.GetIPCCallCount));
    }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetWarningMessageHook"}), .{ pFunction, }, .{ "pFunction", }, @TypeOf(S.SetWarningMessageHook));
    }
    pub fn BShutdownIfAllPipesClosed() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BShutdownIfAllPipesClosed"}), .{ }, .{ }, @TypeOf(S.BShutdownIfAllPipesClosed));
    }
    pub fn GetISteamHTTP(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamHTTP"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamHTTP));
    }
    pub fn GetISteamController(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamController {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamController"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamController));
    }
    pub fn GetISteamUGC(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamUGC"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamUGC));
    }
    pub fn GetISteamAppList(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamAppList {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamAppList"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamAppList));
    }
    pub fn GetISteamMusic(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMusic {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMusic"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMusic));
    }
    pub fn GetISteamMusicRemote(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamMusicRemote {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamMusicRemote"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamMusicRemote));
    }
    pub fn GetISteamHTMLSurface(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamHTMLSurface {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamHTMLSurface"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamHTMLSurface));
    }
    pub fn GetISteamInventory(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamInventory"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamInventory));
    }
    pub fn GetISteamVideo(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamVideo {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamVideo"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamVideo));
    }
    pub fn GetISteamParentalSettings(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamParentalSettings {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamParentalSettings"}), .{ hSteamuser, hSteamPipe, pchVersion, }, .{ "hSteamuser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamParentalSettings));
    }
    pub fn GetISteamInput(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamInput {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamInput"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamInput));
    }
    pub fn GetISteamParties(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamParties {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamParties"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamParties));
    }
    pub fn GetISteamRemotePlay(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8, ) callconv(.C) [*c]t.ISteamRemotePlay {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetISteamRemotePlay"}), .{ hSteamUser, hSteamPipe, pchVersion, }, .{ "hSteamUser", "hSteamPipe", "pchVersion", }, @TypeOf(S.GetISteamRemotePlay));
    }
};
pub const ISteamUser = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUser"};
    _: u8 = 1,
    pub const version = "SteamUser021";
    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHSteamUser"}), .{ }, .{ }, @TypeOf(S.GetHSteamUser));
    }
    pub fn BLoggedOn() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BLoggedOn"}), .{ }, .{ }, @TypeOf(S.BLoggedOn));
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID"}), .{ }, .{ }, @TypeOf(S.GetSteamID));
    }
    pub fn InitiateGameConnection_DEPRECATED(pAuthBlob: ?*anyopaque, cbMaxAuthBlob: i32, steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, bSecure: bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitiateGameConnection_DEPRECATED"}), .{ pAuthBlob, cbMaxAuthBlob, steamIDGameServer, unIPServer, usPortServer, bSecure, }, .{ "pAuthBlob", "cbMaxAuthBlob", "steamIDGameServer", "unIPServer", "usPortServer", "bSecure", }, @TypeOf(S.InitiateGameConnection_DEPRECATED));
    }
    pub fn TerminateGameConnection_DEPRECATED(unIPServer: t.uint32, usPortServer: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TerminateGameConnection_DEPRECATED"}), .{ unIPServer, usPortServer, }, .{ "unIPServer", "usPortServer", }, @TypeOf(S.TerminateGameConnection_DEPRECATED));
    }
    pub fn TrackAppUsageEvent(gameID: t.CGameID, eAppUsageEvent: i32, pchExtraInfo: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TrackAppUsageEvent"}), .{ gameID, eAppUsageEvent, pchExtraInfo, }, .{ "gameID", "eAppUsageEvent", "pchExtraInfo", }, @TypeOf(S.TrackAppUsageEvent));
    }
    pub fn GetUserDataFolder(pchBuffer: [*c]u8, cubBuffer: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserDataFolder"}), .{ pchBuffer, cubBuffer, }, .{ "pchBuffer", "cubBuffer", }, @TypeOf(S.GetUserDataFolder));
    }
    pub fn StartVoiceRecording() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartVoiceRecording"}), .{ }, .{ }, @TypeOf(S.StartVoiceRecording));
    }
    pub fn StopVoiceRecording() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopVoiceRecording"}), .{ }, .{ }, @TypeOf(S.StopVoiceRecording));
    }
    pub fn GetAvailableVoice(pcbCompressed: [*c]t.uint32, pcbUncompressed_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableVoice"}), .{ pcbCompressed, pcbUncompressed_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated, }, .{ "pcbCompressed", "pcbUncompressed_Deprecated", "nUncompressedVoiceDesiredSampleRate_Deprecated", }, @TypeOf(S.GetAvailableVoice));
    }
    pub fn GetVoice(bWantCompressed: bool, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: ?*anyopaque, cbUncompressedDestBufferSize_Deprecated: t.uint32, nUncompressBytesWritten_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVoice"}), .{ bWantCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, bWantUncompressed_Deprecated, pUncompressedDestBuffer_Deprecated, cbUncompressedDestBufferSize_Deprecated, nUncompressBytesWritten_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated, }, .{ "bWantCompressed", "pDestBuffer", "cbDestBufferSize", "nBytesWritten", "bWantUncompressed_Deprecated", "pUncompressedDestBuffer_Deprecated", "cbUncompressedDestBufferSize_Deprecated", "nUncompressBytesWritten_Deprecated", "nUncompressedVoiceDesiredSampleRate_Deprecated", }, @TypeOf(S.GetVoice));
    }
    pub fn DecompressVoice(pCompressed: ?*const anyopaque, cbCompressed: t.uint32, pDestBuffer: ?*anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, nDesiredSampleRate: t.uint32, ) callconv(.C) t.EVoiceResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DecompressVoice"}), .{ pCompressed, cbCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, nDesiredSampleRate, }, .{ "pCompressed", "cbCompressed", "pDestBuffer", "cbDestBufferSize", "nBytesWritten", "nDesiredSampleRate", }, @TypeOf(S.DecompressVoice));
    }
    pub fn GetVoiceOptimalSampleRate() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVoiceOptimalSampleRate"}), .{ }, .{ }, @TypeOf(S.GetVoiceOptimalSampleRate));
    }
    pub fn GetAuthSessionTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) t.HAuthTicket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthSessionTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetAuthSessionTicket));
    }
    pub fn BeginAuthSession(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID, ) callconv(.C) t.EBeginAuthSessionResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAuthSession"}), .{ pAuthTicket, cbAuthTicket, steamID, }, .{ "pAuthTicket", "cbAuthTicket", "steamID", }, @TypeOf(S.BeginAuthSession));
    }
    pub fn EndAuthSession(steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndAuthSession"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.EndAuthSession));
    }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelAuthTicket"}), .{ hAuthTicket, }, .{ "hAuthTicket", }, @TypeOf(S.CancelAuthTicket));
    }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t, ) callconv(.C) t.EUserHasLicenseForAppResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UserHasLicenseForApp"}), .{ steamID, appID, }, .{ "steamID", "appID", }, @TypeOf(S.UserHasLicenseForApp));
    }
    pub fn BIsBehindNAT() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsBehindNAT"}), .{ }, .{ }, @TypeOf(S.BIsBehindNAT));
    }
    pub fn AdvertiseGame(steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AdvertiseGame"}), .{ steamIDGameServer, unIPServer, usPortServer, }, .{ "steamIDGameServer", "unIPServer", "usPortServer", }, @TypeOf(S.AdvertiseGame));
    }
    pub fn RequestEncryptedAppTicket(pDataToInclude: ?*anyopaque, cbDataToInclude: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestEncryptedAppTicket"}), .{ pDataToInclude, cbDataToInclude, }, .{ "pDataToInclude", "cbDataToInclude", }, @TypeOf(S.RequestEncryptedAppTicket));
    }
    pub fn GetEncryptedAppTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEncryptedAppTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetEncryptedAppTicket));
    }
    pub fn GetGameBadgeLevel(nSeries: i32, bFoil: bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameBadgeLevel"}), .{ nSeries, bFoil, }, .{ "nSeries", "bFoil", }, @TypeOf(S.GetGameBadgeLevel));
    }
    pub fn GetPlayerSteamLevel() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlayerSteamLevel"}), .{ }, .{ }, @TypeOf(S.GetPlayerSteamLevel));
    }
    pub fn RequestStoreAuthURL(pchRedirectURL: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestStoreAuthURL"}), .{ pchRedirectURL, }, .{ "pchRedirectURL", }, @TypeOf(S.RequestStoreAuthURL));
    }
    pub fn BIsPhoneVerified() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneVerified"}), .{ }, .{ }, @TypeOf(S.BIsPhoneVerified));
    }
    pub fn BIsTwoFactorEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsTwoFactorEnabled"}), .{ }, .{ }, @TypeOf(S.BIsTwoFactorEnabled));
    }
    pub fn BIsPhoneIdentifying() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneIdentifying"}), .{ }, .{ }, @TypeOf(S.BIsPhoneIdentifying));
    }
    pub fn BIsPhoneRequiringVerification() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPhoneRequiringVerification"}), .{ }, .{ }, @TypeOf(S.BIsPhoneRequiringVerification));
    }
    pub fn GetMarketEligibility() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMarketEligibility"}), .{ }, .{ }, @TypeOf(S.GetMarketEligibility));
    }
    pub fn GetDurationControl() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDurationControl"}), .{ }, .{ }, @TypeOf(S.GetDurationControl));
    }
    pub fn BSetDurationControlOnlineState(eNewState: t.EDurationControlOnlineState, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSetDurationControlOnlineState"}), .{ eNewState, }, .{ "eNewState", }, @TypeOf(S.BSetDurationControlOnlineState));
    }
};
pub const SteamUser = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUser"};
    pub fn v021() callconv(.C) [*c]t.ISteamUser {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v021"}), .{ }, .{ }, @TypeOf(S.v021));
    }
};
pub const ISteamFriends = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamFriends"};
    _: u8 = 1,
    pub const version = "SteamFriends017";
    pub fn GetPersonaName() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPersonaName"}), .{ }, .{ }, @TypeOf(S.GetPersonaName));
    }
    pub fn SetPersonaName(pchPersonaName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPersonaName"}), .{ pchPersonaName, }, .{ "pchPersonaName", }, @TypeOf(S.SetPersonaName));
    }
    pub fn GetPersonaState() callconv(.C) t.EPersonaState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPersonaState"}), .{ }, .{ }, @TypeOf(S.GetPersonaState));
    }
    pub fn GetFriendCount(iFriendFlags: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCount"}), .{ iFriendFlags, }, .{ "iFriendFlags", }, @TypeOf(S.GetFriendCount));
    }
    pub fn GetFriendByIndex(iFriend: i32, iFriendFlags: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendByIndex"}), .{ iFriend, iFriendFlags, }, .{ "iFriend", "iFriendFlags", }, @TypeOf(S.GetFriendByIndex));
    }
    pub fn GetFriendRelationship(steamIDFriend: t.CSteamID, ) callconv(.C) t.EFriendRelationship {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRelationship"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendRelationship));
    }
    pub fn GetFriendPersonaState(steamIDFriend: t.CSteamID, ) callconv(.C) t.EPersonaState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaState"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendPersonaState));
    }
    pub fn GetFriendPersonaName(steamIDFriend: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaName"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendPersonaName));
    }
    pub fn GetFriendGamePlayed(steamIDFriend: t.CSteamID, pFriendGameInfo: [*c]t.FriendGameInfo_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendGamePlayed"}), .{ steamIDFriend, pFriendGameInfo, }, .{ "steamIDFriend", "pFriendGameInfo", }, @TypeOf(S.GetFriendGamePlayed));
    }
    pub fn GetFriendPersonaNameHistory(steamIDFriend: t.CSteamID, iPersonaName: i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendPersonaNameHistory"}), .{ steamIDFriend, iPersonaName, }, .{ "steamIDFriend", "iPersonaName", }, @TypeOf(S.GetFriendPersonaNameHistory));
    }
    pub fn GetFriendSteamLevel(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendSteamLevel"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendSteamLevel));
    }
    pub fn GetPlayerNickname(steamIDPlayer: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlayerNickname"}), .{ steamIDPlayer, }, .{ "steamIDPlayer", }, @TypeOf(S.GetPlayerNickname));
    }
    pub fn GetFriendsGroupCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupCount"}), .{ }, .{ }, @TypeOf(S.GetFriendsGroupCount));
    }
    pub fn GetFriendsGroupIDByIndex(iFG: i32, ) callconv(.C) t.FriendsGroupID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupIDByIndex"}), .{ iFG, }, .{ "iFG", }, @TypeOf(S.GetFriendsGroupIDByIndex));
    }
    pub fn GetFriendsGroupName(friendsGroupID: t.FriendsGroupID_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupName"}), .{ friendsGroupID, }, .{ "friendsGroupID", }, @TypeOf(S.GetFriendsGroupName));
    }
    pub fn GetFriendsGroupMembersCount(friendsGroupID: t.FriendsGroupID_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupMembersCount"}), .{ friendsGroupID, }, .{ "friendsGroupID", }, @TypeOf(S.GetFriendsGroupMembersCount));
    }
    pub fn GetFriendsGroupMembersList(friendsGroupID: t.FriendsGroupID_t, pOutSteamIDMembers: [*c]t.CSteamID, nMembersCount: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendsGroupMembersList"}), .{ friendsGroupID, pOutSteamIDMembers, nMembersCount, }, .{ "friendsGroupID", "pOutSteamIDMembers", "nMembersCount", }, @TypeOf(S.GetFriendsGroupMembersList));
    }
    pub fn HasFriend(steamIDFriend: t.CSteamID, iFriendFlags: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HasFriend"}), .{ steamIDFriend, iFriendFlags, }, .{ "steamIDFriend", "iFriendFlags", }, @TypeOf(S.HasFriend));
    }
    pub fn GetClanCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanCount"}), .{ }, .{ }, @TypeOf(S.GetClanCount));
    }
    pub fn GetClanByIndex(iClan: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanByIndex"}), .{ iClan, }, .{ "iClan", }, @TypeOf(S.GetClanByIndex));
    }
    pub fn GetClanName(steamIDClan: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanName"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanName));
    }
    pub fn GetClanTag(steamIDClan: t.CSteamID, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanTag"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanTag));
    }
    pub fn GetClanActivityCounts(steamIDClan: t.CSteamID, pnOnline: [*c]i32, pnInGame: [*c]i32, pnChatting: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanActivityCounts"}), .{ steamIDClan, pnOnline, pnInGame, pnChatting, }, .{ "steamIDClan", "pnOnline", "pnInGame", "pnChatting", }, @TypeOf(S.GetClanActivityCounts));
    }
    pub fn DownloadClanActivityCounts(psteamIDClans: [*c]t.CSteamID, cClansToRequest: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadClanActivityCounts"}), .{ psteamIDClans, cClansToRequest, }, .{ "psteamIDClans", "cClansToRequest", }, @TypeOf(S.DownloadClanActivityCounts));
    }
    pub fn GetFriendCountFromSource(steamIDSource: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCountFromSource"}), .{ steamIDSource, }, .{ "steamIDSource", }, @TypeOf(S.GetFriendCountFromSource));
    }
    pub fn GetFriendFromSourceByIndex(steamIDSource: t.CSteamID, iFriend: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendFromSourceByIndex"}), .{ steamIDSource, iFriend, }, .{ "steamIDSource", "iFriend", }, @TypeOf(S.GetFriendFromSourceByIndex));
    }
    pub fn IsUserInSource(steamIDUser: t.CSteamID, steamIDSource: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsUserInSource"}), .{ steamIDUser, steamIDSource, }, .{ "steamIDUser", "steamIDSource", }, @TypeOf(S.IsUserInSource));
    }
    pub fn SetInGameVoiceSpeaking(steamIDUser: t.CSteamID, bSpeaking: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInGameVoiceSpeaking"}), .{ steamIDUser, bSpeaking, }, .{ "steamIDUser", "bSpeaking", }, @TypeOf(S.SetInGameVoiceSpeaking));
    }
    pub fn ActivateGameOverlay(pchDialog: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlay"}), .{ pchDialog, }, .{ "pchDialog", }, @TypeOf(S.ActivateGameOverlay));
    }
    pub fn ActivateGameOverlayToUser(pchDialog: [*c]const u8, steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToUser"}), .{ pchDialog, steamID, }, .{ "pchDialog", "steamID", }, @TypeOf(S.ActivateGameOverlayToUser));
    }
    pub fn ActivateGameOverlayToWebPage(pchURL: [*c]const u8, eMode: t.EActivateGameOverlayToWebPageMode, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToWebPage"}), .{ pchURL, eMode, }, .{ "pchURL", "eMode", }, @TypeOf(S.ActivateGameOverlayToWebPage));
    }
    pub fn ActivateGameOverlayToStore(nAppID: t.AppId_t, eFlag: t.EOverlayToStoreFlag, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayToStore"}), .{ nAppID, eFlag, }, .{ "nAppID", "eFlag", }, @TypeOf(S.ActivateGameOverlayToStore));
    }
    pub fn SetPlayedWith(steamIDUserPlayedWith: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPlayedWith"}), .{ steamIDUserPlayedWith, }, .{ "steamIDUserPlayedWith", }, @TypeOf(S.SetPlayedWith));
    }
    pub fn ActivateGameOverlayInviteDialog(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayInviteDialog"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.ActivateGameOverlayInviteDialog));
    }
    pub fn GetSmallFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSmallFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetSmallFriendAvatar));
    }
    pub fn GetMediumFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMediumFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetMediumFriendAvatar));
    }
    pub fn GetLargeFriendAvatar(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLargeFriendAvatar"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetLargeFriendAvatar));
    }
    pub fn RequestUserInformation(steamIDUser: t.CSteamID, bRequireNameOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserInformation"}), .{ steamIDUser, bRequireNameOnly, }, .{ "steamIDUser", "bRequireNameOnly", }, @TypeOf(S.RequestUserInformation));
    }
    pub fn RequestClanOfficerList(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestClanOfficerList"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.RequestClanOfficerList));
    }
    pub fn GetClanOwner(steamIDClan: t.CSteamID, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOwner"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanOwner));
    }
    pub fn GetClanOfficerCount(steamIDClan: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOfficerCount"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanOfficerCount));
    }
    pub fn GetClanOfficerByIndex(steamIDClan: t.CSteamID, iOfficer: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanOfficerByIndex"}), .{ steamIDClan, iOfficer, }, .{ "steamIDClan", "iOfficer", }, @TypeOf(S.GetClanOfficerByIndex));
    }
    pub fn GetUserRestrictions() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserRestrictions"}), .{ }, .{ }, @TypeOf(S.GetUserRestrictions));
    }
    pub fn SetRichPresence(pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRichPresence"}), .{ pchKey, pchValue, }, .{ "pchKey", "pchValue", }, @TypeOf(S.SetRichPresence));
    }
    pub fn ClearRichPresence() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearRichPresence"}), .{ }, .{ }, @TypeOf(S.ClearRichPresence));
    }
    pub fn GetFriendRichPresence(steamIDFriend: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresence"}), .{ steamIDFriend, pchKey, }, .{ "steamIDFriend", "pchKey", }, @TypeOf(S.GetFriendRichPresence));
    }
    pub fn GetFriendRichPresenceKeyCount(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresenceKeyCount"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendRichPresenceKeyCount));
    }
    pub fn GetFriendRichPresenceKeyByIndex(steamIDFriend: t.CSteamID, iKey: i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendRichPresenceKeyByIndex"}), .{ steamIDFriend, iKey, }, .{ "steamIDFriend", "iKey", }, @TypeOf(S.GetFriendRichPresenceKeyByIndex));
    }
    pub fn RequestFriendRichPresence(steamIDFriend: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFriendRichPresence"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.RequestFriendRichPresence));
    }
    pub fn InviteUserToGame(steamIDFriend: t.CSteamID, pchConnectString: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InviteUserToGame"}), .{ steamIDFriend, pchConnectString, }, .{ "steamIDFriend", "pchConnectString", }, @TypeOf(S.InviteUserToGame));
    }
    pub fn GetCoplayFriendCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCoplayFriendCount"}), .{ }, .{ }, @TypeOf(S.GetCoplayFriendCount));
    }
    pub fn GetCoplayFriend(iCoplayFriend: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCoplayFriend"}), .{ iCoplayFriend, }, .{ "iCoplayFriend", }, @TypeOf(S.GetCoplayFriend));
    }
    pub fn GetFriendCoplayTime(steamIDFriend: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCoplayTime"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendCoplayTime));
    }
    pub fn GetFriendCoplayGame(steamIDFriend: t.CSteamID, ) callconv(.C) t.AppId_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendCoplayGame"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.GetFriendCoplayGame));
    }
    pub fn JoinClanChatRoom(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinClanChatRoom"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.JoinClanChatRoom));
    }
    pub fn LeaveClanChatRoom(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LeaveClanChatRoom"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.LeaveClanChatRoom));
    }
    pub fn GetClanChatMemberCount(steamIDClan: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanChatMemberCount"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.GetClanChatMemberCount));
    }
    pub fn GetChatMemberByIndex(steamIDClan: t.CSteamID, iUser: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetChatMemberByIndex"}), .{ steamIDClan, iUser, }, .{ "steamIDClan", "iUser", }, @TypeOf(S.GetChatMemberByIndex));
    }
    pub fn SendClanChatMessage(steamIDClanChat: t.CSteamID, pchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendClanChatMessage"}), .{ steamIDClanChat, pchText, }, .{ "steamIDClanChat", "pchText", }, @TypeOf(S.SendClanChatMessage));
    }
    pub fn GetClanChatMessage(steamIDClanChat: t.CSteamID, iMessage: i32, prgchText: ?*anyopaque, cchTextMax: i32, peChatEntryType: [*c]t.EChatEntryType, psteamidChatter: [*c]t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetClanChatMessage"}), .{ steamIDClanChat, iMessage, prgchText, cchTextMax, peChatEntryType, psteamidChatter, }, .{ "steamIDClanChat", "iMessage", "prgchText", "cchTextMax", "peChatEntryType", "psteamidChatter", }, @TypeOf(S.GetClanChatMessage));
    }
    pub fn IsClanChatAdmin(steamIDClanChat: t.CSteamID, steamIDUser: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanChatAdmin"}), .{ steamIDClanChat, steamIDUser, }, .{ "steamIDClanChat", "steamIDUser", }, @TypeOf(S.IsClanChatAdmin));
    }
    pub fn IsClanChatWindowOpenInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanChatWindowOpenInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.IsClanChatWindowOpenInSteam));
    }
    pub fn OpenClanChatWindowInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OpenClanChatWindowInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.OpenClanChatWindowInSteam));
    }
    pub fn CloseClanChatWindowInSteam(steamIDClanChat: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseClanChatWindowInSteam"}), .{ steamIDClanChat, }, .{ "steamIDClanChat", }, @TypeOf(S.CloseClanChatWindowInSteam));
    }
    pub fn SetListenForFriendsMessages(bInterceptEnabled: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetListenForFriendsMessages"}), .{ bInterceptEnabled, }, .{ "bInterceptEnabled", }, @TypeOf(S.SetListenForFriendsMessages));
    }
    pub fn ReplyToFriendMessage(steamIDFriend: t.CSteamID, pchMsgToSend: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReplyToFriendMessage"}), .{ steamIDFriend, pchMsgToSend, }, .{ "steamIDFriend", "pchMsgToSend", }, @TypeOf(S.ReplyToFriendMessage));
    }
    pub fn GetFriendMessage(steamIDFriend: t.CSteamID, iMessageID: i32, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFriendMessage"}), .{ steamIDFriend, iMessageID, pvData, cubData, peChatEntryType, }, .{ "steamIDFriend", "iMessageID", "pvData", "cubData", "peChatEntryType", }, @TypeOf(S.GetFriendMessage));
    }
    pub fn GetFollowerCount(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFollowerCount"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.GetFollowerCount));
    }
    pub fn IsFollowing(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFollowing"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.IsFollowing));
    }
    pub fn EnumerateFollowingList(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateFollowingList"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateFollowingList));
    }
    pub fn IsClanPublic(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanPublic"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.IsClanPublic));
    }
    pub fn IsClanOfficialGameGroup(steamIDClan: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsClanOfficialGameGroup"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.IsClanOfficialGameGroup));
    }
    pub fn GetNumChatsWithUnreadPriorityMessages() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumChatsWithUnreadPriorityMessages"}), .{ }, .{ }, @TypeOf(S.GetNumChatsWithUnreadPriorityMessages));
    }
    pub fn ActivateGameOverlayRemotePlayTogetherInviteDialog(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayRemotePlayTogetherInviteDialog"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.ActivateGameOverlayRemotePlayTogetherInviteDialog));
    }
    pub fn RegisterProtocolInOverlayBrowser(pchProtocol: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RegisterProtocolInOverlayBrowser"}), .{ pchProtocol, }, .{ "pchProtocol", }, @TypeOf(S.RegisterProtocolInOverlayBrowser));
    }
    pub fn ActivateGameOverlayInviteDialogConnectString(pchConnectString: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateGameOverlayInviteDialogConnectString"}), .{ pchConnectString, }, .{ "pchConnectString", }, @TypeOf(S.ActivateGameOverlayInviteDialogConnectString));
    }
};
pub const SteamFriends = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamFriends"};
    pub fn v017() callconv(.C) [*c]t.ISteamFriends {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v017"}), .{ }, .{ }, @TypeOf(S.v017));
    }
};
pub const ISteamUtils = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUtils"};
    _: u8 = 1,
    pub const version = "SteamUtils010";
    pub fn GetSecondsSinceAppActive() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSecondsSinceAppActive"}), .{ }, .{ }, @TypeOf(S.GetSecondsSinceAppActive));
    }
    pub fn GetSecondsSinceComputerActive() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSecondsSinceComputerActive"}), .{ }, .{ }, @TypeOf(S.GetSecondsSinceComputerActive));
    }
    pub fn GetConnectedUniverse() callconv(.C) t.EUniverse {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedUniverse"}), .{ }, .{ }, @TypeOf(S.GetConnectedUniverse));
    }
    pub fn GetServerRealTime() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerRealTime"}), .{ }, .{ }, @TypeOf(S.GetServerRealTime));
    }
    pub fn GetIPCountry() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCountry"}), .{ }, .{ }, @TypeOf(S.GetIPCountry));
    }
    pub fn GetImageSize(iImage: i32, pnWidth: [*c]t.uint32, pnHeight: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetImageSize"}), .{ iImage, pnWidth, pnHeight, }, .{ "iImage", "pnWidth", "pnHeight", }, @TypeOf(S.GetImageSize));
    }
    pub fn GetImageRGBA(iImage: i32, pubDest: [*c]t.uint8, nDestBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetImageRGBA"}), .{ iImage, pubDest, nDestBufferSize, }, .{ "iImage", "pubDest", "nDestBufferSize", }, @TypeOf(S.GetImageRGBA));
    }
    pub fn GetCurrentBatteryPower() callconv(.C) t.uint8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentBatteryPower"}), .{ }, .{ }, @TypeOf(S.GetCurrentBatteryPower));
    }
    pub fn GetAppID() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppID"}), .{ }, .{ }, @TypeOf(S.GetAppID));
    }
    pub fn SetOverlayNotificationPosition(eNotificationPosition: t.ENotificationPosition, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetOverlayNotificationPosition"}), .{ eNotificationPosition, }, .{ "eNotificationPosition", }, @TypeOf(S.SetOverlayNotificationPosition));
    }
    pub fn IsAPICallCompleted(hSteamAPICall: t.SteamAPICall_t, pbFailed: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsAPICallCompleted"}), .{ hSteamAPICall, pbFailed, }, .{ "hSteamAPICall", "pbFailed", }, @TypeOf(S.IsAPICallCompleted));
    }
    pub fn GetAPICallFailureReason(hSteamAPICall: t.SteamAPICall_t, ) callconv(.C) t.ESteamAPICallFailure {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAPICallFailureReason"}), .{ hSteamAPICall, }, .{ "hSteamAPICall", }, @TypeOf(S.GetAPICallFailureReason));
    }
    pub fn GetAPICallResult(hSteamAPICall: t.SteamAPICall_t, pCallback: ?*anyopaque, cubCallback: i32, iCallbackExpected: i32, pbFailed: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAPICallResult"}), .{ hSteamAPICall, pCallback, cubCallback, iCallbackExpected, pbFailed, }, .{ "hSteamAPICall", "pCallback", "cubCallback", "iCallbackExpected", "pbFailed", }, @TypeOf(S.GetAPICallResult));
    }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPCCallCount"}), .{ }, .{ }, @TypeOf(S.GetIPCCallCount));
    }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetWarningMessageHook"}), .{ pFunction, }, .{ "pFunction", }, @TypeOf(S.SetWarningMessageHook));
    }
    pub fn IsOverlayEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsOverlayEnabled"}), .{ }, .{ }, @TypeOf(S.IsOverlayEnabled));
    }
    pub fn BOverlayNeedsPresent() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BOverlayNeedsPresent"}), .{ }, .{ }, @TypeOf(S.BOverlayNeedsPresent));
    }
    pub fn CheckFileSignature(szFileName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckFileSignature"}), .{ szFileName, }, .{ "szFileName", }, @TypeOf(S.CheckFileSignature));
    }
    pub fn ShowGamepadTextInput(eInputMode: t.EGamepadTextInputMode, eLineInputMode: t.EGamepadTextInputLineMode, pchDescription: [*c]const u8, unCharMax: t.uint32, pchExistingText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowGamepadTextInput"}), .{ eInputMode, eLineInputMode, pchDescription, unCharMax, pchExistingText, }, .{ "eInputMode", "eLineInputMode", "pchDescription", "unCharMax", "pchExistingText", }, @TypeOf(S.ShowGamepadTextInput));
    }
    pub fn GetEnteredGamepadTextLength() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEnteredGamepadTextLength"}), .{ }, .{ }, @TypeOf(S.GetEnteredGamepadTextLength));
    }
    pub fn GetEnteredGamepadTextInput(pchText: [*c]u8, cchText: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEnteredGamepadTextInput"}), .{ pchText, cchText, }, .{ "pchText", "cchText", }, @TypeOf(S.GetEnteredGamepadTextInput));
    }
    pub fn GetSteamUILanguage() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamUILanguage"}), .{ }, .{ }, @TypeOf(S.GetSteamUILanguage));
    }
    pub fn IsSteamRunningInVR() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamRunningInVR"}), .{ }, .{ }, @TypeOf(S.IsSteamRunningInVR));
    }
    pub fn SetOverlayNotificationInset(nHorizontalInset: i32, nVerticalInset: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetOverlayNotificationInset"}), .{ nHorizontalInset, nVerticalInset, }, .{ "nHorizontalInset", "nVerticalInset", }, @TypeOf(S.SetOverlayNotificationInset));
    }
    pub fn IsSteamInBigPictureMode() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamInBigPictureMode"}), .{ }, .{ }, @TypeOf(S.IsSteamInBigPictureMode));
    }
    pub fn StartVRDashboard() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartVRDashboard"}), .{ }, .{ }, @TypeOf(S.StartVRDashboard));
    }
    pub fn IsVRHeadsetStreamingEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsVRHeadsetStreamingEnabled"}), .{ }, .{ }, @TypeOf(S.IsVRHeadsetStreamingEnabled));
    }
    pub fn SetVRHeadsetStreamingEnabled(bEnabled: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVRHeadsetStreamingEnabled"}), .{ bEnabled, }, .{ "bEnabled", }, @TypeOf(S.SetVRHeadsetStreamingEnabled));
    }
    pub fn IsSteamChinaLauncher() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamChinaLauncher"}), .{ }, .{ }, @TypeOf(S.IsSteamChinaLauncher));
    }
    pub fn InitFilterText(unFilterOptions: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitFilterText"}), .{ unFilterOptions, }, .{ "unFilterOptions", }, @TypeOf(S.InitFilterText));
    }
    pub fn FilterText(eContext: t.ETextFilteringContext, sourceSteamID: t.CSteamID, pchInputMessage: [*c]const u8, pchOutFilteredText: [*c]u8, nByteSizeOutFilteredText: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FilterText"}), .{ eContext, sourceSteamID, pchInputMessage, pchOutFilteredText, nByteSizeOutFilteredText, }, .{ "eContext", "sourceSteamID", "pchInputMessage", "pchOutFilteredText", "nByteSizeOutFilteredText", }, @TypeOf(S.FilterText));
    }
    pub fn GetIPv6ConnectivityState(eProtocol: t.ESteamIPv6ConnectivityProtocol, ) callconv(.C) t.ESteamIPv6ConnectivityState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv6ConnectivityState"}), .{ eProtocol, }, .{ "eProtocol", }, @TypeOf(S.GetIPv6ConnectivityState));
    }
    pub fn IsSteamRunningOnSteamDeck() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSteamRunningOnSteamDeck"}), .{ }, .{ }, @TypeOf(S.IsSteamRunningOnSteamDeck));
    }
    pub fn ShowFloatingGamepadTextInput(eKeyboardMode: t.EFloatingGamepadTextInputMode, nTextFieldXPosition: i32, nTextFieldYPosition: i32, nTextFieldWidth: i32, nTextFieldHeight: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowFloatingGamepadTextInput"}), .{ eKeyboardMode, nTextFieldXPosition, nTextFieldYPosition, nTextFieldWidth, nTextFieldHeight, }, .{ "eKeyboardMode", "nTextFieldXPosition", "nTextFieldYPosition", "nTextFieldWidth", "nTextFieldHeight", }, @TypeOf(S.ShowFloatingGamepadTextInput));
    }
    pub fn SetGameLauncherMode(bLauncherMode: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameLauncherMode"}), .{ bLauncherMode, }, .{ "bLauncherMode", }, @TypeOf(S.SetGameLauncherMode));
    }
    pub fn DismissFloatingGamepadTextInput() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DismissFloatingGamepadTextInput"}), .{ }, .{ }, @TypeOf(S.DismissFloatingGamepadTextInput));
    }
};
pub const SteamUtils = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUtils"};
    pub fn v010() callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v010"}), .{ }, .{ }, @TypeOf(S.v010));
    }
};
pub const SteamGameServerUtils = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerUtils"};
    pub fn v010() callconv(.C) [*c]t.ISteamUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v010"}), .{ }, .{ }, @TypeOf(S.v010));
    }
};
pub const ISteamMatchmaking = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmaking"};
    _: u8 = 1,
    pub const version = "SteamMatchMaking009";
    pub fn GetFavoriteGameCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFavoriteGameCount"}), .{ }, .{ }, @TypeOf(S.GetFavoriteGameCount));
    }
    pub fn GetFavoriteGame(iGame: i32, pnAppID: [*c]t.AppId_t, pnIP: [*c]t.uint32, pnConnPort: [*c]t.uint16, pnQueryPort: [*c]t.uint16, punFlags: [*c]t.uint32, pRTime32LastPlayedOnServer: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFavoriteGame"}), .{ iGame, pnAppID, pnIP, pnConnPort, pnQueryPort, punFlags, pRTime32LastPlayedOnServer, }, .{ "iGame", "pnAppID", "pnIP", "pnConnPort", "pnQueryPort", "punFlags", "pRTime32LastPlayedOnServer", }, @TypeOf(S.GetFavoriteGame));
    }
    pub fn AddFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, rTime32LastPlayedOnServer: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddFavoriteGame"}), .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, rTime32LastPlayedOnServer, }, .{ "nAppID", "nIP", "nConnPort", "nQueryPort", "unFlags", "rTime32LastPlayedOnServer", }, @TypeOf(S.AddFavoriteGame));
    }
    pub fn RemoveFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveFavoriteGame"}), .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, }, .{ "nAppID", "nIP", "nConnPort", "nQueryPort", "unFlags", }, @TypeOf(S.RemoveFavoriteGame));
    }
    pub fn RequestLobbyList() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLobbyList"}), .{ }, .{ }, @TypeOf(S.RequestLobbyList));
    }
    pub fn AddRequestLobbyListStringFilter(pchKeyToMatch: [*c]const u8, pchValueToMatch: [*c]const u8, eComparisonType: t.ELobbyComparison, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListStringFilter"}), .{ pchKeyToMatch, pchValueToMatch, eComparisonType, }, .{ "pchKeyToMatch", "pchValueToMatch", "eComparisonType", }, @TypeOf(S.AddRequestLobbyListStringFilter));
    }
    pub fn AddRequestLobbyListNumericalFilter(pchKeyToMatch: [*c]const u8, nValueToMatch: i32, eComparisonType: t.ELobbyComparison, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListNumericalFilter"}), .{ pchKeyToMatch, nValueToMatch, eComparisonType, }, .{ "pchKeyToMatch", "nValueToMatch", "eComparisonType", }, @TypeOf(S.AddRequestLobbyListNumericalFilter));
    }
    pub fn AddRequestLobbyListNearValueFilter(pchKeyToMatch: [*c]const u8, nValueToBeCloseTo: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListNearValueFilter"}), .{ pchKeyToMatch, nValueToBeCloseTo, }, .{ "pchKeyToMatch", "nValueToBeCloseTo", }, @TypeOf(S.AddRequestLobbyListNearValueFilter));
    }
    pub fn AddRequestLobbyListFilterSlotsAvailable(nSlotsAvailable: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListFilterSlotsAvailable"}), .{ nSlotsAvailable, }, .{ "nSlotsAvailable", }, @TypeOf(S.AddRequestLobbyListFilterSlotsAvailable));
    }
    pub fn AddRequestLobbyListDistanceFilter(eLobbyDistanceFilter: t.ELobbyDistanceFilter, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListDistanceFilter"}), .{ eLobbyDistanceFilter, }, .{ "eLobbyDistanceFilter", }, @TypeOf(S.AddRequestLobbyListDistanceFilter));
    }
    pub fn AddRequestLobbyListResultCountFilter(cMaxResults: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListResultCountFilter"}), .{ cMaxResults, }, .{ "cMaxResults", }, @TypeOf(S.AddRequestLobbyListResultCountFilter));
    }
    pub fn AddRequestLobbyListCompatibleMembersFilter(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequestLobbyListCompatibleMembersFilter"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.AddRequestLobbyListCompatibleMembersFilter));
    }
    pub fn GetLobbyByIndex(iLobby: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyByIndex"}), .{ iLobby, }, .{ "iLobby", }, @TypeOf(S.GetLobbyByIndex));
    }
    pub fn CreateLobby(eLobbyType: t.ELobbyType, cMaxMembers: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateLobby"}), .{ eLobbyType, cMaxMembers, }, .{ "eLobbyType", "cMaxMembers", }, @TypeOf(S.CreateLobby));
    }
    pub fn JoinLobby(steamIDLobby: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinLobby"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.JoinLobby));
    }
    pub fn LeaveLobby(steamIDLobby: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LeaveLobby"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.LeaveLobby));
    }
    pub fn InviteUserToLobby(steamIDLobby: t.CSteamID, steamIDInvitee: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InviteUserToLobby"}), .{ steamIDLobby, steamIDInvitee, }, .{ "steamIDLobby", "steamIDInvitee", }, @TypeOf(S.InviteUserToLobby));
    }
    pub fn GetNumLobbyMembers(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumLobbyMembers"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetNumLobbyMembers));
    }
    pub fn GetLobbyMemberByIndex(steamIDLobby: t.CSteamID, iMember: i32, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberByIndex"}), .{ steamIDLobby, iMember, }, .{ "steamIDLobby", "iMember", }, @TypeOf(S.GetLobbyMemberByIndex));
    }
    pub fn GetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyData"}), .{ steamIDLobby, pchKey, }, .{ "steamIDLobby", "pchKey", }, @TypeOf(S.GetLobbyData));
    }
    pub fn SetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyData"}), .{ steamIDLobby, pchKey, pchValue, }, .{ "steamIDLobby", "pchKey", "pchValue", }, @TypeOf(S.SetLobbyData));
    }
    pub fn GetLobbyDataCount(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyDataCount"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyDataCount));
    }
    pub fn GetLobbyDataByIndex(steamIDLobby: t.CSteamID, iLobbyData: i32, pchKey: [*c]u8, cchKeyBufferSize: i32, pchValue: [*c]u8, cchValueBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyDataByIndex"}), .{ steamIDLobby, iLobbyData, pchKey, cchKeyBufferSize, pchValue, cchValueBufferSize, }, .{ "steamIDLobby", "iLobbyData", "pchKey", "cchKeyBufferSize", "pchValue", "cchValueBufferSize", }, @TypeOf(S.GetLobbyDataByIndex));
    }
    pub fn DeleteLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeleteLobbyData"}), .{ steamIDLobby, pchKey, }, .{ "steamIDLobby", "pchKey", }, @TypeOf(S.DeleteLobbyData));
    }
    pub fn GetLobbyMemberData(steamIDLobby: t.CSteamID, steamIDUser: t.CSteamID, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberData"}), .{ steamIDLobby, steamIDUser, pchKey, }, .{ "steamIDLobby", "steamIDUser", "pchKey", }, @TypeOf(S.GetLobbyMemberData));
    }
    pub fn SetLobbyMemberData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyMemberData"}), .{ steamIDLobby, pchKey, pchValue, }, .{ "steamIDLobby", "pchKey", "pchValue", }, @TypeOf(S.SetLobbyMemberData));
    }
    pub fn SendLobbyChatMsg(steamIDLobby: t.CSteamID, pvMsgBody: ?*const anyopaque, cubMsgBody: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendLobbyChatMsg"}), .{ steamIDLobby, pvMsgBody, cubMsgBody, }, .{ "steamIDLobby", "pvMsgBody", "cubMsgBody", }, @TypeOf(S.SendLobbyChatMsg));
    }
    pub fn GetLobbyChatEntry(steamIDLobby: t.CSteamID, iChatID: i32, pSteamIDUser: [*c]t.CSteamID, pvData: ?*anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyChatEntry"}), .{ steamIDLobby, iChatID, pSteamIDUser, pvData, cubData, peChatEntryType, }, .{ "steamIDLobby", "iChatID", "pSteamIDUser", "pvData", "cubData", "peChatEntryType", }, @TypeOf(S.GetLobbyChatEntry));
    }
    pub fn RequestLobbyData(steamIDLobby: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLobbyData"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.RequestLobbyData));
    }
    pub fn SetLobbyGameServer(steamIDLobby: t.CSteamID, unGameServerIP: t.uint32, unGameServerPort: t.uint16, steamIDGameServer: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyGameServer"}), .{ steamIDLobby, unGameServerIP, unGameServerPort, steamIDGameServer, }, .{ "steamIDLobby", "unGameServerIP", "unGameServerPort", "steamIDGameServer", }, @TypeOf(S.SetLobbyGameServer));
    }
    pub fn GetLobbyGameServer(steamIDLobby: t.CSteamID, punGameServerIP: [*c]t.uint32, punGameServerPort: [*c]t.uint16, psteamIDGameServer: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyGameServer"}), .{ steamIDLobby, punGameServerIP, punGameServerPort, psteamIDGameServer, }, .{ "steamIDLobby", "punGameServerIP", "punGameServerPort", "psteamIDGameServer", }, @TypeOf(S.GetLobbyGameServer));
    }
    pub fn SetLobbyMemberLimit(steamIDLobby: t.CSteamID, cMaxMembers: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyMemberLimit"}), .{ steamIDLobby, cMaxMembers, }, .{ "steamIDLobby", "cMaxMembers", }, @TypeOf(S.SetLobbyMemberLimit));
    }
    pub fn GetLobbyMemberLimit(steamIDLobby: t.CSteamID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyMemberLimit"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyMemberLimit));
    }
    pub fn SetLobbyType(steamIDLobby: t.CSteamID, eLobbyType: t.ELobbyType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyType"}), .{ steamIDLobby, eLobbyType, }, .{ "steamIDLobby", "eLobbyType", }, @TypeOf(S.SetLobbyType));
    }
    pub fn SetLobbyJoinable(steamIDLobby: t.CSteamID, bLobbyJoinable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyJoinable"}), .{ steamIDLobby, bLobbyJoinable, }, .{ "steamIDLobby", "bLobbyJoinable", }, @TypeOf(S.SetLobbyJoinable));
    }
    pub fn GetLobbyOwner(steamIDLobby: t.CSteamID, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLobbyOwner"}), .{ steamIDLobby, }, .{ "steamIDLobby", }, @TypeOf(S.GetLobbyOwner));
    }
    pub fn SetLobbyOwner(steamIDLobby: t.CSteamID, steamIDNewOwner: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLobbyOwner"}), .{ steamIDLobby, steamIDNewOwner, }, .{ "steamIDLobby", "steamIDNewOwner", }, @TypeOf(S.SetLobbyOwner));
    }
    pub fn SetLinkedLobby(steamIDLobby: t.CSteamID, steamIDLobbyDependent: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLinkedLobby"}), .{ steamIDLobby, steamIDLobbyDependent, }, .{ "steamIDLobby", "steamIDLobbyDependent", }, @TypeOf(S.SetLinkedLobby));
    }
};
pub const SteamMatchmaking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMatchmaking"};
    pub fn v009() callconv(.C) [*c]t.ISteamMatchmaking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v009"}), .{ }, .{ }, @TypeOf(S.v009));
    }
};
pub const ISteamMatchmakingServerListResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingServerListResponse"};
    _: u8 = 1,
    pub fn ServerResponded(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerResponded"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.ServerResponded));
    }
    pub fn ServerFailedToRespond(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerFailedToRespond"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.ServerFailedToRespond));
    }
    pub fn RefreshComplete(hRequest: t.HServerListRequest, response: t.EMatchMakingServerResponse, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshComplete"}), .{ hRequest, response, }, .{ "hRequest", "response", }, @TypeOf(S.RefreshComplete));
    }
};
pub const ISteamMatchmakingPingResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingPingResponse"};
    _: u8 = 1,
    pub fn ServerResponded(server: [*c]t.gameserveritem_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerResponded"}), .{ server, }, .{ "server", }, @TypeOf(S.ServerResponded));
    }
    pub fn ServerFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerFailedToRespond"}), .{ }, .{ }, @TypeOf(S.ServerFailedToRespond));
    }
};
pub const ISteamMatchmakingPlayersResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingPlayersResponse"};
    _: u8 = 1,
    pub fn AddPlayerToList(pchName: [*c]const u8, nScore: i32, flTimePlayed: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPlayerToList"}), .{ pchName, nScore, flTimePlayed, }, .{ "pchName", "nScore", "flTimePlayed", }, @TypeOf(S.AddPlayerToList));
    }
    pub fn PlayersFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayersFailedToRespond"}), .{ }, .{ }, @TypeOf(S.PlayersFailedToRespond));
    }
    pub fn PlayersRefreshComplete() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayersRefreshComplete"}), .{ }, .{ }, @TypeOf(S.PlayersRefreshComplete));
    }
};
pub const ISteamMatchmakingRulesResponse = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingRulesResponse"};
    _: u8 = 1,
    pub fn RulesResponded(pchRule: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesResponded"}), .{ pchRule, pchValue, }, .{ "pchRule", "pchValue", }, @TypeOf(S.RulesResponded));
    }
    pub fn RulesFailedToRespond() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesFailedToRespond"}), .{ }, .{ }, @TypeOf(S.RulesFailedToRespond));
    }
    pub fn RulesRefreshComplete() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RulesRefreshComplete"}), .{ }, .{ }, @TypeOf(S.RulesRefreshComplete));
    }
};
pub const ISteamMatchmakingServers = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMatchmakingServers"};
    _: u8 = 1,
    pub const version = "SteamMatchMakingServers002";
    pub fn RequestInternetServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestInternetServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestInternetServerList));
    }
    pub fn RequestLANServerList(iApp: t.AppId_t, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestLANServerList"}), .{ iApp, pRequestServersResponse, }, .{ "iApp", "pRequestServersResponse", }, @TypeOf(S.RequestLANServerList));
    }
    pub fn RequestFriendsServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFriendsServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestFriendsServerList));
    }
    pub fn RequestFavoritesServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestFavoritesServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestFavoritesServerList));
    }
    pub fn RequestHistoryServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestHistoryServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestHistoryServerList));
    }
    pub fn RequestSpectatorServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse, ) callconv(.C) t.HServerListRequest {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestSpectatorServerList"}), .{ iApp, ppchFilters, nFilters, pRequestServersResponse, }, .{ "iApp", "ppchFilters", "nFilters", "pRequestServersResponse", }, @TypeOf(S.RequestSpectatorServerList));
    }
    pub fn ReleaseRequest(hServerListRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseRequest"}), .{ hServerListRequest, }, .{ "hServerListRequest", }, @TypeOf(S.ReleaseRequest));
    }
    pub fn GetServerDetails(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) [*c]t.gameserveritem_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerDetails"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.GetServerDetails));
    }
    pub fn CancelQuery(hRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelQuery"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.CancelQuery));
    }
    pub fn RefreshQuery(hRequest: t.HServerListRequest, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshQuery"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.RefreshQuery));
    }
    pub fn IsRefreshing(hRequest: t.HServerListRequest, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsRefreshing"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.IsRefreshing));
    }
    pub fn GetServerCount(hRequest: t.HServerListRequest, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerCount"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.GetServerCount));
    }
    pub fn RefreshServer(hRequest: t.HServerListRequest, iServer: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RefreshServer"}), .{ hRequest, iServer, }, .{ "hRequest", "iServer", }, @TypeOf(S.RefreshServer));
    }
    pub fn PingServer(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPingResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PingServer"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.PingServer));
    }
    pub fn PlayerDetails(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPlayersResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayerDetails"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.PlayerDetails));
    }
    pub fn ServerRules(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingRulesResponse, ) callconv(.C) t.HServerQuery {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ServerRules"}), .{ unIP, usPort, pRequestServersResponse, }, .{ "unIP", "usPort", "pRequestServersResponse", }, @TypeOf(S.ServerRules));
    }
    pub fn CancelServerQuery(hServerQuery: t.HServerQuery, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelServerQuery"}), .{ hServerQuery, }, .{ "hServerQuery", }, @TypeOf(S.CancelServerQuery));
    }
};
pub const SteamMatchmakingServers = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMatchmakingServers"};
    pub fn v002() callconv(.C) [*c]t.ISteamMatchmakingServers {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
};
pub const ISteamGameSearch = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameSearch"};
    _: u8 = 1,
    pub const version = "SteamMatchGameSearch001";
    pub fn AddGameSearchParams(pchKeyToFind: [*c]const u8, pchValuesToFind: [*c]const u8, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddGameSearchParams"}), .{ pchKeyToFind, pchValuesToFind, }, .{ "pchKeyToFind", "pchValuesToFind", }, @TypeOf(S.AddGameSearchParams));
    }
    pub fn SearchForGameWithLobby(steamIDLobby: t.CSteamID, nPlayerMin: i32, nPlayerMax: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SearchForGameWithLobby"}), .{ steamIDLobby, nPlayerMin, nPlayerMax, }, .{ "steamIDLobby", "nPlayerMin", "nPlayerMax", }, @TypeOf(S.SearchForGameWithLobby));
    }
    pub fn SearchForGameSolo(nPlayerMin: i32, nPlayerMax: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SearchForGameSolo"}), .{ nPlayerMin, nPlayerMax, }, .{ "nPlayerMin", "nPlayerMax", }, @TypeOf(S.SearchForGameSolo));
    }
    pub fn AcceptGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptGame"}), .{ }, .{ }, @TypeOf(S.AcceptGame));
    }
    pub fn DeclineGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeclineGame"}), .{ }, .{ }, @TypeOf(S.DeclineGame));
    }
    pub fn RetrieveConnectionDetails(steamIDHost: t.CSteamID, pchConnectionDetails: [*c]u8, cubConnectionDetails: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveConnectionDetails"}), .{ steamIDHost, pchConnectionDetails, cubConnectionDetails, }, .{ "steamIDHost", "pchConnectionDetails", "cubConnectionDetails", }, @TypeOf(S.RetrieveConnectionDetails));
    }
    pub fn EndGameSearch() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndGameSearch"}), .{ }, .{ }, @TypeOf(S.EndGameSearch));
    }
    pub fn SetGameHostParams(pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameHostParams"}), .{ pchKey, pchValue, }, .{ "pchKey", "pchValue", }, @TypeOf(S.SetGameHostParams));
    }
    pub fn SetConnectionDetails(pchConnectionDetails: [*c]const u8, cubConnectionDetails: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionDetails"}), .{ pchConnectionDetails, cubConnectionDetails, }, .{ "pchConnectionDetails", "cubConnectionDetails", }, @TypeOf(S.SetConnectionDetails));
    }
    pub fn RequestPlayersForGame(nPlayerMin: i32, nPlayerMax: i32, nMaxTeamSize: i32, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestPlayersForGame"}), .{ nPlayerMin, nPlayerMax, nMaxTeamSize, }, .{ "nPlayerMin", "nPlayerMax", "nMaxTeamSize", }, @TypeOf(S.RequestPlayersForGame));
    }
    pub fn HostConfirmGameStart(ullUniqueGameID: t.uint64, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HostConfirmGameStart"}), .{ ullUniqueGameID, }, .{ "ullUniqueGameID", }, @TypeOf(S.HostConfirmGameStart));
    }
    pub fn CancelRequestPlayersForGame() callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelRequestPlayersForGame"}), .{ }, .{ }, @TypeOf(S.CancelRequestPlayersForGame));
    }
    pub fn SubmitPlayerResult(ullUniqueGameID: t.uint64, steamIDPlayer: t.CSteamID, EPlayerResult: t.EPlayerResult_t, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitPlayerResult"}), .{ ullUniqueGameID, steamIDPlayer, EPlayerResult, }, .{ "ullUniqueGameID", "steamIDPlayer", "EPlayerResult", }, @TypeOf(S.SubmitPlayerResult));
    }
    pub fn EndGame(ullUniqueGameID: t.uint64, ) callconv(.C) t.EGameSearchErrorCode_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndGame"}), .{ ullUniqueGameID, }, .{ "ullUniqueGameID", }, @TypeOf(S.EndGame));
    }
};
pub const SteamGameSearch = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameSearch"};
    pub fn v001() callconv(.C) [*c]t.ISteamGameSearch {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamParties = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamParties"};
    _: u8 = 1,
    pub const version = "SteamParties002";
    pub fn GetNumActiveBeacons() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumActiveBeacons"}), .{ }, .{ }, @TypeOf(S.GetNumActiveBeacons));
    }
    pub fn GetBeaconByIndex(unIndex: t.uint32, ) callconv(.C) t.PartyBeaconID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconByIndex"}), .{ unIndex, }, .{ "unIndex", }, @TypeOf(S.GetBeaconByIndex));
    }
    pub fn GetBeaconDetails(ulBeaconID: t.PartyBeaconID_t, pSteamIDBeaconOwner: [*c]t.CSteamID, pLocation: [*c]t.SteamPartyBeaconLocation_t, pchMetadata: [*c]u8, cchMetadata: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconDetails"}), .{ ulBeaconID, pSteamIDBeaconOwner, pLocation, pchMetadata, cchMetadata, }, .{ "ulBeaconID", "pSteamIDBeaconOwner", "pLocation", "pchMetadata", "cchMetadata", }, @TypeOf(S.GetBeaconDetails));
    }
    pub fn JoinParty(ulBeaconID: t.PartyBeaconID_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JoinParty"}), .{ ulBeaconID, }, .{ "ulBeaconID", }, @TypeOf(S.JoinParty));
    }
    pub fn GetNumAvailableBeaconLocations(puNumLocations: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumAvailableBeaconLocations"}), .{ puNumLocations, }, .{ "puNumLocations", }, @TypeOf(S.GetNumAvailableBeaconLocations));
    }
    pub fn GetAvailableBeaconLocations(pLocationList: [*c]t.SteamPartyBeaconLocation_t, uMaxNumLocations: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableBeaconLocations"}), .{ pLocationList, uMaxNumLocations, }, .{ "pLocationList", "uMaxNumLocations", }, @TypeOf(S.GetAvailableBeaconLocations));
    }
    pub fn CreateBeacon(unOpenSlots: t.uint32, pBeaconLocation: [*c]t.SteamPartyBeaconLocation_t, pchConnectString: [*c]const u8, pchMetadata: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateBeacon"}), .{ unOpenSlots, pBeaconLocation, pchConnectString, pchMetadata, }, .{ "unOpenSlots", "pBeaconLocation", "pchConnectString", "pchMetadata", }, @TypeOf(S.CreateBeacon));
    }
    pub fn OnReservationCompleted(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OnReservationCompleted"}), .{ ulBeacon, steamIDUser, }, .{ "ulBeacon", "steamIDUser", }, @TypeOf(S.OnReservationCompleted));
    }
    pub fn CancelReservation(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelReservation"}), .{ ulBeacon, steamIDUser, }, .{ "ulBeacon", "steamIDUser", }, @TypeOf(S.CancelReservation));
    }
    pub fn ChangeNumOpenSlots(ulBeacon: t.PartyBeaconID_t, unOpenSlots: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ChangeNumOpenSlots"}), .{ ulBeacon, unOpenSlots, }, .{ "ulBeacon", "unOpenSlots", }, @TypeOf(S.ChangeNumOpenSlots));
    }
    pub fn DestroyBeacon(ulBeacon: t.PartyBeaconID_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyBeacon"}), .{ ulBeacon, }, .{ "ulBeacon", }, @TypeOf(S.DestroyBeacon));
    }
    pub fn GetBeaconLocationData(BeaconLocation: t.SteamPartyBeaconLocation_t, eData: t.ESteamPartyBeaconLocationData, pchDataStringOut: [*c]u8, cchDataStringOut: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetBeaconLocationData"}), .{ BeaconLocation, eData, pchDataStringOut, cchDataStringOut, }, .{ "BeaconLocation", "eData", "pchDataStringOut", "cchDataStringOut", }, @TypeOf(S.GetBeaconLocationData));
    }
};
pub const SteamParties = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamParties"};
    pub fn v002() callconv(.C) [*c]t.ISteamParties {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
};
pub const ISteamRemoteStorage = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamRemoteStorage"};
    _: u8 = 1,
    pub const version = "STEAMREMOTESTORAGE_INTERFACE_VERSION016";
    pub fn FileWrite(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWrite"}), .{ pchFile, pvData, cubData, }, .{ "pchFile", "pvData", "cubData", }, @TypeOf(S.FileWrite));
    }
    pub fn FileRead(pchFile: [*c]const u8, pvData: ?*anyopaque, cubDataToRead: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileRead"}), .{ pchFile, pvData, cubDataToRead, }, .{ "pchFile", "pvData", "cubDataToRead", }, @TypeOf(S.FileRead));
    }
    pub fn FileWriteAsync(pchFile: [*c]const u8, pvData: ?*const anyopaque, cubData: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteAsync"}), .{ pchFile, pvData, cubData, }, .{ "pchFile", "pvData", "cubData", }, @TypeOf(S.FileWriteAsync));
    }
    pub fn FileReadAsync(pchFile: [*c]const u8, nOffset: t.uint32, cubToRead: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileReadAsync"}), .{ pchFile, nOffset, cubToRead, }, .{ "pchFile", "nOffset", "cubToRead", }, @TypeOf(S.FileReadAsync));
    }
    pub fn FileReadAsyncComplete(hReadCall: t.SteamAPICall_t, pvBuffer: ?*anyopaque, cubToRead: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileReadAsyncComplete"}), .{ hReadCall, pvBuffer, cubToRead, }, .{ "hReadCall", "pvBuffer", "cubToRead", }, @TypeOf(S.FileReadAsyncComplete));
    }
    pub fn FileForget(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileForget"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileForget));
    }
    pub fn FileDelete(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileDelete"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileDelete));
    }
    pub fn FileShare(pchFile: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileShare"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileShare));
    }
    pub fn SetSyncPlatforms(pchFile: [*c]const u8, eRemoteStoragePlatform: t.ERemoteStoragePlatform, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSyncPlatforms"}), .{ pchFile, eRemoteStoragePlatform, }, .{ "pchFile", "eRemoteStoragePlatform", }, @TypeOf(S.SetSyncPlatforms));
    }
    pub fn FileWriteStreamOpen(pchFile: [*c]const u8, ) callconv(.C) t.UGCFileWriteStreamHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamOpen"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileWriteStreamOpen));
    }
    pub fn FileWriteStreamWriteChunk(writeHandle: t.UGCFileWriteStreamHandle_t, pvData: ?*const anyopaque, cubData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamWriteChunk"}), .{ writeHandle, pvData, cubData, }, .{ "writeHandle", "pvData", "cubData", }, @TypeOf(S.FileWriteStreamWriteChunk));
    }
    pub fn FileWriteStreamClose(writeHandle: t.UGCFileWriteStreamHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamClose"}), .{ writeHandle, }, .{ "writeHandle", }, @TypeOf(S.FileWriteStreamClose));
    }
    pub fn FileWriteStreamCancel(writeHandle: t.UGCFileWriteStreamHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileWriteStreamCancel"}), .{ writeHandle, }, .{ "writeHandle", }, @TypeOf(S.FileWriteStreamCancel));
    }
    pub fn FileExists(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileExists"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FileExists));
    }
    pub fn FilePersisted(pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FilePersisted"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.FilePersisted));
    }
    pub fn GetFileSize(pchFile: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileSize"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetFileSize));
    }
    pub fn GetFileTimestamp(pchFile: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileTimestamp"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetFileTimestamp));
    }
    pub fn GetSyncPlatforms(pchFile: [*c]const u8, ) callconv(.C) t.ERemoteStoragePlatform {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSyncPlatforms"}), .{ pchFile, }, .{ "pchFile", }, @TypeOf(S.GetSyncPlatforms));
    }
    pub fn GetFileCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileCount"}), .{ }, .{ }, @TypeOf(S.GetFileCount));
    }
    pub fn GetFileNameAndSize(iFile: i32, pnFileSizeInBytes: [*c]i32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileNameAndSize"}), .{ iFile, pnFileSizeInBytes, }, .{ "iFile", "pnFileSizeInBytes", }, @TypeOf(S.GetFileNameAndSize));
    }
    pub fn GetQuota(pnTotalBytes: [*c]t.uint64, puAvailableBytes: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQuota"}), .{ pnTotalBytes, puAvailableBytes, }, .{ "pnTotalBytes", "puAvailableBytes", }, @TypeOf(S.GetQuota));
    }
    pub fn IsCloudEnabledForAccount() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsCloudEnabledForAccount"}), .{ }, .{ }, @TypeOf(S.IsCloudEnabledForAccount));
    }
    pub fn IsCloudEnabledForApp() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsCloudEnabledForApp"}), .{ }, .{ }, @TypeOf(S.IsCloudEnabledForApp));
    }
    pub fn SetCloudEnabledForApp(bEnabled: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCloudEnabledForApp"}), .{ bEnabled, }, .{ "bEnabled", }, @TypeOf(S.SetCloudEnabledForApp));
    }
    pub fn UGCDownload(hContent: t.UGCHandle_t, unPriority: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCDownload"}), .{ hContent, unPriority, }, .{ "hContent", "unPriority", }, @TypeOf(S.UGCDownload));
    }
    pub fn GetUGCDownloadProgress(hContent: t.UGCHandle_t, pnBytesDownloaded: [*c]i32, pnBytesExpected: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUGCDownloadProgress"}), .{ hContent, pnBytesDownloaded, pnBytesExpected, }, .{ "hContent", "pnBytesDownloaded", "pnBytesExpected", }, @TypeOf(S.GetUGCDownloadProgress));
    }
    pub fn GetUGCDetails(hContent: t.UGCHandle_t, pnAppID: [*c]t.AppId_t, ppchName: [*c][*c]u8, pnFileSizeInBytes: [*c]i32, pSteamIDOwner: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUGCDetails"}), .{ hContent, pnAppID, ppchName, pnFileSizeInBytes, pSteamIDOwner, }, .{ "hContent", "pnAppID", "ppchName", "pnFileSizeInBytes", "pSteamIDOwner", }, @TypeOf(S.GetUGCDetails));
    }
    pub fn UGCRead(hContent: t.UGCHandle_t, pvData: ?*anyopaque, cubDataToRead: i32, cOffset: t.uint32, eAction: t.EUGCReadAction, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCRead"}), .{ hContent, pvData, cubDataToRead, cOffset, eAction, }, .{ "hContent", "pvData", "cubDataToRead", "cOffset", "eAction", }, @TypeOf(S.UGCRead));
    }
    pub fn GetCachedUGCCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCachedUGCCount"}), .{ }, .{ }, @TypeOf(S.GetCachedUGCCount));
    }
    pub fn GetCachedUGCHandle(iCachedContent: i32, ) callconv(.C) t.UGCHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCachedUGCHandle"}), .{ iCachedContent, }, .{ "iCachedContent", }, @TypeOf(S.GetCachedUGCHandle));
    }
    pub fn PublishWorkshopFile(pchFile: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, eWorkshopFileType: t.EWorkshopFileType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PublishWorkshopFile"}), .{ pchFile, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, eWorkshopFileType, }, .{ "pchFile", "pchPreviewFile", "nConsumerAppId", "pchTitle", "pchDescription", "eVisibility", "pTags", "eWorkshopFileType", }, @TypeOf(S.PublishWorkshopFile));
    }
    pub fn CreatePublishedFileUpdateRequest(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.PublishedFileUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreatePublishedFileUpdateRequest"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.CreatePublishedFileUpdateRequest));
    }
    pub fn UpdatePublishedFileFile(updateHandle: t.PublishedFileUpdateHandle_t, pchFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileFile"}), .{ updateHandle, pchFile, }, .{ "updateHandle", "pchFile", }, @TypeOf(S.UpdatePublishedFileFile));
    }
    pub fn UpdatePublishedFilePreviewFile(updateHandle: t.PublishedFileUpdateHandle_t, pchPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFilePreviewFile"}), .{ updateHandle, pchPreviewFile, }, .{ "updateHandle", "pchPreviewFile", }, @TypeOf(S.UpdatePublishedFilePreviewFile));
    }
    pub fn UpdatePublishedFileTitle(updateHandle: t.PublishedFileUpdateHandle_t, pchTitle: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileTitle"}), .{ updateHandle, pchTitle, }, .{ "updateHandle", "pchTitle", }, @TypeOf(S.UpdatePublishedFileTitle));
    }
    pub fn UpdatePublishedFileDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileDescription"}), .{ updateHandle, pchDescription, }, .{ "updateHandle", "pchDescription", }, @TypeOf(S.UpdatePublishedFileDescription));
    }
    pub fn UpdatePublishedFileVisibility(updateHandle: t.PublishedFileUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileVisibility"}), .{ updateHandle, eVisibility, }, .{ "updateHandle", "eVisibility", }, @TypeOf(S.UpdatePublishedFileVisibility));
    }
    pub fn UpdatePublishedFileTags(updateHandle: t.PublishedFileUpdateHandle_t, pTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileTags"}), .{ updateHandle, pTags, }, .{ "updateHandle", "pTags", }, @TypeOf(S.UpdatePublishedFileTags));
    }
    pub fn CommitPublishedFileUpdate(updateHandle: t.PublishedFileUpdateHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CommitPublishedFileUpdate"}), .{ updateHandle, }, .{ "updateHandle", }, @TypeOf(S.CommitPublishedFileUpdate));
    }
    pub fn GetPublishedFileDetails(unPublishedFileId: t.PublishedFileId_t, unMaxSecondsOld: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublishedFileDetails"}), .{ unPublishedFileId, unMaxSecondsOld, }, .{ "unPublishedFileId", "unMaxSecondsOld", }, @TypeOf(S.GetPublishedFileDetails));
    }
    pub fn DeletePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeletePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.DeletePublishedFile));
    }
    pub fn EnumerateUserPublishedFiles(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserPublishedFiles"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateUserPublishedFiles));
    }
    pub fn SubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubscribePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.SubscribePublishedFile));
    }
    pub fn EnumerateUserSubscribedFiles(unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserSubscribedFiles"}), .{ unStartIndex, }, .{ "unStartIndex", }, @TypeOf(S.EnumerateUserSubscribedFiles));
    }
    pub fn UnsubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UnsubscribePublishedFile"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.UnsubscribePublishedFile));
    }
    pub fn UpdatePublishedFileSetChangeDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchChangeDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePublishedFileSetChangeDescription"}), .{ updateHandle, pchChangeDescription, }, .{ "updateHandle", "pchChangeDescription", }, @TypeOf(S.UpdatePublishedFileSetChangeDescription));
    }
    pub fn GetPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublishedItemVoteDetails"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.GetPublishedItemVoteDetails));
    }
    pub fn UpdateUserPublishedItemVote(unPublishedFileId: t.PublishedFileId_t, bVoteUp: bool, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateUserPublishedItemVote"}), .{ unPublishedFileId, bVoteUp, }, .{ "unPublishedFileId", "bVoteUp", }, @TypeOf(S.UpdateUserPublishedItemVote));
    }
    pub fn GetUserPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserPublishedItemVoteDetails"}), .{ unPublishedFileId, }, .{ "unPublishedFileId", }, @TypeOf(S.GetUserPublishedItemVoteDetails));
    }
    pub fn EnumerateUserSharedWorkshopFiles(steamId: t.CSteamID, unStartIndex: t.uint32, pRequiredTags: [*c]t.SteamParamStringArray_t, pExcludedTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumerateUserSharedWorkshopFiles"}), .{ steamId, unStartIndex, pRequiredTags, pExcludedTags, }, .{ "steamId", "unStartIndex", "pRequiredTags", "pExcludedTags", }, @TypeOf(S.EnumerateUserSharedWorkshopFiles));
    }
    pub fn PublishVideo(eVideoProvider: t.EWorkshopVideoProvider, pchVideoAccount: [*c]const u8, pchVideoIdentifier: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PublishVideo"}), .{ eVideoProvider, pchVideoAccount, pchVideoIdentifier, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, }, .{ "eVideoProvider", "pchVideoAccount", "pchVideoIdentifier", "pchPreviewFile", "nConsumerAppId", "pchTitle", "pchDescription", "eVisibility", "pTags", }, @TypeOf(S.PublishVideo));
    }
    pub fn SetUserPublishedFileAction(unPublishedFileId: t.PublishedFileId_t, eAction: t.EWorkshopFileAction, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserPublishedFileAction"}), .{ unPublishedFileId, eAction, }, .{ "unPublishedFileId", "eAction", }, @TypeOf(S.SetUserPublishedFileAction));
    }
    pub fn EnumeratePublishedFilesByUserAction(eAction: t.EWorkshopFileAction, unStartIndex: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumeratePublishedFilesByUserAction"}), .{ eAction, unStartIndex, }, .{ "eAction", "unStartIndex", }, @TypeOf(S.EnumeratePublishedFilesByUserAction));
    }
    pub fn EnumeratePublishedWorkshopFiles(eEnumerationType: t.EWorkshopEnumerationType, unStartIndex: t.uint32, unCount: t.uint32, unDays: t.uint32, pTags: [*c]t.SteamParamStringArray_t, pUserTags: [*c]t.SteamParamStringArray_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnumeratePublishedWorkshopFiles"}), .{ eEnumerationType, unStartIndex, unCount, unDays, pTags, pUserTags, }, .{ "eEnumerationType", "unStartIndex", "unCount", "unDays", "pTags", "pUserTags", }, @TypeOf(S.EnumeratePublishedWorkshopFiles));
    }
    pub fn UGCDownloadToLocation(hContent: t.UGCHandle_t, pchLocation: [*c]const u8, unPriority: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UGCDownloadToLocation"}), .{ hContent, pchLocation, unPriority, }, .{ "hContent", "pchLocation", "unPriority", }, @TypeOf(S.UGCDownloadToLocation));
    }
    pub fn GetLocalFileChangeCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalFileChangeCount"}), .{ }, .{ }, @TypeOf(S.GetLocalFileChangeCount));
    }
    pub fn GetLocalFileChange(iFile: i32, pEChangeType: [*c]t.ERemoteStorageLocalFileChange, pEFilePathType: [*c]t.ERemoteStorageFilePathType, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalFileChange"}), .{ iFile, pEChangeType, pEFilePathType, }, .{ "iFile", "pEChangeType", "pEFilePathType", }, @TypeOf(S.GetLocalFileChange));
    }
    pub fn BeginFileWriteBatch() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginFileWriteBatch"}), .{ }, .{ }, @TypeOf(S.BeginFileWriteBatch));
    }
    pub fn EndFileWriteBatch() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndFileWriteBatch"}), .{ }, .{ }, @TypeOf(S.EndFileWriteBatch));
    }
};
pub const SteamRemoteStorage = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamRemoteStorage"};
    pub fn v016() callconv(.C) [*c]t.ISteamRemoteStorage {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
};
pub const ISteamUserStats = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUserStats"};
    _: u8 = 1,
    pub const version = "STEAMUSERSTATS_INTERFACE_VERSION012";
    pub fn RequestCurrentStats() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestCurrentStats"}), .{ }, .{ }, @TypeOf(S.RequestCurrentStats));
    }
    pub fn GetStatInt32(pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStatInt32"}), .{ pchName, pData, }, .{ "pchName", "pData", }, @TypeOf(S.GetStatInt32));
    }
    pub fn GetStatFloat(pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStatFloat"}), .{ pchName, pData, }, .{ "pchName", "pData", }, @TypeOf(S.GetStatFloat));
    }
    pub fn SetStatInt32(pchName: [*c]const u8, nData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetStatInt32"}), .{ pchName, nData, }, .{ "pchName", "nData", }, @TypeOf(S.SetStatInt32));
    }
    pub fn SetStatFloat(pchName: [*c]const u8, fData: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetStatFloat"}), .{ pchName, fData, }, .{ "pchName", "fData", }, @TypeOf(S.SetStatFloat));
    }
    pub fn UpdateAvgRateStat(pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateAvgRateStat"}), .{ pchName, flCountThisSession, dSessionLength, }, .{ "pchName", "flCountThisSession", "dSessionLength", }, @TypeOf(S.UpdateAvgRateStat));
    }
    pub fn GetAchievement(pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievement"}), .{ pchName, pbAchieved, }, .{ "pchName", "pbAchieved", }, @TypeOf(S.GetAchievement));
    }
    pub fn SetAchievement(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAchievement"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.SetAchievement));
    }
    pub fn ClearAchievement(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearAchievement"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.ClearAchievement));
    }
    pub fn GetAchievementAndUnlockTime(pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementAndUnlockTime"}), .{ pchName, pbAchieved, punUnlockTime, }, .{ "pchName", "pbAchieved", "punUnlockTime", }, @TypeOf(S.GetAchievementAndUnlockTime));
    }
    pub fn StoreStats() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StoreStats"}), .{ }, .{ }, @TypeOf(S.StoreStats));
    }
    pub fn GetAchievementIcon(pchName: [*c]const u8, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementIcon"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.GetAchievementIcon));
    }
    pub fn GetAchievementDisplayAttribute(pchName: [*c]const u8, pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementDisplayAttribute"}), .{ pchName, pchKey, }, .{ "pchName", "pchKey", }, @TypeOf(S.GetAchievementDisplayAttribute));
    }
    pub fn IndicateAchievementProgress(pchName: [*c]const u8, nCurProgress: t.uint32, nMaxProgress: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IndicateAchievementProgress"}), .{ pchName, nCurProgress, nMaxProgress, }, .{ "pchName", "nCurProgress", "nMaxProgress", }, @TypeOf(S.IndicateAchievementProgress));
    }
    pub fn GetNumAchievements() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumAchievements"}), .{ }, .{ }, @TypeOf(S.GetNumAchievements));
    }
    pub fn GetAchievementName(iAchievement: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementName"}), .{ iAchievement, }, .{ "iAchievement", }, @TypeOf(S.GetAchievementName));
    }
    pub fn RequestUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.RequestUserStats));
    }
    pub fn GetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatInt32"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatInt32));
    }
    pub fn GetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatFloat"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatFloat));
    }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievement"}), .{ steamIDUser, pchName, pbAchieved, }, .{ "steamIDUser", "pchName", "pbAchieved", }, @TypeOf(S.GetUserAchievement));
    }
    pub fn GetUserAchievementAndUnlockTime(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievementAndUnlockTime"}), .{ steamIDUser, pchName, pbAchieved, punUnlockTime, }, .{ "steamIDUser", "pchName", "pbAchieved", "punUnlockTime", }, @TypeOf(S.GetUserAchievementAndUnlockTime));
    }
    pub fn ResetAllStats(bAchievementsToo: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetAllStats"}), .{ bAchievementsToo, }, .{ "bAchievementsToo", }, @TypeOf(S.ResetAllStats));
    }
    pub fn FindOrCreateLeaderboard(pchLeaderboardName: [*c]const u8, eLeaderboardSortMethod: t.ELeaderboardSortMethod, eLeaderboardDisplayType: t.ELeaderboardDisplayType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindOrCreateLeaderboard"}), .{ pchLeaderboardName, eLeaderboardSortMethod, eLeaderboardDisplayType, }, .{ "pchLeaderboardName", "eLeaderboardSortMethod", "eLeaderboardDisplayType", }, @TypeOf(S.FindOrCreateLeaderboard));
    }
    pub fn FindLeaderboard(pchLeaderboardName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindLeaderboard"}), .{ pchLeaderboardName, }, .{ "pchLeaderboardName", }, @TypeOf(S.FindLeaderboard));
    }
    pub fn GetLeaderboardName(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardName"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardName));
    }
    pub fn GetLeaderboardEntryCount(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardEntryCount"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardEntryCount));
    }
    pub fn GetLeaderboardSortMethod(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) t.ELeaderboardSortMethod {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardSortMethod"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardSortMethod));
    }
    pub fn GetLeaderboardDisplayType(hSteamLeaderboard: t.SteamLeaderboard_t, ) callconv(.C) t.ELeaderboardDisplayType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLeaderboardDisplayType"}), .{ hSteamLeaderboard, }, .{ "hSteamLeaderboard", }, @TypeOf(S.GetLeaderboardDisplayType));
    }
    pub fn DownloadLeaderboardEntries(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardDataRequest: t.ELeaderboardDataRequest, nRangeStart: i32, nRangeEnd: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadLeaderboardEntries"}), .{ hSteamLeaderboard, eLeaderboardDataRequest, nRangeStart, nRangeEnd, }, .{ "hSteamLeaderboard", "eLeaderboardDataRequest", "nRangeStart", "nRangeEnd", }, @TypeOf(S.DownloadLeaderboardEntries));
    }
    pub fn DownloadLeaderboardEntriesForUsers(hSteamLeaderboard: t.SteamLeaderboard_t, prgUsers: [*c]t.CSteamID, cUsers: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadLeaderboardEntriesForUsers"}), .{ hSteamLeaderboard, prgUsers, cUsers, }, .{ "hSteamLeaderboard", "prgUsers", "cUsers", }, @TypeOf(S.DownloadLeaderboardEntriesForUsers));
    }
    pub fn GetDownloadedLeaderboardEntry(hSteamLeaderboardEntries: t.SteamLeaderboardEntries_t, index: i32, pLeaderboardEntry: [*c]t.LeaderboardEntry_t, pDetails: [*c]i32, cDetailsMax: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDownloadedLeaderboardEntry"}), .{ hSteamLeaderboardEntries, index, pLeaderboardEntry, pDetails, cDetailsMax, }, .{ "hSteamLeaderboardEntries", "index", "pLeaderboardEntry", "pDetails", "cDetailsMax", }, @TypeOf(S.GetDownloadedLeaderboardEntry));
    }
    pub fn UploadLeaderboardScore(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardUploadScoreMethod: t.ELeaderboardUploadScoreMethod, nScore: i32, pScoreDetails: [*c]const i32, cScoreDetailsCount: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UploadLeaderboardScore"}), .{ hSteamLeaderboard, eLeaderboardUploadScoreMethod, nScore, pScoreDetails, cScoreDetailsCount, }, .{ "hSteamLeaderboard", "eLeaderboardUploadScoreMethod", "nScore", "pScoreDetails", "cScoreDetailsCount", }, @TypeOf(S.UploadLeaderboardScore));
    }
    pub fn AttachLeaderboardUGC(hSteamLeaderboard: t.SteamLeaderboard_t, hUGC: t.UGCHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AttachLeaderboardUGC"}), .{ hSteamLeaderboard, hUGC, }, .{ "hSteamLeaderboard", "hUGC", }, @TypeOf(S.AttachLeaderboardUGC));
    }
    pub fn GetNumberOfCurrentPlayers() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumberOfCurrentPlayers"}), .{ }, .{ }, @TypeOf(S.GetNumberOfCurrentPlayers));
    }
    pub fn RequestGlobalAchievementPercentages() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestGlobalAchievementPercentages"}), .{ }, .{ }, @TypeOf(S.RequestGlobalAchievementPercentages));
    }
    pub fn GetMostAchievedAchievementInfo(pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMostAchievedAchievementInfo"}), .{ pchName, unNameBufLen, pflPercent, pbAchieved, }, .{ "pchName", "unNameBufLen", "pflPercent", "pbAchieved", }, @TypeOf(S.GetMostAchievedAchievementInfo));
    }
    pub fn GetNextMostAchievedAchievementInfo(iIteratorPrevious: i32, pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNextMostAchievedAchievementInfo"}), .{ iIteratorPrevious, pchName, unNameBufLen, pflPercent, pbAchieved, }, .{ "iIteratorPrevious", "pchName", "unNameBufLen", "pflPercent", "pbAchieved", }, @TypeOf(S.GetNextMostAchievedAchievementInfo));
    }
    pub fn GetAchievementAchievedPercent(pchName: [*c]const u8, pflPercent: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementAchievedPercent"}), .{ pchName, pflPercent, }, .{ "pchName", "pflPercent", }, @TypeOf(S.GetAchievementAchievedPercent));
    }
    pub fn RequestGlobalStats(nHistoryDays: i32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestGlobalStats"}), .{ nHistoryDays, }, .{ "nHistoryDays", }, @TypeOf(S.RequestGlobalStats));
    }
    pub fn GetGlobalStatInt64(pchStatName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatInt64"}), .{ pchStatName, pData, }, .{ "pchStatName", "pData", }, @TypeOf(S.GetGlobalStatInt64));
    }
    pub fn GetGlobalStatDouble(pchStatName: [*c]const u8, pData: [*c]f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatDouble"}), .{ pchStatName, pData, }, .{ "pchStatName", "pData", }, @TypeOf(S.GetGlobalStatDouble));
    }
    pub fn GetGlobalStatHistoryInt64(pchStatName: [*c]const u8, pData: [*c]i32, cubData: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatHistoryInt64"}), .{ pchStatName, pData, cubData, }, .{ "pchStatName", "pData", "cubData", }, @TypeOf(S.GetGlobalStatHistoryInt64));
    }
    pub fn GetGlobalStatHistoryDouble(pchStatName: [*c]const u8, pData: [*c]f64, cubData: t.uint32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlobalStatHistoryDouble"}), .{ pchStatName, pData, cubData, }, .{ "pchStatName", "pData", "cubData", }, @TypeOf(S.GetGlobalStatHistoryDouble));
    }
    pub fn GetAchievementProgressLimitsInt32(pchName: [*c]const u8, pnMinProgress: [*c]i32, pnMaxProgress: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementProgressLimitsInt32"}), .{ pchName, pnMinProgress, pnMaxProgress, }, .{ "pchName", "pnMinProgress", "pnMaxProgress", }, @TypeOf(S.GetAchievementProgressLimitsInt32));
    }
    pub fn GetAchievementProgressLimitsFloat(pchName: [*c]const u8, pfMinProgress: [*c]f32, pfMaxProgress: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAchievementProgressLimitsFloat"}), .{ pchName, pfMinProgress, pfMaxProgress, }, .{ "pchName", "pfMinProgress", "pfMaxProgress", }, @TypeOf(S.GetAchievementProgressLimitsFloat));
    }
};
pub const SteamUserStats = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUserStats"};
    pub fn v012() callconv(.C) [*c]t.ISteamUserStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
};
pub const ISteamApps = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamApps"};
    _: u8 = 1,
    pub const version = "STEAMAPPS_INTERFACE_VERSION008";
    pub fn BIsSubscribed() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribed"}), .{ }, .{ }, @TypeOf(S.BIsSubscribed));
    }
    pub fn BIsLowViolence() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsLowViolence"}), .{ }, .{ }, @TypeOf(S.BIsLowViolence));
    }
    pub fn BIsCybercafe() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsCybercafe"}), .{ }, .{ }, @TypeOf(S.BIsCybercafe));
    }
    pub fn BIsVACBanned() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsVACBanned"}), .{ }, .{ }, @TypeOf(S.BIsVACBanned));
    }
    pub fn GetCurrentGameLanguage() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentGameLanguage"}), .{ }, .{ }, @TypeOf(S.GetCurrentGameLanguage));
    }
    pub fn GetAvailableGameLanguages() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAvailableGameLanguages"}), .{ }, .{ }, @TypeOf(S.GetAvailableGameLanguages));
    }
    pub fn BIsSubscribedApp(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedApp"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsSubscribedApp));
    }
    pub fn BIsDlcInstalled(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsDlcInstalled"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsDlcInstalled));
    }
    pub fn GetEarliestPurchaseUnixTime(nAppID: t.AppId_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEarliestPurchaseUnixTime"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.GetEarliestPurchaseUnixTime));
    }
    pub fn BIsSubscribedFromFreeWeekend() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedFromFreeWeekend"}), .{ }, .{ }, @TypeOf(S.BIsSubscribedFromFreeWeekend));
    }
    pub fn GetDLCCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDLCCount"}), .{ }, .{ }, @TypeOf(S.GetDLCCount));
    }
    pub fn BGetDLCDataByIndex(iDLC: i32, pAppID: [*c]t.AppId_t, pbAvailable: [*c]bool, pchName: [*c]u8, cchNameBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BGetDLCDataByIndex"}), .{ iDLC, pAppID, pbAvailable, pchName, cchNameBufferSize, }, .{ "iDLC", "pAppID", "pbAvailable", "pchName", "cchNameBufferSize", }, @TypeOf(S.BGetDLCDataByIndex));
    }
    pub fn InstallDLC(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InstallDLC"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.InstallDLC));
    }
    pub fn UninstallDLC(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UninstallDLC"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.UninstallDLC));
    }
    pub fn RequestAppProofOfPurchaseKey(nAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestAppProofOfPurchaseKey"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.RequestAppProofOfPurchaseKey));
    }
    pub fn GetCurrentBetaName(pchName: [*c]u8, cchNameBufferSize: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentBetaName"}), .{ pchName, cchNameBufferSize, }, .{ "pchName", "cchNameBufferSize", }, @TypeOf(S.GetCurrentBetaName));
    }
    pub fn MarkContentCorrupt(bMissingFilesOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MarkContentCorrupt"}), .{ bMissingFilesOnly, }, .{ "bMissingFilesOnly", }, @TypeOf(S.MarkContentCorrupt));
    }
    pub fn GetInstalledDepots(appID: t.AppId_t, pvecDepots: [*c]t.DepotId_t, cMaxDepots: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInstalledDepots"}), .{ appID, pvecDepots, cMaxDepots, }, .{ "appID", "pvecDepots", "cMaxDepots", }, @TypeOf(S.GetInstalledDepots));
    }
    pub fn GetAppInstallDir(appID: t.AppId_t, pchFolder: [*c]u8, cchFolderBufferSize: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppInstallDir"}), .{ appID, pchFolder, cchFolderBufferSize, }, .{ "appID", "pchFolder", "cchFolderBufferSize", }, @TypeOf(S.GetAppInstallDir));
    }
    pub fn BIsAppInstalled(appID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppInstalled"}), .{ appID, }, .{ "appID", }, @TypeOf(S.BIsAppInstalled));
    }
    pub fn GetAppOwner() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppOwner"}), .{ }, .{ }, @TypeOf(S.GetAppOwner));
    }
    pub fn GetLaunchQueryParam(pchKey: [*c]const u8, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLaunchQueryParam"}), .{ pchKey, }, .{ "pchKey", }, @TypeOf(S.GetLaunchQueryParam));
    }
    pub fn GetDlcDownloadProgress(nAppID: t.AppId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDlcDownloadProgress"}), .{ nAppID, punBytesDownloaded, punBytesTotal, }, .{ "nAppID", "punBytesDownloaded", "punBytesTotal", }, @TypeOf(S.GetDlcDownloadProgress));
    }
    pub fn GetAppBuildId() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppBuildId"}), .{ }, .{ }, @TypeOf(S.GetAppBuildId));
    }
    pub fn RequestAllProofOfPurchaseKeys() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestAllProofOfPurchaseKeys"}), .{ }, .{ }, @TypeOf(S.RequestAllProofOfPurchaseKeys));
    }
    pub fn GetFileDetails(pszFileName: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFileDetails"}), .{ pszFileName, }, .{ "pszFileName", }, @TypeOf(S.GetFileDetails));
    }
    pub fn GetLaunchCommandLine(pszCommandLine: [*c]u8, cubCommandLine: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLaunchCommandLine"}), .{ pszCommandLine, cubCommandLine, }, .{ "pszCommandLine", "cubCommandLine", }, @TypeOf(S.GetLaunchCommandLine));
    }
    pub fn BIsSubscribedFromFamilySharing() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsSubscribedFromFamilySharing"}), .{ }, .{ }, @TypeOf(S.BIsSubscribedFromFamilySharing));
    }
    pub fn BIsTimedTrial(punSecondsAllowed: [*c]t.uint32, punSecondsPlayed: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsTimedTrial"}), .{ punSecondsAllowed, punSecondsPlayed, }, .{ "punSecondsAllowed", "punSecondsPlayed", }, @TypeOf(S.BIsTimedTrial));
    }
};
pub const SteamApps = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamApps"};
    pub fn v008() callconv(.C) [*c]t.ISteamApps {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v008"}), .{ }, .{ }, @TypeOf(S.v008));
    }
};
pub const ISteamNetworking = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworking"};
    _: u8 = 1,
    pub const version = "SteamNetworking006";
    pub fn SendP2PPacket(steamIDRemote: t.CSteamID, pubData: ?*const anyopaque, cubData: t.uint32, eP2PSendType: t.EP2PSend, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendP2PPacket"}), .{ steamIDRemote, pubData, cubData, eP2PSendType, nChannel, }, .{ "steamIDRemote", "pubData", "cubData", "eP2PSendType", "nChannel", }, @TypeOf(S.SendP2PPacket));
    }
    pub fn IsP2PPacketAvailable(pcubMsgSize: [*c]t.uint32, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsP2PPacketAvailable"}), .{ pcubMsgSize, nChannel, }, .{ "pcubMsgSize", "nChannel", }, @TypeOf(S.IsP2PPacketAvailable));
    }
    pub fn ReadP2PPacket(pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, psteamIDRemote: [*c]t.CSteamID, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReadP2PPacket"}), .{ pubDest, cubDest, pcubMsgSize, psteamIDRemote, nChannel, }, .{ "pubDest", "cubDest", "pcubMsgSize", "psteamIDRemote", "nChannel", }, @TypeOf(S.ReadP2PPacket));
    }
    pub fn AcceptP2PSessionWithUser(steamIDRemote: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptP2PSessionWithUser"}), .{ steamIDRemote, }, .{ "steamIDRemote", }, @TypeOf(S.AcceptP2PSessionWithUser));
    }
    pub fn CloseP2PSessionWithUser(steamIDRemote: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseP2PSessionWithUser"}), .{ steamIDRemote, }, .{ "steamIDRemote", }, @TypeOf(S.CloseP2PSessionWithUser));
    }
    pub fn CloseP2PChannelWithUser(steamIDRemote: t.CSteamID, nChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseP2PChannelWithUser"}), .{ steamIDRemote, nChannel, }, .{ "steamIDRemote", "nChannel", }, @TypeOf(S.CloseP2PChannelWithUser));
    }
    pub fn GetP2PSessionState(steamIDRemote: t.CSteamID, pConnectionState: [*c]t.P2PSessionState_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetP2PSessionState"}), .{ steamIDRemote, pConnectionState, }, .{ "steamIDRemote", "pConnectionState", }, @TypeOf(S.GetP2PSessionState));
    }
    pub fn AllowP2PPacketRelay(bAllow: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllowP2PPacketRelay"}), .{ bAllow, }, .{ "bAllow", }, @TypeOf(S.AllowP2PPacketRelay));
    }
    pub fn CreateListenSocket(nVirtualP2PPort: i32, nIP: t.SteamIPAddress_t, nPort: t.uint16, bAllowUseOfPacketRelay: bool, ) callconv(.C) t.SNetListenSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocket"}), .{ nVirtualP2PPort, nIP, nPort, bAllowUseOfPacketRelay, }, .{ "nVirtualP2PPort", "nIP", "nPort", "bAllowUseOfPacketRelay", }, @TypeOf(S.CreateListenSocket));
    }
    pub fn CreateP2PConnectionSocket(steamIDTarget: t.CSteamID, nVirtualPort: i32, nTimeoutSec: i32, bAllowUseOfPacketRelay: bool, ) callconv(.C) t.SNetSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateP2PConnectionSocket"}), .{ steamIDTarget, nVirtualPort, nTimeoutSec, bAllowUseOfPacketRelay, }, .{ "steamIDTarget", "nVirtualPort", "nTimeoutSec", "bAllowUseOfPacketRelay", }, @TypeOf(S.CreateP2PConnectionSocket));
    }
    pub fn CreateConnectionSocket(nIP: t.SteamIPAddress_t, nPort: t.uint16, nTimeoutSec: i32, ) callconv(.C) t.SNetSocket_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateConnectionSocket"}), .{ nIP, nPort, nTimeoutSec, }, .{ "nIP", "nPort", "nTimeoutSec", }, @TypeOf(S.CreateConnectionSocket));
    }
    pub fn DestroySocket(hSocket: t.SNetSocket_t, bNotifyRemoteEnd: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroySocket"}), .{ hSocket, bNotifyRemoteEnd, }, .{ "hSocket", "bNotifyRemoteEnd", }, @TypeOf(S.DestroySocket));
    }
    pub fn DestroyListenSocket(hSocket: t.SNetListenSocket_t, bNotifyRemoteEnd: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyListenSocket"}), .{ hSocket, bNotifyRemoteEnd, }, .{ "hSocket", "bNotifyRemoteEnd", }, @TypeOf(S.DestroyListenSocket));
    }
    pub fn SendDataOnSocket(hSocket: t.SNetSocket_t, pubData: ?*anyopaque, cubData: t.uint32, bReliable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendDataOnSocket"}), .{ hSocket, pubData, cubData, bReliable, }, .{ "hSocket", "pubData", "cubData", "bReliable", }, @TypeOf(S.SendDataOnSocket));
    }
    pub fn IsDataAvailableOnSocket(hSocket: t.SNetSocket_t, pcubMsgSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsDataAvailableOnSocket"}), .{ hSocket, pcubMsgSize, }, .{ "hSocket", "pcubMsgSize", }, @TypeOf(S.IsDataAvailableOnSocket));
    }
    pub fn RetrieveDataFromSocket(hSocket: t.SNetSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveDataFromSocket"}), .{ hSocket, pubDest, cubDest, pcubMsgSize, }, .{ "hSocket", "pubDest", "cubDest", "pcubMsgSize", }, @TypeOf(S.RetrieveDataFromSocket));
    }
    pub fn IsDataAvailable(hListenSocket: t.SNetListenSocket_t, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsDataAvailable"}), .{ hListenSocket, pcubMsgSize, phSocket, }, .{ "hListenSocket", "pcubMsgSize", "phSocket", }, @TypeOf(S.IsDataAvailable));
    }
    pub fn RetrieveData(hListenSocket: t.SNetListenSocket_t, pubDest: ?*anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RetrieveData"}), .{ hListenSocket, pubDest, cubDest, pcubMsgSize, phSocket, }, .{ "hListenSocket", "pubDest", "cubDest", "pcubMsgSize", "phSocket", }, @TypeOf(S.RetrieveData));
    }
    pub fn GetSocketInfo(hSocket: t.SNetSocket_t, pSteamIDRemote: [*c]t.CSteamID, peSocketStatus: [*c]i32, punIPRemote: [*c]t.SteamIPAddress_t, punPortRemote: [*c]t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSocketInfo"}), .{ hSocket, pSteamIDRemote, peSocketStatus, punIPRemote, punPortRemote, }, .{ "hSocket", "pSteamIDRemote", "peSocketStatus", "punIPRemote", "punPortRemote", }, @TypeOf(S.GetSocketInfo));
    }
    pub fn GetListenSocketInfo(hListenSocket: t.SNetListenSocket_t, pnIP: [*c]t.SteamIPAddress_t, pnPort: [*c]t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetListenSocketInfo"}), .{ hListenSocket, pnIP, pnPort, }, .{ "hListenSocket", "pnIP", "pnPort", }, @TypeOf(S.GetListenSocketInfo));
    }
    pub fn GetSocketConnectionType(hSocket: t.SNetSocket_t, ) callconv(.C) t.ESNetSocketConnectionType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSocketConnectionType"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.GetSocketConnectionType));
    }
    pub fn GetMaxPacketSize(hSocket: t.SNetSocket_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMaxPacketSize"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.GetMaxPacketSize));
    }
};
pub const SteamNetworking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworking"};
    pub fn v006() callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
};
pub const SteamGameServerNetworking = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworking"};
    pub fn v006() callconv(.C) [*c]t.ISteamNetworking {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
};
pub const ISteamScreenshots = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamScreenshots"};
    _: u8 = 1,
    pub const version = "STEAMSCREENSHOTS_INTERFACE_VERSION003";
    pub fn WriteScreenshot(pubRGB: ?*anyopaque, cubRGB: t.uint32, nWidth: i32, nHeight: i32, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"WriteScreenshot"}), .{ pubRGB, cubRGB, nWidth, nHeight, }, .{ "pubRGB", "cubRGB", "nWidth", "nHeight", }, @TypeOf(S.WriteScreenshot));
    }
    pub fn AddScreenshotToLibrary(pchFilename: [*c]const u8, pchThumbnailFilename: [*c]const u8, nWidth: i32, nHeight: i32, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddScreenshotToLibrary"}), .{ pchFilename, pchThumbnailFilename, nWidth, nHeight, }, .{ "pchFilename", "pchThumbnailFilename", "nWidth", "nHeight", }, @TypeOf(S.AddScreenshotToLibrary));
    }
    pub fn TriggerScreenshot() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerScreenshot"}), .{ }, .{ }, @TypeOf(S.TriggerScreenshot));
    }
    pub fn HookScreenshots(bHook: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HookScreenshots"}), .{ bHook, }, .{ "bHook", }, @TypeOf(S.HookScreenshots));
    }
    pub fn SetLocation(hScreenshot: t.ScreenshotHandle, pchLocation: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLocation"}), .{ hScreenshot, pchLocation, }, .{ "hScreenshot", "pchLocation", }, @TypeOf(S.SetLocation));
    }
    pub fn TagUser(hScreenshot: t.ScreenshotHandle, steamID: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TagUser"}), .{ hScreenshot, steamID, }, .{ "hScreenshot", "steamID", }, @TypeOf(S.TagUser));
    }
    pub fn TagPublishedFile(hScreenshot: t.ScreenshotHandle, unPublishedFileID: t.PublishedFileId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TagPublishedFile"}), .{ hScreenshot, unPublishedFileID, }, .{ "hScreenshot", "unPublishedFileID", }, @TypeOf(S.TagPublishedFile));
    }
    pub fn IsScreenshotsHooked() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsScreenshotsHooked"}), .{ }, .{ }, @TypeOf(S.IsScreenshotsHooked));
    }
    pub fn AddVRScreenshotToLibrary(eType: t.EVRScreenshotType, pchFilename: [*c]const u8, pchVRFilename: [*c]const u8, ) callconv(.C) t.ScreenshotHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddVRScreenshotToLibrary"}), .{ eType, pchFilename, pchVRFilename, }, .{ "eType", "pchFilename", "pchVRFilename", }, @TypeOf(S.AddVRScreenshotToLibrary));
    }
};
pub const SteamScreenshots = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamScreenshots"};
    pub fn v003() callconv(.C) [*c]t.ISteamScreenshots {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
};
pub const ISteamMusic = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMusic"};
    _: u8 = 1,
    pub const version = "STEAMMUSIC_INTERFACE_VERSION001";
    pub fn BIsEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsEnabled"}), .{ }, .{ }, @TypeOf(S.BIsEnabled));
    }
    pub fn BIsPlaying() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsPlaying"}), .{ }, .{ }, @TypeOf(S.BIsPlaying));
    }
    pub fn GetPlaybackStatus() callconv(.C) t.AudioPlayback_Status {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPlaybackStatus"}), .{ }, .{ }, @TypeOf(S.GetPlaybackStatus));
    }
    pub fn Play() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Play"}), .{ }, .{ }, @TypeOf(S.Play));
    }
    pub fn Pause() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Pause"}), .{ }, .{ }, @TypeOf(S.Pause));
    }
    pub fn PlayPrevious() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayPrevious"}), .{ }, .{ }, @TypeOf(S.PlayPrevious));
    }
    pub fn PlayNext() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlayNext"}), .{ }, .{ }, @TypeOf(S.PlayNext));
    }
    pub fn SetVolume(flVolume: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVolume"}), .{ flVolume, }, .{ "flVolume", }, @TypeOf(S.SetVolume));
    }
    pub fn GetVolume() callconv(.C) f32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVolume"}), .{ }, .{ }, @TypeOf(S.GetVolume));
    }
};
pub const SteamMusic = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMusic"};
    pub fn v001() callconv(.C) [*c]t.ISteamMusic {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamMusicRemote = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamMusicRemote"};
    _: u8 = 1,
    pub const version = "STEAMMUSICREMOTE_INTERFACE_VERSION001";
    pub fn RegisterSteamMusicRemote(pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RegisterSteamMusicRemote"}), .{ pchName, }, .{ "pchName", }, @TypeOf(S.RegisterSteamMusicRemote));
    }
    pub fn DeregisterSteamMusicRemote() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeregisterSteamMusicRemote"}), .{ }, .{ }, @TypeOf(S.DeregisterSteamMusicRemote));
    }
    pub fn BIsCurrentMusicRemote() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsCurrentMusicRemote"}), .{ }, .{ }, @TypeOf(S.BIsCurrentMusicRemote));
    }
    pub fn BActivationSuccess(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BActivationSuccess"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.BActivationSuccess));
    }
    pub fn SetDisplayName(pchDisplayName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDisplayName"}), .{ pchDisplayName, }, .{ "pchDisplayName", }, @TypeOf(S.SetDisplayName));
    }
    pub fn SetPNGIcon_64x64(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPNGIcon_64x64"}), .{ pvBuffer, cbBufferLength, }, .{ "pvBuffer", "cbBufferLength", }, @TypeOf(S.SetPNGIcon_64x64));
    }
    pub fn EnablePlayPrevious(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlayPrevious"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlayPrevious));
    }
    pub fn EnablePlayNext(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlayNext"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlayNext));
    }
    pub fn EnableShuffled(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableShuffled"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableShuffled));
    }
    pub fn EnableLooped(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableLooped"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableLooped));
    }
    pub fn EnableQueue(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableQueue"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnableQueue));
    }
    pub fn EnablePlaylists(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnablePlaylists"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.EnablePlaylists));
    }
    pub fn UpdatePlaybackStatus(nStatus: t.AudioPlayback_Status, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdatePlaybackStatus"}), .{ nStatus, }, .{ "nStatus", }, @TypeOf(S.UpdatePlaybackStatus));
    }
    pub fn UpdateShuffled(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateShuffled"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.UpdateShuffled));
    }
    pub fn UpdateLooped(bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateLooped"}), .{ bValue, }, .{ "bValue", }, @TypeOf(S.UpdateLooped));
    }
    pub fn UpdateVolume(flValue: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateVolume"}), .{ flValue, }, .{ "flValue", }, @TypeOf(S.UpdateVolume));
    }
    pub fn CurrentEntryWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryWillChange"}), .{ }, .{ }, @TypeOf(S.CurrentEntryWillChange));
    }
    pub fn CurrentEntryIsAvailable(bAvailable: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryIsAvailable"}), .{ bAvailable, }, .{ "bAvailable", }, @TypeOf(S.CurrentEntryIsAvailable));
    }
    pub fn UpdateCurrentEntryText(pchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryText"}), .{ pchText, }, .{ "pchText", }, @TypeOf(S.UpdateCurrentEntryText));
    }
    pub fn UpdateCurrentEntryElapsedSeconds(nValue: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryElapsedSeconds"}), .{ nValue, }, .{ "nValue", }, @TypeOf(S.UpdateCurrentEntryElapsedSeconds));
    }
    pub fn UpdateCurrentEntryCoverArt(pvBuffer: ?*anyopaque, cbBufferLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateCurrentEntryCoverArt"}), .{ pvBuffer, cbBufferLength, }, .{ "pvBuffer", "cbBufferLength", }, @TypeOf(S.UpdateCurrentEntryCoverArt));
    }
    pub fn CurrentEntryDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CurrentEntryDidChange"}), .{ }, .{ }, @TypeOf(S.CurrentEntryDidChange));
    }
    pub fn QueueWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"QueueWillChange"}), .{ }, .{ }, @TypeOf(S.QueueWillChange));
    }
    pub fn ResetQueueEntries() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetQueueEntries"}), .{ }, .{ }, @TypeOf(S.ResetQueueEntries));
    }
    pub fn SetQueueEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetQueueEntry"}), .{ nID, nPosition, pchEntryText, }, .{ "nID", "nPosition", "pchEntryText", }, @TypeOf(S.SetQueueEntry));
    }
    pub fn SetCurrentQueueEntry(nID: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCurrentQueueEntry"}), .{ nID, }, .{ "nID", }, @TypeOf(S.SetCurrentQueueEntry));
    }
    pub fn QueueDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"QueueDidChange"}), .{ }, .{ }, @TypeOf(S.QueueDidChange));
    }
    pub fn PlaylistWillChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlaylistWillChange"}), .{ }, .{ }, @TypeOf(S.PlaylistWillChange));
    }
    pub fn ResetPlaylistEntries() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetPlaylistEntries"}), .{ }, .{ }, @TypeOf(S.ResetPlaylistEntries));
    }
    pub fn SetPlaylistEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPlaylistEntry"}), .{ nID, nPosition, pchEntryText, }, .{ "nID", "nPosition", "pchEntryText", }, @TypeOf(S.SetPlaylistEntry));
    }
    pub fn SetCurrentPlaylistEntry(nID: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCurrentPlaylistEntry"}), .{ nID, }, .{ "nID", }, @TypeOf(S.SetCurrentPlaylistEntry));
    }
    pub fn PlaylistDidChange() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PlaylistDidChange"}), .{ }, .{ }, @TypeOf(S.PlaylistDidChange));
    }
};
pub const SteamMusicRemote = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamMusicRemote"};
    pub fn v001() callconv(.C) [*c]t.ISteamMusicRemote {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamHTTP = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamHTTP"};
    _: u8 = 1,
    pub const version = "STEAMHTTP_INTERFACE_VERSION003";
    pub fn CreateHTTPRequest(eHTTPRequestMethod: t.EHTTPMethod, pchAbsoluteURL: [*c]const u8, ) callconv(.C) t.HTTPRequestHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateHTTPRequest"}), .{ eHTTPRequestMethod, pchAbsoluteURL, }, .{ "eHTTPRequestMethod", "pchAbsoluteURL", }, @TypeOf(S.CreateHTTPRequest));
    }
    pub fn SetHTTPRequestContextValue(hRequest: t.HTTPRequestHandle, ulContextValue: t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestContextValue"}), .{ hRequest, ulContextValue, }, .{ "hRequest", "ulContextValue", }, @TypeOf(S.SetHTTPRequestContextValue));
    }
    pub fn SetHTTPRequestNetworkActivityTimeout(hRequest: t.HTTPRequestHandle, unTimeoutSeconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestNetworkActivityTimeout"}), .{ hRequest, unTimeoutSeconds, }, .{ "hRequest", "unTimeoutSeconds", }, @TypeOf(S.SetHTTPRequestNetworkActivityTimeout));
    }
    pub fn SetHTTPRequestHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pchHeaderValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestHeaderValue"}), .{ hRequest, pchHeaderName, pchHeaderValue, }, .{ "hRequest", "pchHeaderName", "pchHeaderValue", }, @TypeOf(S.SetHTTPRequestHeaderValue));
    }
    pub fn SetHTTPRequestGetOrPostParameter(hRequest: t.HTTPRequestHandle, pchParamName: [*c]const u8, pchParamValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestGetOrPostParameter"}), .{ hRequest, pchParamName, pchParamValue, }, .{ "hRequest", "pchParamName", "pchParamValue", }, @TypeOf(S.SetHTTPRequestGetOrPostParameter));
    }
    pub fn SendHTTPRequest(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendHTTPRequest"}), .{ hRequest, pCallHandle, }, .{ "hRequest", "pCallHandle", }, @TypeOf(S.SendHTTPRequest));
    }
    pub fn SendHTTPRequestAndStreamResponse(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendHTTPRequestAndStreamResponse"}), .{ hRequest, pCallHandle, }, .{ "hRequest", "pCallHandle", }, @TypeOf(S.SendHTTPRequestAndStreamResponse));
    }
    pub fn DeferHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeferHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.DeferHTTPRequest));
    }
    pub fn PrioritizeHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PrioritizeHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.PrioritizeHTTPRequest));
    }
    pub fn GetHTTPResponseHeaderSize(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, unResponseHeaderSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseHeaderSize"}), .{ hRequest, pchHeaderName, unResponseHeaderSize, }, .{ "hRequest", "pchHeaderName", "unResponseHeaderSize", }, @TypeOf(S.GetHTTPResponseHeaderSize));
    }
    pub fn GetHTTPResponseHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pHeaderValueBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseHeaderValue"}), .{ hRequest, pchHeaderName, pHeaderValueBuffer, unBufferSize, }, .{ "hRequest", "pchHeaderName", "pHeaderValueBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPResponseHeaderValue));
    }
    pub fn GetHTTPResponseBodySize(hRequest: t.HTTPRequestHandle, unBodySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseBodySize"}), .{ hRequest, unBodySize, }, .{ "hRequest", "unBodySize", }, @TypeOf(S.GetHTTPResponseBodySize));
    }
    pub fn GetHTTPResponseBodyData(hRequest: t.HTTPRequestHandle, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPResponseBodyData"}), .{ hRequest, pBodyDataBuffer, unBufferSize, }, .{ "hRequest", "pBodyDataBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPResponseBodyData));
    }
    pub fn GetHTTPStreamingResponseBodyData(hRequest: t.HTTPRequestHandle, cOffset: t.uint32, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPStreamingResponseBodyData"}), .{ hRequest, cOffset, pBodyDataBuffer, unBufferSize, }, .{ "hRequest", "cOffset", "pBodyDataBuffer", "unBufferSize", }, @TypeOf(S.GetHTTPStreamingResponseBodyData));
    }
    pub fn ReleaseHTTPRequest(hRequest: t.HTTPRequestHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseHTTPRequest"}), .{ hRequest, }, .{ "hRequest", }, @TypeOf(S.ReleaseHTTPRequest));
    }
    pub fn GetHTTPDownloadProgressPct(hRequest: t.HTTPRequestHandle, pflPercentOut: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPDownloadProgressPct"}), .{ hRequest, pflPercentOut, }, .{ "hRequest", "pflPercentOut", }, @TypeOf(S.GetHTTPDownloadProgressPct));
    }
    pub fn SetHTTPRequestRawPostBody(hRequest: t.HTTPRequestHandle, pchContentType: [*c]const u8, pubBody: [*c]t.uint8, unBodyLen: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestRawPostBody"}), .{ hRequest, pchContentType, pubBody, unBodyLen, }, .{ "hRequest", "pchContentType", "pubBody", "unBodyLen", }, @TypeOf(S.SetHTTPRequestRawPostBody));
    }
    pub fn CreateCookieContainer(bAllowResponsesToModify: bool, ) callconv(.C) t.HTTPCookieContainerHandle {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateCookieContainer"}), .{ bAllowResponsesToModify, }, .{ "bAllowResponsesToModify", }, @TypeOf(S.CreateCookieContainer));
    }
    pub fn ReleaseCookieContainer(hCookieContainer: t.HTTPCookieContainerHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseCookieContainer"}), .{ hCookieContainer, }, .{ "hCookieContainer", }, @TypeOf(S.ReleaseCookieContainer));
    }
    pub fn SetCookie(hCookieContainer: t.HTTPCookieContainerHandle, pchHost: [*c]const u8, pchUrl: [*c]const u8, pchCookie: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCookie"}), .{ hCookieContainer, pchHost, pchUrl, pchCookie, }, .{ "hCookieContainer", "pchHost", "pchUrl", "pchCookie", }, @TypeOf(S.SetCookie));
    }
    pub fn SetHTTPRequestCookieContainer(hRequest: t.HTTPRequestHandle, hCookieContainer: t.HTTPCookieContainerHandle, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestCookieContainer"}), .{ hRequest, hCookieContainer, }, .{ "hRequest", "hCookieContainer", }, @TypeOf(S.SetHTTPRequestCookieContainer));
    }
    pub fn SetHTTPRequestUserAgentInfo(hRequest: t.HTTPRequestHandle, pchUserAgentInfo: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestUserAgentInfo"}), .{ hRequest, pchUserAgentInfo, }, .{ "hRequest", "pchUserAgentInfo", }, @TypeOf(S.SetHTTPRequestUserAgentInfo));
    }
    pub fn SetHTTPRequestRequiresVerifiedCertificate(hRequest: t.HTTPRequestHandle, bRequireVerifiedCertificate: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestRequiresVerifiedCertificate"}), .{ hRequest, bRequireVerifiedCertificate, }, .{ "hRequest", "bRequireVerifiedCertificate", }, @TypeOf(S.SetHTTPRequestRequiresVerifiedCertificate));
    }
    pub fn SetHTTPRequestAbsoluteTimeoutMS(hRequest: t.HTTPRequestHandle, unMilliseconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHTTPRequestAbsoluteTimeoutMS"}), .{ hRequest, unMilliseconds, }, .{ "hRequest", "unMilliseconds", }, @TypeOf(S.SetHTTPRequestAbsoluteTimeoutMS));
    }
    pub fn GetHTTPRequestWasTimedOut(hRequest: t.HTTPRequestHandle, pbWasTimedOut: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHTTPRequestWasTimedOut"}), .{ hRequest, pbWasTimedOut, }, .{ "hRequest", "pbWasTimedOut", }, @TypeOf(S.GetHTTPRequestWasTimedOut));
    }
};
pub const SteamHTTP = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamHTTP"};
    pub fn v003() callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
};
pub const SteamGameServerHTTP = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerHTTP"};
    pub fn v003() callconv(.C) [*c]t.ISteamHTTP {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
};
pub const ISteamInput = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamInput"};
    _: u8 = 1,
    pub const version = "SteamInput006";
    pub fn Init(bExplicitlyCallRunFrame: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ bExplicitlyCallRunFrame, }, .{ "bExplicitlyCallRunFrame", }, @TypeOf(S.Init));
    }
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    pub fn SetInputActionManifestFilePath(pchInputActionManifestAbsolutePath: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInputActionManifestFilePath"}), .{ pchInputActionManifestAbsolutePath, }, .{ "pchInputActionManifestAbsolutePath", }, @TypeOf(S.SetInputActionManifestFilePath));
    }
    pub fn RunFrame(bReservedValue: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunFrame"}), .{ bReservedValue, }, .{ "bReservedValue", }, @TypeOf(S.RunFrame));
    }
    pub fn BWaitForData(bWaitForever: bool, unTimeout: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BWaitForData"}), .{ bWaitForever, unTimeout, }, .{ "bWaitForever", "unTimeout", }, @TypeOf(S.BWaitForData));
    }
    pub fn BNewDataAvailable() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BNewDataAvailable"}), .{ }, .{ }, @TypeOf(S.BNewDataAvailable));
    }
    pub fn GetConnectedControllers(handlesOut: [*c]t.InputHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedControllers"}), .{ handlesOut, }, .{ "handlesOut", }, @TypeOf(S.GetConnectedControllers));
    }
    pub fn EnableDeviceCallbacks() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableDeviceCallbacks"}), .{ }, .{ }, @TypeOf(S.EnableDeviceCallbacks));
    }
    pub fn EnableActionEventCallbacks(pCallback: t.SteamInputActionEventCallbackPointer, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EnableActionEventCallbacks"}), .{ pCallback, }, .{ "pCallback", }, @TypeOf(S.EnableActionEventCallbacks));
    }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8, ) callconv(.C) t.InputActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionSetHandle"}), .{ pszActionSetName, }, .{ "pszActionSetName", }, @TypeOf(S.GetActionSetHandle));
    }
    pub fn ActivateActionSet(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSet"}), .{ inputHandle, actionSetHandle, }, .{ "inputHandle", "actionSetHandle", }, @TypeOf(S.ActivateActionSet));
    }
    pub fn GetCurrentActionSet(inputHandle: t.InputHandle_t, ) callconv(.C) t.InputActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentActionSet"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetCurrentActionSet));
    }
    pub fn ActivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSetLayer"}), .{ inputHandle, actionSetLayerHandle, }, .{ "inputHandle", "actionSetLayerHandle", }, @TypeOf(S.ActivateActionSetLayer));
    }
    pub fn DeactivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateActionSetLayer"}), .{ inputHandle, actionSetLayerHandle, }, .{ "inputHandle", "actionSetLayerHandle", }, @TypeOf(S.DeactivateActionSetLayer));
    }
    pub fn DeactivateAllActionSetLayers(inputHandle: t.InputHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateAllActionSetLayers"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.DeactivateAllActionSetLayers));
    }
    pub fn GetActiveActionSetLayers(inputHandle: t.InputHandle_t, handlesOut: [*c]t.InputActionSetHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActiveActionSetLayers"}), .{ inputHandle, handlesOut, }, .{ "inputHandle", "handlesOut", }, @TypeOf(S.GetActiveActionSetLayers));
    }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.InputDigitalActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetDigitalActionHandle));
    }
    pub fn GetDigitalActionData(inputHandle: t.InputHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, ) callconv(.C) t.InputDigitalActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionData"}), .{ inputHandle, digitalActionHandle, }, .{ "inputHandle", "digitalActionHandle", }, @TypeOf(S.GetDigitalActionData));
    }
    pub fn GetDigitalActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, originsOut: [*c]t.EInputActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionOrigins"}), .{ inputHandle, actionSetHandle, digitalActionHandle, originsOut, }, .{ "inputHandle", "actionSetHandle", "digitalActionHandle", "originsOut", }, @TypeOf(S.GetDigitalActionOrigins));
    }
    pub fn GetStringForDigitalActionName(eActionHandle: t.InputDigitalActionHandle_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForDigitalActionName"}), .{ eActionHandle, }, .{ "eActionHandle", }, @TypeOf(S.GetStringForDigitalActionName));
    }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.InputAnalogActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetAnalogActionHandle));
    }
    pub fn GetAnalogActionData(inputHandle: t.InputHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, ) callconv(.C) t.InputAnalogActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionData"}), .{ inputHandle, analogActionHandle, }, .{ "inputHandle", "analogActionHandle", }, @TypeOf(S.GetAnalogActionData));
    }
    pub fn GetAnalogActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, originsOut: [*c]t.EInputActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionOrigins"}), .{ inputHandle, actionSetHandle, analogActionHandle, originsOut, }, .{ "inputHandle", "actionSetHandle", "analogActionHandle", "originsOut", }, @TypeOf(S.GetAnalogActionOrigins));
    }
    pub fn GetGlyphPNGForActionOrigin(eOrigin: t.EInputActionOrigin, eSize: t.ESteamInputGlyphSize, unFlags: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphPNGForActionOrigin"}), .{ eOrigin, eSize, unFlags, }, .{ "eOrigin", "eSize", "unFlags", }, @TypeOf(S.GetGlyphPNGForActionOrigin));
    }
    pub fn GetGlyphSVGForActionOrigin(eOrigin: t.EInputActionOrigin, unFlags: t.uint32, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphSVGForActionOrigin"}), .{ eOrigin, unFlags, }, .{ "eOrigin", "unFlags", }, @TypeOf(S.GetGlyphSVGForActionOrigin));
    }
    pub fn GetGlyphForActionOrigin_Legacy(eOrigin: t.EInputActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForActionOrigin_Legacy"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForActionOrigin_Legacy));
    }
    pub fn GetStringForActionOrigin(eOrigin: t.EInputActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForActionOrigin));
    }
    pub fn GetStringForAnalogActionName(eActionHandle: t.InputAnalogActionHandle_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForAnalogActionName"}), .{ eActionHandle, }, .{ "eActionHandle", }, @TypeOf(S.GetStringForAnalogActionName));
    }
    pub fn StopAnalogActionMomentum(inputHandle: t.InputHandle_t, eAction: t.InputAnalogActionHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopAnalogActionMomentum"}), .{ inputHandle, eAction, }, .{ "inputHandle", "eAction", }, @TypeOf(S.StopAnalogActionMomentum));
    }
    pub fn GetMotionData(inputHandle: t.InputHandle_t, ) callconv(.C) t.InputMotionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMotionData"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetMotionData));
    }
    pub fn TriggerVibration(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibration"}), .{ inputHandle, usLeftSpeed, usRightSpeed, }, .{ "inputHandle", "usLeftSpeed", "usRightSpeed", }, @TypeOf(S.TriggerVibration));
    }
    pub fn TriggerVibrationExtended(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibrationExtended"}), .{ inputHandle, usLeftSpeed, usRightSpeed, usLeftTriggerSpeed, usRightTriggerSpeed, }, .{ "inputHandle", "usLeftSpeed", "usRightSpeed", "usLeftTriggerSpeed", "usRightTriggerSpeed", }, @TypeOf(S.TriggerVibrationExtended));
    }
    pub fn TriggerSimpleHapticEvent(inputHandle: t.InputHandle_t, eHapticLocation: t.EControllerHapticLocation, nIntensity: t.uint8, nGainDB: u8, nOtherIntensity: t.uint8, nOtherGainDB: u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerSimpleHapticEvent"}), .{ inputHandle, eHapticLocation, nIntensity, nGainDB, nOtherIntensity, nOtherGainDB, }, .{ "inputHandle", "eHapticLocation", "nIntensity", "nGainDB", "nOtherIntensity", "nOtherGainDB", }, @TypeOf(S.TriggerSimpleHapticEvent));
    }
    pub fn SetLEDColor(inputHandle: t.InputHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLEDColor"}), .{ inputHandle, nColorR, nColorG, nColorB, nFlags, }, .{ "inputHandle", "nColorR", "nColorG", "nColorB", "nFlags", }, @TypeOf(S.SetLEDColor));
    }
    pub fn Legacy_TriggerHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Legacy_TriggerHapticPulse"}), .{ inputHandle, eTargetPad, usDurationMicroSec, }, .{ "inputHandle", "eTargetPad", "usDurationMicroSec", }, @TypeOf(S.Legacy_TriggerHapticPulse));
    }
    pub fn Legacy_TriggerRepeatedHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Legacy_TriggerRepeatedHapticPulse"}), .{ inputHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags, }, .{ "inputHandle", "eTargetPad", "usDurationMicroSec", "usOffMicroSec", "unRepeat", "nFlags", }, @TypeOf(S.Legacy_TriggerRepeatedHapticPulse));
    }
    pub fn ShowBindingPanel(inputHandle: t.InputHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowBindingPanel"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.ShowBindingPanel));
    }
    pub fn GetInputTypeForHandle(inputHandle: t.InputHandle_t, ) callconv(.C) t.ESteamInputType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInputTypeForHandle"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetInputTypeForHandle));
    }
    pub fn GetControllerForGamepadIndex(nIndex: i32, ) callconv(.C) t.InputHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerForGamepadIndex"}), .{ nIndex, }, .{ "nIndex", }, @TypeOf(S.GetControllerForGamepadIndex));
    }
    pub fn GetGamepadIndexForController(ulinputHandle: t.InputHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGamepadIndexForController"}), .{ ulinputHandle, }, .{ "ulinputHandle", }, @TypeOf(S.GetGamepadIndexForController));
    }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForXboxOrigin));
    }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForXboxOrigin));
    }
    pub fn GetActionOriginFromXboxOrigin(inputHandle: t.InputHandle_t, eOrigin: t.EXboxOrigin, ) callconv(.C) t.EInputActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionOriginFromXboxOrigin"}), .{ inputHandle, eOrigin, }, .{ "inputHandle", "eOrigin", }, @TypeOf(S.GetActionOriginFromXboxOrigin));
    }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EInputActionOrigin, ) callconv(.C) t.EInputActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TranslateActionOrigin"}), .{ eDestinationInputType, eSourceOrigin, }, .{ "eDestinationInputType", "eSourceOrigin", }, @TypeOf(S.TranslateActionOrigin));
    }
    pub fn GetDeviceBindingRevision(inputHandle: t.InputHandle_t, pMajor: [*c]i32, pMinor: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDeviceBindingRevision"}), .{ inputHandle, pMajor, pMinor, }, .{ "inputHandle", "pMajor", "pMinor", }, @TypeOf(S.GetDeviceBindingRevision));
    }
    pub fn GetRemotePlaySessionID(inputHandle: t.InputHandle_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRemotePlaySessionID"}), .{ inputHandle, }, .{ "inputHandle", }, @TypeOf(S.GetRemotePlaySessionID));
    }
    pub fn GetSessionInputConfigurationSettings() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionInputConfigurationSettings"}), .{ }, .{ }, @TypeOf(S.GetSessionInputConfigurationSettings));
    }
};
pub const SteamInput = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamInput"};
    pub fn v006() callconv(.C) [*c]t.ISteamInput {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v006"}), .{ }, .{ }, @TypeOf(S.v006));
    }
};
pub const ISteamController = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamController"};
    _: u8 = 1,
    pub const version = "SteamController008";
    pub fn Init() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ }, .{ }, @TypeOf(S.Init));
    }
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    pub fn RunFrame() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunFrame"}), .{ }, .{ }, @TypeOf(S.RunFrame));
    }
    pub fn GetConnectedControllers(handlesOut: [*c]t.ControllerHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectedControllers"}), .{ handlesOut, }, .{ "handlesOut", }, @TypeOf(S.GetConnectedControllers));
    }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8, ) callconv(.C) t.ControllerActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionSetHandle"}), .{ pszActionSetName, }, .{ "pszActionSetName", }, @TypeOf(S.GetActionSetHandle));
    }
    pub fn ActivateActionSet(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSet"}), .{ controllerHandle, actionSetHandle, }, .{ "controllerHandle", "actionSetHandle", }, @TypeOf(S.ActivateActionSet));
    }
    pub fn GetCurrentActionSet(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.ControllerActionSetHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCurrentActionSet"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetCurrentActionSet));
    }
    pub fn ActivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ActivateActionSetLayer"}), .{ controllerHandle, actionSetLayerHandle, }, .{ "controllerHandle", "actionSetLayerHandle", }, @TypeOf(S.ActivateActionSetLayer));
    }
    pub fn DeactivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateActionSetLayer"}), .{ controllerHandle, actionSetLayerHandle, }, .{ "controllerHandle", "actionSetLayerHandle", }, @TypeOf(S.DeactivateActionSetLayer));
    }
    pub fn DeactivateAllActionSetLayers(controllerHandle: t.ControllerHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeactivateAllActionSetLayers"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.DeactivateAllActionSetLayers));
    }
    pub fn GetActiveActionSetLayers(controllerHandle: t.ControllerHandle_t, handlesOut: [*c]t.ControllerActionSetHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActiveActionSetLayers"}), .{ controllerHandle, handlesOut, }, .{ "controllerHandle", "handlesOut", }, @TypeOf(S.GetActiveActionSetLayers));
    }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.ControllerDigitalActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetDigitalActionHandle));
    }
    pub fn GetDigitalActionData(controllerHandle: t.ControllerHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, ) callconv(.C) t.InputDigitalActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionData"}), .{ controllerHandle, digitalActionHandle, }, .{ "controllerHandle", "digitalActionHandle", }, @TypeOf(S.GetDigitalActionData));
    }
    pub fn GetDigitalActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, originsOut: [*c]t.EControllerActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDigitalActionOrigins"}), .{ controllerHandle, actionSetHandle, digitalActionHandle, originsOut, }, .{ "controllerHandle", "actionSetHandle", "digitalActionHandle", "originsOut", }, @TypeOf(S.GetDigitalActionOrigins));
    }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8, ) callconv(.C) t.ControllerAnalogActionHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionHandle"}), .{ pszActionName, }, .{ "pszActionName", }, @TypeOf(S.GetAnalogActionHandle));
    }
    pub fn GetAnalogActionData(controllerHandle: t.ControllerHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, ) callconv(.C) t.InputAnalogActionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionData"}), .{ controllerHandle, analogActionHandle, }, .{ "controllerHandle", "analogActionHandle", }, @TypeOf(S.GetAnalogActionData));
    }
    pub fn GetAnalogActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, originsOut: [*c]t.EControllerActionOrigin, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAnalogActionOrigins"}), .{ controllerHandle, actionSetHandle, analogActionHandle, originsOut, }, .{ "controllerHandle", "actionSetHandle", "analogActionHandle", "originsOut", }, @TypeOf(S.GetAnalogActionOrigins));
    }
    pub fn GetGlyphForActionOrigin(eOrigin: t.EControllerActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForActionOrigin));
    }
    pub fn GetStringForActionOrigin(eOrigin: t.EControllerActionOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForActionOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForActionOrigin));
    }
    pub fn StopAnalogActionMomentum(controllerHandle: t.ControllerHandle_t, eAction: t.ControllerAnalogActionHandle_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopAnalogActionMomentum"}), .{ controllerHandle, eAction, }, .{ "controllerHandle", "eAction", }, @TypeOf(S.StopAnalogActionMomentum));
    }
    pub fn GetMotionData(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.InputMotionData_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetMotionData"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetMotionData));
    }
    pub fn TriggerHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerHapticPulse"}), .{ controllerHandle, eTargetPad, usDurationMicroSec, }, .{ "controllerHandle", "eTargetPad", "usDurationMicroSec", }, @TypeOf(S.TriggerHapticPulse));
    }
    pub fn TriggerRepeatedHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerRepeatedHapticPulse"}), .{ controllerHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags, }, .{ "controllerHandle", "eTargetPad", "usDurationMicroSec", "usOffMicroSec", "unRepeat", "nFlags", }, @TypeOf(S.TriggerRepeatedHapticPulse));
    }
    pub fn TriggerVibration(controllerHandle: t.ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerVibration"}), .{ controllerHandle, usLeftSpeed, usRightSpeed, }, .{ "controllerHandle", "usLeftSpeed", "usRightSpeed", }, @TypeOf(S.TriggerVibration));
    }
    pub fn SetLEDColor(controllerHandle: t.ControllerHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLEDColor"}), .{ controllerHandle, nColorR, nColorG, nColorB, nFlags, }, .{ "controllerHandle", "nColorR", "nColorG", "nColorB", "nFlags", }, @TypeOf(S.SetLEDColor));
    }
    pub fn ShowBindingPanel(controllerHandle: t.ControllerHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowBindingPanel"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.ShowBindingPanel));
    }
    pub fn GetInputTypeForHandle(controllerHandle: t.ControllerHandle_t, ) callconv(.C) t.ESteamInputType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInputTypeForHandle"}), .{ controllerHandle, }, .{ "controllerHandle", }, @TypeOf(S.GetInputTypeForHandle));
    }
    pub fn GetControllerForGamepadIndex(nIndex: i32, ) callconv(.C) t.ControllerHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerForGamepadIndex"}), .{ nIndex, }, .{ "nIndex", }, @TypeOf(S.GetControllerForGamepadIndex));
    }
    pub fn GetGamepadIndexForController(ulControllerHandle: t.ControllerHandle_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGamepadIndexForController"}), .{ ulControllerHandle, }, .{ "ulControllerHandle", }, @TypeOf(S.GetGamepadIndexForController));
    }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStringForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetStringForXboxOrigin));
    }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGlyphForXboxOrigin"}), .{ eOrigin, }, .{ "eOrigin", }, @TypeOf(S.GetGlyphForXboxOrigin));
    }
    pub fn GetActionOriginFromXboxOrigin(controllerHandle: t.ControllerHandle_t, eOrigin: t.EXboxOrigin, ) callconv(.C) t.EControllerActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetActionOriginFromXboxOrigin"}), .{ controllerHandle, eOrigin, }, .{ "controllerHandle", "eOrigin", }, @TypeOf(S.GetActionOriginFromXboxOrigin));
    }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EControllerActionOrigin, ) callconv(.C) t.EControllerActionOrigin {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TranslateActionOrigin"}), .{ eDestinationInputType, eSourceOrigin, }, .{ "eDestinationInputType", "eSourceOrigin", }, @TypeOf(S.TranslateActionOrigin));
    }
    pub fn GetControllerBindingRevision(controllerHandle: t.ControllerHandle_t, pMajor: [*c]i32, pMinor: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetControllerBindingRevision"}), .{ controllerHandle, pMajor, pMinor, }, .{ "controllerHandle", "pMajor", "pMinor", }, @TypeOf(S.GetControllerBindingRevision));
    }
};
pub const SteamController = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamController"};
    pub fn v008() callconv(.C) [*c]t.ISteamController {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v008"}), .{ }, .{ }, @TypeOf(S.v008));
    }
};
pub const ISteamUGC = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamUGC"};
    _: u8 = 1,
    pub const version = "STEAMUGC_INTERFACE_VERSION016";
    pub fn CreateQueryUserUGCRequest(unAccountID: t.AccountID_t, eListType: t.EUserUGCList, eMatchingUGCType: t.EUGCMatchingUGCType, eSortOrder: t.EUserUGCListSortOrder, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryUserUGCRequest"}), .{ unAccountID, eListType, eMatchingUGCType, eSortOrder, nCreatorAppID, nConsumerAppID, unPage, }, .{ "unAccountID", "eListType", "eMatchingUGCType", "eSortOrder", "nCreatorAppID", "nConsumerAppID", "unPage", }, @TypeOf(S.CreateQueryUserUGCRequest));
    }
    pub fn CreateQueryAllUGCRequestPage(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryAllUGCRequestPage"}), .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, unPage, }, .{ "eQueryType", "eMatchingeMatchingUGCTypeFileType", "nCreatorAppID", "nConsumerAppID", "unPage", }, @TypeOf(S.CreateQueryAllUGCRequestPage));
    }
    pub fn CreateQueryAllUGCRequestCursor(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, pchCursor: [*c]const u8, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryAllUGCRequestCursor"}), .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, pchCursor, }, .{ "eQueryType", "eMatchingeMatchingUGCTypeFileType", "nCreatorAppID", "nConsumerAppID", "pchCursor", }, @TypeOf(S.CreateQueryAllUGCRequestCursor));
    }
    pub fn CreateQueryUGCDetailsRequest(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.UGCQueryHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateQueryUGCDetailsRequest"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.CreateQueryUGCDetailsRequest));
    }
    pub fn SendQueryUGCRequest(handle: t.UGCQueryHandle_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendQueryUGCRequest"}), .{ handle, }, .{ "handle", }, @TypeOf(S.SendQueryUGCRequest));
    }
    pub fn GetQueryUGCResult(handle: t.UGCQueryHandle_t, index: t.uint32, pDetails: [*c]t.SteamUGCDetails_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCResult"}), .{ handle, index, pDetails, }, .{ "handle", "index", "pDetails", }, @TypeOf(S.GetQueryUGCResult));
    }
    pub fn GetQueryUGCNumTags(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumTags"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumTags));
    }
    pub fn GetQueryUGCTag(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCTag"}), .{ handle, index, indexTag, pchValue, cchValueSize, }, .{ "handle", "index", "indexTag", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCTag));
    }
    pub fn GetQueryUGCTagDisplayName(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCTagDisplayName"}), .{ handle, index, indexTag, pchValue, cchValueSize, }, .{ "handle", "index", "indexTag", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCTagDisplayName));
    }
    pub fn GetQueryUGCPreviewURL(handle: t.UGCQueryHandle_t, index: t.uint32, pchURL: [*c]u8, cchURLSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCPreviewURL"}), .{ handle, index, pchURL, cchURLSize, }, .{ "handle", "index", "pchURL", "cchURLSize", }, @TypeOf(S.GetQueryUGCPreviewURL));
    }
    pub fn GetQueryUGCMetadata(handle: t.UGCQueryHandle_t, index: t.uint32, pchMetadata: [*c]u8, cchMetadatasize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCMetadata"}), .{ handle, index, pchMetadata, cchMetadatasize, }, .{ "handle", "index", "pchMetadata", "cchMetadatasize", }, @TypeOf(S.GetQueryUGCMetadata));
    }
    pub fn GetQueryUGCChildren(handle: t.UGCQueryHandle_t, index: t.uint32, pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCChildren"}), .{ handle, index, pvecPublishedFileID, cMaxEntries, }, .{ "handle", "index", "pvecPublishedFileID", "cMaxEntries", }, @TypeOf(S.GetQueryUGCChildren));
    }
    pub fn GetQueryUGCStatistic(handle: t.UGCQueryHandle_t, index: t.uint32, eStatType: t.EItemStatistic, pStatValue: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCStatistic"}), .{ handle, index, eStatType, pStatValue, }, .{ "handle", "index", "eStatType", "pStatValue", }, @TypeOf(S.GetQueryUGCStatistic));
    }
    pub fn GetQueryUGCNumAdditionalPreviews(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumAdditionalPreviews"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumAdditionalPreviews));
    }
    pub fn GetQueryUGCAdditionalPreview(handle: t.UGCQueryHandle_t, index: t.uint32, previewIndex: t.uint32, pchURLOrVideoID: [*c]u8, cchURLSize: t.uint32, pchOriginalFileName: [*c]u8, cchOriginalFileNameSize: t.uint32, pPreviewType: [*c]t.EItemPreviewType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCAdditionalPreview"}), .{ handle, index, previewIndex, pchURLOrVideoID, cchURLSize, pchOriginalFileName, cchOriginalFileNameSize, pPreviewType, }, .{ "handle", "index", "previewIndex", "pchURLOrVideoID", "cchURLSize", "pchOriginalFileName", "cchOriginalFileNameSize", "pPreviewType", }, @TypeOf(S.GetQueryUGCAdditionalPreview));
    }
    pub fn GetQueryUGCNumKeyValueTags(handle: t.UGCQueryHandle_t, index: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCNumKeyValueTags"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.GetQueryUGCNumKeyValueTags));
    }
    pub fn GetQueryUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, keyValueTagIndex: t.uint32, pchKey: [*c]u8, cchKeySize: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryUGCKeyValueTag"}), .{ handle, index, keyValueTagIndex, pchKey, cchKeySize, pchValue, cchValueSize, }, .{ "handle", "index", "keyValueTagIndex", "pchKey", "cchKeySize", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryUGCKeyValueTag));
    }
    pub fn GetQueryFirstUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, pchKey: [*c]const u8, pchValue: [*c]u8, cchValueSize: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryFirstUGCKeyValueTag"}), .{ handle, index, pchKey, pchValue, cchValueSize, }, .{ "handle", "index", "pchKey", "pchValue", "cchValueSize", }, @TypeOf(S.GetQueryFirstUGCKeyValueTag));
    }
    pub fn ReleaseQueryUGCRequest(handle: t.UGCQueryHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReleaseQueryUGCRequest"}), .{ handle, }, .{ "handle", }, @TypeOf(S.ReleaseQueryUGCRequest));
    }
    pub fn AddRequiredTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredTag"}), .{ handle, pTagName, }, .{ "handle", "pTagName", }, @TypeOf(S.AddRequiredTag));
    }
    pub fn AddRequiredTagGroup(handle: t.UGCQueryHandle_t, pTagGroups: [*c]const t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredTagGroup"}), .{ handle, pTagGroups, }, .{ "handle", "pTagGroups", }, @TypeOf(S.AddRequiredTagGroup));
    }
    pub fn AddExcludedTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddExcludedTag"}), .{ handle, pTagName, }, .{ "handle", "pTagName", }, @TypeOf(S.AddExcludedTag));
    }
    pub fn SetReturnOnlyIDs(handle: t.UGCQueryHandle_t, bReturnOnlyIDs: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnOnlyIDs"}), .{ handle, bReturnOnlyIDs, }, .{ "handle", "bReturnOnlyIDs", }, @TypeOf(S.SetReturnOnlyIDs));
    }
    pub fn SetReturnKeyValueTags(handle: t.UGCQueryHandle_t, bReturnKeyValueTags: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnKeyValueTags"}), .{ handle, bReturnKeyValueTags, }, .{ "handle", "bReturnKeyValueTags", }, @TypeOf(S.SetReturnKeyValueTags));
    }
    pub fn SetReturnLongDescription(handle: t.UGCQueryHandle_t, bReturnLongDescription: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnLongDescription"}), .{ handle, bReturnLongDescription, }, .{ "handle", "bReturnLongDescription", }, @TypeOf(S.SetReturnLongDescription));
    }
    pub fn SetReturnMetadata(handle: t.UGCQueryHandle_t, bReturnMetadata: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnMetadata"}), .{ handle, bReturnMetadata, }, .{ "handle", "bReturnMetadata", }, @TypeOf(S.SetReturnMetadata));
    }
    pub fn SetReturnChildren(handle: t.UGCQueryHandle_t, bReturnChildren: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnChildren"}), .{ handle, bReturnChildren, }, .{ "handle", "bReturnChildren", }, @TypeOf(S.SetReturnChildren));
    }
    pub fn SetReturnAdditionalPreviews(handle: t.UGCQueryHandle_t, bReturnAdditionalPreviews: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnAdditionalPreviews"}), .{ handle, bReturnAdditionalPreviews, }, .{ "handle", "bReturnAdditionalPreviews", }, @TypeOf(S.SetReturnAdditionalPreviews));
    }
    pub fn SetReturnTotalOnly(handle: t.UGCQueryHandle_t, bReturnTotalOnly: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnTotalOnly"}), .{ handle, bReturnTotalOnly, }, .{ "handle", "bReturnTotalOnly", }, @TypeOf(S.SetReturnTotalOnly));
    }
    pub fn SetReturnPlaytimeStats(handle: t.UGCQueryHandle_t, unDays: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetReturnPlaytimeStats"}), .{ handle, unDays, }, .{ "handle", "unDays", }, @TypeOf(S.SetReturnPlaytimeStats));
    }
    pub fn SetLanguage(handle: t.UGCQueryHandle_t, pchLanguage: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLanguage"}), .{ handle, pchLanguage, }, .{ "handle", "pchLanguage", }, @TypeOf(S.SetLanguage));
    }
    pub fn SetAllowCachedResponse(handle: t.UGCQueryHandle_t, unMaxAgeSeconds: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAllowCachedResponse"}), .{ handle, unMaxAgeSeconds, }, .{ "handle", "unMaxAgeSeconds", }, @TypeOf(S.SetAllowCachedResponse));
    }
    pub fn SetCloudFileNameFilter(handle: t.UGCQueryHandle_t, pMatchCloudFileName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCloudFileNameFilter"}), .{ handle, pMatchCloudFileName, }, .{ "handle", "pMatchCloudFileName", }, @TypeOf(S.SetCloudFileNameFilter));
    }
    pub fn SetMatchAnyTag(handle: t.UGCQueryHandle_t, bMatchAnyTag: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMatchAnyTag"}), .{ handle, bMatchAnyTag, }, .{ "handle", "bMatchAnyTag", }, @TypeOf(S.SetMatchAnyTag));
    }
    pub fn SetSearchText(handle: t.UGCQueryHandle_t, pSearchText: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSearchText"}), .{ handle, pSearchText, }, .{ "handle", "pSearchText", }, @TypeOf(S.SetSearchText));
    }
    pub fn SetRankedByTrendDays(handle: t.UGCQueryHandle_t, unDays: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRankedByTrendDays"}), .{ handle, unDays, }, .{ "handle", "unDays", }, @TypeOf(S.SetRankedByTrendDays));
    }
    pub fn SetTimeCreatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetTimeCreatedDateRange"}), .{ handle, rtStart, rtEnd, }, .{ "handle", "rtStart", "rtEnd", }, @TypeOf(S.SetTimeCreatedDateRange));
    }
    pub fn SetTimeUpdatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetTimeUpdatedDateRange"}), .{ handle, rtStart, rtEnd, }, .{ "handle", "rtStart", "rtEnd", }, @TypeOf(S.SetTimeUpdatedDateRange));
    }
    pub fn AddRequiredKeyValueTag(handle: t.UGCQueryHandle_t, pKey: [*c]const u8, pValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddRequiredKeyValueTag"}), .{ handle, pKey, pValue, }, .{ "handle", "pKey", "pValue", }, @TypeOf(S.AddRequiredKeyValueTag));
    }
    pub fn RequestUGCDetails(nPublishedFileID: t.PublishedFileId_t, unMaxAgeSeconds: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUGCDetails"}), .{ nPublishedFileID, unMaxAgeSeconds, }, .{ "nPublishedFileID", "unMaxAgeSeconds", }, @TypeOf(S.RequestUGCDetails));
    }
    pub fn CreateItem(nConsumerAppId: t.AppId_t, eFileType: t.EWorkshopFileType, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateItem"}), .{ nConsumerAppId, eFileType, }, .{ "nConsumerAppId", "eFileType", }, @TypeOf(S.CreateItem));
    }
    pub fn StartItemUpdate(nConsumerAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.UGCUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartItemUpdate"}), .{ nConsumerAppId, nPublishedFileID, }, .{ "nConsumerAppId", "nPublishedFileID", }, @TypeOf(S.StartItemUpdate));
    }
    pub fn SetItemTitle(handle: t.UGCUpdateHandle_t, pchTitle: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemTitle"}), .{ handle, pchTitle, }, .{ "handle", "pchTitle", }, @TypeOf(S.SetItemTitle));
    }
    pub fn SetItemDescription(handle: t.UGCUpdateHandle_t, pchDescription: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemDescription"}), .{ handle, pchDescription, }, .{ "handle", "pchDescription", }, @TypeOf(S.SetItemDescription));
    }
    pub fn SetItemUpdateLanguage(handle: t.UGCUpdateHandle_t, pchLanguage: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemUpdateLanguage"}), .{ handle, pchLanguage, }, .{ "handle", "pchLanguage", }, @TypeOf(S.SetItemUpdateLanguage));
    }
    pub fn SetItemMetadata(handle: t.UGCUpdateHandle_t, pchMetaData: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemMetadata"}), .{ handle, pchMetaData, }, .{ "handle", "pchMetaData", }, @TypeOf(S.SetItemMetadata));
    }
    pub fn SetItemVisibility(handle: t.UGCUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemVisibility"}), .{ handle, eVisibility, }, .{ "handle", "eVisibility", }, @TypeOf(S.SetItemVisibility));
    }
    pub fn SetItemTags(updateHandle: t.UGCUpdateHandle_t, pTags: [*c]const t.SteamParamStringArray_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemTags"}), .{ updateHandle, pTags, }, .{ "updateHandle", "pTags", }, @TypeOf(S.SetItemTags));
    }
    pub fn SetItemContent(handle: t.UGCUpdateHandle_t, pszContentFolder: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemContent"}), .{ handle, pszContentFolder, }, .{ "handle", "pszContentFolder", }, @TypeOf(S.SetItemContent));
    }
    pub fn SetItemPreview(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetItemPreview"}), .{ handle, pszPreviewFile, }, .{ "handle", "pszPreviewFile", }, @TypeOf(S.SetItemPreview));
    }
    pub fn SetAllowLegacyUpload(handle: t.UGCUpdateHandle_t, bAllowLegacyUpload: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAllowLegacyUpload"}), .{ handle, bAllowLegacyUpload, }, .{ "handle", "bAllowLegacyUpload", }, @TypeOf(S.SetAllowLegacyUpload));
    }
    pub fn RemoveAllItemKeyValueTags(handle: t.UGCUpdateHandle_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveAllItemKeyValueTags"}), .{ handle, }, .{ "handle", }, @TypeOf(S.RemoveAllItemKeyValueTags));
    }
    pub fn RemoveItemKeyValueTags(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemKeyValueTags"}), .{ handle, pchKey, }, .{ "handle", "pchKey", }, @TypeOf(S.RemoveItemKeyValueTags));
    }
    pub fn AddItemKeyValueTag(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemKeyValueTag"}), .{ handle, pchKey, pchValue, }, .{ "handle", "pchKey", "pchValue", }, @TypeOf(S.AddItemKeyValueTag));
    }
    pub fn AddItemPreviewFile(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, @"type": t.EItemPreviewType, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemPreviewFile"}), .{ handle, pszPreviewFile, @"type", }, .{ "handle", "pszPreviewFile", "type", }, @TypeOf(S.AddItemPreviewFile));
    }
    pub fn AddItemPreviewVideo(handle: t.UGCUpdateHandle_t, pszVideoID: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemPreviewVideo"}), .{ handle, pszVideoID, }, .{ "handle", "pszVideoID", }, @TypeOf(S.AddItemPreviewVideo));
    }
    pub fn UpdateItemPreviewFile(handle: t.UGCUpdateHandle_t, index: t.uint32, pszPreviewFile: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateItemPreviewFile"}), .{ handle, index, pszPreviewFile, }, .{ "handle", "index", "pszPreviewFile", }, @TypeOf(S.UpdateItemPreviewFile));
    }
    pub fn UpdateItemPreviewVideo(handle: t.UGCUpdateHandle_t, index: t.uint32, pszVideoID: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateItemPreviewVideo"}), .{ handle, index, pszVideoID, }, .{ "handle", "index", "pszVideoID", }, @TypeOf(S.UpdateItemPreviewVideo));
    }
    pub fn RemoveItemPreview(handle: t.UGCUpdateHandle_t, index: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemPreview"}), .{ handle, index, }, .{ "handle", "index", }, @TypeOf(S.RemoveItemPreview));
    }
    pub fn SubmitItemUpdate(handle: t.UGCUpdateHandle_t, pchChangeNote: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitItemUpdate"}), .{ handle, pchChangeNote, }, .{ "handle", "pchChangeNote", }, @TypeOf(S.SubmitItemUpdate));
    }
    pub fn GetItemUpdateProgress(handle: t.UGCUpdateHandle_t, punBytesProcessed: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) t.EItemUpdateStatus {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemUpdateProgress"}), .{ handle, punBytesProcessed, punBytesTotal, }, .{ "handle", "punBytesProcessed", "punBytesTotal", }, @TypeOf(S.GetItemUpdateProgress));
    }
    pub fn SetUserItemVote(nPublishedFileID: t.PublishedFileId_t, bVoteUp: bool, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserItemVote"}), .{ nPublishedFileID, bVoteUp, }, .{ "nPublishedFileID", "bVoteUp", }, @TypeOf(S.SetUserItemVote));
    }
    pub fn GetUserItemVote(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserItemVote"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetUserItemVote));
    }
    pub fn AddItemToFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddItemToFavorites"}), .{ nAppId, nPublishedFileID, }, .{ "nAppId", "nPublishedFileID", }, @TypeOf(S.AddItemToFavorites));
    }
    pub fn RemoveItemFromFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveItemFromFavorites"}), .{ nAppId, nPublishedFileID, }, .{ "nAppId", "nPublishedFileID", }, @TypeOf(S.RemoveItemFromFavorites));
    }
    pub fn SubscribeItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubscribeItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.SubscribeItem));
    }
    pub fn UnsubscribeItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UnsubscribeItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.UnsubscribeItem));
    }
    pub fn GetNumSubscribedItems() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumSubscribedItems"}), .{ }, .{ }, @TypeOf(S.GetNumSubscribedItems));
    }
    pub fn GetSubscribedItems(pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSubscribedItems"}), .{ pvecPublishedFileID, cMaxEntries, }, .{ "pvecPublishedFileID", "cMaxEntries", }, @TypeOf(S.GetSubscribedItems));
    }
    pub fn GetItemState(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemState"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetItemState));
    }
    pub fn GetItemInstallInfo(nPublishedFileID: t.PublishedFileId_t, punSizeOnDisk: [*c]t.uint64, pchFolder: [*c]u8, cchFolderSize: t.uint32, punTimeStamp: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemInstallInfo"}), .{ nPublishedFileID, punSizeOnDisk, pchFolder, cchFolderSize, punTimeStamp, }, .{ "nPublishedFileID", "punSizeOnDisk", "pchFolder", "cchFolderSize", "punTimeStamp", }, @TypeOf(S.GetItemInstallInfo));
    }
    pub fn GetItemDownloadInfo(nPublishedFileID: t.PublishedFileId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDownloadInfo"}), .{ nPublishedFileID, punBytesDownloaded, punBytesTotal, }, .{ "nPublishedFileID", "punBytesDownloaded", "punBytesTotal", }, @TypeOf(S.GetItemDownloadInfo));
    }
    pub fn DownloadItem(nPublishedFileID: t.PublishedFileId_t, bHighPriority: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DownloadItem"}), .{ nPublishedFileID, bHighPriority, }, .{ "nPublishedFileID", "bHighPriority", }, @TypeOf(S.DownloadItem));
    }
    pub fn BInitWorkshopForGameServer(unWorkshopDepotID: t.DepotId_t, pszFolder: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BInitWorkshopForGameServer"}), .{ unWorkshopDepotID, pszFolder, }, .{ "unWorkshopDepotID", "pszFolder", }, @TypeOf(S.BInitWorkshopForGameServer));
    }
    pub fn SuspendDownloads(bSuspend: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SuspendDownloads"}), .{ bSuspend, }, .{ "bSuspend", }, @TypeOf(S.SuspendDownloads));
    }
    pub fn StartPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartPlaytimeTracking"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.StartPlaytimeTracking));
    }
    pub fn StopPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopPlaytimeTracking"}), .{ pvecPublishedFileID, unNumPublishedFileIDs, }, .{ "pvecPublishedFileID", "unNumPublishedFileIDs", }, @TypeOf(S.StopPlaytimeTracking));
    }
    pub fn StopPlaytimeTrackingForAllItems() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopPlaytimeTrackingForAllItems"}), .{ }, .{ }, @TypeOf(S.StopPlaytimeTrackingForAllItems));
    }
    pub fn AddDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddDependency"}), .{ nParentPublishedFileID, nChildPublishedFileID, }, .{ "nParentPublishedFileID", "nChildPublishedFileID", }, @TypeOf(S.AddDependency));
    }
    pub fn RemoveDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveDependency"}), .{ nParentPublishedFileID, nChildPublishedFileID, }, .{ "nParentPublishedFileID", "nChildPublishedFileID", }, @TypeOf(S.RemoveDependency));
    }
    pub fn AddAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddAppDependency"}), .{ nPublishedFileID, nAppID, }, .{ "nPublishedFileID", "nAppID", }, @TypeOf(S.AddAppDependency));
    }
    pub fn RemoveAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveAppDependency"}), .{ nPublishedFileID, nAppID, }, .{ "nPublishedFileID", "nAppID", }, @TypeOf(S.RemoveAppDependency));
    }
    pub fn GetAppDependencies(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppDependencies"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.GetAppDependencies));
    }
    pub fn DeleteItem(nPublishedFileID: t.PublishedFileId_t, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeleteItem"}), .{ nPublishedFileID, }, .{ "nPublishedFileID", }, @TypeOf(S.DeleteItem));
    }
    pub fn ShowWorkshopEULA() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ShowWorkshopEULA"}), .{ }, .{ }, @TypeOf(S.ShowWorkshopEULA));
    }
    pub fn GetWorkshopEULAStatus() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetWorkshopEULAStatus"}), .{ }, .{ }, @TypeOf(S.GetWorkshopEULAStatus));
    }
};
pub const SteamUGC = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUGC"};
    pub fn v016() callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
};
pub const SteamGameServerUGC = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerUGC"};
    pub fn v016() callconv(.C) [*c]t.ISteamUGC {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v016"}), .{ }, .{ }, @TypeOf(S.v016));
    }
};
pub const ISteamAppList = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamAppList"};
    _: u8 = 1,
    pub const version = "STEAMAPPLIST_INTERFACE_VERSION001";
    pub fn GetNumInstalledApps() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumInstalledApps"}), .{ }, .{ }, @TypeOf(S.GetNumInstalledApps));
    }
    pub fn GetInstalledApps(pvecAppID: [*c]t.AppId_t, unMaxAppIDs: t.uint32, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetInstalledApps"}), .{ pvecAppID, unMaxAppIDs, }, .{ "pvecAppID", "unMaxAppIDs", }, @TypeOf(S.GetInstalledApps));
    }
    pub fn GetAppName(nAppID: t.AppId_t, pchName: [*c]u8, cchNameMax: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppName"}), .{ nAppID, pchName, cchNameMax, }, .{ "nAppID", "pchName", "cchNameMax", }, @TypeOf(S.GetAppName));
    }
    pub fn GetAppInstallDir(nAppID: t.AppId_t, pchDirectory: [*c]u8, cchNameMax: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppInstallDir"}), .{ nAppID, pchDirectory, cchNameMax, }, .{ "nAppID", "pchDirectory", "cchNameMax", }, @TypeOf(S.GetAppInstallDir));
    }
    pub fn GetAppBuildId(nAppID: t.AppId_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAppBuildId"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.GetAppBuildId));
    }
};
pub const SteamAppList = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamAppList"};
    pub fn v001() callconv(.C) [*c]t.ISteamAppList {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
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
    pub fn Shutdown() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Shutdown"}), .{ }, .{ }, @TypeOf(S.Shutdown));
    }
    pub fn CreateBrowser(pchUserAgent: [*c]const u8, pchUserCSS: [*c]const u8, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateBrowser"}), .{ pchUserAgent, pchUserCSS, }, .{ "pchUserAgent", "pchUserCSS", }, @TypeOf(S.CreateBrowser));
    }
    pub fn RemoveBrowser(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveBrowser"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.RemoveBrowser));
    }
    pub fn LoadURL(unBrowserHandle: t.HHTMLBrowser, pchURL: [*c]const u8, pchPostData: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LoadURL"}), .{ unBrowserHandle, pchURL, pchPostData, }, .{ "unBrowserHandle", "pchURL", "pchPostData", }, @TypeOf(S.LoadURL));
    }
    pub fn SetSize(unBrowserHandle: t.HHTMLBrowser, unWidth: t.uint32, unHeight: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSize"}), .{ unBrowserHandle, unWidth, unHeight, }, .{ "unBrowserHandle", "unWidth", "unHeight", }, @TypeOf(S.SetSize));
    }
    pub fn StopLoad(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopLoad"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.StopLoad));
    }
    pub fn Reload(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Reload"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.Reload));
    }
    pub fn GoBack(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GoBack"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.GoBack));
    }
    pub fn GoForward(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GoForward"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.GoForward));
    }
    pub fn AddHeader(unBrowserHandle: t.HHTMLBrowser, pchKey: [*c]const u8, pchValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddHeader"}), .{ unBrowserHandle, pchKey, pchValue, }, .{ "unBrowserHandle", "pchKey", "pchValue", }, @TypeOf(S.AddHeader));
    }
    pub fn ExecuteJavascript(unBrowserHandle: t.HHTMLBrowser, pchScript: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ExecuteJavascript"}), .{ unBrowserHandle, pchScript, }, .{ "unBrowserHandle", "pchScript", }, @TypeOf(S.ExecuteJavascript));
    }
    pub fn MouseUp(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseUp"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseUp));
    }
    pub fn MouseDown(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseDown"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseDown));
    }
    pub fn MouseDoubleClick(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseDoubleClick"}), .{ unBrowserHandle, eMouseButton, }, .{ "unBrowserHandle", "eMouseButton", }, @TypeOf(S.MouseDoubleClick));
    }
    pub fn MouseMove(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseMove"}), .{ unBrowserHandle, x, y, }, .{ "unBrowserHandle", "x", "y", }, @TypeOf(S.MouseMove));
    }
    pub fn MouseWheel(unBrowserHandle: t.HHTMLBrowser, nDelta: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"MouseWheel"}), .{ unBrowserHandle, nDelta, }, .{ "unBrowserHandle", "nDelta", }, @TypeOf(S.MouseWheel));
    }
    pub fn KeyDown(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyDown"}), .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, bIsSystemKey, }, .{ "unBrowserHandle", "nNativeKeyCode", "eHTMLKeyModifiers", "bIsSystemKey", }, @TypeOf(S.KeyDown));
    }
    pub fn KeyUp(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyUp"}), .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, }, .{ "unBrowserHandle", "nNativeKeyCode", "eHTMLKeyModifiers", }, @TypeOf(S.KeyUp));
    }
    pub fn KeyChar(unBrowserHandle: t.HHTMLBrowser, cUnicodeChar: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"KeyChar"}), .{ unBrowserHandle, cUnicodeChar, eHTMLKeyModifiers, }, .{ "unBrowserHandle", "cUnicodeChar", "eHTMLKeyModifiers", }, @TypeOf(S.KeyChar));
    }
    pub fn SetHorizontalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetHorizontalScroll"}), .{ unBrowserHandle, nAbsolutePixelScroll, }, .{ "unBrowserHandle", "nAbsolutePixelScroll", }, @TypeOf(S.SetHorizontalScroll));
    }
    pub fn SetVerticalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetVerticalScroll"}), .{ unBrowserHandle, nAbsolutePixelScroll, }, .{ "unBrowserHandle", "nAbsolutePixelScroll", }, @TypeOf(S.SetVerticalScroll));
    }
    pub fn SetKeyFocus(unBrowserHandle: t.HHTMLBrowser, bHasKeyFocus: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetKeyFocus"}), .{ unBrowserHandle, bHasKeyFocus, }, .{ "unBrowserHandle", "bHasKeyFocus", }, @TypeOf(S.SetKeyFocus));
    }
    pub fn ViewSource(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ViewSource"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.ViewSource));
    }
    pub fn CopyToClipboard(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CopyToClipboard"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.CopyToClipboard));
    }
    pub fn PasteFromClipboard(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"PasteFromClipboard"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.PasteFromClipboard));
    }
    pub fn Find(unBrowserHandle: t.HHTMLBrowser, pchSearchStr: [*c]const u8, bCurrentlyInFind: bool, bReverse: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Find"}), .{ unBrowserHandle, pchSearchStr, bCurrentlyInFind, bReverse, }, .{ "unBrowserHandle", "pchSearchStr", "bCurrentlyInFind", "bReverse", }, @TypeOf(S.Find));
    }
    pub fn StopFind(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StopFind"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.StopFind));
    }
    pub fn GetLinkAtPosition(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLinkAtPosition"}), .{ unBrowserHandle, x, y, }, .{ "unBrowserHandle", "x", "y", }, @TypeOf(S.GetLinkAtPosition));
    }
    pub fn SetCookie(pchHostname: [*c]const u8, pchKey: [*c]const u8, pchValue: [*c]const u8, pchPath: [*c]const u8, nExpires: t.RTime32, bSecure: bool, bHTTPOnly: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCookie"}), .{ pchHostname, pchKey, pchValue, pchPath, nExpires, bSecure, bHTTPOnly, }, .{ "pchHostname", "pchKey", "pchValue", "pchPath", "nExpires", "bSecure", "bHTTPOnly", }, @TypeOf(S.SetCookie));
    }
    pub fn SetPageScaleFactor(unBrowserHandle: t.HHTMLBrowser, flZoom: f32, nPointX: i32, nPointY: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPageScaleFactor"}), .{ unBrowserHandle, flZoom, nPointX, nPointY, }, .{ "unBrowserHandle", "flZoom", "nPointX", "nPointY", }, @TypeOf(S.SetPageScaleFactor));
    }
    pub fn SetBackgroundMode(unBrowserHandle: t.HHTMLBrowser, bBackgroundMode: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetBackgroundMode"}), .{ unBrowserHandle, bBackgroundMode, }, .{ "unBrowserHandle", "bBackgroundMode", }, @TypeOf(S.SetBackgroundMode));
    }
    pub fn SetDPIScalingFactor(unBrowserHandle: t.HHTMLBrowser, flDPIScaling: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDPIScalingFactor"}), .{ unBrowserHandle, flDPIScaling, }, .{ "unBrowserHandle", "flDPIScaling", }, @TypeOf(S.SetDPIScalingFactor));
    }
    pub fn OpenDeveloperTools(unBrowserHandle: t.HHTMLBrowser, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"OpenDeveloperTools"}), .{ unBrowserHandle, }, .{ "unBrowserHandle", }, @TypeOf(S.OpenDeveloperTools));
    }
    pub fn AllowStartRequest(unBrowserHandle: t.HHTMLBrowser, bAllowed: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllowStartRequest"}), .{ unBrowserHandle, bAllowed, }, .{ "unBrowserHandle", "bAllowed", }, @TypeOf(S.AllowStartRequest));
    }
    pub fn JSDialogResponse(unBrowserHandle: t.HHTMLBrowser, bResult: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"JSDialogResponse"}), .{ unBrowserHandle, bResult, }, .{ "unBrowserHandle", "bResult", }, @TypeOf(S.JSDialogResponse));
    }
    pub fn FileLoadDialogResponse(unBrowserHandle: t.HHTMLBrowser, pchSelectedFiles: [*c][*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FileLoadDialogResponse"}), .{ unBrowserHandle, pchSelectedFiles, }, .{ "unBrowserHandle", "pchSelectedFiles", }, @TypeOf(S.FileLoadDialogResponse));
    }
};
pub const SteamHTMLSurface = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamHTMLSurface"};
    pub fn v005() callconv(.C) [*c]t.ISteamHTMLSurface {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v005"}), .{ }, .{ }, @TypeOf(S.v005));
    }
};
pub const ISteamInventory = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamInventory"};
    _: u8 = 1,
    pub const version = "STEAMINVENTORY_INTERFACE_V003";
    pub fn GetResultStatus(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultStatus"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.GetResultStatus));
    }
    pub fn GetResultItems(resultHandle: t.SteamInventoryResult_t, pOutItemsArray: [*c]t.SteamItemDetails_t, punOutItemsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultItems"}), .{ resultHandle, pOutItemsArray, punOutItemsArraySize, }, .{ "resultHandle", "pOutItemsArray", "punOutItemsArraySize", }, @TypeOf(S.GetResultItems));
    }
    pub fn GetResultItemProperty(resultHandle: t.SteamInventoryResult_t, unItemIndex: t.uint32, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultItemProperty"}), .{ resultHandle, unItemIndex, pchPropertyName, pchValueBuffer, punValueBufferSizeOut, }, .{ "resultHandle", "unItemIndex", "pchPropertyName", "pchValueBuffer", "punValueBufferSizeOut", }, @TypeOf(S.GetResultItemProperty));
    }
    pub fn GetResultTimestamp(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetResultTimestamp"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.GetResultTimestamp));
    }
    pub fn CheckResultSteamID(resultHandle: t.SteamInventoryResult_t, steamIDExpected: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckResultSteamID"}), .{ resultHandle, steamIDExpected, }, .{ "resultHandle", "steamIDExpected", }, @TypeOf(S.CheckResultSteamID));
    }
    pub fn DestroyResult(resultHandle: t.SteamInventoryResult_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyResult"}), .{ resultHandle, }, .{ "resultHandle", }, @TypeOf(S.DestroyResult));
    }
    pub fn GetAllItems(pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAllItems"}), .{ pResultHandle, }, .{ "pResultHandle", }, @TypeOf(S.GetAllItems));
    }
    pub fn GetItemsByID(pResultHandle: [*c]t.SteamInventoryResult_t, pInstanceIDs: [*c]const t.SteamItemInstanceID_t, unCountInstanceIDs: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemsByID"}), .{ pResultHandle, pInstanceIDs, unCountInstanceIDs, }, .{ "pResultHandle", "pInstanceIDs", "unCountInstanceIDs", }, @TypeOf(S.GetItemsByID));
    }
    pub fn SerializeResult(resultHandle: t.SteamInventoryResult_t, pOutBuffer: ?*anyopaque, punOutBufferSize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SerializeResult"}), .{ resultHandle, pOutBuffer, punOutBufferSize, }, .{ "resultHandle", "pOutBuffer", "punOutBufferSize", }, @TypeOf(S.SerializeResult));
    }
    pub fn DeserializeResult(pOutResultHandle: [*c]t.SteamInventoryResult_t, pBuffer: ?*const anyopaque, unBufferSize: t.uint32, bRESERVED_MUST_BE_FALSE: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DeserializeResult"}), .{ pOutResultHandle, pBuffer, unBufferSize, bRESERVED_MUST_BE_FALSE, }, .{ "pOutResultHandle", "pBuffer", "unBufferSize", "bRESERVED_MUST_BE_FALSE", }, @TypeOf(S.DeserializeResult));
    }
    pub fn GenerateItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GenerateItems"}), .{ pResultHandle, pArrayItemDefs, punArrayQuantity, unArrayLength, }, .{ "pResultHandle", "pArrayItemDefs", "punArrayQuantity", "unArrayLength", }, @TypeOf(S.GenerateItems));
    }
    pub fn GrantPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GrantPromoItems"}), .{ pResultHandle, }, .{ "pResultHandle", }, @TypeOf(S.GrantPromoItems));
    }
    pub fn AddPromoItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemDef: t.SteamItemDef_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPromoItem"}), .{ pResultHandle, itemDef, }, .{ "pResultHandle", "itemDef", }, @TypeOf(S.AddPromoItem));
    }
    pub fn AddPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AddPromoItems"}), .{ pResultHandle, pArrayItemDefs, unArrayLength, }, .{ "pResultHandle", "pArrayItemDefs", "unArrayLength", }, @TypeOf(S.AddPromoItems));
    }
    pub fn ConsumeItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemConsume: t.SteamItemInstanceID_t, unQuantity: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConsumeItem"}), .{ pResultHandle, itemConsume, unQuantity, }, .{ "pResultHandle", "itemConsume", "unQuantity", }, @TypeOf(S.ConsumeItem));
    }
    pub fn ExchangeItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayGenerate: [*c]const t.SteamItemDef_t, punArrayGenerateQuantity: [*c]const t.uint32, unArrayGenerateLength: t.uint32, pArrayDestroy: [*c]const t.SteamItemInstanceID_t, punArrayDestroyQuantity: [*c]const t.uint32, unArrayDestroyLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ExchangeItems"}), .{ pResultHandle, pArrayGenerate, punArrayGenerateQuantity, unArrayGenerateLength, pArrayDestroy, punArrayDestroyQuantity, unArrayDestroyLength, }, .{ "pResultHandle", "pArrayGenerate", "punArrayGenerateQuantity", "unArrayGenerateLength", "pArrayDestroy", "punArrayDestroyQuantity", "unArrayDestroyLength", }, @TypeOf(S.ExchangeItems));
    }
    pub fn TransferItemQuantity(pResultHandle: [*c]t.SteamInventoryResult_t, itemIdSource: t.SteamItemInstanceID_t, unQuantity: t.uint32, itemIdDest: t.SteamItemInstanceID_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TransferItemQuantity"}), .{ pResultHandle, itemIdSource, unQuantity, itemIdDest, }, .{ "pResultHandle", "itemIdSource", "unQuantity", "itemIdDest", }, @TypeOf(S.TransferItemQuantity));
    }
    pub fn SendItemDropHeartbeat() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendItemDropHeartbeat"}), .{ }, .{ }, @TypeOf(S.SendItemDropHeartbeat));
    }
    pub fn TriggerItemDrop(pResultHandle: [*c]t.SteamInventoryResult_t, dropListDefinition: t.SteamItemDef_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TriggerItemDrop"}), .{ pResultHandle, dropListDefinition, }, .{ "pResultHandle", "dropListDefinition", }, @TypeOf(S.TriggerItemDrop));
    }
    pub fn TradeItems(pResultHandle: [*c]t.SteamInventoryResult_t, steamIDTradePartner: t.CSteamID, pArrayGive: [*c]const t.SteamItemInstanceID_t, pArrayGiveQuantity: [*c]const t.uint32, nArrayGiveLength: t.uint32, pArrayGet: [*c]const t.SteamItemInstanceID_t, pArrayGetQuantity: [*c]const t.uint32, nArrayGetLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"TradeItems"}), .{ pResultHandle, steamIDTradePartner, pArrayGive, pArrayGiveQuantity, nArrayGiveLength, pArrayGet, pArrayGetQuantity, nArrayGetLength, }, .{ "pResultHandle", "steamIDTradePartner", "pArrayGive", "pArrayGiveQuantity", "nArrayGiveLength", "pArrayGet", "pArrayGetQuantity", "nArrayGetLength", }, @TypeOf(S.TradeItems));
    }
    pub fn LoadItemDefinitions() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LoadItemDefinitions"}), .{ }, .{ }, @TypeOf(S.LoadItemDefinitions));
    }
    pub fn GetItemDefinitionIDs(pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDefinitionIDs"}), .{ pItemDefIDs, punItemDefIDsArraySize, }, .{ "pItemDefIDs", "punItemDefIDsArraySize", }, @TypeOf(S.GetItemDefinitionIDs));
    }
    pub fn GetItemDefinitionProperty(iDefinition: t.SteamItemDef_t, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemDefinitionProperty"}), .{ iDefinition, pchPropertyName, pchValueBuffer, punValueBufferSizeOut, }, .{ "iDefinition", "pchPropertyName", "pchValueBuffer", "punValueBufferSizeOut", }, @TypeOf(S.GetItemDefinitionProperty));
    }
    pub fn RequestEligiblePromoItemDefinitionsIDs(steamID: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestEligiblePromoItemDefinitionsIDs"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.RequestEligiblePromoItemDefinitionsIDs));
    }
    pub fn GetEligiblePromoItemDefinitionIDs(steamID: t.CSteamID, pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetEligiblePromoItemDefinitionIDs"}), .{ steamID, pItemDefIDs, punItemDefIDsArraySize, }, .{ "steamID", "pItemDefIDs", "punItemDefIDsArraySize", }, @TypeOf(S.GetEligiblePromoItemDefinitionIDs));
    }
    pub fn StartPurchase(pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartPurchase"}), .{ pArrayItemDefs, punArrayQuantity, unArrayLength, }, .{ "pArrayItemDefs", "punArrayQuantity", "unArrayLength", }, @TypeOf(S.StartPurchase));
    }
    pub fn RequestPrices() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestPrices"}), .{ }, .{ }, @TypeOf(S.RequestPrices));
    }
    pub fn GetNumItemsWithPrices() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNumItemsWithPrices"}), .{ }, .{ }, @TypeOf(S.GetNumItemsWithPrices));
    }
    pub fn GetItemsWithPrices(pArrayItemDefs: [*c]t.SteamItemDef_t, pCurrentPrices: [*c]t.uint64, pBasePrices: [*c]t.uint64, unArrayLength: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemsWithPrices"}), .{ pArrayItemDefs, pCurrentPrices, pBasePrices, unArrayLength, }, .{ "pArrayItemDefs", "pCurrentPrices", "pBasePrices", "unArrayLength", }, @TypeOf(S.GetItemsWithPrices));
    }
    pub fn GetItemPrice(iDefinition: t.SteamItemDef_t, pCurrentPrice: [*c]t.uint64, pBasePrice: [*c]t.uint64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetItemPrice"}), .{ iDefinition, pCurrentPrice, pBasePrice, }, .{ "iDefinition", "pCurrentPrice", "pBasePrice", }, @TypeOf(S.GetItemPrice));
    }
    pub fn StartUpdateProperties() callconv(.C) t.SteamInventoryUpdateHandle_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StartUpdateProperties"}), .{ }, .{ }, @TypeOf(S.StartUpdateProperties));
    }
    pub fn RemoveProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RemoveProperty"}), .{ handle, nItemID, pchPropertyName, }, .{ "handle", "nItemID", "pchPropertyName", }, @TypeOf(S.RemoveProperty));
    }
    pub fn SetPropertyString(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, pchPropertyValue: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyString"}), .{ handle, nItemID, pchPropertyName, pchPropertyValue, }, .{ "handle", "nItemID", "pchPropertyName", "pchPropertyValue", }, @TypeOf(S.SetPropertyString));
    }
    pub fn SetPropertyBool(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, bValue: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyBool"}), .{ handle, nItemID, pchPropertyName, bValue, }, .{ "handle", "nItemID", "pchPropertyName", "bValue", }, @TypeOf(S.SetPropertyBool));
    }
    pub fn SetPropertyInt64(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, nValue: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyInt64"}), .{ handle, nItemID, pchPropertyName, nValue, }, .{ "handle", "nItemID", "pchPropertyName", "nValue", }, @TypeOf(S.SetPropertyInt64));
    }
    pub fn SetPropertyFloat(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, flValue: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPropertyFloat"}), .{ handle, nItemID, pchPropertyName, flValue, }, .{ "handle", "nItemID", "pchPropertyName", "flValue", }, @TypeOf(S.SetPropertyFloat));
    }
    pub fn SubmitUpdateProperties(handle: t.SteamInventoryUpdateHandle_t, pResultHandle: [*c]t.SteamInventoryResult_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SubmitUpdateProperties"}), .{ handle, pResultHandle, }, .{ "handle", "pResultHandle", }, @TypeOf(S.SubmitUpdateProperties));
    }
    pub fn InspectItem(pResultHandle: [*c]t.SteamInventoryResult_t, pchItemToken: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InspectItem"}), .{ pResultHandle, pchItemToken, }, .{ "pResultHandle", "pchItemToken", }, @TypeOf(S.InspectItem));
    }
};
pub const SteamInventory = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamInventory"};
    pub fn v003() callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
};
pub const SteamGameServerInventory = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerInventory"};
    pub fn v003() callconv(.C) [*c]t.ISteamInventory {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v003"}), .{ }, .{ }, @TypeOf(S.v003));
    }
};
pub const ISteamVideo = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamVideo"};
    _: u8 = 1,
    pub const version = "STEAMVIDEO_INTERFACE_V002";
    pub fn GetVideoURL(unVideoAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetVideoURL"}), .{ unVideoAppID, }, .{ "unVideoAppID", }, @TypeOf(S.GetVideoURL));
    }
    pub fn IsBroadcasting(pnNumViewers: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsBroadcasting"}), .{ pnNumViewers, }, .{ "pnNumViewers", }, @TypeOf(S.IsBroadcasting));
    }
    pub fn GetOPFSettings(unVideoAppID: t.AppId_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetOPFSettings"}), .{ unVideoAppID, }, .{ "unVideoAppID", }, @TypeOf(S.GetOPFSettings));
    }
    pub fn GetOPFStringForApp(unVideoAppID: t.AppId_t, pchBuffer: [*c]u8, pnBufferSize: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetOPFStringForApp"}), .{ unVideoAppID, pchBuffer, pnBufferSize, }, .{ "unVideoAppID", "pchBuffer", "pnBufferSize", }, @TypeOf(S.GetOPFStringForApp));
    }
};
pub const SteamVideo = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamVideo"};
    pub fn v002() callconv(.C) [*c]t.ISteamVideo {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
};
pub const ISteamParentalSettings = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamParentalSettings"};
    _: u8 = 1,
    pub const version = "STEAMPARENTALSETTINGS_INTERFACE_VERSION001";
    pub fn BIsParentalLockEnabled() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsParentalLockEnabled"}), .{ }, .{ }, @TypeOf(S.BIsParentalLockEnabled));
    }
    pub fn BIsParentalLockLocked() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsParentalLockLocked"}), .{ }, .{ }, @TypeOf(S.BIsParentalLockLocked));
    }
    pub fn BIsAppBlocked(nAppID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppBlocked"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.BIsAppBlocked));
    }
    pub fn BIsAppInBlockList(nAppID: t.AppId_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsAppInBlockList"}), .{ nAppID, }, .{ "nAppID", }, @TypeOf(S.BIsAppInBlockList));
    }
    pub fn BIsFeatureBlocked(eFeature: t.EParentalFeature, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsFeatureBlocked"}), .{ eFeature, }, .{ "eFeature", }, @TypeOf(S.BIsFeatureBlocked));
    }
    pub fn BIsFeatureInBlockList(eFeature: t.EParentalFeature, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BIsFeatureInBlockList"}), .{ eFeature, }, .{ "eFeature", }, @TypeOf(S.BIsFeatureInBlockList));
    }
};
pub const SteamParentalSettings = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamParentalSettings"};
    pub fn v001() callconv(.C) [*c]t.ISteamParentalSettings {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamRemotePlay = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamRemotePlay"};
    _: u8 = 1,
    pub const version = "STEAMREMOTEPLAY_INTERFACE_VERSION001";
    pub fn GetSessionCount() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionCount"}), .{ }, .{ }, @TypeOf(S.GetSessionCount));
    }
    pub fn GetSessionID(iSessionIndex: i32, ) callconv(.C) t.RemotePlaySessionID_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionID"}), .{ iSessionIndex, }, .{ "iSessionIndex", }, @TypeOf(S.GetSessionID));
    }
    pub fn GetSessionSteamID(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionSteamID"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionSteamID));
    }
    pub fn GetSessionClientName(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionClientName"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionClientName));
    }
    pub fn GetSessionClientFormFactor(unSessionID: t.RemotePlaySessionID_t, ) callconv(.C) t.ESteamDeviceFormFactor {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionClientFormFactor"}), .{ unSessionID, }, .{ "unSessionID", }, @TypeOf(S.GetSessionClientFormFactor));
    }
    pub fn BGetSessionClientResolution(unSessionID: t.RemotePlaySessionID_t, pnResolutionX: [*c]i32, pnResolutionY: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BGetSessionClientResolution"}), .{ unSessionID, pnResolutionX, pnResolutionY, }, .{ "unSessionID", "pnResolutionX", "pnResolutionY", }, @TypeOf(S.BGetSessionClientResolution));
    }
    pub fn BSendRemotePlayTogetherInvite(steamIDFriend: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSendRemotePlayTogetherInvite"}), .{ steamIDFriend, }, .{ "steamIDFriend", }, @TypeOf(S.BSendRemotePlayTogetherInvite));
    }
};
pub const SteamRemotePlay = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamRemotePlay"};
    pub fn v001() callconv(.C) [*c]t.ISteamRemotePlay {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamNetworkingMessages = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingMessages"};
    _: u8 = 1,
    pub const version = "SteamNetworkingMessages002";
    pub fn SendMessageToUser(identityRemote: [*c]const t.SteamNetworkingIdentity, pubData: ?*const anyopaque, cubData: t.uint32, nSendFlags: i32, nRemoteChannel: i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToUser"}), .{ identityRemote, pubData, cubData, nSendFlags, nRemoteChannel, }, .{ "identityRemote", "pubData", "cubData", "nSendFlags", "nRemoteChannel", }, @TypeOf(S.SendMessageToUser));
    }
    pub fn ReceiveMessagesOnChannel(nLocalChannel: i32, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnChannel"}), .{ nLocalChannel, ppOutMessages, nMaxMessages, }, .{ "nLocalChannel", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnChannel));
    }
    pub fn AcceptSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptSessionWithUser"}), .{ identityRemote, }, .{ "identityRemote", }, @TypeOf(S.AcceptSessionWithUser));
    }
    pub fn CloseSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseSessionWithUser"}), .{ identityRemote, }, .{ "identityRemote", }, @TypeOf(S.CloseSessionWithUser));
    }
    pub fn CloseChannelWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, nLocalChannel: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseChannelWithUser"}), .{ identityRemote, nLocalChannel, }, .{ "identityRemote", "nLocalChannel", }, @TypeOf(S.CloseChannelWithUser));
    }
    pub fn GetSessionConnectionInfo(identityRemote: [*c]const t.SteamNetworkingIdentity, pConnectionInfo: [*c]t.SteamNetConnectionInfo_t, pQuickStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, ) callconv(.C) t.ESteamNetworkingConnectionState {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSessionConnectionInfo"}), .{ identityRemote, pConnectionInfo, pQuickStatus, }, .{ "identityRemote", "pConnectionInfo", "pQuickStatus", }, @TypeOf(S.GetSessionConnectionInfo));
    }
};
pub const SteamNetworkingMessages_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingMessages_SteamAPI"};
    pub fn v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
};
pub const SteamGameServerNetworkingMessages_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworkingMessages_SteamAPI"};
    pub fn v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v002"}), .{ }, .{ }, @TypeOf(S.v002));
    }
};
pub const ISteamNetworkingSockets = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingSockets"};
    _: u8 = 1,
    pub const version = "SteamNetworkingSockets012";
    pub fn CreateListenSocketIP(localAddress: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketIP"}), .{ localAddress, nOptions, pOptions, }, .{ "localAddress", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketIP));
    }
    pub fn ConnectByIPAddress(address: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectByIPAddress"}), .{ address, nOptions, pOptions, }, .{ "address", "nOptions", "pOptions", }, @TypeOf(S.ConnectByIPAddress));
    }
    pub fn CreateListenSocketP2P(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketP2P"}), .{ nLocalVirtualPort, nOptions, pOptions, }, .{ "nLocalVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketP2P));
    }
    pub fn ConnectP2P(identityRemote: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectP2P"}), .{ identityRemote, nRemoteVirtualPort, nOptions, pOptions, }, .{ "identityRemote", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectP2P));
    }
    pub fn AcceptConnection(hConn: t.HSteamNetConnection, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AcceptConnection"}), .{ hConn, }, .{ "hConn", }, @TypeOf(S.AcceptConnection));
    }
    pub fn CloseConnection(hPeer: t.HSteamNetConnection, nReason: i32, pszDebug: [*c]const u8, bEnableLinger: bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseConnection"}), .{ hPeer, nReason, pszDebug, bEnableLinger, }, .{ "hPeer", "nReason", "pszDebug", "bEnableLinger", }, @TypeOf(S.CloseConnection));
    }
    pub fn CloseListenSocket(hSocket: t.HSteamListenSocket, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CloseListenSocket"}), .{ hSocket, }, .{ "hSocket", }, @TypeOf(S.CloseListenSocket));
    }
    pub fn SetConnectionUserData(hPeer: t.HSteamNetConnection, nUserData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionUserData"}), .{ hPeer, nUserData, }, .{ "hPeer", "nUserData", }, @TypeOf(S.SetConnectionUserData));
    }
    pub fn GetConnectionUserData(hPeer: t.HSteamNetConnection, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionUserData"}), .{ hPeer, }, .{ "hPeer", }, @TypeOf(S.GetConnectionUserData));
    }
    pub fn SetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionName"}), .{ hPeer, pszName, }, .{ "hPeer", "pszName", }, @TypeOf(S.SetConnectionName));
    }
    pub fn GetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]u8, nMaxLen: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionName"}), .{ hPeer, pszName, nMaxLen, }, .{ "hPeer", "pszName", "nMaxLen", }, @TypeOf(S.GetConnectionName));
    }
    pub fn SendMessageToConnection(hConn: t.HSteamNetConnection, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32, pOutMessageNumber: [*c]i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToConnection"}), .{ hConn, pData, cbData, nSendFlags, pOutMessageNumber, }, .{ "hConn", "pData", "cbData", "nSendFlags", "pOutMessageNumber", }, @TypeOf(S.SendMessageToConnection));
    }
    pub fn SendMessages(nMessages: i32, pMessages: [*c]const [*c]t.SteamNetworkingMessage_t, pOutMessageNumberOrResult: [*c]i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessages"}), .{ nMessages, pMessages, pOutMessageNumberOrResult, }, .{ "nMessages", "pMessages", "pOutMessageNumberOrResult", }, @TypeOf(S.SendMessages));
    }
    pub fn FlushMessagesOnConnection(hConn: t.HSteamNetConnection, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FlushMessagesOnConnection"}), .{ hConn, }, .{ "hConn", }, @TypeOf(S.FlushMessagesOnConnection));
    }
    pub fn ReceiveMessagesOnConnection(hConn: t.HSteamNetConnection, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnConnection"}), .{ hConn, ppOutMessages, nMaxMessages, }, .{ "hConn", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnConnection));
    }
    pub fn GetConnectionInfo(hConn: t.HSteamNetConnection, pInfo: [*c]t.SteamNetConnectionInfo_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionInfo"}), .{ hConn, pInfo, }, .{ "hConn", "pInfo", }, @TypeOf(S.GetConnectionInfo));
    }
    pub fn GetConnectionRealTimeStatus(hConn: t.HSteamNetConnection, pStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, nLanes: i32, pLanes: [*c]t.SteamNetConnectionRealTimeLaneStatus_t, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionRealTimeStatus"}), .{ hConn, pStatus, nLanes, pLanes, }, .{ "hConn", "pStatus", "nLanes", "pLanes", }, @TypeOf(S.GetConnectionRealTimeStatus));
    }
    pub fn GetDetailedConnectionStatus(hConn: t.HSteamNetConnection, pszBuf: [*c]u8, cbBuf: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDetailedConnectionStatus"}), .{ hConn, pszBuf, cbBuf, }, .{ "hConn", "pszBuf", "cbBuf", }, @TypeOf(S.GetDetailedConnectionStatus));
    }
    pub fn GetListenSocketAddress(hSocket: t.HSteamListenSocket, address: [*c]t.SteamNetworkingIPAddr, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetListenSocketAddress"}), .{ hSocket, address, }, .{ "hSocket", "address", }, @TypeOf(S.GetListenSocketAddress));
    }
    pub fn CreateSocketPair(pOutConnection1: [*c]t.HSteamNetConnection, pOutConnection2: [*c]t.HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: [*c]const t.SteamNetworkingIdentity, pIdentity2: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateSocketPair"}), .{ pOutConnection1, pOutConnection2, bUseNetworkLoopback, pIdentity1, pIdentity2, }, .{ "pOutConnection1", "pOutConnection2", "bUseNetworkLoopback", "pIdentity1", "pIdentity2", }, @TypeOf(S.CreateSocketPair));
    }
    pub fn ConfigureConnectionLanes(hConn: t.HSteamNetConnection, nNumLanes: i32, pLanePriorities: [*c]const i32, pLaneWeights: [*c]const t.uint16, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConfigureConnectionLanes"}), .{ hConn, nNumLanes, pLanePriorities, pLaneWeights, }, .{ "hConn", "nNumLanes", "pLanePriorities", "pLaneWeights", }, @TypeOf(S.ConfigureConnectionLanes));
    }
    pub fn GetIdentity(pIdentity: [*c]t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIdentity"}), .{ pIdentity, }, .{ "pIdentity", }, @TypeOf(S.GetIdentity));
    }
    pub fn InitAuthentication() callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitAuthentication"}), .{ }, .{ }, @TypeOf(S.InitAuthentication));
    }
    pub fn GetAuthenticationStatus(pDetails: [*c]t.SteamNetAuthenticationStatus_t, ) callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthenticationStatus"}), .{ pDetails, }, .{ "pDetails", }, @TypeOf(S.GetAuthenticationStatus));
    }
    pub fn CreatePollGroup() callconv(.C) t.HSteamNetPollGroup {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreatePollGroup"}), .{ }, .{ }, @TypeOf(S.CreatePollGroup));
    }
    pub fn DestroyPollGroup(hPollGroup: t.HSteamNetPollGroup, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyPollGroup"}), .{ hPollGroup, }, .{ "hPollGroup", }, @TypeOf(S.DestroyPollGroup));
    }
    pub fn SetConnectionPollGroup(hConn: t.HSteamNetConnection, hPollGroup: t.HSteamNetPollGroup, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionPollGroup"}), .{ hConn, hPollGroup, }, .{ "hConn", "hPollGroup", }, @TypeOf(S.SetConnectionPollGroup));
    }
    pub fn ReceiveMessagesOnPollGroup(hPollGroup: t.HSteamNetPollGroup, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessagesOnPollGroup"}), .{ hPollGroup, ppOutMessages, nMaxMessages, }, .{ "hPollGroup", "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessagesOnPollGroup));
    }
    pub fn ReceivedRelayAuthTicket(pvTicket: ?*const anyopaque, cbTicket: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceivedRelayAuthTicket"}), .{ pvTicket, cbTicket, pOutParsedTicket, }, .{ "pvTicket", "cbTicket", "pOutParsedTicket", }, @TypeOf(S.ReceivedRelayAuthTicket));
    }
    pub fn FindRelayAuthTicketForServer(identityGameServer: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"FindRelayAuthTicketForServer"}), .{ identityGameServer, nRemoteVirtualPort, pOutParsedTicket, }, .{ "identityGameServer", "nRemoteVirtualPort", "pOutParsedTicket", }, @TypeOf(S.FindRelayAuthTicketForServer));
    }
    pub fn ConnectToHostedDedicatedServer(identityTarget: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectToHostedDedicatedServer"}), .{ identityTarget, nRemoteVirtualPort, nOptions, pOptions, }, .{ "identityTarget", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectToHostedDedicatedServer));
    }
    pub fn GetHostedDedicatedServerPort() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerPort"}), .{ }, .{ }, @TypeOf(S.GetHostedDedicatedServerPort));
    }
    pub fn GetHostedDedicatedServerPOPID() callconv(.C) t.SteamNetworkingPOPID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerPOPID"}), .{ }, .{ }, @TypeOf(S.GetHostedDedicatedServerPOPID));
    }
    pub fn GetHostedDedicatedServerAddress(pRouting: [*c]t.SteamDatagramHostedAddress, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetHostedDedicatedServerAddress"}), .{ pRouting, }, .{ "pRouting", }, @TypeOf(S.GetHostedDedicatedServerAddress));
    }
    pub fn CreateHostedDedicatedServerListenSocket(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateHostedDedicatedServerListenSocket"}), .{ nLocalVirtualPort, nOptions, pOptions, }, .{ "nLocalVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.CreateHostedDedicatedServerListenSocket));
    }
    pub fn GetGameCoordinatorServerLogin(pLoginInfo: [*c]t.SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: [*c]i32, pBlob: ?*anyopaque, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameCoordinatorServerLogin"}), .{ pLoginInfo, pcbSignedBlob, pBlob, }, .{ "pLoginInfo", "pcbSignedBlob", "pBlob", }, @TypeOf(S.GetGameCoordinatorServerLogin));
    }
    pub fn ConnectP2PCustomSignaling(pSignaling: [*c]t.ISteamNetworkingConnectionSignaling, pPeerIdentity: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamNetConnection {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConnectP2PCustomSignaling"}), .{ pSignaling, pPeerIdentity, nRemoteVirtualPort, nOptions, pOptions, }, .{ "pSignaling", "pPeerIdentity", "nRemoteVirtualPort", "nOptions", "pOptions", }, @TypeOf(S.ConnectP2PCustomSignaling));
    }
    pub fn ReceivedP2PCustomSignal(pMsg: ?*const anyopaque, cbMsg: i32, pContext: [*c]t.ISteamNetworkingSignalingRecvContext, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceivedP2PCustomSignal"}), .{ pMsg, cbMsg, pContext, }, .{ "pMsg", "cbMsg", "pContext", }, @TypeOf(S.ReceivedP2PCustomSignal));
    }
    pub fn GetCertificateRequest(pcbBlob: [*c]i32, pBlob: ?*anyopaque, errMsg: [*c]t.SteamNetworkingErrMsg, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetCertificateRequest"}), .{ pcbBlob, pBlob, errMsg, }, .{ "pcbBlob", "pBlob", "errMsg", }, @TypeOf(S.GetCertificateRequest));
    }
    pub fn SetCertificate(pCertificate: ?*const anyopaque, cbCertificate: i32, errMsg: [*c]t.SteamNetworkingErrMsg, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetCertificate"}), .{ pCertificate, cbCertificate, errMsg, }, .{ "pCertificate", "cbCertificate", "errMsg", }, @TypeOf(S.SetCertificate));
    }
    pub fn ResetIdentity(pIdentity: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ResetIdentity"}), .{ pIdentity, }, .{ "pIdentity", }, @TypeOf(S.ResetIdentity));
    }
    pub fn RunCallbacks() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RunCallbacks"}), .{ }, .{ }, @TypeOf(S.RunCallbacks));
    }
    pub fn BeginAsyncRequestFakeIP(nNumPorts: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAsyncRequestFakeIP"}), .{ nNumPorts, }, .{ "nNumPorts", }, @TypeOf(S.BeginAsyncRequestFakeIP));
    }
    pub fn GetFakeIP(idxFirstPort: i32, pInfo: [*c]t.SteamNetworkingFakeIPResult_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFakeIP"}), .{ idxFirstPort, pInfo, }, .{ "idxFirstPort", "pInfo", }, @TypeOf(S.GetFakeIP));
    }
    pub fn CreateListenSocketP2PFakeIP(idxFakePort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t, ) callconv(.C) t.HSteamListenSocket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateListenSocketP2PFakeIP"}), .{ idxFakePort, nOptions, pOptions, }, .{ "idxFakePort", "nOptions", "pOptions", }, @TypeOf(S.CreateListenSocketP2PFakeIP));
    }
    pub fn GetRemoteFakeIPForConnection(hConn: t.HSteamNetConnection, pOutAddr: [*c]t.SteamNetworkingIPAddr, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRemoteFakeIPForConnection"}), .{ hConn, pOutAddr, }, .{ "hConn", "pOutAddr", }, @TypeOf(S.GetRemoteFakeIPForConnection));
    }
    pub fn CreateFakeUDPPort(idxFakeServerPort: i32, ) callconv(.C) [*c]t.ISteamNetworkingFakeUDPPort {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateFakeUDPPort"}), .{ idxFakeServerPort, }, .{ "idxFakeServerPort", }, @TypeOf(S.CreateFakeUDPPort));
    }
};
pub const SteamNetworkingSockets_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingSockets_SteamAPI"};
    pub fn v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
};
pub const SteamGameServerNetworkingSockets_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerNetworkingSockets_SteamAPI"};
    pub fn v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v012"}), .{ }, .{ }, @TypeOf(S.v012));
    }
};
pub const ISteamNetworkingUtils = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingUtils"};
    _: u8 = 1,
    pub const version = "SteamNetworkingUtils004";
    pub fn AllocateMessage(cbAllocateBuffer: i32, ) callconv(.C) [*c]t.SteamNetworkingMessage_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AllocateMessage"}), .{ cbAllocateBuffer, }, .{ "cbAllocateBuffer", }, @TypeOf(S.AllocateMessage));
    }
    pub fn InitRelayNetworkAccess() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"InitRelayNetworkAccess"}), .{ }, .{ }, @TypeOf(S.InitRelayNetworkAccess));
    }
    pub fn GetRelayNetworkStatus(pDetails: [*c]t.SteamRelayNetworkStatus_t, ) callconv(.C) t.ESteamNetworkingAvailability {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRelayNetworkStatus"}), .{ pDetails, }, .{ "pDetails", }, @TypeOf(S.GetRelayNetworkStatus));
    }
    pub fn GetLocalPingLocation(result: [*c]t.SteamNetworkPingLocation_t, ) callconv(.C) f32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalPingLocation"}), .{ result, }, .{ "result", }, @TypeOf(S.GetLocalPingLocation));
    }
    pub fn EstimatePingTimeBetweenTwoLocations(location1: [*c]const t.SteamNetworkPingLocation_t, location2: [*c]const t.SteamNetworkPingLocation_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EstimatePingTimeBetweenTwoLocations"}), .{ location1, location2, }, .{ "location1", "location2", }, @TypeOf(S.EstimatePingTimeBetweenTwoLocations));
    }
    pub fn EstimatePingTimeFromLocalHost(remoteLocation: [*c]const t.SteamNetworkPingLocation_t, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EstimatePingTimeFromLocalHost"}), .{ remoteLocation, }, .{ "remoteLocation", }, @TypeOf(S.EstimatePingTimeFromLocalHost));
    }
    pub fn ConvertPingLocationToString(location: [*c]const t.SteamNetworkPingLocation_t, pszBuf: [*c]u8, cchBufSize: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ConvertPingLocationToString"}), .{ location, pszBuf, cchBufSize, }, .{ "location", "pszBuf", "cchBufSize", }, @TypeOf(S.ConvertPingLocationToString));
    }
    pub fn ParsePingLocationString(pszString: [*c]const u8, result: [*c]t.SteamNetworkPingLocation_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ParsePingLocationString"}), .{ pszString, result, }, .{ "pszString", "result", }, @TypeOf(S.ParsePingLocationString));
    }
    pub fn CheckPingDataUpToDate(flMaxAgeSeconds: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CheckPingDataUpToDate"}), .{ flMaxAgeSeconds, }, .{ "flMaxAgeSeconds", }, @TypeOf(S.CheckPingDataUpToDate));
    }
    pub fn GetPingToDataCenter(popID: t.SteamNetworkingPOPID, pViaRelayPoP: [*c]t.SteamNetworkingPOPID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPingToDataCenter"}), .{ popID, pViaRelayPoP, }, .{ "popID", "pViaRelayPoP", }, @TypeOf(S.GetPingToDataCenter));
    }
    pub fn GetDirectPingToPOP(popID: t.SteamNetworkingPOPID, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetDirectPingToPOP"}), .{ popID, }, .{ "popID", }, @TypeOf(S.GetDirectPingToPOP));
    }
    pub fn GetPOPCount() callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPOPCount"}), .{ }, .{ }, @TypeOf(S.GetPOPCount));
    }
    pub fn GetPOPList(list: [*c]t.SteamNetworkingPOPID, nListSz: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPOPList"}), .{ list, nListSz, }, .{ "list", "nListSz", }, @TypeOf(S.GetPOPList));
    }
    pub fn GetLocalTimestamp() callconv(.C) t.SteamNetworkingMicroseconds {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetLocalTimestamp"}), .{ }, .{ }, @TypeOf(S.GetLocalTimestamp));
    }
    pub fn SetDebugOutputFunction(eDetailLevel: t.ESteamNetworkingSocketsDebugOutputType, pfnFunc: t.FSteamNetworkingSocketsDebugOutput, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDebugOutputFunction"}), .{ eDetailLevel, pfnFunc, }, .{ "eDetailLevel", "pfnFunc", }, @TypeOf(S.SetDebugOutputFunction));
    }
    pub fn IsFakeIPv4(nIPv4: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFakeIPv4"}), .{ nIPv4, }, .{ "nIPv4", }, @TypeOf(S.IsFakeIPv4));
    }
    pub fn GetIPv4FakeIPType(nIPv4: t.uint32, ) callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv4FakeIPType"}), .{ nIPv4, }, .{ "nIPv4", }, @TypeOf(S.GetIPv4FakeIPType));
    }
    pub fn GetRealIdentityForFakeIP(fakeIP: [*c]const t.SteamNetworkingIPAddr, pOutRealIdentity: [*c]t.SteamNetworkingIdentity, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetRealIdentityForFakeIP"}), .{ fakeIP, pOutRealIdentity, }, .{ "fakeIP", "pOutRealIdentity", }, @TypeOf(S.GetRealIdentityForFakeIP));
    }
    pub fn SetGlobalConfigValueInt32(eValue: t.ESteamNetworkingConfigValue, val: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueInt32"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueInt32));
    }
    pub fn SetGlobalConfigValueFloat(eValue: t.ESteamNetworkingConfigValue, val: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueFloat"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueFloat));
    }
    pub fn SetGlobalConfigValueString(eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValueString"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValueString));
    }
    pub fn SetGlobalConfigValuePtr(eValue: t.ESteamNetworkingConfigValue, val: ?*anyopaque, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalConfigValuePtr"}), .{ eValue, val, }, .{ "eValue", "val", }, @TypeOf(S.SetGlobalConfigValuePtr));
    }
    pub fn SetConnectionConfigValueInt32(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueInt32"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueInt32));
    }
    pub fn SetConnectionConfigValueFloat(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueFloat"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueFloat));
    }
    pub fn SetConnectionConfigValueString(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionConfigValueString"}), .{ hConn, eValue, val, }, .{ "hConn", "eValue", "val", }, @TypeOf(S.SetConnectionConfigValueString));
    }
    pub fn SetGlobalCallback_SteamNetConnectionStatusChanged(fnCallback: t.FnSteamNetConnectionStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamNetConnectionStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamNetConnectionStatusChanged));
    }
    pub fn SetGlobalCallback_SteamNetAuthenticationStatusChanged(fnCallback: t.FnSteamNetAuthenticationStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamNetAuthenticationStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamNetAuthenticationStatusChanged));
    }
    pub fn SetGlobalCallback_SteamRelayNetworkStatusChanged(fnCallback: t.FnSteamRelayNetworkStatusChanged, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_SteamRelayNetworkStatusChanged"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_SteamRelayNetworkStatusChanged));
    }
    pub fn SetGlobalCallback_FakeIPResult(fnCallback: t.FnSteamNetworkingFakeIPResult, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_FakeIPResult"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_FakeIPResult));
    }
    pub fn SetGlobalCallback_MessagesSessionRequest(fnCallback: t.FnSteamNetworkingMessagesSessionRequest, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_MessagesSessionRequest"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_MessagesSessionRequest));
    }
    pub fn SetGlobalCallback_MessagesSessionFailed(fnCallback: t.FnSteamNetworkingMessagesSessionFailed, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGlobalCallback_MessagesSessionFailed"}), .{ fnCallback, }, .{ "fnCallback", }, @TypeOf(S.SetGlobalCallback_MessagesSessionFailed));
    }
    pub fn SetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, eDataType: t.ESteamNetworkingConfigDataType, pArg: ?*const anyopaque, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConfigValue"}), .{ eValue, eScopeType, scopeObj, eDataType, pArg, }, .{ "eValue", "eScopeType", "scopeObj", "eDataType", "pArg", }, @TypeOf(S.SetConfigValue));
    }
    pub fn SetConfigValueStruct(opt: [*c]const t.SteamNetworkingConfigValue_t, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConfigValueStruct"}), .{ opt, eScopeType, scopeObj, }, .{ "opt", "eScopeType", "scopeObj", }, @TypeOf(S.SetConfigValueStruct));
    }
    pub fn GetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pResult: ?*anyopaque, cbResult: [*c]t.size_t, ) callconv(.C) t.ESteamNetworkingGetConfigValueResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConfigValue"}), .{ eValue, eScopeType, scopeObj, pOutDataType, pResult, cbResult, }, .{ "eValue", "eScopeType", "scopeObj", "pOutDataType", "pResult", "cbResult", }, @TypeOf(S.GetConfigValue));
    }
    pub fn GetConfigValueInfo(eValue: t.ESteamNetworkingConfigValue, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pOutScope: [*c]t.ESteamNetworkingConfigScope, ) callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConfigValueInfo"}), .{ eValue, pOutDataType, pOutScope, }, .{ "eValue", "pOutDataType", "pOutScope", }, @TypeOf(S.GetConfigValueInfo));
    }
    pub fn IterateGenericEditableConfigValues(eCurrent: t.ESteamNetworkingConfigValue, bEnumerateDevVars: bool, ) callconv(.C) t.ESteamNetworkingConfigValue {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IterateGenericEditableConfigValues"}), .{ eCurrent, bEnumerateDevVars, }, .{ "eCurrent", "bEnumerateDevVars", }, @TypeOf(S.IterateGenericEditableConfigValues));
    }
    pub fn SteamNetworkingIPAddr_ToString(addr: [*c]const t.SteamNetworkingIPAddr, buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_ToString"}), .{ addr, buf, cbBuf, bWithPort, }, .{ "addr", "buf", "cbBuf", "bWithPort", }, @TypeOf(S.SteamNetworkingIPAddr_ToString));
    }
    pub fn SteamNetworkingIPAddr_ParseString(pAddr: [*c]t.SteamNetworkingIPAddr, pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_ParseString"}), .{ pAddr, pszStr, }, .{ "pAddr", "pszStr", }, @TypeOf(S.SteamNetworkingIPAddr_ParseString));
    }
    pub fn SteamNetworkingIPAddr_GetFakeIPType(addr: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIPAddr_GetFakeIPType"}), .{ addr, }, .{ "addr", }, @TypeOf(S.SteamNetworkingIPAddr_GetFakeIPType));
    }
    pub fn SteamNetworkingIdentity_ToString(identity: [*c]const t.SteamNetworkingIdentity, buf: [*c]u8, cbBuf: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIdentity_ToString"}), .{ identity, buf, cbBuf, }, .{ "identity", "buf", "cbBuf", }, @TypeOf(S.SteamNetworkingIdentity_ToString));
    }
    pub fn SteamNetworkingIdentity_ParseString(pIdentity: [*c]t.SteamNetworkingIdentity, pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SteamNetworkingIdentity_ParseString"}), .{ pIdentity, pszStr, }, .{ "pIdentity", "pszStr", }, @TypeOf(S.SteamNetworkingIdentity_ParseString));
    }
};
pub const SteamNetworkingUtils_SteamAPI = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingUtils_SteamAPI"};
    pub fn v004() callconv(.C) [*c]t.ISteamNetworkingUtils {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v004"}), .{ }, .{ }, @TypeOf(S.v004));
    }
};
pub const ISteamGameServer = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameServer"};
    _: u8 = 1,
    pub const version = "SteamGameServer014";
    pub fn SetProduct(pszProduct: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetProduct"}), .{ pszProduct, }, .{ "pszProduct", }, @TypeOf(S.SetProduct));
    }
    pub fn SetGameDescription(pszGameDescription: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameDescription"}), .{ pszGameDescription, }, .{ "pszGameDescription", }, @TypeOf(S.SetGameDescription));
    }
    pub fn SetModDir(pszModDir: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetModDir"}), .{ pszModDir, }, .{ "pszModDir", }, @TypeOf(S.SetModDir));
    }
    pub fn SetDedicatedServer(bDedicated: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDedicatedServer"}), .{ bDedicated, }, .{ "bDedicated", }, @TypeOf(S.SetDedicatedServer));
    }
    pub fn LogOn(pszToken: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOn"}), .{ pszToken, }, .{ "pszToken", }, @TypeOf(S.LogOn));
    }
    pub fn LogOnAnonymous() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOnAnonymous"}), .{ }, .{ }, @TypeOf(S.LogOnAnonymous));
    }
    pub fn LogOff() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"LogOff"}), .{ }, .{ }, @TypeOf(S.LogOff));
    }
    pub fn BLoggedOn() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BLoggedOn"}), .{ }, .{ }, @TypeOf(S.BLoggedOn));
    }
    pub fn BSecure() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BSecure"}), .{ }, .{ }, @TypeOf(S.BSecure));
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID"}), .{ }, .{ }, @TypeOf(S.GetSteamID));
    }
    pub fn WasRestartRequested() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"WasRestartRequested"}), .{ }, .{ }, @TypeOf(S.WasRestartRequested));
    }
    pub fn SetMaxPlayerCount(cPlayersMax: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMaxPlayerCount"}), .{ cPlayersMax, }, .{ "cPlayersMax", }, @TypeOf(S.SetMaxPlayerCount));
    }
    pub fn SetBotPlayerCount(cBotplayers: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetBotPlayerCount"}), .{ cBotplayers, }, .{ "cBotplayers", }, @TypeOf(S.SetBotPlayerCount));
    }
    pub fn SetServerName(pszServerName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetServerName"}), .{ pszServerName, }, .{ "pszServerName", }, @TypeOf(S.SetServerName));
    }
    pub fn SetMapName(pszMapName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetMapName"}), .{ pszMapName, }, .{ "pszMapName", }, @TypeOf(S.SetMapName));
    }
    pub fn SetPasswordProtected(bPasswordProtected: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPasswordProtected"}), .{ bPasswordProtected, }, .{ "bPasswordProtected", }, @TypeOf(S.SetPasswordProtected));
    }
    pub fn SetSpectatorPort(unSpectatorPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSpectatorPort"}), .{ unSpectatorPort, }, .{ "unSpectatorPort", }, @TypeOf(S.SetSpectatorPort));
    }
    pub fn SetSpectatorServerName(pszSpectatorServerName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSpectatorServerName"}), .{ pszSpectatorServerName, }, .{ "pszSpectatorServerName", }, @TypeOf(S.SetSpectatorServerName));
    }
    pub fn ClearAllKeyValues() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearAllKeyValues"}), .{ }, .{ }, @TypeOf(S.ClearAllKeyValues));
    }
    pub fn SetKeyValue(pKey: [*c]const u8, pValue: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetKeyValue"}), .{ pKey, pValue, }, .{ "pKey", "pValue", }, @TypeOf(S.SetKeyValue));
    }
    pub fn SetGameTags(pchGameTags: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameTags"}), .{ pchGameTags, }, .{ "pchGameTags", }, @TypeOf(S.SetGameTags));
    }
    pub fn SetGameData(pchGameData: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGameData"}), .{ pchGameData, }, .{ "pchGameData", }, @TypeOf(S.SetGameData));
    }
    pub fn SetRegion(pszRegion: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetRegion"}), .{ pszRegion, }, .{ "pszRegion", }, @TypeOf(S.SetRegion));
    }
    pub fn SetAdvertiseServerActive(bActive: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetAdvertiseServerActive"}), .{ bActive, }, .{ "bActive", }, @TypeOf(S.SetAdvertiseServerActive));
    }
    pub fn GetAuthSessionTicket(pTicket: ?*anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32, ) callconv(.C) t.HAuthTicket {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetAuthSessionTicket"}), .{ pTicket, cbMaxTicket, pcbTicket, }, .{ "pTicket", "cbMaxTicket", "pcbTicket", }, @TypeOf(S.GetAuthSessionTicket));
    }
    pub fn BeginAuthSession(pAuthTicket: ?*const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID, ) callconv(.C) t.EBeginAuthSessionResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BeginAuthSession"}), .{ pAuthTicket, cbAuthTicket, steamID, }, .{ "pAuthTicket", "cbAuthTicket", "steamID", }, @TypeOf(S.BeginAuthSession));
    }
    pub fn EndAuthSession(steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"EndAuthSession"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.EndAuthSession));
    }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CancelAuthTicket"}), .{ hAuthTicket, }, .{ "hAuthTicket", }, @TypeOf(S.CancelAuthTicket));
    }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t, ) callconv(.C) t.EUserHasLicenseForAppResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UserHasLicenseForApp"}), .{ steamID, appID, }, .{ "steamID", "appID", }, @TypeOf(S.UserHasLicenseForApp));
    }
    pub fn RequestUserGroupStatus(steamIDUser: t.CSteamID, steamIDGroup: t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserGroupStatus"}), .{ steamIDUser, steamIDGroup, }, .{ "steamIDUser", "steamIDGroup", }, @TypeOf(S.RequestUserGroupStatus));
    }
    pub fn GetGameplayStats() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGameplayStats"}), .{ }, .{ }, @TypeOf(S.GetGameplayStats));
    }
    pub fn GetServerReputation() callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetServerReputation"}), .{ }, .{ }, @TypeOf(S.GetServerReputation));
    }
    pub fn GetPublicIP() callconv(.C) t.SteamIPAddress_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPublicIP"}), .{ }, .{ }, @TypeOf(S.GetPublicIP));
    }
    pub fn HandleIncomingPacket(pData: ?*const anyopaque, cbData: i32, srcIP: t.uint32, srcPort: t.uint16, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"HandleIncomingPacket"}), .{ pData, cbData, srcIP, srcPort, }, .{ "pData", "cbData", "srcIP", "srcPort", }, @TypeOf(S.HandleIncomingPacket));
    }
    pub fn GetNextOutgoingPacket(pOut: ?*anyopaque, cbMaxOut: i32, pNetAdr: [*c]t.uint32, pPort: [*c]t.uint16, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetNextOutgoingPacket"}), .{ pOut, cbMaxOut, pNetAdr, pPort, }, .{ "pOut", "cbMaxOut", "pNetAdr", "pPort", }, @TypeOf(S.GetNextOutgoingPacket));
    }
    pub fn AssociateWithClan(steamIDClan: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"AssociateWithClan"}), .{ steamIDClan, }, .{ "steamIDClan", }, @TypeOf(S.AssociateWithClan));
    }
    pub fn ComputeNewPlayerCompatibility(steamIDNewPlayer: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ComputeNewPlayerCompatibility"}), .{ steamIDNewPlayer, }, .{ "steamIDNewPlayer", }, @TypeOf(S.ComputeNewPlayerCompatibility));
    }
    pub fn SendUserConnectAndAuthenticate_DEPRECATED(unIPClient: t.uint32, pvAuthBlob: ?*const anyopaque, cubAuthBlobSize: t.uint32, pSteamIDUser: [*c]t.CSteamID, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendUserConnectAndAuthenticate_DEPRECATED"}), .{ unIPClient, pvAuthBlob, cubAuthBlobSize, pSteamIDUser, }, .{ "unIPClient", "pvAuthBlob", "cubAuthBlobSize", "pSteamIDUser", }, @TypeOf(S.SendUserConnectAndAuthenticate_DEPRECATED));
    }
    pub fn CreateUnauthenticatedUserConnection() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"CreateUnauthenticatedUserConnection"}), .{ }, .{ }, @TypeOf(S.CreateUnauthenticatedUserConnection));
    }
    pub fn SendUserDisconnect_DEPRECATED(steamIDUser: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendUserDisconnect_DEPRECATED"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.SendUserDisconnect_DEPRECATED));
    }
    pub fn BUpdateUserData(steamIDUser: t.CSteamID, pchPlayerName: [*c]const u8, uScore: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"BUpdateUserData"}), .{ steamIDUser, pchPlayerName, uScore, }, .{ "steamIDUser", "pchPlayerName", "uScore", }, @TypeOf(S.BUpdateUserData));
    }
};
pub const SteamGameServer = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServer"};
    pub fn v014() callconv(.C) [*c]t.ISteamGameServer {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v014"}), .{ }, .{ }, @TypeOf(S.v014));
    }
};
pub const ISteamGameServerStats = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamGameServerStats"};
    _: u8 = 1,
    pub const version = "SteamGameServerStats001";
    pub fn RequestUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"RequestUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.RequestUserStats));
    }
    pub fn GetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatInt32"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatInt32));
    }
    pub fn GetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserStatFloat"}), .{ steamIDUser, pchName, pData, }, .{ "steamIDUser", "pchName", "pData", }, @TypeOf(S.GetUserStatFloat));
    }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetUserAchievement"}), .{ steamIDUser, pchName, pbAchieved, }, .{ "steamIDUser", "pchName", "pbAchieved", }, @TypeOf(S.GetUserAchievement));
    }
    pub fn SetUserStatInt32(steamIDUser: t.CSteamID, pchName: [*c]const u8, nData: i32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserStatInt32"}), .{ steamIDUser, pchName, nData, }, .{ "steamIDUser", "pchName", "nData", }, @TypeOf(S.SetUserStatInt32));
    }
    pub fn SetUserStatFloat(steamIDUser: t.CSteamID, pchName: [*c]const u8, fData: f32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserStatFloat"}), .{ steamIDUser, pchName, fData, }, .{ "steamIDUser", "pchName", "fData", }, @TypeOf(S.SetUserStatFloat));
    }
    pub fn UpdateUserAvgRateStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"UpdateUserAvgRateStat"}), .{ steamIDUser, pchName, flCountThisSession, dSessionLength, }, .{ "steamIDUser", "pchName", "flCountThisSession", "dSessionLength", }, @TypeOf(S.UpdateUserAvgRateStat));
    }
    pub fn SetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetUserAchievement"}), .{ steamIDUser, pchName, }, .{ "steamIDUser", "pchName", }, @TypeOf(S.SetUserAchievement));
    }
    pub fn ClearUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ClearUserAchievement"}), .{ steamIDUser, pchName, }, .{ "steamIDUser", "pchName", }, @TypeOf(S.ClearUserAchievement));
    }
    pub fn StoreUserStats(steamIDUser: t.CSteamID, ) callconv(.C) t.SteamAPICall_t {
        return t.callImplFn(&(p1 ++ [_][]const u8{"StoreUserStats"}), .{ steamIDUser, }, .{ "steamIDUser", }, @TypeOf(S.StoreUserStats));
    }
};
pub const SteamGameServerStats = struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamGameServerStats"};
    pub fn v001() callconv(.C) [*c]t.ISteamGameServerStats {
        return t.callImplFn(&(p1 ++ [_][]const u8{"v001"}), .{ }, .{ }, @TypeOf(S.v001));
    }
};
pub const ISteamNetworkingFakeUDPPort = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"ISteamNetworkingFakeUDPPort"};
    _: u8 = 1,
    pub fn DestroyFakeUDPPort() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"DestroyFakeUDPPort"}), .{ }, .{ }, @TypeOf(S.DestroyFakeUDPPort));
    }
    pub fn SendMessageToFakeIP(remoteAddress: [*c]const t.SteamNetworkingIPAddr, pData: ?*const anyopaque, cbData: t.uint32, nSendFlags: i32, ) callconv(.C) t.EResult {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SendMessageToFakeIP"}), .{ remoteAddress, pData, cbData, nSendFlags, }, .{ "remoteAddress", "pData", "cbData", "nSendFlags", }, @TypeOf(S.SendMessageToFakeIP));
    }
    pub fn ReceiveMessages(ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32, ) callconv(.C) i32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ReceiveMessages"}), .{ ppOutMessages, nMaxMessages, }, .{ "ppOutMessages", "nMaxMessages", }, @TypeOf(S.ReceiveMessages));
    }
    pub fn ScheduleCleanup(remoteAddress: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ScheduleCleanup"}), .{ remoteAddress, }, .{ "remoteAddress", }, @TypeOf(S.ScheduleCleanup));
    }
};
