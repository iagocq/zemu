const t = @import("../steam_api.zig");
const p0 = t.p;
pub const SteamIPAddress_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamIPAddress_t"};
    m_rgubIPv6: [16]t.uint8,
    m_eType: t.ESteamIPType,
    pub fn IsSet() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsSet"}), .{ }, .{ }, @TypeOf(S.IsSet));
    }
};
pub const FriendGameInfo_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"FriendGameInfo_t"};
    m_gameID: t.CGameID,
    m_unGameIP: t.uint32,
    m_usGamePort: t.uint16,
    m_usQueryPort: t.uint16,
    m_steamIDLobby: t.CSteamID,
};
pub const MatchMakingKeyValuePair_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"MatchMakingKeyValuePair_t"};
    m_szKey: [256]u8,
    m_szValue: [256]u8,
    pub fn Construct() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Construct"}), .{ }, .{ }, @TypeOf(S.Construct));
    }
};
pub const servernetadr_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"servernetadr_t"};
    m_usConnectionPort: t.uint16,
    m_usQueryPort: t.uint16,
    m_unIP: t.uint32,
    pub fn Construct() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Construct"}), .{ }, .{ }, @TypeOf(S.Construct));
    }
    pub fn Init(ip: u32, usQueryPort: t.uint16, usConnectionPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Init"}), .{ ip, usQueryPort, usConnectionPort, }, .{ "ip", "usQueryPort", "usConnectionPort", }, @TypeOf(S.Init));
    }
    pub fn GetQueryPort() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryPort"}), .{ }, .{ }, @TypeOf(S.GetQueryPort));
    }
    pub fn SetQueryPort(usPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetQueryPort"}), .{ usPort, }, .{ "usPort", }, @TypeOf(S.SetQueryPort));
    }
    pub fn GetConnectionPort() callconv(.C) t.uint16 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionPort"}), .{ }, .{ }, @TypeOf(S.GetConnectionPort));
    }
    pub fn SetConnectionPort(usPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetConnectionPort"}), .{ usPort, }, .{ "usPort", }, @TypeOf(S.SetConnectionPort));
    }
    pub fn GetIP() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIP"}), .{ }, .{ }, @TypeOf(S.GetIP));
    }
    pub fn SetIP(unIP: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIP"}), .{ unIP, }, .{ "unIP", }, @TypeOf(S.SetIP));
    }
    pub fn GetConnectionAddressString() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetConnectionAddressString"}), .{ }, .{ }, @TypeOf(S.GetConnectionAddressString));
    }
    pub fn GetQueryAddressString() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetQueryAddressString"}), .{ }, .{ }, @TypeOf(S.GetQueryAddressString));
    }
    pub fn IsLessThan(netadr: [*c]const t.servernetadr_t, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsLessThan"}), .{ netadr, }, .{ "netadr", }, @TypeOf(S.IsLessThan));
    }
    pub fn Assign(that: [*c]const t.servernetadr_t, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Assign"}), .{ that, }, .{ "that", }, @TypeOf(S.Assign));
    }
};
pub const gameserveritem_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"gameserveritem_t"};
    m_NetAdr: t.servernetadr_t,
    m_nPing: i32,
    m_bHadSuccessfulResponse: bool,
    m_bDoNotRefresh: bool,
    m_szGameDir: [32]u8,
    m_szMap: [32]u8,
    m_szGameDescription: [64]u8,
    m_nAppID: t.uint32,
    m_nPlayers: i32,
    m_nMaxPlayers: i32,
    m_nBotPlayers: i32,
    m_bPassword: bool,
    m_bSecure: bool,
    m_ulTimeLastPlayed: t.uint32,
    m_nServerVersion: i32,
    m_szServerName: [64]u8,
    m_szGameTags: [128]u8,
    m_steamID: t.CSteamID,
    pub fn Construct() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Construct"}), .{ }, .{ }, @TypeOf(S.Construct));
    }
    pub fn GetName() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetName"}), .{ }, .{ }, @TypeOf(S.GetName));
    }
    pub fn SetName(pName: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetName"}), .{ pName, }, .{ "pName", }, @TypeOf(S.SetName));
    }
};
pub const SteamPartyBeaconLocation_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamPartyBeaconLocation_t"};
    m_eType: t.ESteamPartyBeaconLocationType,
    m_ulLocationID: t.uint64,
};
pub const SteamParamStringArray_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamParamStringArray_t"};
    m_ppStrings: [*c][*c]const u8,
    m_nNumStrings: i32,
};
pub const LeaderboardEntry_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"LeaderboardEntry_t"};
    m_steamIDUser: t.CSteamID,
    m_nGlobalRank: i32,
    m_nScore: i32,
    m_cDetails: i32,
    m_hUGC: t.UGCHandle_t,
};
pub const P2PSessionState_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"P2PSessionState_t"};
    m_bConnectionActive: t.uint8,
    m_bConnecting: t.uint8,
    m_eP2PSessionError: t.uint8,
    m_bUsingRelay: t.uint8,
    m_nBytesQueuedForSend: i32,
    m_nPacketsQueuedForSend: i32,
    m_nRemoteIP: t.uint32,
    m_nRemotePort: t.uint16,
};
pub const InputAnalogActionData_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"InputAnalogActionData_t"};
    eMode: t.EInputSourceMode,
    x: f32,
    y: f32,
    bActive: bool,
};
pub const InputDigitalActionData_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"InputDigitalActionData_t"};
    bState: bool,
    bActive: bool,
};
pub const InputMotionData_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"InputMotionData_t"};
    rotQuatX: f32,
    rotQuatY: f32,
    rotQuatZ: f32,
    rotQuatW: f32,
    posAccelX: f32,
    posAccelY: f32,
    posAccelZ: f32,
    rotVelX: f32,
    rotVelY: f32,
    rotVelZ: f32,
};
pub const SteamUGCDetails_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamUGCDetails_t"};
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eResult: t.EResult,
    m_eFileType: t.EWorkshopFileType,
    m_nCreatorAppID: t.AppId_t,
    m_nConsumerAppID: t.AppId_t,
    m_rgchTitle: [129]u8,
    m_rgchDescription: [8000]u8,
    m_ulSteamIDOwner: t.uint64,
    m_rtimeCreated: t.uint32,
    m_rtimeUpdated: t.uint32,
    m_rtimeAddedToUserList: t.uint32,
    m_eVisibility: t.ERemoteStoragePublishedFileVisibility,
    m_bBanned: bool,
    m_bAcceptedForUse: bool,
    m_bTagsTruncated: bool,
    m_rgchTags: [1025]u8,
    m_hFile: t.UGCHandle_t,
    m_hPreviewFile: t.UGCHandle_t,
    m_pchFileName: [260]u8,
    m_nFileSize: i32,
    m_nPreviewFileSize: i32,
    m_rgchURL: [256]u8,
    m_unVotesUp: t.uint32,
    m_unVotesDown: t.uint32,
    m_flScore: f32,
    m_unNumChildren: t.uint32,
};
pub const SteamItemDetails_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamItemDetails_t"};
    m_itemId: t.SteamItemInstanceID_t,
    m_iDefinition: t.SteamItemDef_t,
    m_unQuantity: t.uint16,
    m_unFlags: t.uint16,
};
pub const SteamNetworkingIPAddr = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingIPAddr"};
    m_ipv6: [16]t.uint8,
    m_port: t.uint16,
    pub const k_cchMaxString: i32 = 48;
    pub fn Clear() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Clear"}), .{ }, .{ }, @TypeOf(S.Clear));
    }
    pub fn IsIPv6AllZeros() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsIPv6AllZeros"}), .{ }, .{ }, @TypeOf(S.IsIPv6AllZeros));
    }
    pub fn SetIPv6(ipv6: [*c]const t.uint8, nPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIPv6"}), .{ ipv6, nPort, }, .{ "ipv6", "nPort", }, @TypeOf(S.SetIPv6));
    }
    pub fn SetIPv4(nIP: t.uint32, nPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIPv4"}), .{ nIP, nPort, }, .{ "nIP", "nPort", }, @TypeOf(S.SetIPv4));
    }
    pub fn IsIPv4() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsIPv4"}), .{ }, .{ }, @TypeOf(S.IsIPv4));
    }
    pub fn GetIPv4() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv4"}), .{ }, .{ }, @TypeOf(S.GetIPv4));
    }
    pub fn SetIPv6LocalHost(nPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIPv6LocalHost"}), .{ nPort, }, .{ "nPort", }, @TypeOf(S.SetIPv6LocalHost));
    }
    pub fn IsLocalHost() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsLocalHost"}), .{ }, .{ }, @TypeOf(S.IsLocalHost));
    }
    pub fn ToString(buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ToString"}), .{ buf, cbBuf, bWithPort, }, .{ "buf", "cbBuf", "bWithPort", }, @TypeOf(S.ToString));
    }
    pub fn ParseString(pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ParseString"}), .{ pszStr, }, .{ "pszStr", }, @TypeOf(S.ParseString));
    }
    pub fn IsEqualTo(x: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsEqualTo"}), .{ x, }, .{ "x", }, @TypeOf(S.IsEqualTo));
    }
    pub fn GetFakeIPType() callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFakeIPType"}), .{ }, .{ }, @TypeOf(S.GetFakeIPType));
    }
    pub fn IsFakeIP() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFakeIP"}), .{ }, .{ }, @TypeOf(S.IsFakeIP));
    }
};
pub const SteamNetworkingIdentity = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingIdentity"};
    m_eType: t.ESteamNetworkingIdentityType,
    m_cbSize: i32,
    m_szUnknownRawString: [128]u8,
    pub const k_cchMaxString: i32 = 128;
    pub const k_cchMaxGenericString: i32 = 32;
    pub const k_cchMaxXboxPairwiseID: i32 = 33;
    pub const k_cbMaxGenericBytes: i32 = 32;
    pub fn Clear() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Clear"}), .{ }, .{ }, @TypeOf(S.Clear));
    }
    pub fn IsInvalid() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsInvalid"}), .{ }, .{ }, @TypeOf(S.IsInvalid));
    }
    pub fn SetSteamID(steamID: t.CSteamID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSteamID"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.SetSteamID));
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID"}), .{ }, .{ }, @TypeOf(S.GetSteamID));
    }
    pub fn SetSteamID64(steamID: t.uint64, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetSteamID64"}), .{ steamID, }, .{ "steamID", }, @TypeOf(S.SetSteamID64));
    }
    pub fn GetSteamID64() callconv(.C) t.uint64 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetSteamID64"}), .{ }, .{ }, @TypeOf(S.GetSteamID64));
    }
    pub fn SetXboxPairwiseID(pszString: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetXboxPairwiseID"}), .{ pszString, }, .{ "pszString", }, @TypeOf(S.SetXboxPairwiseID));
    }
    pub fn GetXboxPairwiseID() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetXboxPairwiseID"}), .{ }, .{ }, @TypeOf(S.GetXboxPairwiseID));
    }
    pub fn SetPSNID(id: t.uint64, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPSNID"}), .{ id, }, .{ "id", }, @TypeOf(S.SetPSNID));
    }
    pub fn GetPSNID() callconv(.C) t.uint64 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPSNID"}), .{ }, .{ }, @TypeOf(S.GetPSNID));
    }
    pub fn SetStadiaID(id: t.uint64, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetStadiaID"}), .{ id, }, .{ "id", }, @TypeOf(S.SetStadiaID));
    }
    pub fn GetStadiaID() callconv(.C) t.uint64 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetStadiaID"}), .{ }, .{ }, @TypeOf(S.GetStadiaID));
    }
    pub fn SetIPAddr(addr: [*c]const t.SteamNetworkingIPAddr, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIPAddr"}), .{ addr, }, .{ "addr", }, @TypeOf(S.SetIPAddr));
    }
    pub fn GetIPAddr() callconv(.C) [*c]const t.SteamNetworkingIPAddr {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPAddr"}), .{ }, .{ }, @TypeOf(S.GetIPAddr));
    }
    pub fn SetIPv4Addr(nIPv4: t.uint32, nPort: t.uint16, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetIPv4Addr"}), .{ nIPv4, nPort, }, .{ "nIPv4", "nPort", }, @TypeOf(S.SetIPv4Addr));
    }
    pub fn GetIPv4() callconv(.C) t.uint32 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetIPv4"}), .{ }, .{ }, @TypeOf(S.GetIPv4));
    }
    pub fn GetFakeIPType() callconv(.C) t.ESteamNetworkingFakeIPType {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetFakeIPType"}), .{ }, .{ }, @TypeOf(S.GetFakeIPType));
    }
    pub fn IsFakeIP() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsFakeIP"}), .{ }, .{ }, @TypeOf(S.IsFakeIP));
    }
    pub fn SetLocalHost() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetLocalHost"}), .{ }, .{ }, @TypeOf(S.SetLocalHost));
    }
    pub fn IsLocalHost() callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsLocalHost"}), .{ }, .{ }, @TypeOf(S.IsLocalHost));
    }
    pub fn SetGenericString(pszString: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGenericString"}), .{ pszString, }, .{ "pszString", }, @TypeOf(S.SetGenericString));
    }
    pub fn GetGenericString() callconv(.C) [*c]const u8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGenericString"}), .{ }, .{ }, @TypeOf(S.GetGenericString));
    }
    pub fn SetGenericBytes(data: ?*const anyopaque, cbLen: t.uint32, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetGenericBytes"}), .{ data, cbLen, }, .{ "data", "cbLen", }, @TypeOf(S.SetGenericBytes));
    }
    pub fn GetGenericBytes(cbLen: [*c]i32, ) callconv(.C) [*c]const t.uint8 {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetGenericBytes"}), .{ cbLen, }, .{ "cbLen", }, @TypeOf(S.GetGenericBytes));
    }
    pub fn IsEqualTo(x: [*c]const t.SteamNetworkingIdentity, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"IsEqualTo"}), .{ x, }, .{ "x", }, @TypeOf(S.IsEqualTo));
    }
    pub fn ToString(buf: [*c]u8, cbBuf: t.uint32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ToString"}), .{ buf, cbBuf, }, .{ "buf", "cbBuf", }, @TypeOf(S.ToString));
    }
    pub fn ParseString(pszStr: [*c]const u8, ) callconv(.C) bool {
        return t.callImplFn(&(p1 ++ [_][]const u8{"ParseString"}), .{ pszStr, }, .{ "pszStr", }, @TypeOf(S.ParseString));
    }
};
pub const SteamNetConnectionInfo_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetConnectionInfo_t"};
    m_identityRemote: t.SteamNetworkingIdentity,
    m_nUserData: i32,
    m_hListenSocket: t.HSteamListenSocket,
    m_addrRemote: t.SteamNetworkingIPAddr,
    m__pad1: t.uint16,
    m_idPOPRemote: t.SteamNetworkingPOPID,
    m_idPOPRelay: t.SteamNetworkingPOPID,
    m_eState: t.ESteamNetworkingConnectionState,
    m_eEndReason: i32,
    m_szEndDebug: [128]u8,
    m_szConnectionDescription: [128]u8,
    m_nFlags: i32,
    reserved: [63]t.uint32,
};
pub const SteamNetConnectionRealTimeStatus_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetConnectionRealTimeStatus_t"};
    m_eState: t.ESteamNetworkingConnectionState,
    m_nPing: i32,
    m_flConnectionQualityLocal: f32,
    m_flConnectionQualityRemote: f32,
    m_flOutPacketsPerSec: f32,
    m_flOutBytesPerSec: f32,
    m_flInPacketsPerSec: f32,
    m_flInBytesPerSec: f32,
    m_nSendRateBytesPerSecond: i32,
    m_cbPendingUnreliable: i32,
    m_cbPendingReliable: i32,
    m_cbSentUnackedReliable: i32,
    m_usecQueueTime: t.SteamNetworkingMicroseconds,
    reserved: [16]t.uint32,
};
pub const SteamNetConnectionRealTimeLaneStatus_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetConnectionRealTimeLaneStatus_t"};
    m_cbPendingUnreliable: i32,
    m_cbPendingReliable: i32,
    m_cbSentUnackedReliable: i32,
    _reservePad1: i32,
    m_usecQueueTime: t.SteamNetworkingMicroseconds,
    reserved: [10]t.uint32,
};
pub const SteamNetworkingMessage_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingMessage_t"};
    m_pData: ?*anyopaque,
    m_cbSize: i32,
    m_conn: t.HSteamNetConnection,
    m_identityPeer: t.SteamNetworkingIdentity,
    m_nConnUserData: i32,
    m_usecTimeReceived: t.SteamNetworkingMicroseconds,
    m_nMessageNumber: i32,
    m_pfnFreeData: ?fn([*c]t.SteamNetworkingMessage_t) callconv(.C) void,
    m_pfnRelease: ?fn([*c]t.SteamNetworkingMessage_t) callconv(.C) void,
    m_nChannel: i32,
    m_nFlags: i32,
    m_nUserData: i32,
    m_idxLane: t.uint16,
    _pad1__: t.uint16,
    pub fn Release() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Release"}), .{ }, .{ }, @TypeOf(S.Release));
    }
};
pub const SteamNetworkPingLocation_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkPingLocation_t"};
    m_data: [512]t.uint8,
};
pub const SteamNetworkingConfigValue_t = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamNetworkingConfigValue_t"};
    m_eValue: t.ESteamNetworkingConfigValue,
    m_eDataType: t.ESteamNetworkingConfigDataType,
    m_int64: i32,
    pub fn SetInt32(eVal: t.ESteamNetworkingConfigValue, data: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInt32"}), .{ eVal, data, }, .{ "eVal", "data", }, @TypeOf(S.SetInt32));
    }
    pub fn SetInt64(eVal: t.ESteamNetworkingConfigValue, data: i32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetInt64"}), .{ eVal, data, }, .{ "eVal", "data", }, @TypeOf(S.SetInt64));
    }
    pub fn SetFloat(eVal: t.ESteamNetworkingConfigValue, data: f32, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetFloat"}), .{ eVal, data, }, .{ "eVal", "data", }, @TypeOf(S.SetFloat));
    }
    pub fn SetPtr(eVal: t.ESteamNetworkingConfigValue, data: ?*anyopaque, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetPtr"}), .{ eVal, data, }, .{ "eVal", "data", }, @TypeOf(S.SetPtr));
    }
    pub fn SetString(eVal: t.ESteamNetworkingConfigValue, data: [*c]const u8, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetString"}), .{ eVal, data, }, .{ "eVal", "data", }, @TypeOf(S.SetString));
    }
};
pub const SteamDatagramHostedAddress = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamDatagramHostedAddress"};
    m_cbSize: i32,
    m_data: [128]u8,
    pub fn Clear() callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"Clear"}), .{ }, .{ }, @TypeOf(S.Clear));
    }
    pub fn GetPopID() callconv(.C) t.SteamNetworkingPOPID {
        return t.callImplFn(&(p1 ++ [_][]const u8{"GetPopID"}), .{ }, .{ }, @TypeOf(S.GetPopID));
    }
    pub fn SetDevAddress(nIP: t.uint32, nPort: t.uint16, popid: t.SteamNetworkingPOPID, ) callconv(.C) void {
        return t.callImplFn(&(p1 ++ [_][]const u8{"SetDevAddress"}), .{ nIP, nPort, popid, }, .{ "nIP", "nPort", "popid", }, @TypeOf(S.SetDevAddress));
    }
};
pub const SteamDatagramGameCoordinatorServerLogin = extern struct {
    const S = @This();
    const p1 = p0 ++ [_][]const u8{"SteamDatagramGameCoordinatorServerLogin"};
    m_identity: t.SteamNetworkingIdentity,
    m_routing: t.SteamDatagramHostedAddress,
    m_nAppID: t.AppId_t,
    m_rtime: t.RTime32,
    m_cbAppData: i32,
    m_appData: [2048]u8,
};
