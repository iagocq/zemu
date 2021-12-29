const t = @import("../types.zig");
const p = @import("std").debug.print;
pub const ISteamClient = struct {
    pub fn CreateSteamPipe() callconv(.C) t.HSteamPipe {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_CreateSteamPipe\n\n", .{  });
        return undefined;
    }
    pub fn BReleaseSteamPipe(hSteamPipe: t.HSteamPipe) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_BReleaseSteamPipe:\n\t- hSteamPipe = {any}\n\n", .{ hSteamPipe });
        return undefined;
    }
    pub fn ConnectToGlobalUser(hSteamPipe: t.HSteamPipe) callconv(.C) t.HSteamUser {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_ConnectToGlobalUser:\n\t- hSteamPipe = {any}\n\n", .{ hSteamPipe });
        return undefined;
    }
    pub fn CreateLocalUser(phSteamPipe: [*c]t.HSteamPipe, eAccountType: t.EAccountType) callconv(.C) t.HSteamUser {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_CreateLocalUser:\n\t- phSteamPipe = {any}\n\t- eAccountType = {any}\n\n", .{ phSteamPipe, eAccountType });
        return undefined;
    }
    pub fn ReleaseUser(hSteamPipe: t.HSteamPipe, hUser: t.HSteamUser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_ReleaseUser:\n\t- hSteamPipe = {any}\n\t- hUser = {any}\n\n", .{ hSteamPipe, hUser });
        return undefined;
    }
    pub fn GetISteamUser(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUser {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUser:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamGameServer(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameServer {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameServer:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn SetLocalIPBinding(unIP: [*c]const t.SteamIPAddress_t, usPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_SetLocalIPBinding:\n\t- unIP = {any}\n\t- usPort = {any}\n\n", .{ unIP, usPort });
        return undefined;
    }
    pub fn GetISteamFriends(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamFriends {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamFriends:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamUtils(hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUtils {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUtils:\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamMatchmaking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMatchmaking {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMatchmaking:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamMatchmakingServers(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMatchmakingServers {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMatchmakingServers:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamGenericInterface(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGenericInterface:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamUserStats(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUserStats {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUserStats:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamGameServerStats(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameServerStats {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameServerStats:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamApps(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamApps {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamApps:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamNetworking(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamNetworking {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamNetworking:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamRemoteStorage(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamRemoteStorage {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamRemoteStorage:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamScreenshots(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamScreenshots {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamScreenshots:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamGameSearch(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamGameSearch {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamGameSearch:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetIPCCallCount\n\n", .{  });
        return undefined;
    }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_SetWarningMessageHook:\n\t- pFunction = {any}\n\n", .{ pFunction });
        return undefined;
    }
    pub fn BShutdownIfAllPipesClosed() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_BShutdownIfAllPipesClosed\n\n", .{  });
        return undefined;
    }
    pub fn GetISteamHTTP(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamHTTP {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamHTTP:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamController(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamController {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamController:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamUGC(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamUGC {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamUGC:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamAppList(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamAppList {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamAppList:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamMusic(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMusic {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMusic:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamMusicRemote(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamMusicRemote {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamMusicRemote:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamHTMLSurface(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamHTMLSurface {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamHTMLSurface:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamInventory(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamInventory {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamInventory:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamVideo(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamVideo {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamVideo:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamParentalSettings(hSteamuser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamParentalSettings {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamParentalSettings:\n\t- hSteamuser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamuser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamInput(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamInput {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamInput:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamParties(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamParties {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamParties:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
    pub fn GetISteamRemotePlay(hSteamUser: t.HSteamUser, hSteamPipe: t.HSteamPipe, pchVersion: [*c]const u8) callconv(.C) [*c]t.ISteamRemotePlay {
        p("NOT IMPLEMENTED SteamAPI_ISteamClient_GetISteamRemotePlay:\n\t- hSteamUser = {any}\n\t- hSteamPipe = {any}\n\t- pchVersion = {any}\n\n", .{ hSteamUser, hSteamPipe, pchVersion });
        return undefined;
    }
};
pub const ISteamUser = struct {
    pub const version = "SteamUser021";
    pub fn GetHSteamUser() callconv(.C) t.HSteamUser {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetHSteamUser\n\n", .{  });
        return undefined;
    }
    pub fn BLoggedOn() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BLoggedOn\n\n", .{  });
        return undefined;
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetSteamID\n\n", .{  });
        return undefined;
    }
    pub fn InitiateGameConnection_DEPRECATED(pAuthBlob: [*c]anyopaque, cbMaxAuthBlob: i32, steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16, bSecure: bool) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_InitiateGameConnection_DEPRECATED:\n\t- pAuthBlob = {any}\n\t- cbMaxAuthBlob = {any}\n\t- steamIDGameServer = {any}\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\t- bSecure = {any}\n\n", .{ pAuthBlob, cbMaxAuthBlob, steamIDGameServer, unIPServer, usPortServer, bSecure });
        return undefined;
    }
    pub fn TerminateGameConnection_DEPRECATED(unIPServer: t.uint32, usPortServer: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_TerminateGameConnection_DEPRECATED:\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\n", .{ unIPServer, usPortServer });
        return undefined;
    }
    pub fn TrackAppUsageEvent(gameID: t.CGameID, eAppUsageEvent: i32, pchExtraInfo: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_TrackAppUsageEvent:\n\t- gameID = {any}\n\t- eAppUsageEvent = {any}\n\t- pchExtraInfo = {any}\n\n", .{ gameID, eAppUsageEvent, pchExtraInfo });
        return undefined;
    }
    pub fn GetUserDataFolder(pchBuffer: [*c]u8, cubBuffer: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetUserDataFolder:\n\t- pchBuffer = {any}\n\t- cubBuffer = {any}\n\n", .{ pchBuffer, cubBuffer });
        return undefined;
    }
    pub fn StartVoiceRecording() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_StartVoiceRecording\n\n", .{  });
        return undefined;
    }
    pub fn StopVoiceRecording() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_StopVoiceRecording\n\n", .{  });
        return undefined;
    }
    pub fn GetAvailableVoice(pcbCompressed: [*c]t.uint32, pcbUncompressed_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32) callconv(.C) t.EVoiceResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetAvailableVoice:\n\t- pcbCompressed = {any}\n\t- pcbUncompressed_Deprecated = {any}\n\t- nUncompressedVoiceDesiredSampleRate_Deprecated = {any}\n\n", .{ pcbCompressed, pcbUncompressed_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated });
        return undefined;
    }
    pub fn GetVoice(bWantCompressed: bool, pDestBuffer: [*c]anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, bWantUncompressed_Deprecated: bool, pUncompressedDestBuffer_Deprecated: [*c]anyopaque, cbUncompressedDestBufferSize_Deprecated: t.uint32, nUncompressBytesWritten_Deprecated: [*c]t.uint32, nUncompressedVoiceDesiredSampleRate_Deprecated: t.uint32) callconv(.C) t.EVoiceResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetVoice:\n\t- bWantCompressed = {any}\n\t- pDestBuffer = {any}\n\t- cbDestBufferSize = {any}\n\t- nBytesWritten = {any}\n\t- bWantUncompressed_Deprecated = {any}\n\t- pUncompressedDestBuffer_Deprecated = {any}\n\t- cbUncompressedDestBufferSize_Deprecated = {any}\n\t- nUncompressBytesWritten_Deprecated = {any}\n\t- nUncompressedVoiceDesiredSampleRate_Deprecated = {any}\n\n", .{ bWantCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, bWantUncompressed_Deprecated, pUncompressedDestBuffer_Deprecated, cbUncompressedDestBufferSize_Deprecated, nUncompressBytesWritten_Deprecated, nUncompressedVoiceDesiredSampleRate_Deprecated });
        return undefined;
    }
    pub fn DecompressVoice(pCompressed: [*c]const anyopaque, cbCompressed: t.uint32, pDestBuffer: [*c]anyopaque, cbDestBufferSize: t.uint32, nBytesWritten: [*c]t.uint32, nDesiredSampleRate: t.uint32) callconv(.C) t.EVoiceResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_DecompressVoice:\n\t- pCompressed = {any}\n\t- cbCompressed = {any}\n\t- pDestBuffer = {any}\n\t- cbDestBufferSize = {any}\n\t- nBytesWritten = {any}\n\t- nDesiredSampleRate = {any}\n\n", .{ pCompressed, cbCompressed, pDestBuffer, cbDestBufferSize, nBytesWritten, nDesiredSampleRate });
        return undefined;
    }
    pub fn GetVoiceOptimalSampleRate() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetVoiceOptimalSampleRate\n\n", .{  });
        return undefined;
    }
    pub fn GetAuthSessionTicket(pTicket: [*c]anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) t.HAuthTicket {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetAuthSessionTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
        return undefined;
    }
    pub fn BeginAuthSession(pAuthTicket: [*c]const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID) callconv(.C) t.EBeginAuthSessionResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BeginAuthSession:\n\t- pAuthTicket = {any}\n\t- cbAuthTicket = {any}\n\t- steamID = {any}\n\n", .{ pAuthTicket, cbAuthTicket, steamID });
        return undefined;
    }
    pub fn EndAuthSession(steamID: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_EndAuthSession:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_CancelAuthTicket:\n\t- hAuthTicket = {any}\n\n", .{ hAuthTicket });
        return undefined;
    }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_UserHasLicenseForApp:\n\t- steamID = {any}\n\t- appID = {any}\n\n", .{ steamID, appID });
        return undefined;
    }
    pub fn BIsBehindNAT() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsBehindNAT\n\n", .{  });
        return undefined;
    }
    pub fn AdvertiseGame(steamIDGameServer: t.CSteamID, unIPServer: t.uint32, usPortServer: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_AdvertiseGame:\n\t- steamIDGameServer = {any}\n\t- unIPServer = {any}\n\t- usPortServer = {any}\n\n", .{ steamIDGameServer, unIPServer, usPortServer });
        return undefined;
    }
    pub fn RequestEncryptedAppTicket(pDataToInclude: [*c]anyopaque, cbDataToInclude: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_RequestEncryptedAppTicket:\n\t- pDataToInclude = {any}\n\t- cbDataToInclude = {any}\n\n", .{ pDataToInclude, cbDataToInclude });
        return undefined;
    }
    pub fn GetEncryptedAppTicket(pTicket: [*c]anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetEncryptedAppTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
        return undefined;
    }
    pub fn GetGameBadgeLevel(nSeries: i32, bFoil: bool) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetGameBadgeLevel:\n\t- nSeries = {any}\n\t- bFoil = {any}\n\n", .{ nSeries, bFoil });
        return undefined;
    }
    pub fn GetPlayerSteamLevel() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetPlayerSteamLevel\n\n", .{  });
        return undefined;
    }
    pub fn RequestStoreAuthURL(pchRedirectURL: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_RequestStoreAuthURL:\n\t- pchRedirectURL = {any}\n\n", .{ pchRedirectURL });
        return undefined;
    }
    pub fn BIsPhoneVerified() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneVerified\n\n", .{  });
        return undefined;
    }
    pub fn BIsTwoFactorEnabled() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsTwoFactorEnabled\n\n", .{  });
        return undefined;
    }
    pub fn BIsPhoneIdentifying() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneIdentifying\n\n", .{  });
        return undefined;
    }
    pub fn BIsPhoneRequiringVerification() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BIsPhoneRequiringVerification\n\n", .{  });
        return undefined;
    }
    pub fn GetMarketEligibility() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetMarketEligibility\n\n", .{  });
        return undefined;
    }
    pub fn GetDurationControl() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_GetDurationControl\n\n", .{  });
        return undefined;
    }
    pub fn BSetDurationControlOnlineState(eNewState: t.EDurationControlOnlineState) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUser_BSetDurationControlOnlineState:\n\t- eNewState = {any}\n\n", .{ eNewState });
        return undefined;
    }
};
pub fn SteamAPI_SteamUser_v021() callconv(.C) [*c]t.ISteamUser {
    p("NOT IMPLEMENTED SteamAPI_SteamUser_v021\n\n", .{  });
    return undefined;
}
pub const ISteamFriends = struct {
    pub const version = "SteamFriends017";
    pub fn GetPersonaName() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPersonaName\n\n", .{  });
        return undefined;
    }
    pub fn SetPersonaName(pchPersonaName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetPersonaName:\n\t- pchPersonaName = {any}\n\n", .{ pchPersonaName });
        return undefined;
    }
    pub fn GetPersonaState() callconv(.C) t.EPersonaState {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPersonaState\n\n", .{  });
        return undefined;
    }
    pub fn GetFriendCount(iFriendFlags: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCount:\n\t- iFriendFlags = {any}\n\n", .{ iFriendFlags });
        return undefined;
    }
    pub fn GetFriendByIndex(iFriend: i32, iFriendFlags: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendByIndex:\n\t- iFriend = {any}\n\t- iFriendFlags = {any}\n\n", .{ iFriend, iFriendFlags });
        return undefined;
    }
    pub fn GetFriendRelationship(steamIDFriend: t.CSteamID) callconv(.C) t.EFriendRelationship {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRelationship:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetFriendPersonaState(steamIDFriend: t.CSteamID) callconv(.C) t.EPersonaState {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaState:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetFriendPersonaName(steamIDFriend: t.CSteamID) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaName:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetFriendGamePlayed(steamIDFriend: t.CSteamID, pFriendGameInfo: [*c]t.FriendGameInfo_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendGamePlayed:\n\t- steamIDFriend = {any}\n\t- pFriendGameInfo = {any}\n\n", .{ steamIDFriend, pFriendGameInfo });
        return undefined;
    }
    pub fn GetFriendPersonaNameHistory(steamIDFriend: t.CSteamID, iPersonaName: i32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendPersonaNameHistory:\n\t- steamIDFriend = {any}\n\t- iPersonaName = {any}\n\n", .{ steamIDFriend, iPersonaName });
        return undefined;
    }
    pub fn GetFriendSteamLevel(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendSteamLevel:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetPlayerNickname(steamIDPlayer: t.CSteamID) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetPlayerNickname:\n\t- steamIDPlayer = {any}\n\n", .{ steamIDPlayer });
        return undefined;
    }
    pub fn GetFriendsGroupCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupCount\n\n", .{  });
        return undefined;
    }
    pub fn GetFriendsGroupIDByIndex(iFG: i32) callconv(.C) t.FriendsGroupID_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupIDByIndex:\n\t- iFG = {any}\n\n", .{ iFG });
        return undefined;
    }
    pub fn GetFriendsGroupName(friendsGroupID: t.FriendsGroupID_t) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupName:\n\t- friendsGroupID = {any}\n\n", .{ friendsGroupID });
        return undefined;
    }
    pub fn GetFriendsGroupMembersCount(friendsGroupID: t.FriendsGroupID_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupMembersCount:\n\t- friendsGroupID = {any}\n\n", .{ friendsGroupID });
        return undefined;
    }
    pub fn GetFriendsGroupMembersList(friendsGroupID: t.FriendsGroupID_t, pOutSteamIDMembers: [*c]t.CSteamID, nMembersCount: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendsGroupMembersList:\n\t- friendsGroupID = {any}\n\t- pOutSteamIDMembers = {any}\n\t- nMembersCount = {any}\n\n", .{ friendsGroupID, pOutSteamIDMembers, nMembersCount });
        return undefined;
    }
    pub fn HasFriend(steamIDFriend: t.CSteamID, iFriendFlags: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_HasFriend:\n\t- steamIDFriend = {any}\n\t- iFriendFlags = {any}\n\n", .{ steamIDFriend, iFriendFlags });
        return undefined;
    }
    pub fn GetClanCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanCount\n\n", .{  });
        return undefined;
    }
    pub fn GetClanByIndex(iClan: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanByIndex:\n\t- iClan = {any}\n\n", .{ iClan });
        return undefined;
    }
    pub fn GetClanName(steamIDClan: t.CSteamID) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanName:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanTag(steamIDClan: t.CSteamID) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanTag:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanActivityCounts(steamIDClan: t.CSteamID, pnOnline: [*c]i32, pnInGame: [*c]i32, pnChatting: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanActivityCounts:\n\t- steamIDClan = {any}\n\t- pnOnline = {any}\n\t- pnInGame = {any}\n\t- pnChatting = {any}\n\n", .{ steamIDClan, pnOnline, pnInGame, pnChatting });
        return undefined;
    }
    pub fn DownloadClanActivityCounts(psteamIDClans: [*c]t.CSteamID, cClansToRequest: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_DownloadClanActivityCounts:\n\t- psteamIDClans = {any}\n\t- cClansToRequest = {any}\n\n", .{ psteamIDClans, cClansToRequest });
        return undefined;
    }
    pub fn GetFriendCountFromSource(steamIDSource: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCountFromSource:\n\t- steamIDSource = {any}\n\n", .{ steamIDSource });
        return undefined;
    }
    pub fn GetFriendFromSourceByIndex(steamIDSource: t.CSteamID, iFriend: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendFromSourceByIndex:\n\t- steamIDSource = {any}\n\t- iFriend = {any}\n\n", .{ steamIDSource, iFriend });
        return undefined;
    }
    pub fn IsUserInSource(steamIDUser: t.CSteamID, steamIDSource: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsUserInSource:\n\t- steamIDUser = {any}\n\t- steamIDSource = {any}\n\n", .{ steamIDUser, steamIDSource });
        return undefined;
    }
    pub fn SetInGameVoiceSpeaking(steamIDUser: t.CSteamID, bSpeaking: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetInGameVoiceSpeaking:\n\t- steamIDUser = {any}\n\t- bSpeaking = {any}\n\n", .{ steamIDUser, bSpeaking });
        return undefined;
    }
    pub fn ActivateGameOverlay(pchDialog: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlay:\n\t- pchDialog = {any}\n\n", .{ pchDialog });
        return undefined;
    }
    pub fn ActivateGameOverlayToUser(pchDialog: [*c]const u8, steamID: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToUser:\n\t- pchDialog = {any}\n\t- steamID = {any}\n\n", .{ pchDialog, steamID });
        return undefined;
    }
    pub fn ActivateGameOverlayToWebPage(pchURL: [*c]const u8, eMode: t.EActivateGameOverlayToWebPageMode) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToWebPage:\n\t- pchURL = {any}\n\t- eMode = {any}\n\n", .{ pchURL, eMode });
        return undefined;
    }
    pub fn ActivateGameOverlayToStore(nAppID: t.AppId_t, eFlag: t.EOverlayToStoreFlag) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayToStore:\n\t- nAppID = {any}\n\t- eFlag = {any}\n\n", .{ nAppID, eFlag });
        return undefined;
    }
    pub fn SetPlayedWith(steamIDUserPlayedWith: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetPlayedWith:\n\t- steamIDUserPlayedWith = {any}\n\n", .{ steamIDUserPlayedWith });
        return undefined;
    }
    pub fn ActivateGameOverlayInviteDialog(steamIDLobby: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialog:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn GetSmallFriendAvatar(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetSmallFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetMediumFriendAvatar(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetMediumFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetLargeFriendAvatar(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetLargeFriendAvatar:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn RequestUserInformation(steamIDUser: t.CSteamID, bRequireNameOnly: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestUserInformation:\n\t- steamIDUser = {any}\n\t- bRequireNameOnly = {any}\n\n", .{ steamIDUser, bRequireNameOnly });
        return undefined;
    }
    pub fn RequestClanOfficerList(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestClanOfficerList:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanOwner(steamIDClan: t.CSteamID) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOwner:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanOfficerCount(steamIDClan: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOfficerCount:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanOfficerByIndex(steamIDClan: t.CSteamID, iOfficer: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanOfficerByIndex:\n\t- steamIDClan = {any}\n\t- iOfficer = {any}\n\n", .{ steamIDClan, iOfficer });
        return undefined;
    }
    pub fn GetUserRestrictions() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetUserRestrictions\n\n", .{  });
        return undefined;
    }
    pub fn SetRichPresence(pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetRichPresence:\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ pchKey, pchValue });
        return undefined;
    }
    pub fn ClearRichPresence() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ClearRichPresence\n\n", .{  });
        return undefined;
    }
    pub fn GetFriendRichPresence(steamIDFriend: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresence:\n\t- steamIDFriend = {any}\n\t- pchKey = {any}\n\n", .{ steamIDFriend, pchKey });
        return undefined;
    }
    pub fn GetFriendRichPresenceKeyCount(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresenceKeyCount:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetFriendRichPresenceKeyByIndex(steamIDFriend: t.CSteamID, iKey: i32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendRichPresenceKeyByIndex:\n\t- steamIDFriend = {any}\n\t- iKey = {any}\n\n", .{ steamIDFriend, iKey });
        return undefined;
    }
    pub fn RequestFriendRichPresence(steamIDFriend: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RequestFriendRichPresence:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn InviteUserToGame(steamIDFriend: t.CSteamID, pchConnectString: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_InviteUserToGame:\n\t- steamIDFriend = {any}\n\t- pchConnectString = {any}\n\n", .{ steamIDFriend, pchConnectString });
        return undefined;
    }
    pub fn GetCoplayFriendCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetCoplayFriendCount\n\n", .{  });
        return undefined;
    }
    pub fn GetCoplayFriend(iCoplayFriend: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetCoplayFriend:\n\t- iCoplayFriend = {any}\n\n", .{ iCoplayFriend });
        return undefined;
    }
    pub fn GetFriendCoplayTime(steamIDFriend: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCoplayTime:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn GetFriendCoplayGame(steamIDFriend: t.CSteamID) callconv(.C) t.AppId_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendCoplayGame:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
    pub fn JoinClanChatRoom(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_JoinClanChatRoom:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn LeaveClanChatRoom(steamIDClan: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_LeaveClanChatRoom:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetClanChatMemberCount(steamIDClan: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanChatMemberCount:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetChatMemberByIndex(steamIDClan: t.CSteamID, iUser: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetChatMemberByIndex:\n\t- steamIDClan = {any}\n\t- iUser = {any}\n\n", .{ steamIDClan, iUser });
        return undefined;
    }
    pub fn SendClanChatMessage(steamIDClanChat: t.CSteamID, pchText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SendClanChatMessage:\n\t- steamIDClanChat = {any}\n\t- pchText = {any}\n\n", .{ steamIDClanChat, pchText });
        return undefined;
    }
    pub fn GetClanChatMessage(steamIDClanChat: t.CSteamID, iMessage: i32, prgchText: [*c]anyopaque, cchTextMax: i32, peChatEntryType: [*c]t.EChatEntryType, psteamidChatter: [*c]t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetClanChatMessage:\n\t- steamIDClanChat = {any}\n\t- iMessage = {any}\n\t- prgchText = {any}\n\t- cchTextMax = {any}\n\t- peChatEntryType = {any}\n\t- psteamidChatter = {any}\n\n", .{ steamIDClanChat, iMessage, prgchText, cchTextMax, peChatEntryType, psteamidChatter });
        return undefined;
    }
    pub fn IsClanChatAdmin(steamIDClanChat: t.CSteamID, steamIDUser: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanChatAdmin:\n\t- steamIDClanChat = {any}\n\t- steamIDUser = {any}\n\n", .{ steamIDClanChat, steamIDUser });
        return undefined;
    }
    pub fn IsClanChatWindowOpenInSteam(steamIDClanChat: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanChatWindowOpenInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
        return undefined;
    }
    pub fn OpenClanChatWindowInSteam(steamIDClanChat: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_OpenClanChatWindowInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
        return undefined;
    }
    pub fn CloseClanChatWindowInSteam(steamIDClanChat: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_CloseClanChatWindowInSteam:\n\t- steamIDClanChat = {any}\n\n", .{ steamIDClanChat });
        return undefined;
    }
    pub fn SetListenForFriendsMessages(bInterceptEnabled: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_SetListenForFriendsMessages:\n\t- bInterceptEnabled = {any}\n\n", .{ bInterceptEnabled });
        return undefined;
    }
    pub fn ReplyToFriendMessage(steamIDFriend: t.CSteamID, pchMsgToSend: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ReplyToFriendMessage:\n\t- steamIDFriend = {any}\n\t- pchMsgToSend = {any}\n\n", .{ steamIDFriend, pchMsgToSend });
        return undefined;
    }
    pub fn GetFriendMessage(steamIDFriend: t.CSteamID, iMessageID: i32, pvData: [*c]anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFriendMessage:\n\t- steamIDFriend = {any}\n\t- iMessageID = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\t- peChatEntryType = {any}\n\n", .{ steamIDFriend, iMessageID, pvData, cubData, peChatEntryType });
        return undefined;
    }
    pub fn GetFollowerCount(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetFollowerCount:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn IsFollowing(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsFollowing:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn EnumerateFollowingList(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_EnumerateFollowingList:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
        return undefined;
    }
    pub fn IsClanPublic(steamIDClan: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanPublic:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn IsClanOfficialGameGroup(steamIDClan: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_IsClanOfficialGameGroup:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn GetNumChatsWithUnreadPriorityMessages() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_GetNumChatsWithUnreadPriorityMessages\n\n", .{  });
        return undefined;
    }
    pub fn ActivateGameOverlayRemotePlayTogetherInviteDialog(steamIDLobby: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayRemotePlayTogetherInviteDialog:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn RegisterProtocolInOverlayBrowser(pchProtocol: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_RegisterProtocolInOverlayBrowser:\n\t- pchProtocol = {any}\n\n", .{ pchProtocol });
        return undefined;
    }
    pub fn ActivateGameOverlayInviteDialogConnectString(pchConnectString: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamFriends_ActivateGameOverlayInviteDialogConnectString:\n\t- pchConnectString = {any}\n\n", .{ pchConnectString });
        return undefined;
    }
};
pub fn SteamAPI_SteamFriends_v017() callconv(.C) [*c]t.ISteamFriends {
    p("NOT IMPLEMENTED SteamAPI_SteamFriends_v017\n\n", .{  });
    return undefined;
}
pub const ISteamUtils = struct {
    pub const version = "SteamUtils010";
    pub fn GetSecondsSinceAppActive() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSecondsSinceAppActive\n\n", .{  });
        return undefined;
    }
    pub fn GetSecondsSinceComputerActive() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSecondsSinceComputerActive\n\n", .{  });
        return undefined;
    }
    pub fn GetConnectedUniverse() callconv(.C) t.EUniverse {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetConnectedUniverse\n\n", .{  });
        return undefined;
    }
    pub fn GetServerRealTime() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetServerRealTime\n\n", .{  });
        return undefined;
    }
    pub fn GetIPCountry() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPCountry\n\n", .{  });
        return undefined;
    }
    pub fn GetImageSize(iImage: i32, pnWidth: [*c]t.uint32, pnHeight: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetImageSize:\n\t- iImage = {any}\n\t- pnWidth = {any}\n\t- pnHeight = {any}\n\n", .{ iImage, pnWidth, pnHeight });
        return undefined;
    }
    pub fn GetImageRGBA(iImage: i32, pubDest: [*c]t.uint8, nDestBufferSize: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetImageRGBA:\n\t- iImage = {any}\n\t- pubDest = {any}\n\t- nDestBufferSize = {any}\n\n", .{ iImage, pubDest, nDestBufferSize });
        return undefined;
    }
    pub fn GetCurrentBatteryPower() callconv(.C) t.uint8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetCurrentBatteryPower\n\n", .{  });
        return undefined;
    }
    pub fn GetAppID() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAppID\n\n", .{  });
        return undefined;
    }
    pub fn SetOverlayNotificationPosition(eNotificationPosition: t.ENotificationPosition) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetOverlayNotificationPosition:\n\t- eNotificationPosition = {any}\n\n", .{ eNotificationPosition });
        return undefined;
    }
    pub fn IsAPICallCompleted(hSteamAPICall: t.SteamAPICall_t, pbFailed: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsAPICallCompleted:\n\t- hSteamAPICall = {any}\n\t- pbFailed = {any}\n\n", .{ hSteamAPICall, pbFailed });
        return undefined;
    }
    pub fn GetAPICallFailureReason(hSteamAPICall: t.SteamAPICall_t) callconv(.C) t.ESteamAPICallFailure {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAPICallFailureReason:\n\t- hSteamAPICall = {any}\n\n", .{ hSteamAPICall });
        return undefined;
    }
    pub fn GetAPICallResult(hSteamAPICall: t.SteamAPICall_t, pCallback: [*c]anyopaque, cubCallback: i32, iCallbackExpected: i32, pbFailed: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetAPICallResult:\n\t- hSteamAPICall = {any}\n\t- pCallback = {any}\n\t- cubCallback = {any}\n\t- iCallbackExpected = {any}\n\t- pbFailed = {any}\n\n", .{ hSteamAPICall, pCallback, cubCallback, iCallbackExpected, pbFailed });
        return undefined;
    }
    pub fn GetIPCCallCount() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPCCallCount\n\n", .{  });
        return undefined;
    }
    pub fn SetWarningMessageHook(pFunction: t.SteamAPIWarningMessageHook_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetWarningMessageHook:\n\t- pFunction = {any}\n\n", .{ pFunction });
        return undefined;
    }
    pub fn IsOverlayEnabled() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsOverlayEnabled\n\n", .{  });
        return undefined;
    }
    pub fn BOverlayNeedsPresent() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_BOverlayNeedsPresent\n\n", .{  });
        return undefined;
    }
    pub fn CheckFileSignature(szFileName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_CheckFileSignature:\n\t- szFileName = {any}\n\n", .{ szFileName });
        return undefined;
    }
    pub fn ShowGamepadTextInput(eInputMode: t.EGamepadTextInputMode, eLineInputMode: t.EGamepadTextInputLineMode, pchDescription: [*c]const u8, unCharMax: t.uint32, pchExistingText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_ShowGamepadTextInput:\n\t- eInputMode = {any}\n\t- eLineInputMode = {any}\n\t- pchDescription = {any}\n\t- unCharMax = {any}\n\t- pchExistingText = {any}\n\n", .{ eInputMode, eLineInputMode, pchDescription, unCharMax, pchExistingText });
        return undefined;
    }
    pub fn GetEnteredGamepadTextLength() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetEnteredGamepadTextLength\n\n", .{  });
        return undefined;
    }
    pub fn GetEnteredGamepadTextInput(pchText: [*c]u8, cchText: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetEnteredGamepadTextInput:\n\t- pchText = {any}\n\t- cchText = {any}\n\n", .{ pchText, cchText });
        return undefined;
    }
    pub fn GetSteamUILanguage() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetSteamUILanguage\n\n", .{  });
        return undefined;
    }
    pub fn IsSteamRunningInVR() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamRunningInVR\n\n", .{  });
        return undefined;
    }
    pub fn SetOverlayNotificationInset(nHorizontalInset: i32, nVerticalInset: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetOverlayNotificationInset:\n\t- nHorizontalInset = {any}\n\t- nVerticalInset = {any}\n\n", .{ nHorizontalInset, nVerticalInset });
        return undefined;
    }
    pub fn IsSteamInBigPictureMode() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamInBigPictureMode\n\n", .{  });
        return undefined;
    }
    pub fn StartVRDashboard() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_StartVRDashboard\n\n", .{  });
        return undefined;
    }
    pub fn IsVRHeadsetStreamingEnabled() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsVRHeadsetStreamingEnabled\n\n", .{  });
        return undefined;
    }
    pub fn SetVRHeadsetStreamingEnabled(bEnabled: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetVRHeadsetStreamingEnabled:\n\t- bEnabled = {any}\n\n", .{ bEnabled });
        return undefined;
    }
    pub fn IsSteamChinaLauncher() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamChinaLauncher\n\n", .{  });
        return undefined;
    }
    pub fn InitFilterText(unFilterOptions: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_InitFilterText:\n\t- unFilterOptions = {any}\n\n", .{ unFilterOptions });
        return undefined;
    }
    pub fn FilterText(eContext: t.ETextFilteringContext, sourceSteamID: t.CSteamID, pchInputMessage: [*c]const u8, pchOutFilteredText: [*c]u8, nByteSizeOutFilteredText: t.uint32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_FilterText:\n\t- eContext = {any}\n\t- sourceSteamID = {any}\n\t- pchInputMessage = {any}\n\t- pchOutFilteredText = {any}\n\t- nByteSizeOutFilteredText = {any}\n\n", .{ eContext, sourceSteamID, pchInputMessage, pchOutFilteredText, nByteSizeOutFilteredText });
        return undefined;
    }
    pub fn GetIPv6ConnectivityState(eProtocol: t.ESteamIPv6ConnectivityProtocol) callconv(.C) t.ESteamIPv6ConnectivityState {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_GetIPv6ConnectivityState:\n\t- eProtocol = {any}\n\n", .{ eProtocol });
        return undefined;
    }
    pub fn IsSteamRunningOnSteamDeck() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_IsSteamRunningOnSteamDeck\n\n", .{  });
        return undefined;
    }
    pub fn ShowFloatingGamepadTextInput(eKeyboardMode: t.EFloatingGamepadTextInputMode, nTextFieldXPosition: i32, nTextFieldYPosition: i32, nTextFieldWidth: i32, nTextFieldHeight: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_ShowFloatingGamepadTextInput:\n\t- eKeyboardMode = {any}\n\t- nTextFieldXPosition = {any}\n\t- nTextFieldYPosition = {any}\n\t- nTextFieldWidth = {any}\n\t- nTextFieldHeight = {any}\n\n", .{ eKeyboardMode, nTextFieldXPosition, nTextFieldYPosition, nTextFieldWidth, nTextFieldHeight });
        return undefined;
    }
    pub fn SetGameLauncherMode(bLauncherMode: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_SetGameLauncherMode:\n\t- bLauncherMode = {any}\n\n", .{ bLauncherMode });
        return undefined;
    }
    pub fn DismissFloatingGamepadTextInput() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUtils_DismissFloatingGamepadTextInput\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamUtils_v010() callconv(.C) [*c]t.ISteamUtils {
    p("NOT IMPLEMENTED SteamAPI_SteamUtils_v010\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerUtils_v010() callconv(.C) [*c]t.ISteamUtils {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerUtils_v010\n\n", .{  });
    return undefined;
}
pub const ISteamMatchmaking = struct {
    pub const version = "SteamMatchMaking009";
    pub fn GetFavoriteGameCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetFavoriteGameCount\n\n", .{  });
        return undefined;
    }
    pub fn GetFavoriteGame(iGame: i32, pnAppID: [*c]t.AppId_t, pnIP: [*c]t.uint32, pnConnPort: [*c]t.uint16, pnQueryPort: [*c]t.uint16, punFlags: [*c]t.uint32, pRTime32LastPlayedOnServer: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetFavoriteGame:\n\t- iGame = {any}\n\t- pnAppID = {any}\n\t- pnIP = {any}\n\t- pnConnPort = {any}\n\t- pnQueryPort = {any}\n\t- punFlags = {any}\n\t- pRTime32LastPlayedOnServer = {any}\n\n", .{ iGame, pnAppID, pnIP, pnConnPort, pnQueryPort, punFlags, pRTime32LastPlayedOnServer });
        return undefined;
    }
    pub fn AddFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32, rTime32LastPlayedOnServer: t.uint32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddFavoriteGame:\n\t- nAppID = {any}\n\t- nIP = {any}\n\t- nConnPort = {any}\n\t- nQueryPort = {any}\n\t- unFlags = {any}\n\t- rTime32LastPlayedOnServer = {any}\n\n", .{ nAppID, nIP, nConnPort, nQueryPort, unFlags, rTime32LastPlayedOnServer });
        return undefined;
    }
    pub fn RemoveFavoriteGame(nAppID: t.AppId_t, nIP: t.uint32, nConnPort: t.uint16, nQueryPort: t.uint16, unFlags: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RemoveFavoriteGame:\n\t- nAppID = {any}\n\t- nIP = {any}\n\t- nConnPort = {any}\n\t- nQueryPort = {any}\n\t- unFlags = {any}\n\n", .{ nAppID, nIP, nConnPort, nQueryPort, unFlags });
        return undefined;
    }
    pub fn RequestLobbyList() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RequestLobbyList\n\n", .{  });
        return undefined;
    }
    pub fn AddRequestLobbyListStringFilter(pchKeyToMatch: [*c]const u8, pchValueToMatch: [*c]const u8, eComparisonType: t.ELobbyComparison) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListStringFilter:\n\t- pchKeyToMatch = {any}\n\t- pchValueToMatch = {any}\n\t- eComparisonType = {any}\n\n", .{ pchKeyToMatch, pchValueToMatch, eComparisonType });
        return undefined;
    }
    pub fn AddRequestLobbyListNumericalFilter(pchKeyToMatch: [*c]const u8, nValueToMatch: i32, eComparisonType: t.ELobbyComparison) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListNumericalFilter:\n\t- pchKeyToMatch = {any}\n\t- nValueToMatch = {any}\n\t- eComparisonType = {any}\n\n", .{ pchKeyToMatch, nValueToMatch, eComparisonType });
        return undefined;
    }
    pub fn AddRequestLobbyListNearValueFilter(pchKeyToMatch: [*c]const u8, nValueToBeCloseTo: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListNearValueFilter:\n\t- pchKeyToMatch = {any}\n\t- nValueToBeCloseTo = {any}\n\n", .{ pchKeyToMatch, nValueToBeCloseTo });
        return undefined;
    }
    pub fn AddRequestLobbyListFilterSlotsAvailable(nSlotsAvailable: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListFilterSlotsAvailable:\n\t- nSlotsAvailable = {any}\n\n", .{ nSlotsAvailable });
        return undefined;
    }
    pub fn AddRequestLobbyListDistanceFilter(eLobbyDistanceFilter: t.ELobbyDistanceFilter) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListDistanceFilter:\n\t- eLobbyDistanceFilter = {any}\n\n", .{ eLobbyDistanceFilter });
        return undefined;
    }
    pub fn AddRequestLobbyListResultCountFilter(cMaxResults: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListResultCountFilter:\n\t- cMaxResults = {any}\n\n", .{ cMaxResults });
        return undefined;
    }
    pub fn AddRequestLobbyListCompatibleMembersFilter(steamIDLobby: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_AddRequestLobbyListCompatibleMembersFilter:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn GetLobbyByIndex(iLobby: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyByIndex:\n\t- iLobby = {any}\n\n", .{ iLobby });
        return undefined;
    }
    pub fn CreateLobby(eLobbyType: t.ELobbyType, cMaxMembers: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_CreateLobby:\n\t- eLobbyType = {any}\n\t- cMaxMembers = {any}\n\n", .{ eLobbyType, cMaxMembers });
        return undefined;
    }
    pub fn JoinLobby(steamIDLobby: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_JoinLobby:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn LeaveLobby(steamIDLobby: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_LeaveLobby:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn InviteUserToLobby(steamIDLobby: t.CSteamID, steamIDInvitee: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_InviteUserToLobby:\n\t- steamIDLobby = {any}\n\t- steamIDInvitee = {any}\n\n", .{ steamIDLobby, steamIDInvitee });
        return undefined;
    }
    pub fn GetNumLobbyMembers(steamIDLobby: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetNumLobbyMembers:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn GetLobbyMemberByIndex(steamIDLobby: t.CSteamID, iMember: i32) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberByIndex:\n\t- steamIDLobby = {any}\n\t- iMember = {any}\n\n", .{ steamIDLobby, iMember });
        return undefined;
    }
    pub fn GetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, pchKey });
        return undefined;
    }
    pub fn SetLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ steamIDLobby, pchKey, pchValue });
        return undefined;
    }
    pub fn GetLobbyDataCount(steamIDLobby: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyDataCount:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn GetLobbyDataByIndex(steamIDLobby: t.CSteamID, iLobbyData: i32, pchKey: [*c]u8, cchKeyBufferSize: i32, pchValue: [*c]u8, cchValueBufferSize: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyDataByIndex:\n\t- steamIDLobby = {any}\n\t- iLobbyData = {any}\n\t- pchKey = {any}\n\t- cchKeyBufferSize = {any}\n\t- pchValue = {any}\n\t- cchValueBufferSize = {any}\n\n", .{ steamIDLobby, iLobbyData, pchKey, cchKeyBufferSize, pchValue, cchValueBufferSize });
        return undefined;
    }
    pub fn DeleteLobbyData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_DeleteLobbyData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, pchKey });
        return undefined;
    }
    pub fn GetLobbyMemberData(steamIDLobby: t.CSteamID, steamIDUser: t.CSteamID, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberData:\n\t- steamIDLobby = {any}\n\t- steamIDUser = {any}\n\t- pchKey = {any}\n\n", .{ steamIDLobby, steamIDUser, pchKey });
        return undefined;
    }
    pub fn SetLobbyMemberData(steamIDLobby: t.CSteamID, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyMemberData:\n\t- steamIDLobby = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ steamIDLobby, pchKey, pchValue });
        return undefined;
    }
    pub fn SendLobbyChatMsg(steamIDLobby: t.CSteamID, pvMsgBody: [*c]const anyopaque, cubMsgBody: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SendLobbyChatMsg:\n\t- steamIDLobby = {any}\n\t- pvMsgBody = {any}\n\t- cubMsgBody = {any}\n\n", .{ steamIDLobby, pvMsgBody, cubMsgBody });
        return undefined;
    }
    pub fn GetLobbyChatEntry(steamIDLobby: t.CSteamID, iChatID: i32, pSteamIDUser: [*c]t.CSteamID, pvData: [*c]anyopaque, cubData: i32, peChatEntryType: [*c]t.EChatEntryType) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyChatEntry:\n\t- steamIDLobby = {any}\n\t- iChatID = {any}\n\t- pSteamIDUser = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\t- peChatEntryType = {any}\n\n", .{ steamIDLobby, iChatID, pSteamIDUser, pvData, cubData, peChatEntryType });
        return undefined;
    }
    pub fn RequestLobbyData(steamIDLobby: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_RequestLobbyData:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn SetLobbyGameServer(steamIDLobby: t.CSteamID, unGameServerIP: t.uint32, unGameServerPort: t.uint16, steamIDGameServer: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyGameServer:\n\t- steamIDLobby = {any}\n\t- unGameServerIP = {any}\n\t- unGameServerPort = {any}\n\t- steamIDGameServer = {any}\n\n", .{ steamIDLobby, unGameServerIP, unGameServerPort, steamIDGameServer });
        return undefined;
    }
    pub fn GetLobbyGameServer(steamIDLobby: t.CSteamID, punGameServerIP: [*c]t.uint32, punGameServerPort: [*c]t.uint16, psteamIDGameServer: [*c]t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyGameServer:\n\t- steamIDLobby = {any}\n\t- punGameServerIP = {any}\n\t- punGameServerPort = {any}\n\t- psteamIDGameServer = {any}\n\n", .{ steamIDLobby, punGameServerIP, punGameServerPort, psteamIDGameServer });
        return undefined;
    }
    pub fn SetLobbyMemberLimit(steamIDLobby: t.CSteamID, cMaxMembers: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyMemberLimit:\n\t- steamIDLobby = {any}\n\t- cMaxMembers = {any}\n\n", .{ steamIDLobby, cMaxMembers });
        return undefined;
    }
    pub fn GetLobbyMemberLimit(steamIDLobby: t.CSteamID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyMemberLimit:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn SetLobbyType(steamIDLobby: t.CSteamID, eLobbyType: t.ELobbyType) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyType:\n\t- steamIDLobby = {any}\n\t- eLobbyType = {any}\n\n", .{ steamIDLobby, eLobbyType });
        return undefined;
    }
    pub fn SetLobbyJoinable(steamIDLobby: t.CSteamID, bLobbyJoinable: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyJoinable:\n\t- steamIDLobby = {any}\n\t- bLobbyJoinable = {any}\n\n", .{ steamIDLobby, bLobbyJoinable });
        return undefined;
    }
    pub fn GetLobbyOwner(steamIDLobby: t.CSteamID) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_GetLobbyOwner:\n\t- steamIDLobby = {any}\n\n", .{ steamIDLobby });
        return undefined;
    }
    pub fn SetLobbyOwner(steamIDLobby: t.CSteamID, steamIDNewOwner: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLobbyOwner:\n\t- steamIDLobby = {any}\n\t- steamIDNewOwner = {any}\n\n", .{ steamIDLobby, steamIDNewOwner });
        return undefined;
    }
    pub fn SetLinkedLobby(steamIDLobby: t.CSteamID, steamIDLobbyDependent: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmaking_SetLinkedLobby:\n\t- steamIDLobby = {any}\n\t- steamIDLobbyDependent = {any}\n\n", .{ steamIDLobby, steamIDLobbyDependent });
        return undefined;
    }
};
pub fn SteamAPI_SteamMatchmaking_v009() callconv(.C) [*c]t.ISteamMatchmaking {
    p("NOT IMPLEMENTED SteamAPI_SteamMatchmaking_v009\n\n", .{  });
    return undefined;
}
pub const ISteamMatchmakingServerListResponse = struct {
    pub fn ServerResponded(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
        return undefined;
    }
    pub fn ServerFailedToRespond(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
        return undefined;
    }
    pub fn RefreshComplete(hRequest: t.HServerListRequest, response: t.EMatchMakingServerResponse) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete:\n\t- hRequest = {any}\n\t- response = {any}\n\n", .{ hRequest, response });
        return undefined;
    }
};
pub const ISteamMatchmakingPingResponse = struct {
    pub fn ServerResponded(server: [*c]t.gameserveritem_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPingResponse_ServerResponded:\n\t- server = {any}\n\n", .{ server });
        return undefined;
    }
    pub fn ServerFailedToRespond() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPingResponse_ServerFailedToRespond\n\n", .{  });
        return undefined;
    }
};
pub const ISteamMatchmakingPlayersResponse = struct {
    pub fn AddPlayerToList(pchName: [*c]const u8, nScore: i32, flTimePlayed: f32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_AddPlayerToList:\n\t- pchName = {any}\n\t- nScore = {any}\n\t- flTimePlayed = {any}\n\n", .{ pchName, nScore, flTimePlayed });
        return undefined;
    }
    pub fn PlayersFailedToRespond() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_PlayersFailedToRespond\n\n", .{  });
        return undefined;
    }
    pub fn PlayersRefreshComplete() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingPlayersResponse_PlayersRefreshComplete\n\n", .{  });
        return undefined;
    }
};
pub const ISteamMatchmakingRulesResponse = struct {
    pub fn RulesResponded(pchRule: [*c]const u8, pchValue: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesResponded:\n\t- pchRule = {any}\n\t- pchValue = {any}\n\n", .{ pchRule, pchValue });
        return undefined;
    }
    pub fn RulesFailedToRespond() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesFailedToRespond\n\n", .{  });
        return undefined;
    }
    pub fn RulesRefreshComplete() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingRulesResponse_RulesRefreshComplete\n\n", .{  });
        return undefined;
    }
};
pub const ISteamMatchmakingServers = struct {
    pub const version = "SteamMatchMakingServers002";
    pub fn RequestInternetServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestInternetServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
        return undefined;
    }
    pub fn RequestLANServerList(iApp: t.AppId_t, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestLANServerList:\n\t- iApp = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, pRequestServersResponse });
        return undefined;
    }
    pub fn RequestFriendsServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestFriendsServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
        return undefined;
    }
    pub fn RequestFavoritesServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestFavoritesServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
        return undefined;
    }
    pub fn RequestHistoryServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestHistoryServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
        return undefined;
    }
    pub fn RequestSpectatorServerList(iApp: t.AppId_t, ppchFilters: [*c][*c]t.MatchMakingKeyValuePair_t, nFilters: t.uint32, pRequestServersResponse: [*c]t.ISteamMatchmakingServerListResponse) callconv(.C) t.HServerListRequest {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RequestSpectatorServerList:\n\t- iApp = {any}\n\t- ppchFilters = {any}\n\t- nFilters = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ iApp, ppchFilters, nFilters, pRequestServersResponse });
        return undefined;
    }
    pub fn ReleaseRequest(hServerListRequest: t.HServerListRequest) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_ReleaseRequest:\n\t- hServerListRequest = {any}\n\n", .{ hServerListRequest });
        return undefined;
    }
    pub fn GetServerDetails(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) [*c]t.gameserveritem_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_GetServerDetails:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
        return undefined;
    }
    pub fn CancelQuery(hRequest: t.HServerListRequest) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_CancelQuery:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn RefreshQuery(hRequest: t.HServerListRequest) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RefreshQuery:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn IsRefreshing(hRequest: t.HServerListRequest) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_IsRefreshing:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn GetServerCount(hRequest: t.HServerListRequest) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_GetServerCount:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn RefreshServer(hRequest: t.HServerListRequest, iServer: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_RefreshServer:\n\t- hRequest = {any}\n\t- iServer = {any}\n\n", .{ hRequest, iServer });
        return undefined;
    }
    pub fn PingServer(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPingResponse) callconv(.C) t.HServerQuery {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_PingServer:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
        return undefined;
    }
    pub fn PlayerDetails(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingPlayersResponse) callconv(.C) t.HServerQuery {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_PlayerDetails:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
        return undefined;
    }
    pub fn ServerRules(unIP: t.uint32, usPort: t.uint16, pRequestServersResponse: [*c]t.ISteamMatchmakingRulesResponse) callconv(.C) t.HServerQuery {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_ServerRules:\n\t- unIP = {any}\n\t- usPort = {any}\n\t- pRequestServersResponse = {any}\n\n", .{ unIP, usPort, pRequestServersResponse });
        return undefined;
    }
    pub fn CancelServerQuery(hServerQuery: t.HServerQuery) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMatchmakingServers_CancelServerQuery:\n\t- hServerQuery = {any}\n\n", .{ hServerQuery });
        return undefined;
    }
};
pub fn SteamAPI_SteamMatchmakingServers_v002() callconv(.C) [*c]t.ISteamMatchmakingServers {
    p("NOT IMPLEMENTED SteamAPI_SteamMatchmakingServers_v002\n\n", .{  });
    return undefined;
}
pub const ISteamGameSearch = struct {
    pub const version = "SteamMatchGameSearch001";
    pub fn AddGameSearchParams(pchKeyToFind: [*c]const u8, pchValuesToFind: [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_AddGameSearchParams:\n\t- pchKeyToFind = {any}\n\t- pchValuesToFind = {any}\n\n", .{ pchKeyToFind, pchValuesToFind });
        return undefined;
    }
    pub fn SearchForGameWithLobby(steamIDLobby: t.CSteamID, nPlayerMin: i32, nPlayerMax: i32) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SearchForGameWithLobby:\n\t- steamIDLobby = {any}\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\n", .{ steamIDLobby, nPlayerMin, nPlayerMax });
        return undefined;
    }
    pub fn SearchForGameSolo(nPlayerMin: i32, nPlayerMax: i32) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SearchForGameSolo:\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\n", .{ nPlayerMin, nPlayerMax });
        return undefined;
    }
    pub fn AcceptGame() callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_AcceptGame\n\n", .{  });
        return undefined;
    }
    pub fn DeclineGame() callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_DeclineGame\n\n", .{  });
        return undefined;
    }
    pub fn RetrieveConnectionDetails(steamIDHost: t.CSteamID, pchConnectionDetails: [*c]u8, cubConnectionDetails: i32) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_RetrieveConnectionDetails:\n\t- steamIDHost = {any}\n\t- pchConnectionDetails = {any}\n\t- cubConnectionDetails = {any}\n\n", .{ steamIDHost, pchConnectionDetails, cubConnectionDetails });
        return undefined;
    }
    pub fn EndGameSearch() callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_EndGameSearch\n\n", .{  });
        return undefined;
    }
    pub fn SetGameHostParams(pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SetGameHostParams:\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ pchKey, pchValue });
        return undefined;
    }
    pub fn SetConnectionDetails(pchConnectionDetails: [*c]const u8, cubConnectionDetails: i32) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SetConnectionDetails:\n\t- pchConnectionDetails = {any}\n\t- cubConnectionDetails = {any}\n\n", .{ pchConnectionDetails, cubConnectionDetails });
        return undefined;
    }
    pub fn RequestPlayersForGame(nPlayerMin: i32, nPlayerMax: i32, nMaxTeamSize: i32) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_RequestPlayersForGame:\n\t- nPlayerMin = {any}\n\t- nPlayerMax = {any}\n\t- nMaxTeamSize = {any}\n\n", .{ nPlayerMin, nPlayerMax, nMaxTeamSize });
        return undefined;
    }
    pub fn HostConfirmGameStart(ullUniqueGameID: t.uint64) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_HostConfirmGameStart:\n\t- ullUniqueGameID = {any}\n\n", .{ ullUniqueGameID });
        return undefined;
    }
    pub fn CancelRequestPlayersForGame() callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_CancelRequestPlayersForGame\n\n", .{  });
        return undefined;
    }
    pub fn SubmitPlayerResult(ullUniqueGameID: t.uint64, steamIDPlayer: t.CSteamID, EPlayerResult: t.EPlayerResult_t) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_SubmitPlayerResult:\n\t- ullUniqueGameID = {any}\n\t- steamIDPlayer = {any}\n\t- EPlayerResult = {any}\n\n", .{ ullUniqueGameID, steamIDPlayer, EPlayerResult });
        return undefined;
    }
    pub fn EndGame(ullUniqueGameID: t.uint64) callconv(.C) t.EGameSearchErrorCode_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameSearch_EndGame:\n\t- ullUniqueGameID = {any}\n\n", .{ ullUniqueGameID });
        return undefined;
    }
};
pub fn SteamAPI_SteamGameSearch_v001() callconv(.C) [*c]t.ISteamGameSearch {
    p("NOT IMPLEMENTED SteamAPI_SteamGameSearch_v001\n\n", .{  });
    return undefined;
}
pub const ISteamParties = struct {
    pub const version = "SteamParties002";
    pub fn GetNumActiveBeacons() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetNumActiveBeacons\n\n", .{  });
        return undefined;
    }
    pub fn GetBeaconByIndex(unIndex: t.uint32) callconv(.C) t.PartyBeaconID_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconByIndex:\n\t- unIndex = {any}\n\n", .{ unIndex });
        return undefined;
    }
    pub fn GetBeaconDetails(ulBeaconID: t.PartyBeaconID_t, pSteamIDBeaconOwner: [*c]t.CSteamID, pLocation: [*c]t.SteamPartyBeaconLocation_t, pchMetadata: [*c]u8, cchMetadata: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconDetails:\n\t- ulBeaconID = {any}\n\t- pSteamIDBeaconOwner = {any}\n\t- pLocation = {any}\n\t- pchMetadata = {any}\n\t- cchMetadata = {any}\n\n", .{ ulBeaconID, pSteamIDBeaconOwner, pLocation, pchMetadata, cchMetadata });
        return undefined;
    }
    pub fn JoinParty(ulBeaconID: t.PartyBeaconID_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_JoinParty:\n\t- ulBeaconID = {any}\n\n", .{ ulBeaconID });
        return undefined;
    }
    pub fn GetNumAvailableBeaconLocations(puNumLocations: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetNumAvailableBeaconLocations:\n\t- puNumLocations = {any}\n\n", .{ puNumLocations });
        return undefined;
    }
    pub fn GetAvailableBeaconLocations(pLocationList: [*c]t.SteamPartyBeaconLocation_t, uMaxNumLocations: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetAvailableBeaconLocations:\n\t- pLocationList = {any}\n\t- uMaxNumLocations = {any}\n\n", .{ pLocationList, uMaxNumLocations });
        return undefined;
    }
    pub fn CreateBeacon(unOpenSlots: t.uint32, pBeaconLocation: [*c]t.SteamPartyBeaconLocation_t, pchConnectString: [*c]const u8, pchMetadata: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_CreateBeacon:\n\t- unOpenSlots = {any}\n\t- pBeaconLocation = {any}\n\t- pchConnectString = {any}\n\t- pchMetadata = {any}\n\n", .{ unOpenSlots, pBeaconLocation, pchConnectString, pchMetadata });
        return undefined;
    }
    pub fn OnReservationCompleted(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_OnReservationCompleted:\n\t- ulBeacon = {any}\n\t- steamIDUser = {any}\n\n", .{ ulBeacon, steamIDUser });
        return undefined;
    }
    pub fn CancelReservation(ulBeacon: t.PartyBeaconID_t, steamIDUser: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_CancelReservation:\n\t- ulBeacon = {any}\n\t- steamIDUser = {any}\n\n", .{ ulBeacon, steamIDUser });
        return undefined;
    }
    pub fn ChangeNumOpenSlots(ulBeacon: t.PartyBeaconID_t, unOpenSlots: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_ChangeNumOpenSlots:\n\t- ulBeacon = {any}\n\t- unOpenSlots = {any}\n\n", .{ ulBeacon, unOpenSlots });
        return undefined;
    }
    pub fn DestroyBeacon(ulBeacon: t.PartyBeaconID_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_DestroyBeacon:\n\t- ulBeacon = {any}\n\n", .{ ulBeacon });
        return undefined;
    }
    pub fn GetBeaconLocationData(BeaconLocation: t.SteamPartyBeaconLocation_t, eData: t.ESteamPartyBeaconLocationData, pchDataStringOut: [*c]u8, cchDataStringOut: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParties_GetBeaconLocationData:\n\t- BeaconLocation = {any}\n\t- eData = {any}\n\t- pchDataStringOut = {any}\n\t- cchDataStringOut = {any}\n\n", .{ BeaconLocation, eData, pchDataStringOut, cchDataStringOut });
        return undefined;
    }
};
pub fn SteamAPI_SteamParties_v002() callconv(.C) [*c]t.ISteamParties {
    p("NOT IMPLEMENTED SteamAPI_SteamParties_v002\n\n", .{  });
    return undefined;
}
pub const ISteamRemoteStorage = struct {
    pub const version = "STEAMREMOTESTORAGE_INTERFACE_VERSION016";
    pub fn FileWrite(pchFile: [*c]const u8, pvData: [*c]const anyopaque, cubData: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWrite:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ pchFile, pvData, cubData });
        return undefined;
    }
    pub fn FileRead(pchFile: [*c]const u8, pvData: [*c]anyopaque, cubDataToRead: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileRead:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubDataToRead = {any}\n\n", .{ pchFile, pvData, cubDataToRead });
        return undefined;
    }
    pub fn FileWriteAsync(pchFile: [*c]const u8, pvData: [*c]const anyopaque, cubData: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteAsync:\n\t- pchFile = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ pchFile, pvData, cubData });
        return undefined;
    }
    pub fn FileReadAsync(pchFile: [*c]const u8, nOffset: t.uint32, cubToRead: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileReadAsync:\n\t- pchFile = {any}\n\t- nOffset = {any}\n\t- cubToRead = {any}\n\n", .{ pchFile, nOffset, cubToRead });
        return undefined;
    }
    pub fn FileReadAsyncComplete(hReadCall: t.SteamAPICall_t, pvBuffer: [*c]anyopaque, cubToRead: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileReadAsyncComplete:\n\t- hReadCall = {any}\n\t- pvBuffer = {any}\n\t- cubToRead = {any}\n\n", .{ hReadCall, pvBuffer, cubToRead });
        return undefined;
    }
    pub fn FileForget(pchFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileForget:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn FileDelete(pchFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileDelete:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn FileShare(pchFile: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileShare:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn SetSyncPlatforms(pchFile: [*c]const u8, eRemoteStoragePlatform: t.ERemoteStoragePlatform) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetSyncPlatforms:\n\t- pchFile = {any}\n\t- eRemoteStoragePlatform = {any}\n\n", .{ pchFile, eRemoteStoragePlatform });
        return undefined;
    }
    pub fn FileWriteStreamOpen(pchFile: [*c]const u8) callconv(.C) t.UGCFileWriteStreamHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamOpen:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn FileWriteStreamWriteChunk(writeHandle: t.UGCFileWriteStreamHandle_t, pvData: [*c]const anyopaque, cubData: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamWriteChunk:\n\t- writeHandle = {any}\n\t- pvData = {any}\n\t- cubData = {any}\n\n", .{ writeHandle, pvData, cubData });
        return undefined;
    }
    pub fn FileWriteStreamClose(writeHandle: t.UGCFileWriteStreamHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamClose:\n\t- writeHandle = {any}\n\n", .{ writeHandle });
        return undefined;
    }
    pub fn FileWriteStreamCancel(writeHandle: t.UGCFileWriteStreamHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileWriteStreamCancel:\n\t- writeHandle = {any}\n\n", .{ writeHandle });
        return undefined;
    }
    pub fn FileExists(pchFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FileExists:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn FilePersisted(pchFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_FilePersisted:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn GetFileSize(pchFile: [*c]const u8) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileSize:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn GetFileTimestamp(pchFile: [*c]const u8) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileTimestamp:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn GetSyncPlatforms(pchFile: [*c]const u8) callconv(.C) t.ERemoteStoragePlatform {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetSyncPlatforms:\n\t- pchFile = {any}\n\n", .{ pchFile });
        return undefined;
    }
    pub fn GetFileCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileCount\n\n", .{  });
        return undefined;
    }
    pub fn GetFileNameAndSize(iFile: i32, pnFileSizeInBytes: [*c]i32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetFileNameAndSize:\n\t- iFile = {any}\n\t- pnFileSizeInBytes = {any}\n\n", .{ iFile, pnFileSizeInBytes });
        return undefined;
    }
    pub fn GetQuota(pnTotalBytes: [*c]t.uint64, puAvailableBytes: [*c]t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetQuota:\n\t- pnTotalBytes = {any}\n\t- puAvailableBytes = {any}\n\n", .{ pnTotalBytes, puAvailableBytes });
        return undefined;
    }
    pub fn IsCloudEnabledForAccount() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_IsCloudEnabledForAccount\n\n", .{  });
        return undefined;
    }
    pub fn IsCloudEnabledForApp() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_IsCloudEnabledForApp\n\n", .{  });
        return undefined;
    }
    pub fn SetCloudEnabledForApp(bEnabled: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetCloudEnabledForApp:\n\t- bEnabled = {any}\n\n", .{ bEnabled });
        return undefined;
    }
    pub fn UGCDownload(hContent: t.UGCHandle_t, unPriority: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCDownload:\n\t- hContent = {any}\n\t- unPriority = {any}\n\n", .{ hContent, unPriority });
        return undefined;
    }
    pub fn GetUGCDownloadProgress(hContent: t.UGCHandle_t, pnBytesDownloaded: [*c]i32, pnBytesExpected: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUGCDownloadProgress:\n\t- hContent = {any}\n\t- pnBytesDownloaded = {any}\n\t- pnBytesExpected = {any}\n\n", .{ hContent, pnBytesDownloaded, pnBytesExpected });
        return undefined;
    }
    pub fn GetUGCDetails(hContent: t.UGCHandle_t, pnAppID: [*c]t.AppId_t, ppchName: [*c][*c]u8, pnFileSizeInBytes: [*c]i32, pSteamIDOwner: [*c]t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUGCDetails:\n\t- hContent = {any}\n\t- pnAppID = {any}\n\t- ppchName = {any}\n\t- pnFileSizeInBytes = {any}\n\t- pSteamIDOwner = {any}\n\n", .{ hContent, pnAppID, ppchName, pnFileSizeInBytes, pSteamIDOwner });
        return undefined;
    }
    pub fn UGCRead(hContent: t.UGCHandle_t, pvData: [*c]anyopaque, cubDataToRead: i32, cOffset: t.uint32, eAction: t.EUGCReadAction) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCRead:\n\t- hContent = {any}\n\t- pvData = {any}\n\t- cubDataToRead = {any}\n\t- cOffset = {any}\n\t- eAction = {any}\n\n", .{ hContent, pvData, cubDataToRead, cOffset, eAction });
        return undefined;
    }
    pub fn GetCachedUGCCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetCachedUGCCount\n\n", .{  });
        return undefined;
    }
    pub fn GetCachedUGCHandle(iCachedContent: i32) callconv(.C) t.UGCHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetCachedUGCHandle:\n\t- iCachedContent = {any}\n\n", .{ iCachedContent });
        return undefined;
    }
    pub fn PublishWorkshopFile(pchFile: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t, eWorkshopFileType: t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_PublishWorkshopFile:\n\t- pchFile = {any}\n\t- pchPreviewFile = {any}\n\t- nConsumerAppId = {any}\n\t- pchTitle = {any}\n\t- pchDescription = {any}\n\t- eVisibility = {any}\n\t- pTags = {any}\n\t- eWorkshopFileType = {any}\n\n", .{ pchFile, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags, eWorkshopFileType });
        return undefined;
    }
    pub fn CreatePublishedFileUpdateRequest(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.PublishedFileUpdateHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_CreatePublishedFileUpdateRequest:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn UpdatePublishedFileFile(updateHandle: t.PublishedFileUpdateHandle_t, pchFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileFile:\n\t- updateHandle = {any}\n\t- pchFile = {any}\n\n", .{ updateHandle, pchFile });
        return undefined;
    }
    pub fn UpdatePublishedFilePreviewFile(updateHandle: t.PublishedFileUpdateHandle_t, pchPreviewFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFilePreviewFile:\n\t- updateHandle = {any}\n\t- pchPreviewFile = {any}\n\n", .{ updateHandle, pchPreviewFile });
        return undefined;
    }
    pub fn UpdatePublishedFileTitle(updateHandle: t.PublishedFileUpdateHandle_t, pchTitle: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTitle:\n\t- updateHandle = {any}\n\t- pchTitle = {any}\n\n", .{ updateHandle, pchTitle });
        return undefined;
    }
    pub fn UpdatePublishedFileDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchDescription: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileDescription:\n\t- updateHandle = {any}\n\t- pchDescription = {any}\n\n", .{ updateHandle, pchDescription });
        return undefined;
    }
    pub fn UpdatePublishedFileVisibility(updateHandle: t.PublishedFileUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileVisibility:\n\t- updateHandle = {any}\n\t- eVisibility = {any}\n\n", .{ updateHandle, eVisibility });
        return undefined;
    }
    pub fn UpdatePublishedFileTags(updateHandle: t.PublishedFileUpdateHandle_t, pTags: [*c]t.SteamParamStringArray_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileTags:\n\t- updateHandle = {any}\n\t- pTags = {any}\n\n", .{ updateHandle, pTags });
        return undefined;
    }
    pub fn CommitPublishedFileUpdate(updateHandle: t.PublishedFileUpdateHandle_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_CommitPublishedFileUpdate:\n\t- updateHandle = {any}\n\n", .{ updateHandle });
        return undefined;
    }
    pub fn GetPublishedFileDetails(unPublishedFileId: t.PublishedFileId_t, unMaxSecondsOld: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetPublishedFileDetails:\n\t- unPublishedFileId = {any}\n\t- unMaxSecondsOld = {any}\n\n", .{ unPublishedFileId, unMaxSecondsOld });
        return undefined;
    }
    pub fn DeletePublishedFile(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_DeletePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn EnumerateUserPublishedFiles(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserPublishedFiles:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
        return undefined;
    }
    pub fn SubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SubscribePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn EnumerateUserSubscribedFiles(unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserSubscribedFiles:\n\t- unStartIndex = {any}\n\n", .{ unStartIndex });
        return undefined;
    }
    pub fn UnsubscribePublishedFile(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UnsubscribePublishedFile:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn UpdatePublishedFileSetChangeDescription(updateHandle: t.PublishedFileUpdateHandle_t, pchChangeDescription: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdatePublishedFileSetChangeDescription:\n\t- updateHandle = {any}\n\t- pchChangeDescription = {any}\n\n", .{ updateHandle, pchChangeDescription });
        return undefined;
    }
    pub fn GetPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetPublishedItemVoteDetails:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn UpdateUserPublishedItemVote(unPublishedFileId: t.PublishedFileId_t, bVoteUp: bool) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UpdateUserPublishedItemVote:\n\t- unPublishedFileId = {any}\n\t- bVoteUp = {any}\n\n", .{ unPublishedFileId, bVoteUp });
        return undefined;
    }
    pub fn GetUserPublishedItemVoteDetails(unPublishedFileId: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetUserPublishedItemVoteDetails:\n\t- unPublishedFileId = {any}\n\n", .{ unPublishedFileId });
        return undefined;
    }
    pub fn EnumerateUserSharedWorkshopFiles(steamId: t.CSteamID, unStartIndex: t.uint32, pRequiredTags: [*c]t.SteamParamStringArray_t, pExcludedTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumerateUserSharedWorkshopFiles:\n\t- steamId = {any}\n\t- unStartIndex = {any}\n\t- pRequiredTags = {any}\n\t- pExcludedTags = {any}\n\n", .{ steamId, unStartIndex, pRequiredTags, pExcludedTags });
        return undefined;
    }
    pub fn PublishVideo(eVideoProvider: t.EWorkshopVideoProvider, pchVideoAccount: [*c]const u8, pchVideoIdentifier: [*c]const u8, pchPreviewFile: [*c]const u8, nConsumerAppId: t.AppId_t, pchTitle: [*c]const u8, pchDescription: [*c]const u8, eVisibility: t.ERemoteStoragePublishedFileVisibility, pTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_PublishVideo:\n\t- eVideoProvider = {any}\n\t- pchVideoAccount = {any}\n\t- pchVideoIdentifier = {any}\n\t- pchPreviewFile = {any}\n\t- nConsumerAppId = {any}\n\t- pchTitle = {any}\n\t- pchDescription = {any}\n\t- eVisibility = {any}\n\t- pTags = {any}\n\n", .{ eVideoProvider, pchVideoAccount, pchVideoIdentifier, pchPreviewFile, nConsumerAppId, pchTitle, pchDescription, eVisibility, pTags });
        return undefined;
    }
    pub fn SetUserPublishedFileAction(unPublishedFileId: t.PublishedFileId_t, eAction: t.EWorkshopFileAction) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_SetUserPublishedFileAction:\n\t- unPublishedFileId = {any}\n\t- eAction = {any}\n\n", .{ unPublishedFileId, eAction });
        return undefined;
    }
    pub fn EnumeratePublishedFilesByUserAction(eAction: t.EWorkshopFileAction, unStartIndex: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumeratePublishedFilesByUserAction:\n\t- eAction = {any}\n\t- unStartIndex = {any}\n\n", .{ eAction, unStartIndex });
        return undefined;
    }
    pub fn EnumeratePublishedWorkshopFiles(eEnumerationType: t.EWorkshopEnumerationType, unStartIndex: t.uint32, unCount: t.uint32, unDays: t.uint32, pTags: [*c]t.SteamParamStringArray_t, pUserTags: [*c]t.SteamParamStringArray_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EnumeratePublishedWorkshopFiles:\n\t- eEnumerationType = {any}\n\t- unStartIndex = {any}\n\t- unCount = {any}\n\t- unDays = {any}\n\t- pTags = {any}\n\t- pUserTags = {any}\n\n", .{ eEnumerationType, unStartIndex, unCount, unDays, pTags, pUserTags });
        return undefined;
    }
    pub fn UGCDownloadToLocation(hContent: t.UGCHandle_t, pchLocation: [*c]const u8, unPriority: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_UGCDownloadToLocation:\n\t- hContent = {any}\n\t- pchLocation = {any}\n\t- unPriority = {any}\n\n", .{ hContent, pchLocation, unPriority });
        return undefined;
    }
    pub fn GetLocalFileChangeCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetLocalFileChangeCount\n\n", .{  });
        return undefined;
    }
    pub fn GetLocalFileChange(iFile: i32, pEChangeType: [*c]t.ERemoteStorageLocalFileChange, pEFilePathType: [*c]t.ERemoteStorageFilePathType) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_GetLocalFileChange:\n\t- iFile = {any}\n\t- pEChangeType = {any}\n\t- pEFilePathType = {any}\n\n", .{ iFile, pEChangeType, pEFilePathType });
        return undefined;
    }
    pub fn BeginFileWriteBatch() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_BeginFileWriteBatch\n\n", .{  });
        return undefined;
    }
    pub fn EndFileWriteBatch() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemoteStorage_EndFileWriteBatch\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamRemoteStorage_v016() callconv(.C) [*c]t.ISteamRemoteStorage {
    p("NOT IMPLEMENTED SteamAPI_SteamRemoteStorage_v016\n\n", .{  });
    return undefined;
}
pub const ISteamUserStats = struct {
    pub const version = "STEAMUSERSTATS_INTERFACE_VERSION012";
    pub fn RequestCurrentStats() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestCurrentStats\n\n", .{  });
        return undefined;
    }
    pub fn GetStat(pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetStatInt32:\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ pchName, pData });
        return undefined;
    }
    pub fn GetStat(pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetStatFloat:\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ pchName, pData });
        return undefined;
    }
    pub fn SetStat(pchName: [*c]const u8, nData: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetStatInt32:\n\t- pchName = {any}\n\t- nData = {any}\n\n", .{ pchName, nData });
        return undefined;
    }
    pub fn SetStat(pchName: [*c]const u8, fData: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetStatFloat:\n\t- pchName = {any}\n\t- fData = {any}\n\n", .{ pchName, fData });
        return undefined;
    }
    pub fn UpdateAvgRateStat(pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_UpdateAvgRateStat:\n\t- pchName = {any}\n\t- flCountThisSession = {any}\n\t- dSessionLength = {any}\n\n", .{ pchName, flCountThisSession, dSessionLength });
        return undefined;
    }
    pub fn GetAchievement(pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievement:\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ pchName, pbAchieved });
        return undefined;
    }
    pub fn SetAchievement(pchName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_SetAchievement:\n\t- pchName = {any}\n\n", .{ pchName });
        return undefined;
    }
    pub fn ClearAchievement(pchName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_ClearAchievement:\n\t- pchName = {any}\n\n", .{ pchName });
        return undefined;
    }
    pub fn GetAchievementAndUnlockTime(pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementAndUnlockTime:\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\t- punUnlockTime = {any}\n\n", .{ pchName, pbAchieved, punUnlockTime });
        return undefined;
    }
    pub fn StoreStats() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_StoreStats\n\n", .{  });
        return undefined;
    }
    pub fn GetAchievementIcon(pchName: [*c]const u8) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementIcon:\n\t- pchName = {any}\n\n", .{ pchName });
        return undefined;
    }
    pub fn GetAchievementDisplayAttribute(pchName: [*c]const u8, pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementDisplayAttribute:\n\t- pchName = {any}\n\t- pchKey = {any}\n\n", .{ pchName, pchKey });
        return undefined;
    }
    pub fn IndicateAchievementProgress(pchName: [*c]const u8, nCurProgress: t.uint32, nMaxProgress: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_IndicateAchievementProgress:\n\t- pchName = {any}\n\t- nCurProgress = {any}\n\t- nMaxProgress = {any}\n\n", .{ pchName, nCurProgress, nMaxProgress });
        return undefined;
    }
    pub fn GetNumAchievements() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNumAchievements\n\n", .{  });
        return undefined;
    }
    pub fn GetAchievementName(iAchievement: t.uint32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementName:\n\t- iAchievement = {any}\n\n", .{ iAchievement });
        return undefined;
    }
    pub fn RequestUserStats(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
        return undefined;
    }
    pub fn GetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
        return undefined;
    }
    pub fn GetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
        return undefined;
    }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ steamIDUser, pchName, pbAchieved });
        return undefined;
    }
    pub fn GetUserAchievementAndUnlockTime(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool, punUnlockTime: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetUserAchievementAndUnlockTime:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\t- punUnlockTime = {any}\n\n", .{ steamIDUser, pchName, pbAchieved, punUnlockTime });
        return undefined;
    }
    pub fn ResetAllStats(bAchievementsToo: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_ResetAllStats:\n\t- bAchievementsToo = {any}\n\n", .{ bAchievementsToo });
        return undefined;
    }
    pub fn FindOrCreateLeaderboard(pchLeaderboardName: [*c]const u8, eLeaderboardSortMethod: t.ELeaderboardSortMethod, eLeaderboardDisplayType: t.ELeaderboardDisplayType) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_FindOrCreateLeaderboard:\n\t- pchLeaderboardName = {any}\n\t- eLeaderboardSortMethod = {any}\n\t- eLeaderboardDisplayType = {any}\n\n", .{ pchLeaderboardName, eLeaderboardSortMethod, eLeaderboardDisplayType });
        return undefined;
    }
    pub fn FindLeaderboard(pchLeaderboardName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_FindLeaderboard:\n\t- pchLeaderboardName = {any}\n\n", .{ pchLeaderboardName });
        return undefined;
    }
    pub fn GetLeaderboardName(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardName:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
        return undefined;
    }
    pub fn GetLeaderboardEntryCount(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardEntryCount:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
        return undefined;
    }
    pub fn GetLeaderboardSortMethod(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardSortMethod {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardSortMethod:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
        return undefined;
    }
    pub fn GetLeaderboardDisplayType(hSteamLeaderboard: t.SteamLeaderboard_t) callconv(.C) t.ELeaderboardDisplayType {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetLeaderboardDisplayType:\n\t- hSteamLeaderboard = {any}\n\n", .{ hSteamLeaderboard });
        return undefined;
    }
    pub fn DownloadLeaderboardEntries(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardDataRequest: t.ELeaderboardDataRequest, nRangeStart: i32, nRangeEnd: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_DownloadLeaderboardEntries:\n\t- hSteamLeaderboard = {any}\n\t- eLeaderboardDataRequest = {any}\n\t- nRangeStart = {any}\n\t- nRangeEnd = {any}\n\n", .{ hSteamLeaderboard, eLeaderboardDataRequest, nRangeStart, nRangeEnd });
        return undefined;
    }
    pub fn DownloadLeaderboardEntriesForUsers(hSteamLeaderboard: t.SteamLeaderboard_t, prgUsers: [*c]t.CSteamID, cUsers: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_DownloadLeaderboardEntriesForUsers:\n\t- hSteamLeaderboard = {any}\n\t- prgUsers = {any}\n\t- cUsers = {any}\n\n", .{ hSteamLeaderboard, prgUsers, cUsers });
        return undefined;
    }
    pub fn GetDownloadedLeaderboardEntry(hSteamLeaderboardEntries: t.SteamLeaderboardEntries_t, index: i32, pLeaderboardEntry: [*c]t.LeaderboardEntry_t, pDetails: [*c]i32, cDetailsMax: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetDownloadedLeaderboardEntry:\n\t- hSteamLeaderboardEntries = {any}\n\t- index = {any}\n\t- pLeaderboardEntry = {any}\n\t- pDetails = {any}\n\t- cDetailsMax = {any}\n\n", .{ hSteamLeaderboardEntries, index, pLeaderboardEntry, pDetails, cDetailsMax });
        return undefined;
    }
    pub fn UploadLeaderboardScore(hSteamLeaderboard: t.SteamLeaderboard_t, eLeaderboardUploadScoreMethod: t.ELeaderboardUploadScoreMethod, nScore: i32, pScoreDetails: [*c]const i32, cScoreDetailsCount: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_UploadLeaderboardScore:\n\t- hSteamLeaderboard = {any}\n\t- eLeaderboardUploadScoreMethod = {any}\n\t- nScore = {any}\n\t- pScoreDetails = {any}\n\t- cScoreDetailsCount = {any}\n\n", .{ hSteamLeaderboard, eLeaderboardUploadScoreMethod, nScore, pScoreDetails, cScoreDetailsCount });
        return undefined;
    }
    pub fn AttachLeaderboardUGC(hSteamLeaderboard: t.SteamLeaderboard_t, hUGC: t.UGCHandle_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_AttachLeaderboardUGC:\n\t- hSteamLeaderboard = {any}\n\t- hUGC = {any}\n\n", .{ hSteamLeaderboard, hUGC });
        return undefined;
    }
    pub fn GetNumberOfCurrentPlayers() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNumberOfCurrentPlayers\n\n", .{  });
        return undefined;
    }
    pub fn RequestGlobalAchievementPercentages() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestGlobalAchievementPercentages\n\n", .{  });
        return undefined;
    }
    pub fn GetMostAchievedAchievementInfo(pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetMostAchievedAchievementInfo:\n\t- pchName = {any}\n\t- unNameBufLen = {any}\n\t- pflPercent = {any}\n\t- pbAchieved = {any}\n\n", .{ pchName, unNameBufLen, pflPercent, pbAchieved });
        return undefined;
    }
    pub fn GetNextMostAchievedAchievementInfo(iIteratorPrevious: i32, pchName: [*c]u8, unNameBufLen: t.uint32, pflPercent: [*c]f32, pbAchieved: [*c]bool) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetNextMostAchievedAchievementInfo:\n\t- iIteratorPrevious = {any}\n\t- pchName = {any}\n\t- unNameBufLen = {any}\n\t- pflPercent = {any}\n\t- pbAchieved = {any}\n\n", .{ iIteratorPrevious, pchName, unNameBufLen, pflPercent, pbAchieved });
        return undefined;
    }
    pub fn GetAchievementAchievedPercent(pchName: [*c]const u8, pflPercent: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementAchievedPercent:\n\t- pchName = {any}\n\t- pflPercent = {any}\n\n", .{ pchName, pflPercent });
        return undefined;
    }
    pub fn RequestGlobalStats(nHistoryDays: i32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_RequestGlobalStats:\n\t- nHistoryDays = {any}\n\n", .{ nHistoryDays });
        return undefined;
    }
    pub fn GetGlobalStat(pchStatName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatInt64:\n\t- pchStatName = {any}\n\t- pData = {any}\n\n", .{ pchStatName, pData });
        return undefined;
    }
    pub fn GetGlobalStat(pchStatName: [*c]const u8, pData: [*c]f64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatDouble:\n\t- pchStatName = {any}\n\t- pData = {any}\n\n", .{ pchStatName, pData });
        return undefined;
    }
    pub fn GetGlobalStatHistory(pchStatName: [*c]const u8, pData: [*c]i32, cubData: t.uint32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatHistoryInt64:\n\t- pchStatName = {any}\n\t- pData = {any}\n\t- cubData = {any}\n\n", .{ pchStatName, pData, cubData });
        return undefined;
    }
    pub fn GetGlobalStatHistory(pchStatName: [*c]const u8, pData: [*c]f64, cubData: t.uint32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetGlobalStatHistoryDouble:\n\t- pchStatName = {any}\n\t- pData = {any}\n\t- cubData = {any}\n\n", .{ pchStatName, pData, cubData });
        return undefined;
    }
    pub fn GetAchievementProgressLimits(pchName: [*c]const u8, pnMinProgress: [*c]i32, pnMaxProgress: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementProgressLimitsInt32:\n\t- pchName = {any}\n\t- pnMinProgress = {any}\n\t- pnMaxProgress = {any}\n\n", .{ pchName, pnMinProgress, pnMaxProgress });
        return undefined;
    }
    pub fn GetAchievementProgressLimits(pchName: [*c]const u8, pfMinProgress: [*c]f32, pfMaxProgress: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUserStats_GetAchievementProgressLimitsFloat:\n\t- pchName = {any}\n\t- pfMinProgress = {any}\n\t- pfMaxProgress = {any}\n\n", .{ pchName, pfMinProgress, pfMaxProgress });
        return undefined;
    }
};
pub fn SteamAPI_SteamUserStats_v012() callconv(.C) [*c]t.ISteamUserStats {
    p("NOT IMPLEMENTED SteamAPI_SteamUserStats_v012\n\n", .{  });
    return undefined;
}
pub const ISteamApps = struct {
    pub const version = "STEAMAPPS_INTERFACE_VERSION008";
    pub fn BIsSubscribed() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribed\n\n", .{  });
        return undefined;
    }
    pub fn BIsLowViolence() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsLowViolence\n\n", .{  });
        return undefined;
    }
    pub fn BIsCybercafe() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsCybercafe\n\n", .{  });
        return undefined;
    }
    pub fn BIsVACBanned() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsVACBanned\n\n", .{  });
        return undefined;
    }
    pub fn GetCurrentGameLanguage() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetCurrentGameLanguage\n\n", .{  });
        return undefined;
    }
    pub fn GetAvailableGameLanguages() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAvailableGameLanguages\n\n", .{  });
        return undefined;
    }
    pub fn BIsSubscribedApp(appID: t.AppId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedApp:\n\t- appID = {any}\n\n", .{ appID });
        return undefined;
    }
    pub fn BIsDlcInstalled(appID: t.AppId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsDlcInstalled:\n\t- appID = {any}\n\n", .{ appID });
        return undefined;
    }
    pub fn GetEarliestPurchaseUnixTime(nAppID: t.AppId_t) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetEarliestPurchaseUnixTime:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn BIsSubscribedFromFreeWeekend() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedFromFreeWeekend\n\n", .{  });
        return undefined;
    }
    pub fn GetDLCCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetDLCCount\n\n", .{  });
        return undefined;
    }
    pub fn BGetDLCDataByIndex(iDLC: i32, pAppID: [*c]t.AppId_t, pbAvailable: [*c]bool, pchName: [*c]u8, cchNameBufferSize: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BGetDLCDataByIndex:\n\t- iDLC = {any}\n\t- pAppID = {any}\n\t- pbAvailable = {any}\n\t- pchName = {any}\n\t- cchNameBufferSize = {any}\n\n", .{ iDLC, pAppID, pbAvailable, pchName, cchNameBufferSize });
        return undefined;
    }
    pub fn InstallDLC(nAppID: t.AppId_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_InstallDLC:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn UninstallDLC(nAppID: t.AppId_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_UninstallDLC:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn RequestAppProofOfPurchaseKey(nAppID: t.AppId_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_RequestAppProofOfPurchaseKey:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn GetCurrentBetaName(pchName: [*c]u8, cchNameBufferSize: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetCurrentBetaName:\n\t- pchName = {any}\n\t- cchNameBufferSize = {any}\n\n", .{ pchName, cchNameBufferSize });
        return undefined;
    }
    pub fn MarkContentCorrupt(bMissingFilesOnly: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_MarkContentCorrupt:\n\t- bMissingFilesOnly = {any}\n\n", .{ bMissingFilesOnly });
        return undefined;
    }
    pub fn GetInstalledDepots(appID: t.AppId_t, pvecDepots: [*c]t.DepotId_t, cMaxDepots: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetInstalledDepots:\n\t- appID = {any}\n\t- pvecDepots = {any}\n\t- cMaxDepots = {any}\n\n", .{ appID, pvecDepots, cMaxDepots });
        return undefined;
    }
    pub fn GetAppInstallDir(appID: t.AppId_t, pchFolder: [*c]u8, cchFolderBufferSize: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppInstallDir:\n\t- appID = {any}\n\t- pchFolder = {any}\n\t- cchFolderBufferSize = {any}\n\n", .{ appID, pchFolder, cchFolderBufferSize });
        return undefined;
    }
    pub fn BIsAppInstalled(appID: t.AppId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsAppInstalled:\n\t- appID = {any}\n\n", .{ appID });
        return undefined;
    }
    pub fn GetAppOwner() callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppOwner\n\n", .{  });
        return undefined;
    }
    pub fn GetLaunchQueryParam(pchKey: [*c]const u8) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetLaunchQueryParam:\n\t- pchKey = {any}\n\n", .{ pchKey });
        return undefined;
    }
    pub fn GetDlcDownloadProgress(nAppID: t.AppId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetDlcDownloadProgress:\n\t- nAppID = {any}\n\t- punBytesDownloaded = {any}\n\t- punBytesTotal = {any}\n\n", .{ nAppID, punBytesDownloaded, punBytesTotal });
        return undefined;
    }
    pub fn GetAppBuildId() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetAppBuildId\n\n", .{  });
        return undefined;
    }
    pub fn RequestAllProofOfPurchaseKeys() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_RequestAllProofOfPurchaseKeys\n\n", .{  });
        return undefined;
    }
    pub fn GetFileDetails(pszFileName: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetFileDetails:\n\t- pszFileName = {any}\n\n", .{ pszFileName });
        return undefined;
    }
    pub fn GetLaunchCommandLine(pszCommandLine: [*c]u8, cubCommandLine: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_GetLaunchCommandLine:\n\t- pszCommandLine = {any}\n\t- cubCommandLine = {any}\n\n", .{ pszCommandLine, cubCommandLine });
        return undefined;
    }
    pub fn BIsSubscribedFromFamilySharing() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsSubscribedFromFamilySharing\n\n", .{  });
        return undefined;
    }
    pub fn BIsTimedTrial(punSecondsAllowed: [*c]t.uint32, punSecondsPlayed: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamApps_BIsTimedTrial:\n\t- punSecondsAllowed = {any}\n\t- punSecondsPlayed = {any}\n\n", .{ punSecondsAllowed, punSecondsPlayed });
        return undefined;
    }
};
pub fn SteamAPI_SteamApps_v008() callconv(.C) [*c]t.ISteamApps {
    p("NOT IMPLEMENTED SteamAPI_SteamApps_v008\n\n", .{  });
    return undefined;
}
pub const ISteamNetworking = struct {
    pub const version = "SteamNetworking006";
    pub fn SendP2PPacket(steamIDRemote: t.CSteamID, pubData: [*c]const anyopaque, cubData: t.uint32, eP2PSendType: t.EP2PSend, nChannel: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_SendP2PPacket:\n\t- steamIDRemote = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- eP2PSendType = {any}\n\t- nChannel = {any}\n\n", .{ steamIDRemote, pubData, cubData, eP2PSendType, nChannel });
        return undefined;
    }
    pub fn IsP2PPacketAvailable(pcubMsgSize: [*c]t.uint32, nChannel: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsP2PPacketAvailable:\n\t- pcubMsgSize = {any}\n\t- nChannel = {any}\n\n", .{ pcubMsgSize, nChannel });
        return undefined;
    }
    pub fn ReadP2PPacket(pubDest: [*c]anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, psteamIDRemote: [*c]t.CSteamID, nChannel: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_ReadP2PPacket:\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\t- psteamIDRemote = {any}\n\t- nChannel = {any}\n\n", .{ pubDest, cubDest, pcubMsgSize, psteamIDRemote, nChannel });
        return undefined;
    }
    pub fn AcceptP2PSessionWithUser(steamIDRemote: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_AcceptP2PSessionWithUser:\n\t- steamIDRemote = {any}\n\n", .{ steamIDRemote });
        return undefined;
    }
    pub fn CloseP2PSessionWithUser(steamIDRemote: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CloseP2PSessionWithUser:\n\t- steamIDRemote = {any}\n\n", .{ steamIDRemote });
        return undefined;
    }
    pub fn CloseP2PChannelWithUser(steamIDRemote: t.CSteamID, nChannel: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CloseP2PChannelWithUser:\n\t- steamIDRemote = {any}\n\t- nChannel = {any}\n\n", .{ steamIDRemote, nChannel });
        return undefined;
    }
    pub fn GetP2PSessionState(steamIDRemote: t.CSteamID, pConnectionState: [*c]t.P2PSessionState_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetP2PSessionState:\n\t- steamIDRemote = {any}\n\t- pConnectionState = {any}\n\n", .{ steamIDRemote, pConnectionState });
        return undefined;
    }
    pub fn AllowP2PPacketRelay(bAllow: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_AllowP2PPacketRelay:\n\t- bAllow = {any}\n\n", .{ bAllow });
        return undefined;
    }
    pub fn CreateListenSocket(nVirtualP2PPort: i32, nIP: t.SteamIPAddress_t, nPort: t.uint16, bAllowUseOfPacketRelay: bool) callconv(.C) t.SNetListenSocket_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateListenSocket:\n\t- nVirtualP2PPort = {any}\n\t- nIP = {any}\n\t- nPort = {any}\n\t- bAllowUseOfPacketRelay = {any}\n\n", .{ nVirtualP2PPort, nIP, nPort, bAllowUseOfPacketRelay });
        return undefined;
    }
    pub fn CreateP2PConnectionSocket(steamIDTarget: t.CSteamID, nVirtualPort: i32, nTimeoutSec: i32, bAllowUseOfPacketRelay: bool) callconv(.C) t.SNetSocket_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateP2PConnectionSocket:\n\t- steamIDTarget = {any}\n\t- nVirtualPort = {any}\n\t- nTimeoutSec = {any}\n\t- bAllowUseOfPacketRelay = {any}\n\n", .{ steamIDTarget, nVirtualPort, nTimeoutSec, bAllowUseOfPacketRelay });
        return undefined;
    }
    pub fn CreateConnectionSocket(nIP: t.SteamIPAddress_t, nPort: t.uint16, nTimeoutSec: i32) callconv(.C) t.SNetSocket_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_CreateConnectionSocket:\n\t- nIP = {any}\n\t- nPort = {any}\n\t- nTimeoutSec = {any}\n\n", .{ nIP, nPort, nTimeoutSec });
        return undefined;
    }
    pub fn DestroySocket(hSocket: t.SNetSocket_t, bNotifyRemoteEnd: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_DestroySocket:\n\t- hSocket = {any}\n\t- bNotifyRemoteEnd = {any}\n\n", .{ hSocket, bNotifyRemoteEnd });
        return undefined;
    }
    pub fn DestroyListenSocket(hSocket: t.SNetListenSocket_t, bNotifyRemoteEnd: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_DestroyListenSocket:\n\t- hSocket = {any}\n\t- bNotifyRemoteEnd = {any}\n\n", .{ hSocket, bNotifyRemoteEnd });
        return undefined;
    }
    pub fn SendDataOnSocket(hSocket: t.SNetSocket_t, pubData: [*c]anyopaque, cubData: t.uint32, bReliable: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_SendDataOnSocket:\n\t- hSocket = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- bReliable = {any}\n\n", .{ hSocket, pubData, cubData, bReliable });
        return undefined;
    }
    pub fn IsDataAvailableOnSocket(hSocket: t.SNetSocket_t, pcubMsgSize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsDataAvailableOnSocket:\n\t- hSocket = {any}\n\t- pcubMsgSize = {any}\n\n", .{ hSocket, pcubMsgSize });
        return undefined;
    }
    pub fn RetrieveDataFromSocket(hSocket: t.SNetSocket_t, pubDest: [*c]anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_RetrieveDataFromSocket:\n\t- hSocket = {any}\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\n", .{ hSocket, pubDest, cubDest, pcubMsgSize });
        return undefined;
    }
    pub fn IsDataAvailable(hListenSocket: t.SNetListenSocket_t, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_IsDataAvailable:\n\t- hListenSocket = {any}\n\t- pcubMsgSize = {any}\n\t- phSocket = {any}\n\n", .{ hListenSocket, pcubMsgSize, phSocket });
        return undefined;
    }
    pub fn RetrieveData(hListenSocket: t.SNetListenSocket_t, pubDest: [*c]anyopaque, cubDest: t.uint32, pcubMsgSize: [*c]t.uint32, phSocket: [*c]t.SNetSocket_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_RetrieveData:\n\t- hListenSocket = {any}\n\t- pubDest = {any}\n\t- cubDest = {any}\n\t- pcubMsgSize = {any}\n\t- phSocket = {any}\n\n", .{ hListenSocket, pubDest, cubDest, pcubMsgSize, phSocket });
        return undefined;
    }
    pub fn GetSocketInfo(hSocket: t.SNetSocket_t, pSteamIDRemote: [*c]t.CSteamID, peSocketStatus: [*c]i32, punIPRemote: [*c]t.SteamIPAddress_t, punPortRemote: [*c]t.uint16) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetSocketInfo:\n\t- hSocket = {any}\n\t- pSteamIDRemote = {any}\n\t- peSocketStatus = {any}\n\t- punIPRemote = {any}\n\t- punPortRemote = {any}\n\n", .{ hSocket, pSteamIDRemote, peSocketStatus, punIPRemote, punPortRemote });
        return undefined;
    }
    pub fn GetListenSocketInfo(hListenSocket: t.SNetListenSocket_t, pnIP: [*c]t.SteamIPAddress_t, pnPort: [*c]t.uint16) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetListenSocketInfo:\n\t- hListenSocket = {any}\n\t- pnIP = {any}\n\t- pnPort = {any}\n\n", .{ hListenSocket, pnIP, pnPort });
        return undefined;
    }
    pub fn GetSocketConnectionType(hSocket: t.SNetSocket_t) callconv(.C) t.ESNetSocketConnectionType {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetSocketConnectionType:\n\t- hSocket = {any}\n\n", .{ hSocket });
        return undefined;
    }
    pub fn GetMaxPacketSize(hSocket: t.SNetSocket_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworking_GetMaxPacketSize:\n\t- hSocket = {any}\n\n", .{ hSocket });
        return undefined;
    }
};
pub fn SteamAPI_SteamNetworking_v006() callconv(.C) [*c]t.ISteamNetworking {
    p("NOT IMPLEMENTED SteamAPI_SteamNetworking_v006\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerNetworking_v006() callconv(.C) [*c]t.ISteamNetworking {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworking_v006\n\n", .{  });
    return undefined;
}
pub const ISteamScreenshots = struct {
    pub const version = "STEAMSCREENSHOTS_INTERFACE_VERSION003";
    pub fn WriteScreenshot(pubRGB: [*c]anyopaque, cubRGB: t.uint32, nWidth: i32, nHeight: i32) callconv(.C) t.ScreenshotHandle {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_WriteScreenshot:\n\t- pubRGB = {any}\n\t- cubRGB = {any}\n\t- nWidth = {any}\n\t- nHeight = {any}\n\n", .{ pubRGB, cubRGB, nWidth, nHeight });
        return undefined;
    }
    pub fn AddScreenshotToLibrary(pchFilename: [*c]const u8, pchThumbnailFilename: [*c]const u8, nWidth: i32, nHeight: i32) callconv(.C) t.ScreenshotHandle {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_AddScreenshotToLibrary:\n\t- pchFilename = {any}\n\t- pchThumbnailFilename = {any}\n\t- nWidth = {any}\n\t- nHeight = {any}\n\n", .{ pchFilename, pchThumbnailFilename, nWidth, nHeight });
        return undefined;
    }
    pub fn TriggerScreenshot() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TriggerScreenshot\n\n", .{  });
        return undefined;
    }
    pub fn HookScreenshots(bHook: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_HookScreenshots:\n\t- bHook = {any}\n\n", .{ bHook });
        return undefined;
    }
    pub fn SetLocation(hScreenshot: t.ScreenshotHandle, pchLocation: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_SetLocation:\n\t- hScreenshot = {any}\n\t- pchLocation = {any}\n\n", .{ hScreenshot, pchLocation });
        return undefined;
    }
    pub fn TagUser(hScreenshot: t.ScreenshotHandle, steamID: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TagUser:\n\t- hScreenshot = {any}\n\t- steamID = {any}\n\n", .{ hScreenshot, steamID });
        return undefined;
    }
    pub fn TagPublishedFile(hScreenshot: t.ScreenshotHandle, unPublishedFileID: t.PublishedFileId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_TagPublishedFile:\n\t- hScreenshot = {any}\n\t- unPublishedFileID = {any}\n\n", .{ hScreenshot, unPublishedFileID });
        return undefined;
    }
    pub fn IsScreenshotsHooked() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_IsScreenshotsHooked\n\n", .{  });
        return undefined;
    }
    pub fn AddVRScreenshotToLibrary(eType: t.EVRScreenshotType, pchFilename: [*c]const u8, pchVRFilename: [*c]const u8) callconv(.C) t.ScreenshotHandle {
        p("NOT IMPLEMENTED SteamAPI_ISteamScreenshots_AddVRScreenshotToLibrary:\n\t- eType = {any}\n\t- pchFilename = {any}\n\t- pchVRFilename = {any}\n\n", .{ eType, pchFilename, pchVRFilename });
        return undefined;
    }
};
pub fn SteamAPI_SteamScreenshots_v003() callconv(.C) [*c]t.ISteamScreenshots {
    p("NOT IMPLEMENTED SteamAPI_SteamScreenshots_v003\n\n", .{  });
    return undefined;
}
pub const ISteamMusic = struct {
    pub const version = "STEAMMUSIC_INTERFACE_VERSION001";
    pub fn BIsEnabled() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_BIsEnabled\n\n", .{  });
        return undefined;
    }
    pub fn BIsPlaying() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_BIsPlaying\n\n", .{  });
        return undefined;
    }
    pub fn GetPlaybackStatus() callconv(.C) t.AudioPlayback_Status {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_GetPlaybackStatus\n\n", .{  });
        return undefined;
    }
    pub fn Play() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_Play\n\n", .{  });
        return undefined;
    }
    pub fn Pause() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_Pause\n\n", .{  });
        return undefined;
    }
    pub fn PlayPrevious() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_PlayPrevious\n\n", .{  });
        return undefined;
    }
    pub fn PlayNext() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_PlayNext\n\n", .{  });
        return undefined;
    }
    pub fn SetVolume(flVolume: f32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_SetVolume:\n\t- flVolume = {any}\n\n", .{ flVolume });
        return undefined;
    }
    pub fn GetVolume() callconv(.C) f32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusic_GetVolume\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamMusic_v001() callconv(.C) [*c]t.ISteamMusic {
    p("NOT IMPLEMENTED SteamAPI_SteamMusic_v001\n\n", .{  });
    return undefined;
}
pub const ISteamMusicRemote = struct {
    pub const version = "STEAMMUSICREMOTE_INTERFACE_VERSION001";
    pub fn RegisterSteamMusicRemote(pchName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_RegisterSteamMusicRemote:\n\t- pchName = {any}\n\n", .{ pchName });
        return undefined;
    }
    pub fn DeregisterSteamMusicRemote() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_DeregisterSteamMusicRemote\n\n", .{  });
        return undefined;
    }
    pub fn BIsCurrentMusicRemote() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_BIsCurrentMusicRemote\n\n", .{  });
        return undefined;
    }
    pub fn BActivationSuccess(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_BActivationSuccess:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn SetDisplayName(pchDisplayName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetDisplayName:\n\t- pchDisplayName = {any}\n\n", .{ pchDisplayName });
        return undefined;
    }
    pub fn SetPNGIcon_64x64(pvBuffer: [*c]anyopaque, cbBufferLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetPNGIcon_64x64:\n\t- pvBuffer = {any}\n\t- cbBufferLength = {any}\n\n", .{ pvBuffer, cbBufferLength });
        return undefined;
    }
    pub fn EnablePlayPrevious(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlayPrevious:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn EnablePlayNext(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlayNext:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn EnableShuffled(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableShuffled:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn EnableLooped(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableLooped:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn EnableQueue(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnableQueue:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn EnablePlaylists(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_EnablePlaylists:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn UpdatePlaybackStatus(nStatus: t.AudioPlayback_Status) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdatePlaybackStatus:\n\t- nStatus = {any}\n\n", .{ nStatus });
        return undefined;
    }
    pub fn UpdateShuffled(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateShuffled:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn UpdateLooped(bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateLooped:\n\t- bValue = {any}\n\n", .{ bValue });
        return undefined;
    }
    pub fn UpdateVolume(flValue: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateVolume:\n\t- flValue = {any}\n\n", .{ flValue });
        return undefined;
    }
    pub fn CurrentEntryWillChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryWillChange\n\n", .{  });
        return undefined;
    }
    pub fn CurrentEntryIsAvailable(bAvailable: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryIsAvailable:\n\t- bAvailable = {any}\n\n", .{ bAvailable });
        return undefined;
    }
    pub fn UpdateCurrentEntryText(pchText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryText:\n\t- pchText = {any}\n\n", .{ pchText });
        return undefined;
    }
    pub fn UpdateCurrentEntryElapsedSeconds(nValue: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryElapsedSeconds:\n\t- nValue = {any}\n\n", .{ nValue });
        return undefined;
    }
    pub fn UpdateCurrentEntryCoverArt(pvBuffer: [*c]anyopaque, cbBufferLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_UpdateCurrentEntryCoverArt:\n\t- pvBuffer = {any}\n\t- cbBufferLength = {any}\n\n", .{ pvBuffer, cbBufferLength });
        return undefined;
    }
    pub fn CurrentEntryDidChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_CurrentEntryDidChange\n\n", .{  });
        return undefined;
    }
    pub fn QueueWillChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_QueueWillChange\n\n", .{  });
        return undefined;
    }
    pub fn ResetQueueEntries() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_ResetQueueEntries\n\n", .{  });
        return undefined;
    }
    pub fn SetQueueEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetQueueEntry:\n\t- nID = {any}\n\t- nPosition = {any}\n\t- pchEntryText = {any}\n\n", .{ nID, nPosition, pchEntryText });
        return undefined;
    }
    pub fn SetCurrentQueueEntry(nID: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetCurrentQueueEntry:\n\t- nID = {any}\n\n", .{ nID });
        return undefined;
    }
    pub fn QueueDidChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_QueueDidChange\n\n", .{  });
        return undefined;
    }
    pub fn PlaylistWillChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_PlaylistWillChange\n\n", .{  });
        return undefined;
    }
    pub fn ResetPlaylistEntries() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_ResetPlaylistEntries\n\n", .{  });
        return undefined;
    }
    pub fn SetPlaylistEntry(nID: i32, nPosition: i32, pchEntryText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetPlaylistEntry:\n\t- nID = {any}\n\t- nPosition = {any}\n\t- pchEntryText = {any}\n\n", .{ nID, nPosition, pchEntryText });
        return undefined;
    }
    pub fn SetCurrentPlaylistEntry(nID: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_SetCurrentPlaylistEntry:\n\t- nID = {any}\n\n", .{ nID });
        return undefined;
    }
    pub fn PlaylistDidChange() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamMusicRemote_PlaylistDidChange\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamMusicRemote_v001() callconv(.C) [*c]t.ISteamMusicRemote {
    p("NOT IMPLEMENTED SteamAPI_SteamMusicRemote_v001\n\n", .{  });
    return undefined;
}
pub const ISteamHTTP = struct {
    pub const version = "STEAMHTTP_INTERFACE_VERSION003";
    pub fn CreateHTTPRequest(eHTTPRequestMethod: t.EHTTPMethod, pchAbsoluteURL: [*c]const u8) callconv(.C) t.HTTPRequestHandle {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_CreateHTTPRequest:\n\t- eHTTPRequestMethod = {any}\n\t- pchAbsoluteURL = {any}\n\n", .{ eHTTPRequestMethod, pchAbsoluteURL });
        return undefined;
    }
    pub fn SetHTTPRequestContextValue(hRequest: t.HTTPRequestHandle, ulContextValue: t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestContextValue:\n\t- hRequest = {any}\n\t- ulContextValue = {any}\n\n", .{ hRequest, ulContextValue });
        return undefined;
    }
    pub fn SetHTTPRequestNetworkActivityTimeout(hRequest: t.HTTPRequestHandle, unTimeoutSeconds: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestNetworkActivityTimeout:\n\t- hRequest = {any}\n\t- unTimeoutSeconds = {any}\n\n", .{ hRequest, unTimeoutSeconds });
        return undefined;
    }
    pub fn SetHTTPRequestHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pchHeaderValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestHeaderValue:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- pchHeaderValue = {any}\n\n", .{ hRequest, pchHeaderName, pchHeaderValue });
        return undefined;
    }
    pub fn SetHTTPRequestGetOrPostParameter(hRequest: t.HTTPRequestHandle, pchParamName: [*c]const u8, pchParamValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestGetOrPostParameter:\n\t- hRequest = {any}\n\t- pchParamName = {any}\n\t- pchParamValue = {any}\n\n", .{ hRequest, pchParamName, pchParamValue });
        return undefined;
    }
    pub fn SendHTTPRequest(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SendHTTPRequest:\n\t- hRequest = {any}\n\t- pCallHandle = {any}\n\n", .{ hRequest, pCallHandle });
        return undefined;
    }
    pub fn SendHTTPRequestAndStreamResponse(hRequest: t.HTTPRequestHandle, pCallHandle: [*c]t.SteamAPICall_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SendHTTPRequestAndStreamResponse:\n\t- hRequest = {any}\n\t- pCallHandle = {any}\n\n", .{ hRequest, pCallHandle });
        return undefined;
    }
    pub fn DeferHTTPRequest(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_DeferHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn PrioritizeHTTPRequest(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_PrioritizeHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn GetHTTPResponseHeaderSize(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, unResponseHeaderSize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseHeaderSize:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- unResponseHeaderSize = {any}\n\n", .{ hRequest, pchHeaderName, unResponseHeaderSize });
        return undefined;
    }
    pub fn GetHTTPResponseHeaderValue(hRequest: t.HTTPRequestHandle, pchHeaderName: [*c]const u8, pHeaderValueBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseHeaderValue:\n\t- hRequest = {any}\n\t- pchHeaderName = {any}\n\t- pHeaderValueBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, pchHeaderName, pHeaderValueBuffer, unBufferSize });
        return undefined;
    }
    pub fn GetHTTPResponseBodySize(hRequest: t.HTTPRequestHandle, unBodySize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseBodySize:\n\t- hRequest = {any}\n\t- unBodySize = {any}\n\n", .{ hRequest, unBodySize });
        return undefined;
    }
    pub fn GetHTTPResponseBodyData(hRequest: t.HTTPRequestHandle, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPResponseBodyData:\n\t- hRequest = {any}\n\t- pBodyDataBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, pBodyDataBuffer, unBufferSize });
        return undefined;
    }
    pub fn GetHTTPStreamingResponseBodyData(hRequest: t.HTTPRequestHandle, cOffset: t.uint32, pBodyDataBuffer: [*c]t.uint8, unBufferSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPStreamingResponseBodyData:\n\t- hRequest = {any}\n\t- cOffset = {any}\n\t- pBodyDataBuffer = {any}\n\t- unBufferSize = {any}\n\n", .{ hRequest, cOffset, pBodyDataBuffer, unBufferSize });
        return undefined;
    }
    pub fn ReleaseHTTPRequest(hRequest: t.HTTPRequestHandle) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_ReleaseHTTPRequest:\n\t- hRequest = {any}\n\n", .{ hRequest });
        return undefined;
    }
    pub fn GetHTTPDownloadProgressPct(hRequest: t.HTTPRequestHandle, pflPercentOut: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPDownloadProgressPct:\n\t- hRequest = {any}\n\t- pflPercentOut = {any}\n\n", .{ hRequest, pflPercentOut });
        return undefined;
    }
    pub fn SetHTTPRequestRawPostBody(hRequest: t.HTTPRequestHandle, pchContentType: [*c]const u8, pubBody: [*c]t.uint8, unBodyLen: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestRawPostBody:\n\t- hRequest = {any}\n\t- pchContentType = {any}\n\t- pubBody = {any}\n\t- unBodyLen = {any}\n\n", .{ hRequest, pchContentType, pubBody, unBodyLen });
        return undefined;
    }
    pub fn CreateCookieContainer(bAllowResponsesToModify: bool) callconv(.C) t.HTTPCookieContainerHandle {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_CreateCookieContainer:\n\t- bAllowResponsesToModify = {any}\n\n", .{ bAllowResponsesToModify });
        return undefined;
    }
    pub fn ReleaseCookieContainer(hCookieContainer: t.HTTPCookieContainerHandle) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_ReleaseCookieContainer:\n\t- hCookieContainer = {any}\n\n", .{ hCookieContainer });
        return undefined;
    }
    pub fn SetCookie(hCookieContainer: t.HTTPCookieContainerHandle, pchHost: [*c]const u8, pchUrl: [*c]const u8, pchCookie: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetCookie:\n\t- hCookieContainer = {any}\n\t- pchHost = {any}\n\t- pchUrl = {any}\n\t- pchCookie = {any}\n\n", .{ hCookieContainer, pchHost, pchUrl, pchCookie });
        return undefined;
    }
    pub fn SetHTTPRequestCookieContainer(hRequest: t.HTTPRequestHandle, hCookieContainer: t.HTTPCookieContainerHandle) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestCookieContainer:\n\t- hRequest = {any}\n\t- hCookieContainer = {any}\n\n", .{ hRequest, hCookieContainer });
        return undefined;
    }
    pub fn SetHTTPRequestUserAgentInfo(hRequest: t.HTTPRequestHandle, pchUserAgentInfo: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestUserAgentInfo:\n\t- hRequest = {any}\n\t- pchUserAgentInfo = {any}\n\n", .{ hRequest, pchUserAgentInfo });
        return undefined;
    }
    pub fn SetHTTPRequestRequiresVerifiedCertificate(hRequest: t.HTTPRequestHandle, bRequireVerifiedCertificate: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestRequiresVerifiedCertificate:\n\t- hRequest = {any}\n\t- bRequireVerifiedCertificate = {any}\n\n", .{ hRequest, bRequireVerifiedCertificate });
        return undefined;
    }
    pub fn SetHTTPRequestAbsoluteTimeoutMS(hRequest: t.HTTPRequestHandle, unMilliseconds: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_SetHTTPRequestAbsoluteTimeoutMS:\n\t- hRequest = {any}\n\t- unMilliseconds = {any}\n\n", .{ hRequest, unMilliseconds });
        return undefined;
    }
    pub fn GetHTTPRequestWasTimedOut(hRequest: t.HTTPRequestHandle, pbWasTimedOut: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTTP_GetHTTPRequestWasTimedOut:\n\t- hRequest = {any}\n\t- pbWasTimedOut = {any}\n\n", .{ hRequest, pbWasTimedOut });
        return undefined;
    }
};
pub fn SteamAPI_SteamHTTP_v003() callconv(.C) [*c]t.ISteamHTTP {
    p("NOT IMPLEMENTED SteamAPI_SteamHTTP_v003\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerHTTP_v003() callconv(.C) [*c]t.ISteamHTTP {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerHTTP_v003\n\n", .{  });
    return undefined;
}
pub const ISteamInput = struct {
    pub const version = "SteamInput006";
    pub fn Init(bExplicitlyCallRunFrame: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_Init:\n\t- bExplicitlyCallRunFrame = {any}\n\n", .{ bExplicitlyCallRunFrame });
        return undefined;
    }
    pub fn Shutdown() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_Shutdown\n\n", .{  });
        return undefined;
    }
    pub fn SetInputActionManifestFilePath(pchInputActionManifestAbsolutePath: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_SetInputActionManifestFilePath:\n\t- pchInputActionManifestAbsolutePath = {any}\n\n", .{ pchInputActionManifestAbsolutePath });
        return undefined;
    }
    pub fn RunFrame(bReservedValue: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_RunFrame:\n\t- bReservedValue = {any}\n\n", .{ bReservedValue });
        return undefined;
    }
    pub fn BWaitForData(bWaitForever: bool, unTimeout: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_BWaitForData:\n\t- bWaitForever = {any}\n\t- unTimeout = {any}\n\n", .{ bWaitForever, unTimeout });
        return undefined;
    }
    pub fn BNewDataAvailable() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_BNewDataAvailable\n\n", .{  });
        return undefined;
    }
    pub fn GetConnectedControllers(handlesOut: [*c]t.InputHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetConnectedControllers:\n\t- handlesOut = {any}\n\n", .{ handlesOut });
        return undefined;
    }
    pub fn EnableDeviceCallbacks() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_EnableDeviceCallbacks\n\n", .{  });
        return undefined;
    }
    pub fn EnableActionEventCallbacks(pCallback: t.SteamInputActionEventCallbackPointer) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_EnableActionEventCallbacks:\n\t- pCallback = {any}\n\n", .{ pCallback });
        return undefined;
    }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8) callconv(.C) t.InputActionSetHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActionSetHandle:\n\t- pszActionSetName = {any}\n\n", .{ pszActionSetName });
        return undefined;
    }
    pub fn ActivateActionSet(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_ActivateActionSet:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\n", .{ inputHandle, actionSetHandle });
        return undefined;
    }
    pub fn GetCurrentActionSet(inputHandle: t.InputHandle_t) callconv(.C) t.InputActionSetHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetCurrentActionSet:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn ActivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_ActivateActionSetLayer:\n\t- inputHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ inputHandle, actionSetLayerHandle });
        return undefined;
    }
    pub fn DeactivateActionSetLayer(inputHandle: t.InputHandle_t, actionSetLayerHandle: t.InputActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_DeactivateActionSetLayer:\n\t- inputHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ inputHandle, actionSetLayerHandle });
        return undefined;
    }
    pub fn DeactivateAllActionSetLayers(inputHandle: t.InputHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_DeactivateAllActionSetLayers:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn GetActiveActionSetLayers(inputHandle: t.InputHandle_t, handlesOut: [*c]t.InputActionSetHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActiveActionSetLayers:\n\t- inputHandle = {any}\n\t- handlesOut = {any}\n\n", .{ inputHandle, handlesOut });
        return undefined;
    }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8) callconv(.C) t.InputDigitalActionHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
        return undefined;
    }
    pub fn GetDigitalActionData(inputHandle: t.InputHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionData:\n\t- inputHandle = {any}\n\t- digitalActionHandle = {any}\n\n", .{ inputHandle, digitalActionHandle });
        return undefined;
    }
    pub fn GetDigitalActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, digitalActionHandle: t.InputDigitalActionHandle_t, originsOut: [*c]t.EInputActionOrigin) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDigitalActionOrigins:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\t- digitalActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ inputHandle, actionSetHandle, digitalActionHandle, originsOut });
        return undefined;
    }
    pub fn GetStringForDigitalActionName(eActionHandle: t.InputDigitalActionHandle_t) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForDigitalActionName:\n\t- eActionHandle = {any}\n\n", .{ eActionHandle });
        return undefined;
    }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8) callconv(.C) t.InputAnalogActionHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
        return undefined;
    }
    pub fn GetAnalogActionData(inputHandle: t.InputHandle_t, analogActionHandle: t.InputAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionData:\n\t- inputHandle = {any}\n\t- analogActionHandle = {any}\n\n", .{ inputHandle, analogActionHandle });
        return undefined;
    }
    pub fn GetAnalogActionOrigins(inputHandle: t.InputHandle_t, actionSetHandle: t.InputActionSetHandle_t, analogActionHandle: t.InputAnalogActionHandle_t, originsOut: [*c]t.EInputActionOrigin) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetAnalogActionOrigins:\n\t- inputHandle = {any}\n\t- actionSetHandle = {any}\n\t- analogActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ inputHandle, actionSetHandle, analogActionHandle, originsOut });
        return undefined;
    }
    pub fn GetGlyphPNGForActionOrigin(eOrigin: t.EInputActionOrigin, eSize: t.ESteamInputGlyphSize, unFlags: t.uint32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphPNGForActionOrigin:\n\t- eOrigin = {any}\n\t- eSize = {any}\n\t- unFlags = {any}\n\n", .{ eOrigin, eSize, unFlags });
        return undefined;
    }
    pub fn GetGlyphSVGForActionOrigin(eOrigin: t.EInputActionOrigin, unFlags: t.uint32) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphSVGForActionOrigin:\n\t- eOrigin = {any}\n\t- unFlags = {any}\n\n", .{ eOrigin, unFlags });
        return undefined;
    }
    pub fn GetGlyphForActionOrigin_Legacy(eOrigin: t.EInputActionOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphForActionOrigin_Legacy:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetStringForActionOrigin(eOrigin: t.EInputActionOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetStringForAnalogActionName(eActionHandle: t.InputAnalogActionHandle_t) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForAnalogActionName:\n\t- eActionHandle = {any}\n\n", .{ eActionHandle });
        return undefined;
    }
    pub fn StopAnalogActionMomentum(inputHandle: t.InputHandle_t, eAction: t.InputAnalogActionHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_StopAnalogActionMomentum:\n\t- inputHandle = {any}\n\t- eAction = {any}\n\n", .{ inputHandle, eAction });
        return undefined;
    }
    pub fn GetMotionData(inputHandle: t.InputHandle_t) callconv(.C) t.InputMotionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetMotionData:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn TriggerVibration(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerVibration:\n\t- inputHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\n", .{ inputHandle, usLeftSpeed, usRightSpeed });
        return undefined;
    }
    pub fn TriggerVibrationExtended(inputHandle: t.InputHandle_t, usLeftSpeed: u16, usRightSpeed: u16, usLeftTriggerSpeed: u16, usRightTriggerSpeed: u16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerVibrationExtended:\n\t- inputHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\t- usLeftTriggerSpeed = {any}\n\t- usRightTriggerSpeed = {any}\n\n", .{ inputHandle, usLeftSpeed, usRightSpeed, usLeftTriggerSpeed, usRightTriggerSpeed });
        return undefined;
    }
    pub fn TriggerSimpleHapticEvent(inputHandle: t.InputHandle_t, eHapticLocation: t.EControllerHapticLocation, nIntensity: t.uint8, nGainDB: u8, nOtherIntensity: t.uint8, nOtherGainDB: u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_TriggerSimpleHapticEvent:\n\t- inputHandle = {any}\n\t- eHapticLocation = {any}\n\t- nIntensity = {any}\n\t- nGainDB = {any}\n\t- nOtherIntensity = {any}\n\t- nOtherGainDB = {any}\n\n", .{ inputHandle, eHapticLocation, nIntensity, nGainDB, nOtherIntensity, nOtherGainDB });
        return undefined;
    }
    pub fn SetLEDColor(inputHandle: t.InputHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_SetLEDColor:\n\t- inputHandle = {any}\n\t- nColorR = {any}\n\t- nColorG = {any}\n\t- nColorB = {any}\n\t- nFlags = {any}\n\n", .{ inputHandle, nColorR, nColorG, nColorB, nFlags });
        return undefined;
    }
    pub fn Legacy_TriggerHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_Legacy_TriggerHapticPulse:\n\t- inputHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\n", .{ inputHandle, eTargetPad, usDurationMicroSec });
        return undefined;
    }
    pub fn Legacy_TriggerRepeatedHapticPulse(inputHandle: t.InputHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_Legacy_TriggerRepeatedHapticPulse:\n\t- inputHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\t- usOffMicroSec = {any}\n\t- unRepeat = {any}\n\t- nFlags = {any}\n\n", .{ inputHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags });
        return undefined;
    }
    pub fn ShowBindingPanel(inputHandle: t.InputHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_ShowBindingPanel:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn GetInputTypeForHandle(inputHandle: t.InputHandle_t) callconv(.C) t.ESteamInputType {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetInputTypeForHandle:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn GetControllerForGamepadIndex(nIndex: i32) callconv(.C) t.InputHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetControllerForGamepadIndex:\n\t- nIndex = {any}\n\n", .{ nIndex });
        return undefined;
    }
    pub fn GetGamepadIndexForController(ulinputHandle: t.InputHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGamepadIndexForController:\n\t- ulinputHandle = {any}\n\n", .{ ulinputHandle });
        return undefined;
    }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetStringForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetGlyphForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetActionOriginFromXboxOrigin(inputHandle: t.InputHandle_t, eOrigin: t.EXboxOrigin) callconv(.C) t.EInputActionOrigin {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetActionOriginFromXboxOrigin:\n\t- inputHandle = {any}\n\t- eOrigin = {any}\n\n", .{ inputHandle, eOrigin });
        return undefined;
    }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EInputActionOrigin) callconv(.C) t.EInputActionOrigin {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_TranslateActionOrigin:\n\t- eDestinationInputType = {any}\n\t- eSourceOrigin = {any}\n\n", .{ eDestinationInputType, eSourceOrigin });
        return undefined;
    }
    pub fn GetDeviceBindingRevision(inputHandle: t.InputHandle_t, pMajor: [*c]i32, pMinor: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetDeviceBindingRevision:\n\t- inputHandle = {any}\n\t- pMajor = {any}\n\t- pMinor = {any}\n\n", .{ inputHandle, pMajor, pMinor });
        return undefined;
    }
    pub fn GetRemotePlaySessionID(inputHandle: t.InputHandle_t) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetRemotePlaySessionID:\n\t- inputHandle = {any}\n\n", .{ inputHandle });
        return undefined;
    }
    pub fn GetSessionInputConfigurationSettings() callconv(.C) t.uint16 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInput_GetSessionInputConfigurationSettings\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamInput_v006() callconv(.C) [*c]t.ISteamInput {
    p("NOT IMPLEMENTED SteamAPI_SteamInput_v006\n\n", .{  });
    return undefined;
}
pub const ISteamController = struct {
    pub const version = "SteamController008";
    pub fn Init() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_Init\n\n", .{  });
        return undefined;
    }
    pub fn Shutdown() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_Shutdown\n\n", .{  });
        return undefined;
    }
    pub fn RunFrame() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_RunFrame\n\n", .{  });
        return undefined;
    }
    pub fn GetConnectedControllers(handlesOut: [*c]t.ControllerHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetConnectedControllers:\n\t- handlesOut = {any}\n\n", .{ handlesOut });
        return undefined;
    }
    pub fn GetActionSetHandle(pszActionSetName: [*c]const u8) callconv(.C) t.ControllerActionSetHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActionSetHandle:\n\t- pszActionSetName = {any}\n\n", .{ pszActionSetName });
        return undefined;
    }
    pub fn ActivateActionSet(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_ActivateActionSet:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\n", .{ controllerHandle, actionSetHandle });
        return undefined;
    }
    pub fn GetCurrentActionSet(controllerHandle: t.ControllerHandle_t) callconv(.C) t.ControllerActionSetHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetCurrentActionSet:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
        return undefined;
    }
    pub fn ActivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_ActivateActionSetLayer:\n\t- controllerHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ controllerHandle, actionSetLayerHandle });
        return undefined;
    }
    pub fn DeactivateActionSetLayer(controllerHandle: t.ControllerHandle_t, actionSetLayerHandle: t.ControllerActionSetHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_DeactivateActionSetLayer:\n\t- controllerHandle = {any}\n\t- actionSetLayerHandle = {any}\n\n", .{ controllerHandle, actionSetLayerHandle });
        return undefined;
    }
    pub fn DeactivateAllActionSetLayers(controllerHandle: t.ControllerHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_DeactivateAllActionSetLayers:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
        return undefined;
    }
    pub fn GetActiveActionSetLayers(controllerHandle: t.ControllerHandle_t, handlesOut: [*c]t.ControllerActionSetHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActiveActionSetLayers:\n\t- controllerHandle = {any}\n\t- handlesOut = {any}\n\n", .{ controllerHandle, handlesOut });
        return undefined;
    }
    pub fn GetDigitalActionHandle(pszActionName: [*c]const u8) callconv(.C) t.ControllerDigitalActionHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
        return undefined;
    }
    pub fn GetDigitalActionData(controllerHandle: t.ControllerHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t) callconv(.C) t.InputDigitalActionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionData:\n\t- controllerHandle = {any}\n\t- digitalActionHandle = {any}\n\n", .{ controllerHandle, digitalActionHandle });
        return undefined;
    }
    pub fn GetDigitalActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, digitalActionHandle: t.ControllerDigitalActionHandle_t, originsOut: [*c]t.EControllerActionOrigin) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetDigitalActionOrigins:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\t- digitalActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ controllerHandle, actionSetHandle, digitalActionHandle, originsOut });
        return undefined;
    }
    pub fn GetAnalogActionHandle(pszActionName: [*c]const u8) callconv(.C) t.ControllerAnalogActionHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionHandle:\n\t- pszActionName = {any}\n\n", .{ pszActionName });
        return undefined;
    }
    pub fn GetAnalogActionData(controllerHandle: t.ControllerHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t) callconv(.C) t.InputAnalogActionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionData:\n\t- controllerHandle = {any}\n\t- analogActionHandle = {any}\n\n", .{ controllerHandle, analogActionHandle });
        return undefined;
    }
    pub fn GetAnalogActionOrigins(controllerHandle: t.ControllerHandle_t, actionSetHandle: t.ControllerActionSetHandle_t, analogActionHandle: t.ControllerAnalogActionHandle_t, originsOut: [*c]t.EControllerActionOrigin) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetAnalogActionOrigins:\n\t- controllerHandle = {any}\n\t- actionSetHandle = {any}\n\t- analogActionHandle = {any}\n\t- originsOut = {any}\n\n", .{ controllerHandle, actionSetHandle, analogActionHandle, originsOut });
        return undefined;
    }
    pub fn GetGlyphForActionOrigin(eOrigin: t.EControllerActionOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGlyphForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetStringForActionOrigin(eOrigin: t.EControllerActionOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetStringForActionOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn StopAnalogActionMomentum(controllerHandle: t.ControllerHandle_t, eAction: t.ControllerAnalogActionHandle_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_StopAnalogActionMomentum:\n\t- controllerHandle = {any}\n\t- eAction = {any}\n\n", .{ controllerHandle, eAction });
        return undefined;
    }
    pub fn GetMotionData(controllerHandle: t.ControllerHandle_t) callconv(.C) t.InputMotionData_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetMotionData:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
        return undefined;
    }
    pub fn TriggerHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerHapticPulse:\n\t- controllerHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\n", .{ controllerHandle, eTargetPad, usDurationMicroSec });
        return undefined;
    }
    pub fn TriggerRepeatedHapticPulse(controllerHandle: t.ControllerHandle_t, eTargetPad: t.ESteamControllerPad, usDurationMicroSec: u16, usOffMicroSec: u16, unRepeat: u16, nFlags: u32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerRepeatedHapticPulse:\n\t- controllerHandle = {any}\n\t- eTargetPad = {any}\n\t- usDurationMicroSec = {any}\n\t- usOffMicroSec = {any}\n\t- unRepeat = {any}\n\t- nFlags = {any}\n\n", .{ controllerHandle, eTargetPad, usDurationMicroSec, usOffMicroSec, unRepeat, nFlags });
        return undefined;
    }
    pub fn TriggerVibration(controllerHandle: t.ControllerHandle_t, usLeftSpeed: u16, usRightSpeed: u16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_TriggerVibration:\n\t- controllerHandle = {any}\n\t- usLeftSpeed = {any}\n\t- usRightSpeed = {any}\n\n", .{ controllerHandle, usLeftSpeed, usRightSpeed });
        return undefined;
    }
    pub fn SetLEDColor(controllerHandle: t.ControllerHandle_t, nColorR: t.uint8, nColorG: t.uint8, nColorB: t.uint8, nFlags: u32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_SetLEDColor:\n\t- controllerHandle = {any}\n\t- nColorR = {any}\n\t- nColorG = {any}\n\t- nColorB = {any}\n\t- nFlags = {any}\n\n", .{ controllerHandle, nColorR, nColorG, nColorB, nFlags });
        return undefined;
    }
    pub fn ShowBindingPanel(controllerHandle: t.ControllerHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_ShowBindingPanel:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
        return undefined;
    }
    pub fn GetInputTypeForHandle(controllerHandle: t.ControllerHandle_t) callconv(.C) t.ESteamInputType {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetInputTypeForHandle:\n\t- controllerHandle = {any}\n\n", .{ controllerHandle });
        return undefined;
    }
    pub fn GetControllerForGamepadIndex(nIndex: i32) callconv(.C) t.ControllerHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetControllerForGamepadIndex:\n\t- nIndex = {any}\n\n", .{ nIndex });
        return undefined;
    }
    pub fn GetGamepadIndexForController(ulControllerHandle: t.ControllerHandle_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGamepadIndexForController:\n\t- ulControllerHandle = {any}\n\n", .{ ulControllerHandle });
        return undefined;
    }
    pub fn GetStringForXboxOrigin(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetStringForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetGlyphForXboxOrigin(eOrigin: t.EXboxOrigin) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetGlyphForXboxOrigin:\n\t- eOrigin = {any}\n\n", .{ eOrigin });
        return undefined;
    }
    pub fn GetActionOriginFromXboxOrigin(controllerHandle: t.ControllerHandle_t, eOrigin: t.EXboxOrigin) callconv(.C) t.EControllerActionOrigin {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetActionOriginFromXboxOrigin:\n\t- controllerHandle = {any}\n\t- eOrigin = {any}\n\n", .{ controllerHandle, eOrigin });
        return undefined;
    }
    pub fn TranslateActionOrigin(eDestinationInputType: t.ESteamInputType, eSourceOrigin: t.EControllerActionOrigin) callconv(.C) t.EControllerActionOrigin {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_TranslateActionOrigin:\n\t- eDestinationInputType = {any}\n\t- eSourceOrigin = {any}\n\n", .{ eDestinationInputType, eSourceOrigin });
        return undefined;
    }
    pub fn GetControllerBindingRevision(controllerHandle: t.ControllerHandle_t, pMajor: [*c]i32, pMinor: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamController_GetControllerBindingRevision:\n\t- controllerHandle = {any}\n\t- pMajor = {any}\n\t- pMinor = {any}\n\n", .{ controllerHandle, pMajor, pMinor });
        return undefined;
    }
};
pub fn SteamAPI_SteamController_v008() callconv(.C) [*c]t.ISteamController {
    p("NOT IMPLEMENTED SteamAPI_SteamController_v008\n\n", .{  });
    return undefined;
}
pub const ISteamUGC = struct {
    pub const version = "STEAMUGC_INTERFACE_VERSION016";
    pub fn CreateQueryUserUGCRequest(unAccountID: t.AccountID_t, eListType: t.EUserUGCList, eMatchingUGCType: t.EUGCMatchingUGCType, eSortOrder: t.EUserUGCListSortOrder, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32) callconv(.C) t.UGCQueryHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryUserUGCRequest:\n\t- unAccountID = {any}\n\t- eListType = {any}\n\t- eMatchingUGCType = {any}\n\t- eSortOrder = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- unPage = {any}\n\n", .{ unAccountID, eListType, eMatchingUGCType, eSortOrder, nCreatorAppID, nConsumerAppID, unPage });
        return undefined;
    }
    pub fn CreateQueryAllUGCRequest(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, unPage: t.uint32) callconv(.C) t.UGCQueryHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryAllUGCRequestPage:\n\t- eQueryType = {any}\n\t- eMatchingeMatchingUGCTypeFileType = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- unPage = {any}\n\n", .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, unPage });
        return undefined;
    }
    pub fn CreateQueryAllUGCRequest(eQueryType: t.EUGCQuery, eMatchingeMatchingUGCTypeFileType: t.EUGCMatchingUGCType, nCreatorAppID: t.AppId_t, nConsumerAppID: t.AppId_t, pchCursor: [*c]const u8) callconv(.C) t.UGCQueryHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryAllUGCRequestCursor:\n\t- eQueryType = {any}\n\t- eMatchingeMatchingUGCTypeFileType = {any}\n\t- nCreatorAppID = {any}\n\t- nConsumerAppID = {any}\n\t- pchCursor = {any}\n\n", .{ eQueryType, eMatchingeMatchingUGCTypeFileType, nCreatorAppID, nConsumerAppID, pchCursor });
        return undefined;
    }
    pub fn CreateQueryUGCDetailsRequest(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.UGCQueryHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateQueryUGCDetailsRequest:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
        return undefined;
    }
    pub fn SendQueryUGCRequest(handle: t.UGCQueryHandle_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SendQueryUGCRequest:\n\t- handle = {any}\n\n", .{ handle });
        return undefined;
    }
    pub fn GetQueryUGCResult(handle: t.UGCQueryHandle_t, index: t.uint32, pDetails: [*c]t.SteamUGCDetails_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCResult:\n\t- handle = {any}\n\t- index = {any}\n\t- pDetails = {any}\n\n", .{ handle, index, pDetails });
        return undefined;
    }
    pub fn GetQueryUGCNumTags(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumTags:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
        return undefined;
    }
    pub fn GetQueryUGCTag(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCTag:\n\t- handle = {any}\n\t- index = {any}\n\t- indexTag = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, indexTag, pchValue, cchValueSize });
        return undefined;
    }
    pub fn GetQueryUGCTagDisplayName(handle: t.UGCQueryHandle_t, index: t.uint32, indexTag: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCTagDisplayName:\n\t- handle = {any}\n\t- index = {any}\n\t- indexTag = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, indexTag, pchValue, cchValueSize });
        return undefined;
    }
    pub fn GetQueryUGCPreviewURL(handle: t.UGCQueryHandle_t, index: t.uint32, pchURL: [*c]u8, cchURLSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCPreviewURL:\n\t- handle = {any}\n\t- index = {any}\n\t- pchURL = {any}\n\t- cchURLSize = {any}\n\n", .{ handle, index, pchURL, cchURLSize });
        return undefined;
    }
    pub fn GetQueryUGCMetadata(handle: t.UGCQueryHandle_t, index: t.uint32, pchMetadata: [*c]u8, cchMetadatasize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCMetadata:\n\t- handle = {any}\n\t- index = {any}\n\t- pchMetadata = {any}\n\t- cchMetadatasize = {any}\n\n", .{ handle, index, pchMetadata, cchMetadatasize });
        return undefined;
    }
    pub fn GetQueryUGCChildren(handle: t.UGCQueryHandle_t, index: t.uint32, pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCChildren:\n\t- handle = {any}\n\t- index = {any}\n\t- pvecPublishedFileID = {any}\n\t- cMaxEntries = {any}\n\n", .{ handle, index, pvecPublishedFileID, cMaxEntries });
        return undefined;
    }
    pub fn GetQueryUGCStatistic(handle: t.UGCQueryHandle_t, index: t.uint32, eStatType: t.EItemStatistic, pStatValue: [*c]t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCStatistic:\n\t- handle = {any}\n\t- index = {any}\n\t- eStatType = {any}\n\t- pStatValue = {any}\n\n", .{ handle, index, eStatType, pStatValue });
        return undefined;
    }
    pub fn GetQueryUGCNumAdditionalPreviews(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumAdditionalPreviews:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
        return undefined;
    }
    pub fn GetQueryUGCAdditionalPreview(handle: t.UGCQueryHandle_t, index: t.uint32, previewIndex: t.uint32, pchURLOrVideoID: [*c]u8, cchURLSize: t.uint32, pchOriginalFileName: [*c]u8, cchOriginalFileNameSize: t.uint32, pPreviewType: [*c]t.EItemPreviewType) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCAdditionalPreview:\n\t- handle = {any}\n\t- index = {any}\n\t- previewIndex = {any}\n\t- pchURLOrVideoID = {any}\n\t- cchURLSize = {any}\n\t- pchOriginalFileName = {any}\n\t- cchOriginalFileNameSize = {any}\n\t- pPreviewType = {any}\n\n", .{ handle, index, previewIndex, pchURLOrVideoID, cchURLSize, pchOriginalFileName, cchOriginalFileNameSize, pPreviewType });
        return undefined;
    }
    pub fn GetQueryUGCNumKeyValueTags(handle: t.UGCQueryHandle_t, index: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCNumKeyValueTags:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
        return undefined;
    }
    pub fn GetQueryUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, keyValueTagIndex: t.uint32, pchKey: [*c]u8, cchKeySize: t.uint32, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryUGCKeyValueTag:\n\t- handle = {any}\n\t- index = {any}\n\t- keyValueTagIndex = {any}\n\t- pchKey = {any}\n\t- cchKeySize = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, keyValueTagIndex, pchKey, cchKeySize, pchValue, cchValueSize });
        return undefined;
    }
    pub fn GetQueryUGCKeyValueTag(handle: t.UGCQueryHandle_t, index: t.uint32, pchKey: [*c]const u8, pchValue: [*c]u8, cchValueSize: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetQueryFirstUGCKeyValueTag:\n\t- handle = {any}\n\t- index = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\t- cchValueSize = {any}\n\n", .{ handle, index, pchKey, pchValue, cchValueSize });
        return undefined;
    }
    pub fn ReleaseQueryUGCRequest(handle: t.UGCQueryHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_ReleaseQueryUGCRequest:\n\t- handle = {any}\n\n", .{ handle });
        return undefined;
    }
    pub fn AddRequiredTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredTag:\n\t- handle = {any}\n\t- pTagName = {any}\n\n", .{ handle, pTagName });
        return undefined;
    }
    pub fn AddRequiredTagGroup(handle: t.UGCQueryHandle_t, pTagGroups: [*c]const t.SteamParamStringArray_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredTagGroup:\n\t- handle = {any}\n\t- pTagGroups = {any}\n\n", .{ handle, pTagGroups });
        return undefined;
    }
    pub fn AddExcludedTag(handle: t.UGCQueryHandle_t, pTagName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddExcludedTag:\n\t- handle = {any}\n\t- pTagName = {any}\n\n", .{ handle, pTagName });
        return undefined;
    }
    pub fn SetReturnOnlyIDs(handle: t.UGCQueryHandle_t, bReturnOnlyIDs: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnOnlyIDs:\n\t- handle = {any}\n\t- bReturnOnlyIDs = {any}\n\n", .{ handle, bReturnOnlyIDs });
        return undefined;
    }
    pub fn SetReturnKeyValueTags(handle: t.UGCQueryHandle_t, bReturnKeyValueTags: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnKeyValueTags:\n\t- handle = {any}\n\t- bReturnKeyValueTags = {any}\n\n", .{ handle, bReturnKeyValueTags });
        return undefined;
    }
    pub fn SetReturnLongDescription(handle: t.UGCQueryHandle_t, bReturnLongDescription: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnLongDescription:\n\t- handle = {any}\n\t- bReturnLongDescription = {any}\n\n", .{ handle, bReturnLongDescription });
        return undefined;
    }
    pub fn SetReturnMetadata(handle: t.UGCQueryHandle_t, bReturnMetadata: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnMetadata:\n\t- handle = {any}\n\t- bReturnMetadata = {any}\n\n", .{ handle, bReturnMetadata });
        return undefined;
    }
    pub fn SetReturnChildren(handle: t.UGCQueryHandle_t, bReturnChildren: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnChildren:\n\t- handle = {any}\n\t- bReturnChildren = {any}\n\n", .{ handle, bReturnChildren });
        return undefined;
    }
    pub fn SetReturnAdditionalPreviews(handle: t.UGCQueryHandle_t, bReturnAdditionalPreviews: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnAdditionalPreviews:\n\t- handle = {any}\n\t- bReturnAdditionalPreviews = {any}\n\n", .{ handle, bReturnAdditionalPreviews });
        return undefined;
    }
    pub fn SetReturnTotalOnly(handle: t.UGCQueryHandle_t, bReturnTotalOnly: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnTotalOnly:\n\t- handle = {any}\n\t- bReturnTotalOnly = {any}\n\n", .{ handle, bReturnTotalOnly });
        return undefined;
    }
    pub fn SetReturnPlaytimeStats(handle: t.UGCQueryHandle_t, unDays: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetReturnPlaytimeStats:\n\t- handle = {any}\n\t- unDays = {any}\n\n", .{ handle, unDays });
        return undefined;
    }
    pub fn SetLanguage(handle: t.UGCQueryHandle_t, pchLanguage: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetLanguage:\n\t- handle = {any}\n\t- pchLanguage = {any}\n\n", .{ handle, pchLanguage });
        return undefined;
    }
    pub fn SetAllowCachedResponse(handle: t.UGCQueryHandle_t, unMaxAgeSeconds: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetAllowCachedResponse:\n\t- handle = {any}\n\t- unMaxAgeSeconds = {any}\n\n", .{ handle, unMaxAgeSeconds });
        return undefined;
    }
    pub fn SetCloudFileNameFilter(handle: t.UGCQueryHandle_t, pMatchCloudFileName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetCloudFileNameFilter:\n\t- handle = {any}\n\t- pMatchCloudFileName = {any}\n\n", .{ handle, pMatchCloudFileName });
        return undefined;
    }
    pub fn SetMatchAnyTag(handle: t.UGCQueryHandle_t, bMatchAnyTag: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetMatchAnyTag:\n\t- handle = {any}\n\t- bMatchAnyTag = {any}\n\n", .{ handle, bMatchAnyTag });
        return undefined;
    }
    pub fn SetSearchText(handle: t.UGCQueryHandle_t, pSearchText: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetSearchText:\n\t- handle = {any}\n\t- pSearchText = {any}\n\n", .{ handle, pSearchText });
        return undefined;
    }
    pub fn SetRankedByTrendDays(handle: t.UGCQueryHandle_t, unDays: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetRankedByTrendDays:\n\t- handle = {any}\n\t- unDays = {any}\n\n", .{ handle, unDays });
        return undefined;
    }
    pub fn SetTimeCreatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetTimeCreatedDateRange:\n\t- handle = {any}\n\t- rtStart = {any}\n\t- rtEnd = {any}\n\n", .{ handle, rtStart, rtEnd });
        return undefined;
    }
    pub fn SetTimeUpdatedDateRange(handle: t.UGCQueryHandle_t, rtStart: t.RTime32, rtEnd: t.RTime32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetTimeUpdatedDateRange:\n\t- handle = {any}\n\t- rtStart = {any}\n\t- rtEnd = {any}\n\n", .{ handle, rtStart, rtEnd });
        return undefined;
    }
    pub fn AddRequiredKeyValueTag(handle: t.UGCQueryHandle_t, pKey: [*c]const u8, pValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddRequiredKeyValueTag:\n\t- handle = {any}\n\t- pKey = {any}\n\t- pValue = {any}\n\n", .{ handle, pKey, pValue });
        return undefined;
    }
    pub fn RequestUGCDetails(nPublishedFileID: t.PublishedFileId_t, unMaxAgeSeconds: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RequestUGCDetails:\n\t- nPublishedFileID = {any}\n\t- unMaxAgeSeconds = {any}\n\n", .{ nPublishedFileID, unMaxAgeSeconds });
        return undefined;
    }
    pub fn CreateItem(nConsumerAppId: t.AppId_t, eFileType: t.EWorkshopFileType) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_CreateItem:\n\t- nConsumerAppId = {any}\n\t- eFileType = {any}\n\n", .{ nConsumerAppId, eFileType });
        return undefined;
    }
    pub fn StartItemUpdate(nConsumerAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.UGCUpdateHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StartItemUpdate:\n\t- nConsumerAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nConsumerAppId, nPublishedFileID });
        return undefined;
    }
    pub fn SetItemTitle(handle: t.UGCUpdateHandle_t, pchTitle: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemTitle:\n\t- handle = {any}\n\t- pchTitle = {any}\n\n", .{ handle, pchTitle });
        return undefined;
    }
    pub fn SetItemDescription(handle: t.UGCUpdateHandle_t, pchDescription: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemDescription:\n\t- handle = {any}\n\t- pchDescription = {any}\n\n", .{ handle, pchDescription });
        return undefined;
    }
    pub fn SetItemUpdateLanguage(handle: t.UGCUpdateHandle_t, pchLanguage: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemUpdateLanguage:\n\t- handle = {any}\n\t- pchLanguage = {any}\n\n", .{ handle, pchLanguage });
        return undefined;
    }
    pub fn SetItemMetadata(handle: t.UGCUpdateHandle_t, pchMetaData: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemMetadata:\n\t- handle = {any}\n\t- pchMetaData = {any}\n\n", .{ handle, pchMetaData });
        return undefined;
    }
    pub fn SetItemVisibility(handle: t.UGCUpdateHandle_t, eVisibility: t.ERemoteStoragePublishedFileVisibility) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemVisibility:\n\t- handle = {any}\n\t- eVisibility = {any}\n\n", .{ handle, eVisibility });
        return undefined;
    }
    pub fn SetItemTags(updateHandle: t.UGCUpdateHandle_t, pTags: [*c]const t.SteamParamStringArray_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemTags:\n\t- updateHandle = {any}\n\t- pTags = {any}\n\n", .{ updateHandle, pTags });
        return undefined;
    }
    pub fn SetItemContent(handle: t.UGCUpdateHandle_t, pszContentFolder: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemContent:\n\t- handle = {any}\n\t- pszContentFolder = {any}\n\n", .{ handle, pszContentFolder });
        return undefined;
    }
    pub fn SetItemPreview(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetItemPreview:\n\t- handle = {any}\n\t- pszPreviewFile = {any}\n\n", .{ handle, pszPreviewFile });
        return undefined;
    }
    pub fn SetAllowLegacyUpload(handle: t.UGCUpdateHandle_t, bAllowLegacyUpload: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetAllowLegacyUpload:\n\t- handle = {any}\n\t- bAllowLegacyUpload = {any}\n\n", .{ handle, bAllowLegacyUpload });
        return undefined;
    }
    pub fn RemoveAllItemKeyValueTags(handle: t.UGCUpdateHandle_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveAllItemKeyValueTags:\n\t- handle = {any}\n\n", .{ handle });
        return undefined;
    }
    pub fn RemoveItemKeyValueTags(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemKeyValueTags:\n\t- handle = {any}\n\t- pchKey = {any}\n\n", .{ handle, pchKey });
        return undefined;
    }
    pub fn AddItemKeyValueTag(handle: t.UGCUpdateHandle_t, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemKeyValueTag:\n\t- handle = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ handle, pchKey, pchValue });
        return undefined;
    }
    pub fn AddItemPreviewFile(handle: t.UGCUpdateHandle_t, pszPreviewFile: [*c]const u8, type: t.EItemPreviewType) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemPreviewFile:\n\t- handle = {any}\n\t- pszPreviewFile = {any}\n\t- type = {any}\n\n", .{ handle, pszPreviewFile, type });
        return undefined;
    }
    pub fn AddItemPreviewVideo(handle: t.UGCUpdateHandle_t, pszVideoID: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemPreviewVideo:\n\t- handle = {any}\n\t- pszVideoID = {any}\n\n", .{ handle, pszVideoID });
        return undefined;
    }
    pub fn UpdateItemPreviewFile(handle: t.UGCUpdateHandle_t, index: t.uint32, pszPreviewFile: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UpdateItemPreviewFile:\n\t- handle = {any}\n\t- index = {any}\n\t- pszPreviewFile = {any}\n\n", .{ handle, index, pszPreviewFile });
        return undefined;
    }
    pub fn UpdateItemPreviewVideo(handle: t.UGCUpdateHandle_t, index: t.uint32, pszVideoID: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UpdateItemPreviewVideo:\n\t- handle = {any}\n\t- index = {any}\n\t- pszVideoID = {any}\n\n", .{ handle, index, pszVideoID });
        return undefined;
    }
    pub fn RemoveItemPreview(handle: t.UGCUpdateHandle_t, index: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemPreview:\n\t- handle = {any}\n\t- index = {any}\n\n", .{ handle, index });
        return undefined;
    }
    pub fn SubmitItemUpdate(handle: t.UGCUpdateHandle_t, pchChangeNote: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SubmitItemUpdate:\n\t- handle = {any}\n\t- pchChangeNote = {any}\n\n", .{ handle, pchChangeNote });
        return undefined;
    }
    pub fn GetItemUpdateProgress(handle: t.UGCUpdateHandle_t, punBytesProcessed: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) t.EItemUpdateStatus {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemUpdateProgress:\n\t- handle = {any}\n\t- punBytesProcessed = {any}\n\t- punBytesTotal = {any}\n\n", .{ handle, punBytesProcessed, punBytesTotal });
        return undefined;
    }
    pub fn SetUserItemVote(nPublishedFileID: t.PublishedFileId_t, bVoteUp: bool) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SetUserItemVote:\n\t- nPublishedFileID = {any}\n\t- bVoteUp = {any}\n\n", .{ nPublishedFileID, bVoteUp });
        return undefined;
    }
    pub fn GetUserItemVote(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetUserItemVote:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn AddItemToFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddItemToFavorites:\n\t- nAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nAppId, nPublishedFileID });
        return undefined;
    }
    pub fn RemoveItemFromFavorites(nAppId: t.AppId_t, nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveItemFromFavorites:\n\t- nAppId = {any}\n\t- nPublishedFileID = {any}\n\n", .{ nAppId, nPublishedFileID });
        return undefined;
    }
    pub fn SubscribeItem(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SubscribeItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn UnsubscribeItem(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_UnsubscribeItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn GetNumSubscribedItems() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetNumSubscribedItems\n\n", .{  });
        return undefined;
    }
    pub fn GetSubscribedItems(pvecPublishedFileID: [*c]t.PublishedFileId_t, cMaxEntries: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetSubscribedItems:\n\t- pvecPublishedFileID = {any}\n\t- cMaxEntries = {any}\n\n", .{ pvecPublishedFileID, cMaxEntries });
        return undefined;
    }
    pub fn GetItemState(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemState:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn GetItemInstallInfo(nPublishedFileID: t.PublishedFileId_t, punSizeOnDisk: [*c]t.uint64, pchFolder: [*c]u8, cchFolderSize: t.uint32, punTimeStamp: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemInstallInfo:\n\t- nPublishedFileID = {any}\n\t- punSizeOnDisk = {any}\n\t- pchFolder = {any}\n\t- cchFolderSize = {any}\n\t- punTimeStamp = {any}\n\n", .{ nPublishedFileID, punSizeOnDisk, pchFolder, cchFolderSize, punTimeStamp });
        return undefined;
    }
    pub fn GetItemDownloadInfo(nPublishedFileID: t.PublishedFileId_t, punBytesDownloaded: [*c]t.uint64, punBytesTotal: [*c]t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetItemDownloadInfo:\n\t- nPublishedFileID = {any}\n\t- punBytesDownloaded = {any}\n\t- punBytesTotal = {any}\n\n", .{ nPublishedFileID, punBytesDownloaded, punBytesTotal });
        return undefined;
    }
    pub fn DownloadItem(nPublishedFileID: t.PublishedFileId_t, bHighPriority: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_DownloadItem:\n\t- nPublishedFileID = {any}\n\t- bHighPriority = {any}\n\n", .{ nPublishedFileID, bHighPriority });
        return undefined;
    }
    pub fn BInitWorkshopForGameServer(unWorkshopDepotID: t.DepotId_t, pszFolder: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_BInitWorkshopForGameServer:\n\t- unWorkshopDepotID = {any}\n\t- pszFolder = {any}\n\n", .{ unWorkshopDepotID, pszFolder });
        return undefined;
    }
    pub fn SuspendDownloads(bSuspend: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_SuspendDownloads:\n\t- bSuspend = {any}\n\n", .{ bSuspend });
        return undefined;
    }
    pub fn StartPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StartPlaytimeTracking:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
        return undefined;
    }
    pub fn StopPlaytimeTracking(pvecPublishedFileID: [*c]t.PublishedFileId_t, unNumPublishedFileIDs: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StopPlaytimeTracking:\n\t- pvecPublishedFileID = {any}\n\t- unNumPublishedFileIDs = {any}\n\n", .{ pvecPublishedFileID, unNumPublishedFileIDs });
        return undefined;
    }
    pub fn StopPlaytimeTrackingForAllItems() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_StopPlaytimeTrackingForAllItems\n\n", .{  });
        return undefined;
    }
    pub fn AddDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddDependency:\n\t- nParentPublishedFileID = {any}\n\t- nChildPublishedFileID = {any}\n\n", .{ nParentPublishedFileID, nChildPublishedFileID });
        return undefined;
    }
    pub fn RemoveDependency(nParentPublishedFileID: t.PublishedFileId_t, nChildPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveDependency:\n\t- nParentPublishedFileID = {any}\n\t- nChildPublishedFileID = {any}\n\n", .{ nParentPublishedFileID, nChildPublishedFileID });
        return undefined;
    }
    pub fn AddAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_AddAppDependency:\n\t- nPublishedFileID = {any}\n\t- nAppID = {any}\n\n", .{ nPublishedFileID, nAppID });
        return undefined;
    }
    pub fn RemoveAppDependency(nPublishedFileID: t.PublishedFileId_t, nAppID: t.AppId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_RemoveAppDependency:\n\t- nPublishedFileID = {any}\n\t- nAppID = {any}\n\n", .{ nPublishedFileID, nAppID });
        return undefined;
    }
    pub fn GetAppDependencies(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetAppDependencies:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn DeleteItem(nPublishedFileID: t.PublishedFileId_t) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_DeleteItem:\n\t- nPublishedFileID = {any}\n\n", .{ nPublishedFileID });
        return undefined;
    }
    pub fn ShowWorkshopEULA() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_ShowWorkshopEULA\n\n", .{  });
        return undefined;
    }
    pub fn GetWorkshopEULAStatus() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamUGC_GetWorkshopEULAStatus\n\n", .{  });
        return undefined;
    }
};
pub fn SteamAPI_SteamUGC_v016() callconv(.C) [*c]t.ISteamUGC {
    p("NOT IMPLEMENTED SteamAPI_SteamUGC_v016\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerUGC_v016() callconv(.C) [*c]t.ISteamUGC {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerUGC_v016\n\n", .{  });
    return undefined;
}
pub const ISteamAppList = struct {
    pub const version = "STEAMAPPLIST_INTERFACE_VERSION001";
    pub fn GetNumInstalledApps() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetNumInstalledApps\n\n", .{  });
        return undefined;
    }
    pub fn GetInstalledApps(pvecAppID: [*c]t.AppId_t, unMaxAppIDs: t.uint32) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetInstalledApps:\n\t- pvecAppID = {any}\n\t- unMaxAppIDs = {any}\n\n", .{ pvecAppID, unMaxAppIDs });
        return undefined;
    }
    pub fn GetAppName(nAppID: t.AppId_t, pchName: [*c]u8, cchNameMax: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppName:\n\t- nAppID = {any}\n\t- pchName = {any}\n\t- cchNameMax = {any}\n\n", .{ nAppID, pchName, cchNameMax });
        return undefined;
    }
    pub fn GetAppInstallDir(nAppID: t.AppId_t, pchDirectory: [*c]u8, cchNameMax: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppInstallDir:\n\t- nAppID = {any}\n\t- pchDirectory = {any}\n\t- cchNameMax = {any}\n\n", .{ nAppID, pchDirectory, cchNameMax });
        return undefined;
    }
    pub fn GetAppBuildId(nAppID: t.AppId_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamAppList_GetAppBuildId:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
};
pub fn SteamAPI_SteamAppList_v001() callconv(.C) [*c]t.ISteamAppList {
    p("NOT IMPLEMENTED SteamAPI_SteamAppList_v001\n\n", .{  });
    return undefined;
}
pub const ISteamHTMLSurface = struct {
    pub const version = "STEAMHTMLSURFACE_INTERFACE_VERSION_005";
    pub const EHTMLMouseButton = enum(c_int) {
        eHTMLMouseButton_Left = 0,
        eHTMLMouseButton_Right = 1,
        eHTMLMouseButton_Middle = 2,
    };
    pub const EMouseCursor = enum(c_int) {
        dc_user = 0,
        dc_none = 1,
        dc_arrow = 2,
        dc_ibeam = 3,
        dc_hourglass = 4,
        dc_waitarrow = 5,
        dc_crosshair = 6,
        dc_up = 7,
        dc_sizenw = 8,
        dc_sizese = 9,
        dc_sizene = 10,
        dc_sizesw = 11,
        dc_sizew = 12,
        dc_sizee = 13,
        dc_sizen = 14,
        dc_sizes = 15,
        dc_sizewe = 16,
        dc_sizens = 17,
        dc_sizeall = 18,
        dc_no = 19,
        dc_hand = 20,
        dc_blank = 21,
        dc_middle_pan = 22,
        dc_north_pan = 23,
        dc_north_east_pan = 24,
        dc_east_pan = 25,
        dc_south_east_pan = 26,
        dc_south_pan = 27,
        dc_south_west_pan = 28,
        dc_west_pan = 29,
        dc_north_west_pan = 30,
        dc_alias = 31,
        dc_cell = 32,
        dc_colresize = 33,
        dc_copycur = 34,
        dc_verticaltext = 35,
        dc_rowresize = 36,
        dc_zoomin = 37,
        dc_zoomout = 38,
        dc_help = 39,
        dc_custom = 40,
        dc_last = 41,
    };
    pub const EHTMLKeyModifiers = enum(c_int) {
        k_eHTMLKeyModifier_None = 0,
        k_eHTMLKeyModifier_AltDown = 1,
        k_eHTMLKeyModifier_CtrlDown = 2,
        k_eHTMLKeyModifier_ShiftDown = 4,
    };
    pub fn Init() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Init\n\n", .{  });
        return undefined;
    }
    pub fn Shutdown() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Shutdown\n\n", .{  });
        return undefined;
    }
    pub fn CreateBrowser(pchUserAgent: [*c]const u8, pchUserCSS: [*c]const u8) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_CreateBrowser:\n\t- pchUserAgent = {any}\n\t- pchUserCSS = {any}\n\n", .{ pchUserAgent, pchUserCSS });
        return undefined;
    }
    pub fn RemoveBrowser(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_RemoveBrowser:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn LoadURL(unBrowserHandle: t.HHTMLBrowser, pchURL: [*c]const u8, pchPostData: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_LoadURL:\n\t- unBrowserHandle = {any}\n\t- pchURL = {any}\n\t- pchPostData = {any}\n\n", .{ unBrowserHandle, pchURL, pchPostData });
        return undefined;
    }
    pub fn SetSize(unBrowserHandle: t.HHTMLBrowser, unWidth: t.uint32, unHeight: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetSize:\n\t- unBrowserHandle = {any}\n\t- unWidth = {any}\n\t- unHeight = {any}\n\n", .{ unBrowserHandle, unWidth, unHeight });
        return undefined;
    }
    pub fn StopLoad(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_StopLoad:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn Reload(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Reload:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn GoBack(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GoBack:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn GoForward(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GoForward:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn AddHeader(unBrowserHandle: t.HHTMLBrowser, pchKey: [*c]const u8, pchValue: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_AddHeader:\n\t- unBrowserHandle = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\n", .{ unBrowserHandle, pchKey, pchValue });
        return undefined;
    }
    pub fn ExecuteJavascript(unBrowserHandle: t.HHTMLBrowser, pchScript: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_ExecuteJavascript:\n\t- unBrowserHandle = {any}\n\t- pchScript = {any}\n\n", .{ unBrowserHandle, pchScript });
        return undefined;
    }
    pub fn MouseUp(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseUp:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
        return undefined;
    }
    pub fn MouseDown(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseDown:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
        return undefined;
    }
    pub fn MouseDoubleClick(unBrowserHandle: t.HHTMLBrowser, eMouseButton: t.ISteamHTMLSurface.EHTMLMouseButton) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseDoubleClick:\n\t- unBrowserHandle = {any}\n\t- eMouseButton = {any}\n\n", .{ unBrowserHandle, eMouseButton });
        return undefined;
    }
    pub fn MouseMove(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseMove:\n\t- unBrowserHandle = {any}\n\t- x = {any}\n\t- y = {any}\n\n", .{ unBrowserHandle, x, y });
        return undefined;
    }
    pub fn MouseWheel(unBrowserHandle: t.HHTMLBrowser, nDelta: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_MouseWheel:\n\t- unBrowserHandle = {any}\n\t- nDelta = {any}\n\n", .{ unBrowserHandle, nDelta });
        return undefined;
    }
    pub fn KeyDown(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers, bIsSystemKey: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyDown:\n\t- unBrowserHandle = {any}\n\t- nNativeKeyCode = {any}\n\t- eHTMLKeyModifiers = {any}\n\t- bIsSystemKey = {any}\n\n", .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers, bIsSystemKey });
        return undefined;
    }
    pub fn KeyUp(unBrowserHandle: t.HHTMLBrowser, nNativeKeyCode: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyUp:\n\t- unBrowserHandle = {any}\n\t- nNativeKeyCode = {any}\n\t- eHTMLKeyModifiers = {any}\n\n", .{ unBrowserHandle, nNativeKeyCode, eHTMLKeyModifiers });
        return undefined;
    }
    pub fn KeyChar(unBrowserHandle: t.HHTMLBrowser, cUnicodeChar: t.uint32, eHTMLKeyModifiers: t.ISteamHTMLSurface.EHTMLKeyModifiers) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_KeyChar:\n\t- unBrowserHandle = {any}\n\t- cUnicodeChar = {any}\n\t- eHTMLKeyModifiers = {any}\n\n", .{ unBrowserHandle, cUnicodeChar, eHTMLKeyModifiers });
        return undefined;
    }
    pub fn SetHorizontalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetHorizontalScroll:\n\t- unBrowserHandle = {any}\n\t- nAbsolutePixelScroll = {any}\n\n", .{ unBrowserHandle, nAbsolutePixelScroll });
        return undefined;
    }
    pub fn SetVerticalScroll(unBrowserHandle: t.HHTMLBrowser, nAbsolutePixelScroll: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetVerticalScroll:\n\t- unBrowserHandle = {any}\n\t- nAbsolutePixelScroll = {any}\n\n", .{ unBrowserHandle, nAbsolutePixelScroll });
        return undefined;
    }
    pub fn SetKeyFocus(unBrowserHandle: t.HHTMLBrowser, bHasKeyFocus: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetKeyFocus:\n\t- unBrowserHandle = {any}\n\t- bHasKeyFocus = {any}\n\n", .{ unBrowserHandle, bHasKeyFocus });
        return undefined;
    }
    pub fn ViewSource(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_ViewSource:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn CopyToClipboard(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_CopyToClipboard:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn PasteFromClipboard(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_PasteFromClipboard:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn Find(unBrowserHandle: t.HHTMLBrowser, pchSearchStr: [*c]const u8, bCurrentlyInFind: bool, bReverse: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_Find:\n\t- unBrowserHandle = {any}\n\t- pchSearchStr = {any}\n\t- bCurrentlyInFind = {any}\n\t- bReverse = {any}\n\n", .{ unBrowserHandle, pchSearchStr, bCurrentlyInFind, bReverse });
        return undefined;
    }
    pub fn StopFind(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_StopFind:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn GetLinkAtPosition(unBrowserHandle: t.HHTMLBrowser, x: i32, y: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_GetLinkAtPosition:\n\t- unBrowserHandle = {any}\n\t- x = {any}\n\t- y = {any}\n\n", .{ unBrowserHandle, x, y });
        return undefined;
    }
    pub fn SetCookie(pchHostname: [*c]const u8, pchKey: [*c]const u8, pchValue: [*c]const u8, pchPath: [*c]const u8, nExpires: t.RTime32, bSecure: bool, bHTTPOnly: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetCookie:\n\t- pchHostname = {any}\n\t- pchKey = {any}\n\t- pchValue = {any}\n\t- pchPath = {any}\n\t- nExpires = {any}\n\t- bSecure = {any}\n\t- bHTTPOnly = {any}\n\n", .{ pchHostname, pchKey, pchValue, pchPath, nExpires, bSecure, bHTTPOnly });
        return undefined;
    }
    pub fn SetPageScaleFactor(unBrowserHandle: t.HHTMLBrowser, flZoom: f32, nPointX: i32, nPointY: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetPageScaleFactor:\n\t- unBrowserHandle = {any}\n\t- flZoom = {any}\n\t- nPointX = {any}\n\t- nPointY = {any}\n\n", .{ unBrowserHandle, flZoom, nPointX, nPointY });
        return undefined;
    }
    pub fn SetBackgroundMode(unBrowserHandle: t.HHTMLBrowser, bBackgroundMode: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetBackgroundMode:\n\t- unBrowserHandle = {any}\n\t- bBackgroundMode = {any}\n\n", .{ unBrowserHandle, bBackgroundMode });
        return undefined;
    }
    pub fn SetDPIScalingFactor(unBrowserHandle: t.HHTMLBrowser, flDPIScaling: f32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_SetDPIScalingFactor:\n\t- unBrowserHandle = {any}\n\t- flDPIScaling = {any}\n\n", .{ unBrowserHandle, flDPIScaling });
        return undefined;
    }
    pub fn OpenDeveloperTools(unBrowserHandle: t.HHTMLBrowser) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_OpenDeveloperTools:\n\t- unBrowserHandle = {any}\n\n", .{ unBrowserHandle });
        return undefined;
    }
    pub fn AllowStartRequest(unBrowserHandle: t.HHTMLBrowser, bAllowed: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_AllowStartRequest:\n\t- unBrowserHandle = {any}\n\t- bAllowed = {any}\n\n", .{ unBrowserHandle, bAllowed });
        return undefined;
    }
    pub fn JSDialogResponse(unBrowserHandle: t.HHTMLBrowser, bResult: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_JSDialogResponse:\n\t- unBrowserHandle = {any}\n\t- bResult = {any}\n\n", .{ unBrowserHandle, bResult });
        return undefined;
    }
    pub fn FileLoadDialogResponse(unBrowserHandle: t.HHTMLBrowser, pchSelectedFiles: [*c][*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamHTMLSurface_FileLoadDialogResponse:\n\t- unBrowserHandle = {any}\n\t- pchSelectedFiles = {any}\n\n", .{ unBrowserHandle, pchSelectedFiles });
        return undefined;
    }
};
pub fn SteamAPI_SteamHTMLSurface_v005() callconv(.C) [*c]t.ISteamHTMLSurface {
    p("NOT IMPLEMENTED SteamAPI_SteamHTMLSurface_v005\n\n", .{  });
    return undefined;
}
pub const ISteamInventory = struct {
    pub const version = "STEAMINVENTORY_INTERFACE_V003";
    pub fn GetResultStatus(resultHandle: t.SteamInventoryResult_t) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultStatus:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
        return undefined;
    }
    pub fn GetResultItems(resultHandle: t.SteamInventoryResult_t, pOutItemsArray: [*c]t.SteamItemDetails_t, punOutItemsArraySize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultItems:\n\t- resultHandle = {any}\n\t- pOutItemsArray = {any}\n\t- punOutItemsArraySize = {any}\n\n", .{ resultHandle, pOutItemsArray, punOutItemsArraySize });
        return undefined;
    }
    pub fn GetResultItemProperty(resultHandle: t.SteamInventoryResult_t, unItemIndex: t.uint32, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultItemProperty:\n\t- resultHandle = {any}\n\t- unItemIndex = {any}\n\t- pchPropertyName = {any}\n\t- pchValueBuffer = {any}\n\t- punValueBufferSizeOut = {any}\n\n", .{ resultHandle, unItemIndex, pchPropertyName, pchValueBuffer, punValueBufferSizeOut });
        return undefined;
    }
    pub fn GetResultTimestamp(resultHandle: t.SteamInventoryResult_t) callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetResultTimestamp:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
        return undefined;
    }
    pub fn CheckResultSteamID(resultHandle: t.SteamInventoryResult_t, steamIDExpected: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_CheckResultSteamID:\n\t- resultHandle = {any}\n\t- steamIDExpected = {any}\n\n", .{ resultHandle, steamIDExpected });
        return undefined;
    }
    pub fn DestroyResult(resultHandle: t.SteamInventoryResult_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_DestroyResult:\n\t- resultHandle = {any}\n\n", .{ resultHandle });
        return undefined;
    }
    pub fn GetAllItems(pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetAllItems:\n\t- pResultHandle = {any}\n\n", .{ pResultHandle });
        return undefined;
    }
    pub fn GetItemsByID(pResultHandle: [*c]t.SteamInventoryResult_t, pInstanceIDs: [*c]const t.SteamItemInstanceID_t, unCountInstanceIDs: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemsByID:\n\t- pResultHandle = {any}\n\t- pInstanceIDs = {any}\n\t- unCountInstanceIDs = {any}\n\n", .{ pResultHandle, pInstanceIDs, unCountInstanceIDs });
        return undefined;
    }
    pub fn SerializeResult(resultHandle: t.SteamInventoryResult_t, pOutBuffer: [*c]anyopaque, punOutBufferSize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SerializeResult:\n\t- resultHandle = {any}\n\t- pOutBuffer = {any}\n\t- punOutBufferSize = {any}\n\n", .{ resultHandle, pOutBuffer, punOutBufferSize });
        return undefined;
    }
    pub fn DeserializeResult(pOutResultHandle: [*c]t.SteamInventoryResult_t, pBuffer: [*c]const anyopaque, unBufferSize: t.uint32, bRESERVED_MUST_BE_FALSE: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_DeserializeResult:\n\t- pOutResultHandle = {any}\n\t- pBuffer = {any}\n\t- unBufferSize = {any}\n\t- bRESERVED_MUST_BE_FALSE = {any}\n\n", .{ pOutResultHandle, pBuffer, unBufferSize, bRESERVED_MUST_BE_FALSE });
        return undefined;
    }
    pub fn GenerateItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GenerateItems:\n\t- pResultHandle = {any}\n\t- pArrayItemDefs = {any}\n\t- punArrayQuantity = {any}\n\t- unArrayLength = {any}\n\n", .{ pResultHandle, pArrayItemDefs, punArrayQuantity, unArrayLength });
        return undefined;
    }
    pub fn GrantPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GrantPromoItems:\n\t- pResultHandle = {any}\n\n", .{ pResultHandle });
        return undefined;
    }
    pub fn AddPromoItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemDef: t.SteamItemDef_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_AddPromoItem:\n\t- pResultHandle = {any}\n\t- itemDef = {any}\n\n", .{ pResultHandle, itemDef });
        return undefined;
    }
    pub fn AddPromoItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayItemDefs: [*c]const t.SteamItemDef_t, unArrayLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_AddPromoItems:\n\t- pResultHandle = {any}\n\t- pArrayItemDefs = {any}\n\t- unArrayLength = {any}\n\n", .{ pResultHandle, pArrayItemDefs, unArrayLength });
        return undefined;
    }
    pub fn ConsumeItem(pResultHandle: [*c]t.SteamInventoryResult_t, itemConsume: t.SteamItemInstanceID_t, unQuantity: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_ConsumeItem:\n\t- pResultHandle = {any}\n\t- itemConsume = {any}\n\t- unQuantity = {any}\n\n", .{ pResultHandle, itemConsume, unQuantity });
        return undefined;
    }
    pub fn ExchangeItems(pResultHandle: [*c]t.SteamInventoryResult_t, pArrayGenerate: [*c]const t.SteamItemDef_t, punArrayGenerateQuantity: [*c]const t.uint32, unArrayGenerateLength: t.uint32, pArrayDestroy: [*c]const t.SteamItemInstanceID_t, punArrayDestroyQuantity: [*c]const t.uint32, unArrayDestroyLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_ExchangeItems:\n\t- pResultHandle = {any}\n\t- pArrayGenerate = {any}\n\t- punArrayGenerateQuantity = {any}\n\t- unArrayGenerateLength = {any}\n\t- pArrayDestroy = {any}\n\t- punArrayDestroyQuantity = {any}\n\t- unArrayDestroyLength = {any}\n\n", .{ pResultHandle, pArrayGenerate, punArrayGenerateQuantity, unArrayGenerateLength, pArrayDestroy, punArrayDestroyQuantity, unArrayDestroyLength });
        return undefined;
    }
    pub fn TransferItemQuantity(pResultHandle: [*c]t.SteamInventoryResult_t, itemIdSource: t.SteamItemInstanceID_t, unQuantity: t.uint32, itemIdDest: t.SteamItemInstanceID_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TransferItemQuantity:\n\t- pResultHandle = {any}\n\t- itemIdSource = {any}\n\t- unQuantity = {any}\n\t- itemIdDest = {any}\n\n", .{ pResultHandle, itemIdSource, unQuantity, itemIdDest });
        return undefined;
    }
    pub fn SendItemDropHeartbeat() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SendItemDropHeartbeat\n\n", .{  });
        return undefined;
    }
    pub fn TriggerItemDrop(pResultHandle: [*c]t.SteamInventoryResult_t, dropListDefinition: t.SteamItemDef_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TriggerItemDrop:\n\t- pResultHandle = {any}\n\t- dropListDefinition = {any}\n\n", .{ pResultHandle, dropListDefinition });
        return undefined;
    }
    pub fn TradeItems(pResultHandle: [*c]t.SteamInventoryResult_t, steamIDTradePartner: t.CSteamID, pArrayGive: [*c]const t.SteamItemInstanceID_t, pArrayGiveQuantity: [*c]const t.uint32, nArrayGiveLength: t.uint32, pArrayGet: [*c]const t.SteamItemInstanceID_t, pArrayGetQuantity: [*c]const t.uint32, nArrayGetLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_TradeItems:\n\t- pResultHandle = {any}\n\t- steamIDTradePartner = {any}\n\t- pArrayGive = {any}\n\t- pArrayGiveQuantity = {any}\n\t- nArrayGiveLength = {any}\n\t- pArrayGet = {any}\n\t- pArrayGetQuantity = {any}\n\t- nArrayGetLength = {any}\n\n", .{ pResultHandle, steamIDTradePartner, pArrayGive, pArrayGiveQuantity, nArrayGiveLength, pArrayGet, pArrayGetQuantity, nArrayGetLength });
        return undefined;
    }
    pub fn LoadItemDefinitions() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_LoadItemDefinitions\n\n", .{  });
        return undefined;
    }
    pub fn GetItemDefinitionIDs(pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemDefinitionIDs:\n\t- pItemDefIDs = {any}\n\t- punItemDefIDsArraySize = {any}\n\n", .{ pItemDefIDs, punItemDefIDsArraySize });
        return undefined;
    }
    pub fn GetItemDefinitionProperty(iDefinition: t.SteamItemDef_t, pchPropertyName: [*c]const u8, pchValueBuffer: [*c]u8, punValueBufferSizeOut: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemDefinitionProperty:\n\t- iDefinition = {any}\n\t- pchPropertyName = {any}\n\t- pchValueBuffer = {any}\n\t- punValueBufferSizeOut = {any}\n\n", .{ iDefinition, pchPropertyName, pchValueBuffer, punValueBufferSizeOut });
        return undefined;
    }
    pub fn RequestEligiblePromoItemDefinitionsIDs(steamID: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RequestEligiblePromoItemDefinitionsIDs:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn GetEligiblePromoItemDefinitionIDs(steamID: t.CSteamID, pItemDefIDs: [*c]t.SteamItemDef_t, punItemDefIDsArraySize: [*c]t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetEligiblePromoItemDefinitionIDs:\n\t- steamID = {any}\n\t- pItemDefIDs = {any}\n\t- punItemDefIDsArraySize = {any}\n\n", .{ steamID, pItemDefIDs, punItemDefIDsArraySize });
        return undefined;
    }
    pub fn StartPurchase(pArrayItemDefs: [*c]const t.SteamItemDef_t, punArrayQuantity: [*c]const t.uint32, unArrayLength: t.uint32) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_StartPurchase:\n\t- pArrayItemDefs = {any}\n\t- punArrayQuantity = {any}\n\t- unArrayLength = {any}\n\n", .{ pArrayItemDefs, punArrayQuantity, unArrayLength });
        return undefined;
    }
    pub fn RequestPrices() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RequestPrices\n\n", .{  });
        return undefined;
    }
    pub fn GetNumItemsWithPrices() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetNumItemsWithPrices\n\n", .{  });
        return undefined;
    }
    pub fn GetItemsWithPrices(pArrayItemDefs: [*c]t.SteamItemDef_t, pCurrentPrices: [*c]t.uint64, pBasePrices: [*c]t.uint64, unArrayLength: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemsWithPrices:\n\t- pArrayItemDefs = {any}\n\t- pCurrentPrices = {any}\n\t- pBasePrices = {any}\n\t- unArrayLength = {any}\n\n", .{ pArrayItemDefs, pCurrentPrices, pBasePrices, unArrayLength });
        return undefined;
    }
    pub fn GetItemPrice(iDefinition: t.SteamItemDef_t, pCurrentPrice: [*c]t.uint64, pBasePrice: [*c]t.uint64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_GetItemPrice:\n\t- iDefinition = {any}\n\t- pCurrentPrice = {any}\n\t- pBasePrice = {any}\n\n", .{ iDefinition, pCurrentPrice, pBasePrice });
        return undefined;
    }
    pub fn StartUpdateProperties() callconv(.C) t.SteamInventoryUpdateHandle_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_StartUpdateProperties\n\n", .{  });
        return undefined;
    }
    pub fn RemoveProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_RemoveProperty:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\n", .{ handle, nItemID, pchPropertyName });
        return undefined;
    }
    pub fn SetProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, pchPropertyValue: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyString:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- pchPropertyValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, pchPropertyValue });
        return undefined;
    }
    pub fn SetProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, bValue: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyBool:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- bValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, bValue });
        return undefined;
    }
    pub fn SetProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, nValue: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyInt64:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- nValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, nValue });
        return undefined;
    }
    pub fn SetProperty(handle: t.SteamInventoryUpdateHandle_t, nItemID: t.SteamItemInstanceID_t, pchPropertyName: [*c]const u8, flValue: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SetPropertyFloat:\n\t- handle = {any}\n\t- nItemID = {any}\n\t- pchPropertyName = {any}\n\t- flValue = {any}\n\n", .{ handle, nItemID, pchPropertyName, flValue });
        return undefined;
    }
    pub fn SubmitUpdateProperties(handle: t.SteamInventoryUpdateHandle_t, pResultHandle: [*c]t.SteamInventoryResult_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_SubmitUpdateProperties:\n\t- handle = {any}\n\t- pResultHandle = {any}\n\n", .{ handle, pResultHandle });
        return undefined;
    }
    pub fn InspectItem(pResultHandle: [*c]t.SteamInventoryResult_t, pchItemToken: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamInventory_InspectItem:\n\t- pResultHandle = {any}\n\t- pchItemToken = {any}\n\n", .{ pResultHandle, pchItemToken });
        return undefined;
    }
};
pub fn SteamAPI_SteamInventory_v003() callconv(.C) [*c]t.ISteamInventory {
    p("NOT IMPLEMENTED SteamAPI_SteamInventory_v003\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerInventory_v003() callconv(.C) [*c]t.ISteamInventory {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerInventory_v003\n\n", .{  });
    return undefined;
}
pub const ISteamVideo = struct {
    pub const version = "STEAMVIDEO_INTERFACE_V002";
    pub fn GetVideoURL(unVideoAppID: t.AppId_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetVideoURL:\n\t- unVideoAppID = {any}\n\n", .{ unVideoAppID });
        return undefined;
    }
    pub fn IsBroadcasting(pnNumViewers: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamVideo_IsBroadcasting:\n\t- pnNumViewers = {any}\n\n", .{ pnNumViewers });
        return undefined;
    }
    pub fn GetOPFSettings(unVideoAppID: t.AppId_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetOPFSettings:\n\t- unVideoAppID = {any}\n\n", .{ unVideoAppID });
        return undefined;
    }
    pub fn GetOPFStringForApp(unVideoAppID: t.AppId_t, pchBuffer: [*c]u8, pnBufferSize: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamVideo_GetOPFStringForApp:\n\t- unVideoAppID = {any}\n\t- pchBuffer = {any}\n\t- pnBufferSize = {any}\n\n", .{ unVideoAppID, pchBuffer, pnBufferSize });
        return undefined;
    }
};
pub fn SteamAPI_SteamVideo_v002() callconv(.C) [*c]t.ISteamVideo {
    p("NOT IMPLEMENTED SteamAPI_SteamVideo_v002\n\n", .{  });
    return undefined;
}
pub const ISteamParentalSettings = struct {
    pub const version = "STEAMPARENTALSETTINGS_INTERFACE_VERSION001";
    pub fn BIsParentalLockEnabled() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsParentalLockEnabled\n\n", .{  });
        return undefined;
    }
    pub fn BIsParentalLockLocked() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsParentalLockLocked\n\n", .{  });
        return undefined;
    }
    pub fn BIsAppBlocked(nAppID: t.AppId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsAppBlocked:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn BIsAppInBlockList(nAppID: t.AppId_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsAppInBlockList:\n\t- nAppID = {any}\n\n", .{ nAppID });
        return undefined;
    }
    pub fn BIsFeatureBlocked(eFeature: t.EParentalFeature) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsFeatureBlocked:\n\t- eFeature = {any}\n\n", .{ eFeature });
        return undefined;
    }
    pub fn BIsFeatureInBlockList(eFeature: t.EParentalFeature) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamParentalSettings_BIsFeatureInBlockList:\n\t- eFeature = {any}\n\n", .{ eFeature });
        return undefined;
    }
};
pub fn SteamAPI_SteamParentalSettings_v001() callconv(.C) [*c]t.ISteamParentalSettings {
    p("NOT IMPLEMENTED SteamAPI_SteamParentalSettings_v001\n\n", .{  });
    return undefined;
}
pub const ISteamRemotePlay = struct {
    pub const version = "STEAMREMOTEPLAY_INTERFACE_VERSION001";
    pub fn GetSessionCount() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionCount\n\n", .{  });
        return undefined;
    }
    pub fn GetSessionID(iSessionIndex: i32) callconv(.C) t.RemotePlaySessionID_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionID:\n\t- iSessionIndex = {any}\n\n", .{ iSessionIndex });
        return undefined;
    }
    pub fn GetSessionSteamID(unSessionID: t.RemotePlaySessionID_t) callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionSteamID:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
        return undefined;
    }
    pub fn GetSessionClientName(unSessionID: t.RemotePlaySessionID_t) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionClientName:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
        return undefined;
    }
    pub fn GetSessionClientFormFactor(unSessionID: t.RemotePlaySessionID_t) callconv(.C) t.ESteamDeviceFormFactor {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_GetSessionClientFormFactor:\n\t- unSessionID = {any}\n\n", .{ unSessionID });
        return undefined;
    }
    pub fn BGetSessionClientResolution(unSessionID: t.RemotePlaySessionID_t, pnResolutionX: [*c]i32, pnResolutionY: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_BGetSessionClientResolution:\n\t- unSessionID = {any}\n\t- pnResolutionX = {any}\n\t- pnResolutionY = {any}\n\n", .{ unSessionID, pnResolutionX, pnResolutionY });
        return undefined;
    }
    pub fn BSendRemotePlayTogetherInvite(steamIDFriend: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamRemotePlay_BSendRemotePlayTogetherInvite:\n\t- steamIDFriend = {any}\n\n", .{ steamIDFriend });
        return undefined;
    }
};
pub fn SteamAPI_SteamRemotePlay_v001() callconv(.C) [*c]t.ISteamRemotePlay {
    p("NOT IMPLEMENTED SteamAPI_SteamRemotePlay_v001\n\n", .{  });
    return undefined;
}
pub const ISteamNetworkingMessages = struct {
    pub const version = "SteamNetworkingMessages002";
    pub fn SendMessageToUser(identityRemote: [*c]const t.SteamNetworkingIdentity, pubData: [*c]const anyopaque, cubData: t.uint32, nSendFlags: i32, nRemoteChannel: i32) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_SendMessageToUser:\n\t- identityRemote = {any}\n\t- pubData = {any}\n\t- cubData = {any}\n\t- nSendFlags = {any}\n\t- nRemoteChannel = {any}\n\n", .{ identityRemote, pubData, cubData, nSendFlags, nRemoteChannel });
        return undefined;
    }
    pub fn ReceiveMessagesOnChannel(nLocalChannel: i32, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_ReceiveMessagesOnChannel:\n\t- nLocalChannel = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ nLocalChannel, ppOutMessages, nMaxMessages });
        return undefined;
    }
    pub fn AcceptSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_AcceptSessionWithUser:\n\t- identityRemote = {any}\n\n", .{ identityRemote });
        return undefined;
    }
    pub fn CloseSessionWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_CloseSessionWithUser:\n\t- identityRemote = {any}\n\n", .{ identityRemote });
        return undefined;
    }
    pub fn CloseChannelWithUser(identityRemote: [*c]const t.SteamNetworkingIdentity, nLocalChannel: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_CloseChannelWithUser:\n\t- identityRemote = {any}\n\t- nLocalChannel = {any}\n\n", .{ identityRemote, nLocalChannel });
        return undefined;
    }
    pub fn GetSessionConnectionInfo(identityRemote: [*c]const t.SteamNetworkingIdentity, pConnectionInfo: [*c]t.SteamNetConnectionInfo_t, pQuickStatus: [*c]t.SteamNetConnectionRealTimeStatus_t) callconv(.C) t.ESteamNetworkingConnectionState {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingMessages_GetSessionConnectionInfo:\n\t- identityRemote = {any}\n\t- pConnectionInfo = {any}\n\t- pQuickStatus = {any}\n\n", .{ identityRemote, pConnectionInfo, pQuickStatus });
        return undefined;
    }
};
pub fn SteamAPI_SteamNetworkingMessages_SteamAPI_v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
    p("NOT IMPLEMENTED SteamAPI_SteamNetworkingMessages_SteamAPI_v002\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002() callconv(.C) [*c]t.ISteamNetworkingMessages {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworkingMessages_SteamAPI_v002\n\n", .{  });
    return undefined;
}
pub const ISteamNetworkingSockets = struct {
    pub const version = "SteamNetworkingSockets012";
    pub fn CreateListenSocketIP(localAddress: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketIP:\n\t- localAddress = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ localAddress, nOptions, pOptions });
        return undefined;
    }
    pub fn ConnectByIPAddress(address: [*c]const t.SteamNetworkingIPAddr, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectByIPAddress:\n\t- address = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ address, nOptions, pOptions });
        return undefined;
    }
    pub fn CreateListenSocketP2P(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2P:\n\t- nLocalVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ nLocalVirtualPort, nOptions, pOptions });
        return undefined;
    }
    pub fn ConnectP2P(identityRemote: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectP2P:\n\t- identityRemote = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ identityRemote, nRemoteVirtualPort, nOptions, pOptions });
        return undefined;
    }
    pub fn AcceptConnection(hConn: t.HSteamNetConnection) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_AcceptConnection:\n\t- hConn = {any}\n\n", .{ hConn });
        return undefined;
    }
    pub fn CloseConnection(hPeer: t.HSteamNetConnection, nReason: i32, pszDebug: [*c]const u8, bEnableLinger: bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CloseConnection:\n\t- hPeer = {any}\n\t- nReason = {any}\n\t- pszDebug = {any}\n\t- bEnableLinger = {any}\n\n", .{ hPeer, nReason, pszDebug, bEnableLinger });
        return undefined;
    }
    pub fn CloseListenSocket(hSocket: t.HSteamListenSocket) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CloseListenSocket:\n\t- hSocket = {any}\n\n", .{ hSocket });
        return undefined;
    }
    pub fn SetConnectionUserData(hPeer: t.HSteamNetConnection, nUserData: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionUserData:\n\t- hPeer = {any}\n\t- nUserData = {any}\n\n", .{ hPeer, nUserData });
        return undefined;
    }
    pub fn GetConnectionUserData(hPeer: t.HSteamNetConnection) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionUserData:\n\t- hPeer = {any}\n\n", .{ hPeer });
        return undefined;
    }
    pub fn SetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionName:\n\t- hPeer = {any}\n\t- pszName = {any}\n\n", .{ hPeer, pszName });
        return undefined;
    }
    pub fn GetConnectionName(hPeer: t.HSteamNetConnection, pszName: [*c]u8, nMaxLen: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionName:\n\t- hPeer = {any}\n\t- pszName = {any}\n\t- nMaxLen = {any}\n\n", .{ hPeer, pszName, nMaxLen });
        return undefined;
    }
    pub fn SendMessageToConnection(hConn: t.HSteamNetConnection, pData: [*c]const anyopaque, cbData: t.uint32, nSendFlags: i32, pOutMessageNumber: [*c]i32) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SendMessageToConnection:\n\t- hConn = {any}\n\t- pData = {any}\n\t- cbData = {any}\n\t- nSendFlags = {any}\n\t- pOutMessageNumber = {any}\n\n", .{ hConn, pData, cbData, nSendFlags, pOutMessageNumber });
        return undefined;
    }
    pub fn SendMessages(nMessages: i32, pMessages: [*c]const [*c]t.SteamNetworkingMessage_t, pOutMessageNumberOrResult: [*c]i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SendMessages:\n\t- nMessages = {any}\n\t- pMessages = {any}\n\t- pOutMessageNumberOrResult = {any}\n\n", .{ nMessages, pMessages, pOutMessageNumberOrResult });
        return undefined;
    }
    pub fn FlushMessagesOnConnection(hConn: t.HSteamNetConnection) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_FlushMessagesOnConnection:\n\t- hConn = {any}\n\n", .{ hConn });
        return undefined;
    }
    pub fn ReceiveMessagesOnConnection(hConn: t.HSteamNetConnection, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnConnection:\n\t- hConn = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ hConn, ppOutMessages, nMaxMessages });
        return undefined;
    }
    pub fn GetConnectionInfo(hConn: t.HSteamNetConnection, pInfo: [*c]t.SteamNetConnectionInfo_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionInfo:\n\t- hConn = {any}\n\t- pInfo = {any}\n\n", .{ hConn, pInfo });
        return undefined;
    }
    pub fn GetConnectionRealTimeStatus(hConn: t.HSteamNetConnection, pStatus: [*c]t.SteamNetConnectionRealTimeStatus_t, nLanes: i32, pLanes: [*c]t.SteamNetConnectionRealTimeLaneStatus_t) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetConnectionRealTimeStatus:\n\t- hConn = {any}\n\t- pStatus = {any}\n\t- nLanes = {any}\n\t- pLanes = {any}\n\n", .{ hConn, pStatus, nLanes, pLanes });
        return undefined;
    }
    pub fn GetDetailedConnectionStatus(hConn: t.HSteamNetConnection, pszBuf: [*c]u8, cbBuf: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetDetailedConnectionStatus:\n\t- hConn = {any}\n\t- pszBuf = {any}\n\t- cbBuf = {any}\n\n", .{ hConn, pszBuf, cbBuf });
        return undefined;
    }
    pub fn GetListenSocketAddress(hSocket: t.HSteamListenSocket, address: [*c]t.SteamNetworkingIPAddr) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetListenSocketAddress:\n\t- hSocket = {any}\n\t- address = {any}\n\n", .{ hSocket, address });
        return undefined;
    }
    pub fn CreateSocketPair(pOutConnection1: [*c]t.HSteamNetConnection, pOutConnection2: [*c]t.HSteamNetConnection, bUseNetworkLoopback: bool, pIdentity1: [*c]const t.SteamNetworkingIdentity, pIdentity2: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateSocketPair:\n\t- pOutConnection1 = {any}\n\t- pOutConnection2 = {any}\n\t- bUseNetworkLoopback = {any}\n\t- pIdentity1 = {any}\n\t- pIdentity2 = {any}\n\n", .{ pOutConnection1, pOutConnection2, bUseNetworkLoopback, pIdentity1, pIdentity2 });
        return undefined;
    }
    pub fn ConfigureConnectionLanes(hConn: t.HSteamNetConnection, nNumLanes: i32, pLanePriorities: [*c]const i32, pLaneWeights: [*c]const t.uint16) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConfigureConnectionLanes:\n\t- hConn = {any}\n\t- nNumLanes = {any}\n\t- pLanePriorities = {any}\n\t- pLaneWeights = {any}\n\n", .{ hConn, nNumLanes, pLanePriorities, pLaneWeights });
        return undefined;
    }
    pub fn GetIdentity(pIdentity: [*c]t.SteamNetworkingIdentity) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetIdentity:\n\t- pIdentity = {any}\n\n", .{ pIdentity });
        return undefined;
    }
    pub fn InitAuthentication() callconv(.C) t.ESteamNetworkingAvailability {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_InitAuthentication\n\n", .{  });
        return undefined;
    }
    pub fn GetAuthenticationStatus(pDetails: [*c]t.SteamNetAuthenticationStatus_t) callconv(.C) t.ESteamNetworkingAvailability {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetAuthenticationStatus:\n\t- pDetails = {any}\n\n", .{ pDetails });
        return undefined;
    }
    pub fn CreatePollGroup() callconv(.C) t.HSteamNetPollGroup {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreatePollGroup\n\n", .{  });
        return undefined;
    }
    pub fn DestroyPollGroup(hPollGroup: t.HSteamNetPollGroup) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_DestroyPollGroup:\n\t- hPollGroup = {any}\n\n", .{ hPollGroup });
        return undefined;
    }
    pub fn SetConnectionPollGroup(hConn: t.HSteamNetConnection, hPollGroup: t.HSteamNetPollGroup) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetConnectionPollGroup:\n\t- hConn = {any}\n\t- hPollGroup = {any}\n\n", .{ hConn, hPollGroup });
        return undefined;
    }
    pub fn ReceiveMessagesOnPollGroup(hPollGroup: t.HSteamNetPollGroup, ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceiveMessagesOnPollGroup:\n\t- hPollGroup = {any}\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ hPollGroup, ppOutMessages, nMaxMessages });
        return undefined;
    }
    pub fn ReceivedRelayAuthTicket(pvTicket: [*c]const anyopaque, cbTicket: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceivedRelayAuthTicket:\n\t- pvTicket = {any}\n\t- cbTicket = {any}\n\t- pOutParsedTicket = {any}\n\n", .{ pvTicket, cbTicket, pOutParsedTicket });
        return undefined;
    }
    pub fn FindRelayAuthTicketForServer(identityGameServer: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, pOutParsedTicket: [*c]t.SteamDatagramRelayAuthTicket) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_FindRelayAuthTicketForServer:\n\t- identityGameServer = {any}\n\t- nRemoteVirtualPort = {any}\n\t- pOutParsedTicket = {any}\n\n", .{ identityGameServer, nRemoteVirtualPort, pOutParsedTicket });
        return undefined;
    }
    pub fn ConnectToHostedDedicatedServer(identityTarget: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectToHostedDedicatedServer:\n\t- identityTarget = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ identityTarget, nRemoteVirtualPort, nOptions, pOptions });
        return undefined;
    }
    pub fn GetHostedDedicatedServerPort() callconv(.C) t.uint16 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPort\n\n", .{  });
        return undefined;
    }
    pub fn GetHostedDedicatedServerPOPID() callconv(.C) t.SteamNetworkingPOPID {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerPOPID\n\n", .{  });
        return undefined;
    }
    pub fn GetHostedDedicatedServerAddress(pRouting: [*c]t.SteamDatagramHostedAddress) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetHostedDedicatedServerAddress:\n\t- pRouting = {any}\n\n", .{ pRouting });
        return undefined;
    }
    pub fn CreateHostedDedicatedServerListenSocket(nLocalVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateHostedDedicatedServerListenSocket:\n\t- nLocalVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ nLocalVirtualPort, nOptions, pOptions });
        return undefined;
    }
    pub fn GetGameCoordinatorServerLogin(pLoginInfo: [*c]t.SteamDatagramGameCoordinatorServerLogin, pcbSignedBlob: [*c]i32, pBlob: [*c]anyopaque) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetGameCoordinatorServerLogin:\n\t- pLoginInfo = {any}\n\t- pcbSignedBlob = {any}\n\t- pBlob = {any}\n\n", .{ pLoginInfo, pcbSignedBlob, pBlob });
        return undefined;
    }
    pub fn ConnectP2PCustomSignaling(pSignaling: [*c]t.ISteamNetworkingConnectionSignaling, pPeerIdentity: [*c]const t.SteamNetworkingIdentity, nRemoteVirtualPort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamNetConnection {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ConnectP2PCustomSignaling:\n\t- pSignaling = {any}\n\t- pPeerIdentity = {any}\n\t- nRemoteVirtualPort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ pSignaling, pPeerIdentity, nRemoteVirtualPort, nOptions, pOptions });
        return undefined;
    }
    pub fn ReceivedP2PCustomSignal(pMsg: [*c]const anyopaque, cbMsg: i32, pContext: [*c]t.ISteamNetworkingSignalingRecvContext) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ReceivedP2PCustomSignal:\n\t- pMsg = {any}\n\t- cbMsg = {any}\n\t- pContext = {any}\n\n", .{ pMsg, cbMsg, pContext });
        return undefined;
    }
    pub fn GetCertificateRequest(pcbBlob: [*c]i32, pBlob: [*c]anyopaque, errMsg: [*c]t.SteamNetworkingErrMsg) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetCertificateRequest:\n\t- pcbBlob = {any}\n\t- pBlob = {any}\n\t- errMsg = {any}\n\n", .{ pcbBlob, pBlob, errMsg });
        return undefined;
    }
    pub fn SetCertificate(pCertificate: [*c]const anyopaque, cbCertificate: i32, errMsg: [*c]t.SteamNetworkingErrMsg) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_SetCertificate:\n\t- pCertificate = {any}\n\t- cbCertificate = {any}\n\t- errMsg = {any}\n\n", .{ pCertificate, cbCertificate, errMsg });
        return undefined;
    }
    pub fn ResetIdentity(pIdentity: [*c]const t.SteamNetworkingIdentity) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_ResetIdentity:\n\t- pIdentity = {any}\n\n", .{ pIdentity });
        return undefined;
    }
    pub fn RunCallbacks() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_RunCallbacks\n\n", .{  });
        return undefined;
    }
    pub fn BeginAsyncRequestFakeIP(nNumPorts: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_BeginAsyncRequestFakeIP:\n\t- nNumPorts = {any}\n\n", .{ nNumPorts });
        return undefined;
    }
    pub fn GetFakeIP(idxFirstPort: i32, pInfo: [*c]t.SteamNetworkingFakeIPResult_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetFakeIP:\n\t- idxFirstPort = {any}\n\t- pInfo = {any}\n\n", .{ idxFirstPort, pInfo });
        return undefined;
    }
    pub fn CreateListenSocketP2PFakeIP(idxFakePort: i32, nOptions: i32, pOptions: [*c]const t.SteamNetworkingConfigValue_t) callconv(.C) t.HSteamListenSocket {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateListenSocketP2PFakeIP:\n\t- idxFakePort = {any}\n\t- nOptions = {any}\n\t- pOptions = {any}\n\n", .{ idxFakePort, nOptions, pOptions });
        return undefined;
    }
    pub fn GetRemoteFakeIPForConnection(hConn: t.HSteamNetConnection, pOutAddr: [*c]t.SteamNetworkingIPAddr) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_GetRemoteFakeIPForConnection:\n\t- hConn = {any}\n\t- pOutAddr = {any}\n\n", .{ hConn, pOutAddr });
        return undefined;
    }
    pub fn CreateFakeUDPPort(idxFakeServerPort: i32) callconv(.C) [*c]t.ISteamNetworkingFakeUDPPort {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingSockets_CreateFakeUDPPort:\n\t- idxFakeServerPort = {any}\n\n", .{ idxFakeServerPort });
        return undefined;
    }
};
pub fn SteamAPI_SteamNetworkingSockets_SteamAPI_v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
    p("NOT IMPLEMENTED SteamAPI_SteamNetworkingSockets_SteamAPI_v012\n\n", .{  });
    return undefined;
}
pub fn SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012() callconv(.C) [*c]t.ISteamNetworkingSockets {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerNetworkingSockets_SteamAPI_v012\n\n", .{  });
    return undefined;
}
pub const ISteamNetworkingUtils = struct {
    pub const version = "SteamNetworkingUtils004";
    pub fn AllocateMessage(cbAllocateBuffer: i32) callconv(.C) [*c]t.SteamNetworkingMessage_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_AllocateMessage:\n\t- cbAllocateBuffer = {any}\n\n", .{ cbAllocateBuffer });
        return undefined;
    }
    pub fn InitRelayNetworkAccess() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_InitRelayNetworkAccess\n\n", .{  });
        return undefined;
    }
    pub fn GetRelayNetworkStatus(pDetails: [*c]t.SteamRelayNetworkStatus_t) callconv(.C) t.ESteamNetworkingAvailability {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetRelayNetworkStatus:\n\t- pDetails = {any}\n\n", .{ pDetails });
        return undefined;
    }
    pub fn GetLocalPingLocation(result: [*c]t.SteamNetworkPingLocation_t) callconv(.C) f32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetLocalPingLocation:\n\t- result = {any}\n\n", .{ result });
        return undefined;
    }
    pub fn EstimatePingTimeBetweenTwoLocations(location1: [*c]const t.SteamNetworkPingLocation_t, location2: [*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_EstimatePingTimeBetweenTwoLocations:\n\t- location1 = {any}\n\t- location2 = {any}\n\n", .{ location1, location2 });
        return undefined;
    }
    pub fn EstimatePingTimeFromLocalHost(remoteLocation: [*c]const t.SteamNetworkPingLocation_t) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_EstimatePingTimeFromLocalHost:\n\t- remoteLocation = {any}\n\n", .{ remoteLocation });
        return undefined;
    }
    pub fn ConvertPingLocationToString(location: [*c]const t.SteamNetworkPingLocation_t, pszBuf: [*c]u8, cchBufSize: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_ConvertPingLocationToString:\n\t- location = {any}\n\t- pszBuf = {any}\n\t- cchBufSize = {any}\n\n", .{ location, pszBuf, cchBufSize });
        return undefined;
    }
    pub fn ParsePingLocationString(pszString: [*c]const u8, result: [*c]t.SteamNetworkPingLocation_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_ParsePingLocationString:\n\t- pszString = {any}\n\t- result = {any}\n\n", .{ pszString, result });
        return undefined;
    }
    pub fn CheckPingDataUpToDate(flMaxAgeSeconds: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_CheckPingDataUpToDate:\n\t- flMaxAgeSeconds = {any}\n\n", .{ flMaxAgeSeconds });
        return undefined;
    }
    pub fn GetPingToDataCenter(popID: t.SteamNetworkingPOPID, pViaRelayPoP: [*c]t.SteamNetworkingPOPID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPingToDataCenter:\n\t- popID = {any}\n\t- pViaRelayPoP = {any}\n\n", .{ popID, pViaRelayPoP });
        return undefined;
    }
    pub fn GetDirectPingToPOP(popID: t.SteamNetworkingPOPID) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetDirectPingToPOP:\n\t- popID = {any}\n\n", .{ popID });
        return undefined;
    }
    pub fn GetPOPCount() callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPOPCount\n\n", .{  });
        return undefined;
    }
    pub fn GetPOPList(list: [*c]t.SteamNetworkingPOPID, nListSz: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetPOPList:\n\t- list = {any}\n\t- nListSz = {any}\n\n", .{ list, nListSz });
        return undefined;
    }
    pub fn GetLocalTimestamp() callconv(.C) t.SteamNetworkingMicroseconds {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetLocalTimestamp\n\n", .{  });
        return undefined;
    }
    pub fn SetDebugOutputFunction(eDetailLevel: t.ESteamNetworkingSocketsDebugOutputType, pfnFunc: t.FSteamNetworkingSocketsDebugOutput) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetDebugOutputFunction:\n\t- eDetailLevel = {any}\n\t- pfnFunc = {any}\n\n", .{ eDetailLevel, pfnFunc });
        return undefined;
    }
    pub fn IsFakeIPv4(nIPv4: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_IsFakeIPv4:\n\t- nIPv4 = {any}\n\n", .{ nIPv4 });
        return undefined;
    }
    pub fn GetIPv4FakeIPType(nIPv4: t.uint32) callconv(.C) t.ESteamNetworkingFakeIPType {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetIPv4FakeIPType:\n\t- nIPv4 = {any}\n\n", .{ nIPv4 });
        return undefined;
    }
    pub fn GetRealIdentityForFakeIP(fakeIP: [*c]const t.SteamNetworkingIPAddr, pOutRealIdentity: [*c]t.SteamNetworkingIdentity) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetRealIdentityForFakeIP:\n\t- fakeIP = {any}\n\t- pOutRealIdentity = {any}\n\n", .{ fakeIP, pOutRealIdentity });
        return undefined;
    }
    pub fn SetGlobalConfigValueInt32(eValue: t.ESteamNetworkingConfigValue, val: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueInt32:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
        return undefined;
    }
    pub fn SetGlobalConfigValueFloat(eValue: t.ESteamNetworkingConfigValue, val: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueFloat:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
        return undefined;
    }
    pub fn SetGlobalConfigValueString(eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValueString:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
        return undefined;
    }
    pub fn SetGlobalConfigValuePtr(eValue: t.ESteamNetworkingConfigValue, val: [*c]anyopaque) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalConfigValuePtr:\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ eValue, val });
        return undefined;
    }
    pub fn SetConnectionConfigValueInt32(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueInt32:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
        return undefined;
    }
    pub fn SetConnectionConfigValueFloat(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueFloat:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
        return undefined;
    }
    pub fn SetConnectionConfigValueString(hConn: t.HSteamNetConnection, eValue: t.ESteamNetworkingConfigValue, val: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConnectionConfigValueString:\n\t- hConn = {any}\n\t- eValue = {any}\n\t- val = {any}\n\n", .{ hConn, eValue, val });
        return undefined;
    }
    pub fn SetGlobalCallback_SteamNetConnectionStatusChanged(fnCallback: t.FnSteamNetConnectionStatusChanged) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetConnectionStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetGlobalCallback_SteamNetAuthenticationStatusChanged(fnCallback: t.FnSteamNetAuthenticationStatusChanged) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamNetAuthenticationStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetGlobalCallback_SteamRelayNetworkStatusChanged(fnCallback: t.FnSteamRelayNetworkStatusChanged) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_SteamRelayNetworkStatusChanged:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetGlobalCallback_FakeIPResult(fnCallback: t.FnSteamNetworkingFakeIPResult) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_FakeIPResult:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetGlobalCallback_MessagesSessionRequest(fnCallback: t.FnSteamNetworkingMessagesSessionRequest) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionRequest:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetGlobalCallback_MessagesSessionFailed(fnCallback: t.FnSteamNetworkingMessagesSessionFailed) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetGlobalCallback_MessagesSessionFailed:\n\t- fnCallback = {any}\n\n", .{ fnCallback });
        return undefined;
    }
    pub fn SetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, eDataType: t.ESteamNetworkingConfigDataType, pArg: [*c]const anyopaque) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConfigValue:\n\t- eValue = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\t- eDataType = {any}\n\t- pArg = {any}\n\n", .{ eValue, eScopeType, scopeObj, eDataType, pArg });
        return undefined;
    }
    pub fn SetConfigValueStruct(opt: [*c]const t.SteamNetworkingConfigValue_t, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SetConfigValueStruct:\n\t- opt = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\n", .{ opt, eScopeType, scopeObj });
        return undefined;
    }
    pub fn GetConfigValue(eValue: t.ESteamNetworkingConfigValue, eScopeType: t.ESteamNetworkingConfigScope, scopeObj: i32, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pResult: [*c]anyopaque, cbResult: [*c]t.size_t) callconv(.C) t.ESteamNetworkingGetConfigValueResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetConfigValue:\n\t- eValue = {any}\n\t- eScopeType = {any}\n\t- scopeObj = {any}\n\t- pOutDataType = {any}\n\t- pResult = {any}\n\t- cbResult = {any}\n\n", .{ eValue, eScopeType, scopeObj, pOutDataType, pResult, cbResult });
        return undefined;
    }
    pub fn GetConfigValueInfo(eValue: t.ESteamNetworkingConfigValue, pOutDataType: [*c]t.ESteamNetworkingConfigDataType, pOutScope: [*c]t.ESteamNetworkingConfigScope) callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_GetConfigValueInfo:\n\t- eValue = {any}\n\t- pOutDataType = {any}\n\t- pOutScope = {any}\n\n", .{ eValue, pOutDataType, pOutScope });
        return undefined;
    }
    pub fn IterateGenericEditableConfigValues(eCurrent: t.ESteamNetworkingConfigValue, bEnumerateDevVars: bool) callconv(.C) t.ESteamNetworkingConfigValue {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_IterateGenericEditableConfigValues:\n\t- eCurrent = {any}\n\t- bEnumerateDevVars = {any}\n\n", .{ eCurrent, bEnumerateDevVars });
        return undefined;
    }
    pub fn SteamNetworkingIPAddr_ToString(addr: [*c]const t.SteamNetworkingIPAddr, buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ToString:\n\t- addr = {any}\n\t- buf = {any}\n\t- cbBuf = {any}\n\t- bWithPort = {any}\n\n", .{ addr, buf, cbBuf, bWithPort });
        return undefined;
    }
    pub fn SteamNetworkingIPAddr_ParseString(pAddr: [*c]t.SteamNetworkingIPAddr, pszStr: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_ParseString:\n\t- pAddr = {any}\n\t- pszStr = {any}\n\n", .{ pAddr, pszStr });
        return undefined;
    }
    pub fn SteamNetworkingIPAddr_GetFakeIPType(addr: [*c]const t.SteamNetworkingIPAddr) callconv(.C) t.ESteamNetworkingFakeIPType {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIPAddr_GetFakeIPType:\n\t- addr = {any}\n\n", .{ addr });
        return undefined;
    }
    pub fn SteamNetworkingIdentity_ToString(identity: [*c]const t.SteamNetworkingIdentity, buf: [*c]u8, cbBuf: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ToString:\n\t- identity = {any}\n\t- buf = {any}\n\t- cbBuf = {any}\n\n", .{ identity, buf, cbBuf });
        return undefined;
    }
    pub fn SteamNetworkingIdentity_ParseString(pIdentity: [*c]t.SteamNetworkingIdentity, pszStr: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingUtils_SteamNetworkingIdentity_ParseString:\n\t- pIdentity = {any}\n\t- pszStr = {any}\n\n", .{ pIdentity, pszStr });
        return undefined;
    }
};
pub fn SteamAPI_SteamNetworkingUtils_SteamAPI_v004() callconv(.C) [*c]t.ISteamNetworkingUtils {
    p("NOT IMPLEMENTED SteamAPI_SteamNetworkingUtils_SteamAPI_v004\n\n", .{  });
    return undefined;
}
pub const ISteamGameServer = struct {
    pub const version = "SteamGameServer014";
    pub fn SetProduct(pszProduct: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetProduct:\n\t- pszProduct = {any}\n\n", .{ pszProduct });
        return undefined;
    }
    pub fn SetGameDescription(pszGameDescription: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameDescription:\n\t- pszGameDescription = {any}\n\n", .{ pszGameDescription });
        return undefined;
    }
    pub fn SetModDir(pszModDir: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetModDir:\n\t- pszModDir = {any}\n\n", .{ pszModDir });
        return undefined;
    }
    pub fn SetDedicatedServer(bDedicated: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetDedicatedServer:\n\t- bDedicated = {any}\n\n", .{ bDedicated });
        return undefined;
    }
    pub fn LogOn(pszToken: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOn:\n\t- pszToken = {any}\n\n", .{ pszToken });
        return undefined;
    }
    pub fn LogOnAnonymous() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOnAnonymous\n\n", .{  });
        return undefined;
    }
    pub fn LogOff() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_LogOff\n\n", .{  });
        return undefined;
    }
    pub fn BLoggedOn() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BLoggedOn\n\n", .{  });
        return undefined;
    }
    pub fn BSecure() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BSecure\n\n", .{  });
        return undefined;
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetSteamID\n\n", .{  });
        return undefined;
    }
    pub fn WasRestartRequested() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_WasRestartRequested\n\n", .{  });
        return undefined;
    }
    pub fn SetMaxPlayerCount(cPlayersMax: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetMaxPlayerCount:\n\t- cPlayersMax = {any}\n\n", .{ cPlayersMax });
        return undefined;
    }
    pub fn SetBotPlayerCount(cBotplayers: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetBotPlayerCount:\n\t- cBotplayers = {any}\n\n", .{ cBotplayers });
        return undefined;
    }
    pub fn SetServerName(pszServerName: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetServerName:\n\t- pszServerName = {any}\n\n", .{ pszServerName });
        return undefined;
    }
    pub fn SetMapName(pszMapName: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetMapName:\n\t- pszMapName = {any}\n\n", .{ pszMapName });
        return undefined;
    }
    pub fn SetPasswordProtected(bPasswordProtected: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetPasswordProtected:\n\t- bPasswordProtected = {any}\n\n", .{ bPasswordProtected });
        return undefined;
    }
    pub fn SetSpectatorPort(unSpectatorPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetSpectatorPort:\n\t- unSpectatorPort = {any}\n\n", .{ unSpectatorPort });
        return undefined;
    }
    pub fn SetSpectatorServerName(pszSpectatorServerName: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetSpectatorServerName:\n\t- pszSpectatorServerName = {any}\n\n", .{ pszSpectatorServerName });
        return undefined;
    }
    pub fn ClearAllKeyValues() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_ClearAllKeyValues\n\n", .{  });
        return undefined;
    }
    pub fn SetKeyValue(pKey: [*c]const u8, pValue: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetKeyValue:\n\t- pKey = {any}\n\t- pValue = {any}\n\n", .{ pKey, pValue });
        return undefined;
    }
    pub fn SetGameTags(pchGameTags: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameTags:\n\t- pchGameTags = {any}\n\n", .{ pchGameTags });
        return undefined;
    }
    pub fn SetGameData(pchGameData: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetGameData:\n\t- pchGameData = {any}\n\n", .{ pchGameData });
        return undefined;
    }
    pub fn SetRegion(pszRegion: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetRegion:\n\t- pszRegion = {any}\n\n", .{ pszRegion });
        return undefined;
    }
    pub fn SetAdvertiseServerActive(bActive: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SetAdvertiseServerActive:\n\t- bActive = {any}\n\n", .{ bActive });
        return undefined;
    }
    pub fn GetAuthSessionTicket(pTicket: [*c]anyopaque, cbMaxTicket: i32, pcbTicket: [*c]t.uint32) callconv(.C) t.HAuthTicket {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetAuthSessionTicket:\n\t- pTicket = {any}\n\t- cbMaxTicket = {any}\n\t- pcbTicket = {any}\n\n", .{ pTicket, cbMaxTicket, pcbTicket });
        return undefined;
    }
    pub fn BeginAuthSession(pAuthTicket: [*c]const anyopaque, cbAuthTicket: i32, steamID: t.CSteamID) callconv(.C) t.EBeginAuthSessionResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BeginAuthSession:\n\t- pAuthTicket = {any}\n\t- cbAuthTicket = {any}\n\t- steamID = {any}\n\n", .{ pAuthTicket, cbAuthTicket, steamID });
        return undefined;
    }
    pub fn EndAuthSession(steamID: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_EndAuthSession:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn CancelAuthTicket(hAuthTicket: t.HAuthTicket) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_CancelAuthTicket:\n\t- hAuthTicket = {any}\n\n", .{ hAuthTicket });
        return undefined;
    }
    pub fn UserHasLicenseForApp(steamID: t.CSteamID, appID: t.AppId_t) callconv(.C) t.EUserHasLicenseForAppResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_UserHasLicenseForApp:\n\t- steamID = {any}\n\t- appID = {any}\n\n", .{ steamID, appID });
        return undefined;
    }
    pub fn RequestUserGroupStatus(steamIDUser: t.CSteamID, steamIDGroup: t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_RequestUserGroupStatus:\n\t- steamIDUser = {any}\n\t- steamIDGroup = {any}\n\n", .{ steamIDUser, steamIDGroup });
        return undefined;
    }
    pub fn GetGameplayStats() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetGameplayStats\n\n", .{  });
        return undefined;
    }
    pub fn GetServerReputation() callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetServerReputation\n\n", .{  });
        return undefined;
    }
    pub fn GetPublicIP() callconv(.C) t.SteamIPAddress_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetPublicIP\n\n", .{  });
        return undefined;
    }
    pub fn HandleIncomingPacket(pData: [*c]const anyopaque, cbData: i32, srcIP: t.uint32, srcPort: t.uint16) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_HandleIncomingPacket:\n\t- pData = {any}\n\t- cbData = {any}\n\t- srcIP = {any}\n\t- srcPort = {any}\n\n", .{ pData, cbData, srcIP, srcPort });
        return undefined;
    }
    pub fn GetNextOutgoingPacket(pOut: [*c]anyopaque, cbMaxOut: i32, pNetAdr: [*c]t.uint32, pPort: [*c]t.uint16) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_GetNextOutgoingPacket:\n\t- pOut = {any}\n\t- cbMaxOut = {any}\n\t- pNetAdr = {any}\n\t- pPort = {any}\n\n", .{ pOut, cbMaxOut, pNetAdr, pPort });
        return undefined;
    }
    pub fn AssociateWithClan(steamIDClan: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_AssociateWithClan:\n\t- steamIDClan = {any}\n\n", .{ steamIDClan });
        return undefined;
    }
    pub fn ComputeNewPlayerCompatibility(steamIDNewPlayer: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_ComputeNewPlayerCompatibility:\n\t- steamIDNewPlayer = {any}\n\n", .{ steamIDNewPlayer });
        return undefined;
    }
    pub fn SendUserConnectAndAuthenticate_DEPRECATED(unIPClient: t.uint32, pvAuthBlob: [*c]const anyopaque, cubAuthBlobSize: t.uint32, pSteamIDUser: [*c]t.CSteamID) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SendUserConnectAndAuthenticate_DEPRECATED:\n\t- unIPClient = {any}\n\t- pvAuthBlob = {any}\n\t- cubAuthBlobSize = {any}\n\t- pSteamIDUser = {any}\n\n", .{ unIPClient, pvAuthBlob, cubAuthBlobSize, pSteamIDUser });
        return undefined;
    }
    pub fn CreateUnauthenticatedUserConnection() callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_CreateUnauthenticatedUserConnection\n\n", .{  });
        return undefined;
    }
    pub fn SendUserDisconnect_DEPRECATED(steamIDUser: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_SendUserDisconnect_DEPRECATED:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
        return undefined;
    }
    pub fn BUpdateUserData(steamIDUser: t.CSteamID, pchPlayerName: [*c]const u8, uScore: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServer_BUpdateUserData:\n\t- steamIDUser = {any}\n\t- pchPlayerName = {any}\n\t- uScore = {any}\n\n", .{ steamIDUser, pchPlayerName, uScore });
        return undefined;
    }
};
pub fn SteamAPI_SteamGameServer_v014() callconv(.C) [*c]t.ISteamGameServer {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServer_v014\n\n", .{  });
    return undefined;
}
pub const ISteamGameServerStats = struct {
    pub const version = "SteamGameServerStats001";
    pub fn RequestUserStats(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_RequestUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
        return undefined;
    }
    pub fn GetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
        return undefined;
    }
    pub fn GetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, pData: [*c]f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pData = {any}\n\n", .{ steamIDUser, pchName, pData });
        return undefined;
    }
    pub fn GetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8, pbAchieved: [*c]bool) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_GetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- pbAchieved = {any}\n\n", .{ steamIDUser, pchName, pbAchieved });
        return undefined;
    }
    pub fn SetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, nData: i32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserStatInt32:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- nData = {any}\n\n", .{ steamIDUser, pchName, nData });
        return undefined;
    }
    pub fn SetUserStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, fData: f32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserStatFloat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- fData = {any}\n\n", .{ steamIDUser, pchName, fData });
        return undefined;
    }
    pub fn UpdateUserAvgRateStat(steamIDUser: t.CSteamID, pchName: [*c]const u8, flCountThisSession: f32, dSessionLength: f64) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_UpdateUserAvgRateStat:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\t- flCountThisSession = {any}\n\t- dSessionLength = {any}\n\n", .{ steamIDUser, pchName, flCountThisSession, dSessionLength });
        return undefined;
    }
    pub fn SetUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_SetUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\n", .{ steamIDUser, pchName });
        return undefined;
    }
    pub fn ClearUserAchievement(steamIDUser: t.CSteamID, pchName: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_ClearUserAchievement:\n\t- steamIDUser = {any}\n\t- pchName = {any}\n\n", .{ steamIDUser, pchName });
        return undefined;
    }
    pub fn StoreUserStats(steamIDUser: t.CSteamID) callconv(.C) t.SteamAPICall_t {
        p("NOT IMPLEMENTED SteamAPI_ISteamGameServerStats_StoreUserStats:\n\t- steamIDUser = {any}\n\n", .{ steamIDUser });
        return undefined;
    }
};
pub fn SteamAPI_SteamGameServerStats_v001() callconv(.C) [*c]t.ISteamGameServerStats {
    p("NOT IMPLEMENTED SteamAPI_SteamGameServerStats_v001\n\n", .{  });
    return undefined;
}
pub const ISteamNetworkingFakeUDPPort = struct {
    pub fn DestroyFakeUDPPort() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_DestroyFakeUDPPort\n\n", .{  });
        return undefined;
    }
    pub fn SendMessageToFakeIP(remoteAddress: [*c]const t.SteamNetworkingIPAddr, pData: [*c]const anyopaque, cbData: t.uint32, nSendFlags: i32) callconv(.C) t.EResult {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_SendMessageToFakeIP:\n\t- remoteAddress = {any}\n\t- pData = {any}\n\t- cbData = {any}\n\t- nSendFlags = {any}\n\n", .{ remoteAddress, pData, cbData, nSendFlags });
        return undefined;
    }
    pub fn ReceiveMessages(ppOutMessages: [*c][*c]t.SteamNetworkingMessage_t, nMaxMessages: i32) callconv(.C) i32 {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_ReceiveMessages:\n\t- ppOutMessages = {any}\n\t- nMaxMessages = {any}\n\n", .{ ppOutMessages, nMaxMessages });
        return undefined;
    }
    pub fn ScheduleCleanup(remoteAddress: [*c]const t.SteamNetworkingIPAddr) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_ISteamNetworkingFakeUDPPort_ScheduleCleanup:\n\t- remoteAddress = {any}\n\n", .{ remoteAddress });
        return undefined;
    }
};
