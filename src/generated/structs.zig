const t = @import("../types.zig");
const p = @import("std").debug.print;
pub const SteamIPAddress_t = extern struct {
    m_rgubIPv6: [16]t.uint8,
    m_eType: t.ESteamIPType,
    pub fn IsSet() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamIPAddress_t_IsSet\n\n", .{  });
        return undefined;
    }
};
pub const FriendGameInfo_t = extern struct {
    m_gameID: t.CGameID,
    m_unGameIP: t.uint32,
    m_usGamePort: t.uint16,
    m_usQueryPort: t.uint16,
    m_steamIDLobby: t.CSteamID,
};
pub const MatchMakingKeyValuePair_t = extern struct {
    m_szKey: [256]u8,
    m_szValue: [256]u8,
    pub fn Construct() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_MatchMakingKeyValuePair_t_Construct\n\n", .{  });
        return undefined;
    }
};
pub const servernetadr_t = extern struct {
    m_usConnectionPort: t.uint16,
    m_usQueryPort: t.uint16,
    m_unIP: t.uint32,
    pub fn Construct() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Construct\n\n", .{  });
        return undefined;
    }
    pub fn Init(ip: u32, usQueryPort: t.uint16, usConnectionPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Init:\n\t- ip = {any}\n\t- usQueryPort = {any}\n\t- usConnectionPort = {any}\n\n", .{ ip, usQueryPort, usConnectionPort });
        return undefined;
    }
    pub fn GetQueryPort() callconv(.C) t.uint16 {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetQueryPort\n\n", .{  });
        return undefined;
    }
    pub fn SetQueryPort(usPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetQueryPort:\n\t- usPort = {any}\n\n", .{ usPort });
        return undefined;
    }
    pub fn GetConnectionPort() callconv(.C) t.uint16 {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetConnectionPort\n\n", .{  });
        return undefined;
    }
    pub fn SetConnectionPort(usPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetConnectionPort:\n\t- usPort = {any}\n\n", .{ usPort });
        return undefined;
    }
    pub fn GetIP() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetIP\n\n", .{  });
        return undefined;
    }
    pub fn SetIP(unIP: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetIP:\n\t- unIP = {any}\n\n", .{ unIP });
        return undefined;
    }
    pub fn GetConnectionAddressString() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetConnectionAddressString\n\n", .{  });
        return undefined;
    }
    pub fn GetQueryAddressString() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetQueryAddressString\n\n", .{  });
        return undefined;
    }
    pub fn IsLessThan(netadr: [*c]const t.servernetadr_t) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_IsLessThan:\n\t- netadr = {any}\n\n", .{ netadr });
        return undefined;
    }
    pub fn Assign(that: [*c]const t.servernetadr_t) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Assign:\n\t- that = {any}\n\n", .{ that });
        return undefined;
    }
};
pub const gameserveritem_t = extern struct {
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
    pub fn Construct() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_Construct\n\n", .{  });
        return undefined;
    }
    pub fn GetName() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_GetName\n\n", .{  });
        return undefined;
    }
    pub fn SetName(pName: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_SetName:\n\t- pName = {any}\n\n", .{ pName });
        return undefined;
    }
};
pub const SteamPartyBeaconLocation_t = extern struct {
    m_eType: t.ESteamPartyBeaconLocationType,
    m_ulLocationID: t.uint64,
};
pub const SteamParamStringArray_t = extern struct {
    m_ppStrings: [*c][*c]const u8,
    m_nNumStrings: i32,
};
pub const LeaderboardEntry_t = extern struct {
    m_steamIDUser: t.CSteamID,
    m_nGlobalRank: i32,
    m_nScore: i32,
    m_cDetails: i32,
    m_hUGC: t.UGCHandle_t,
};
pub const P2PSessionState_t = extern struct {
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
    eMode: t.EInputSourceMode,
    x: f32,
    y: f32,
    bActive: bool,
};
pub const InputDigitalActionData_t = extern struct {
    bState: bool,
    bActive: bool,
};
pub const InputMotionData_t = extern struct {
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
pub const SteamInputActionEvent_t = extern struct {
    controllerHandle: t.InputHandle_t,
    eEventType: t.ESteamInputActionEventType,
    analogAction: t.SteamInputActionEvent_t.AnalogAction_t,
};
pub const SteamUGCDetails_t = extern struct {
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
    m_itemId: t.SteamItemInstanceID_t,
    m_iDefinition: t.SteamItemDef_t,
    m_unQuantity: t.uint16,
    m_unFlags: t.uint16,
};
pub const SteamNetworkingIPAddr = extern struct {
    m_ipv6: [16]t.uint8,
    m_port: t.uint16,
    pub const k_cchMaxString: i32 = 48;
    pub fn Clear() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_Clear\n\n", .{  });
        return undefined;
    }
    pub fn IsIPv6AllZeros() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros\n\n", .{  });
        return undefined;
    }
    pub fn SetIPv6(ipv6: [*c]const t.uint8, nPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv6:\n\t- ipv6 = {any}\n\t- nPort = {any}\n\n", .{ ipv6, nPort });
        return undefined;
    }
    pub fn SetIPv4(nIP: t.uint32, nPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv4:\n\t- nIP = {any}\n\t- nPort = {any}\n\n", .{ nIP, nPort });
        return undefined;
    }
    pub fn IsIPv4() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsIPv4\n\n", .{  });
        return undefined;
    }
    pub fn GetIPv4() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_GetIPv4\n\n", .{  });
        return undefined;
    }
    pub fn SetIPv6LocalHost(nPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost:\n\t- nPort = {any}\n\n", .{ nPort });
        return undefined;
    }
    pub fn IsLocalHost() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsLocalHost\n\n", .{  });
        return undefined;
    }
    pub fn ToString(buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_ToString:\n\t- buf = {any}\n\t- cbBuf = {any}\n\t- bWithPort = {any}\n\n", .{ buf, cbBuf, bWithPort });
        return undefined;
    }
    pub fn ParseString(pszStr: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_ParseString:\n\t- pszStr = {any}\n\n", .{ pszStr });
        return undefined;
    }
    pub fn IsEqualTo(x: [*c]const t.SteamNetworkingIPAddr) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsEqualTo:\n\t- x = {any}\n\n", .{ x });
        return undefined;
    }
    pub fn GetFakeIPType() callconv(.C) t.ESteamNetworkingFakeIPType {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_GetFakeIPType\n\n", .{  });
        return undefined;
    }
    pub fn IsFakeIP() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsFakeIP\n\n", .{  });
        return undefined;
    }
};
pub const SteamNetworkingIdentity = extern struct {
    m_eType: t.ESteamNetworkingIdentityType,
    m_cbSize: i32,
    m_szUnknownRawString: [128]u8,
    pub const k_cchMaxString: i32 = 128;
    pub const k_cchMaxGenericString: i32 = 32;
    pub const k_cchMaxXboxPairwiseID: i32 = 33;
    pub const k_cbMaxGenericBytes: i32 = 32;
    pub fn Clear() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_Clear\n\n", .{  });
        return undefined;
    }
    pub fn IsInvalid() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsInvalid\n\n", .{  });
        return undefined;
    }
    pub fn SetSteamID(steamID: t.CSteamID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetSteamID:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn GetSteamID() callconv(.C) t.CSteamID {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetSteamID\n\n", .{  });
        return undefined;
    }
    pub fn SetSteamID64(steamID: t.uint64) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetSteamID64:\n\t- steamID = {any}\n\n", .{ steamID });
        return undefined;
    }
    pub fn GetSteamID64() callconv(.C) t.uint64 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetSteamID64\n\n", .{  });
        return undefined;
    }
    pub fn SetXboxPairwiseID(pszString: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID:\n\t- pszString = {any}\n\n", .{ pszString });
        return undefined;
    }
    pub fn GetXboxPairwiseID() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID\n\n", .{  });
        return undefined;
    }
    pub fn SetPSNID(id: t.uint64) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetPSNID:\n\t- id = {any}\n\n", .{ id });
        return undefined;
    }
    pub fn GetPSNID() callconv(.C) t.uint64 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetPSNID\n\n", .{  });
        return undefined;
    }
    pub fn SetStadiaID(id: t.uint64) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetStadiaID:\n\t- id = {any}\n\n", .{ id });
        return undefined;
    }
    pub fn GetStadiaID() callconv(.C) t.uint64 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetStadiaID\n\n", .{  });
        return undefined;
    }
    pub fn SetIPAddr(addr: [*c]const t.SteamNetworkingIPAddr) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetIPAddr:\n\t- addr = {any}\n\n", .{ addr });
        return undefined;
    }
    pub fn GetIPAddr() callconv(.C) [*c]const t.SteamNetworkingIPAddr {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetIPAddr\n\n", .{  });
        return undefined;
    }
    pub fn SetIPv4Addr(nIPv4: t.uint32, nPort: t.uint16) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetIPv4Addr:\n\t- nIPv4 = {any}\n\t- nPort = {any}\n\n", .{ nIPv4, nPort });
        return undefined;
    }
    pub fn GetIPv4() callconv(.C) t.uint32 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetIPv4\n\n", .{  });
        return undefined;
    }
    pub fn GetFakeIPType() callconv(.C) t.ESteamNetworkingFakeIPType {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetFakeIPType\n\n", .{  });
        return undefined;
    }
    pub fn IsFakeIP() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsFakeIP\n\n", .{  });
        return undefined;
    }
    pub fn SetLocalHost() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetLocalHost\n\n", .{  });
        return undefined;
    }
    pub fn IsLocalHost() callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsLocalHost\n\n", .{  });
        return undefined;
    }
    pub fn SetGenericString(pszString: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetGenericString:\n\t- pszString = {any}\n\n", .{ pszString });
        return undefined;
    }
    pub fn GetGenericString() callconv(.C) [*c]const u8 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetGenericString\n\n", .{  });
        return undefined;
    }
    pub fn SetGenericBytes(data: [*c]const anyopaque, cbLen: t.uint32) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetGenericBytes:\n\t- data = {any}\n\t- cbLen = {any}\n\n", .{ data, cbLen });
        return undefined;
    }
    pub fn GetGenericBytes(cbLen: [*c]i32) callconv(.C) [*c]const t.uint8 {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetGenericBytes:\n\t- cbLen = {any}\n\n", .{ cbLen });
        return undefined;
    }
    pub fn IsEqualTo(x: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsEqualTo:\n\t- x = {any}\n\n", .{ x });
        return undefined;
    }
    pub fn ToString(buf: [*c]u8, cbBuf: t.uint32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_ToString:\n\t- buf = {any}\n\t- cbBuf = {any}\n\n", .{ buf, cbBuf });
        return undefined;
    }
    pub fn ParseString(pszStr: [*c]const u8) callconv(.C) bool {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_ParseString:\n\t- pszStr = {any}\n\n", .{ pszStr });
        return undefined;
    }
};
pub const SteamNetConnectionInfo_t = extern struct {
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
    m_cbPendingUnreliable: i32,
    m_cbPendingReliable: i32,
    m_cbSentUnackedReliable: i32,
    _reservePad1: i32,
    m_usecQueueTime: t.SteamNetworkingMicroseconds,
    reserved: [10]t.uint32,
};
pub const SteamNetworkingMessage_t = extern struct {
    m_pData: [*c]anyopaque,
    m_cbSize: i32,
    m_conn: t.HSteamNetConnection,
    m_identityPeer: t.SteamNetworkingIdentity,
    m_nConnUserData: i32,
    m_usecTimeReceived: t.SteamNetworkingMicroseconds,
    m_nMessageNumber: i32,
    m_pfnFreeData: fn([*c]t.SteamNetworkingMessage_t) callconv(.C) void,
    m_pfnRelease: fn([*c]t.SteamNetworkingMessage_t) callconv(.C) void,
    m_nChannel: i32,
    m_nFlags: i32,
    m_nUserData: i32,
    m_idxLane: t.uint16,
    _pad1__: t.uint16,
    pub fn Release() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingMessage_t_Release\n\n", .{  });
        return undefined;
    }
};
pub const SteamNetworkPingLocation_t = extern struct {
    m_data: [512]t.uint8,
};
pub const SteamNetworkingConfigValue_t = extern struct {
    m_eValue: t.ESteamNetworkingConfigValue,
    m_eDataType: t.ESteamNetworkingConfigDataType,
    m_int64: i32,
    pub fn SetInt32(eVal: t.ESteamNetworkingConfigValue, data: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetInt32:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
        return undefined;
    }
    pub fn SetInt64(eVal: t.ESteamNetworkingConfigValue, data: i32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetInt64:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
        return undefined;
    }
    pub fn SetFloat(eVal: t.ESteamNetworkingConfigValue, data: f32) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetFloat:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
        return undefined;
    }
    pub fn SetPtr(eVal: t.ESteamNetworkingConfigValue, data: [*c]anyopaque) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetPtr:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
        return undefined;
    }
    pub fn SetString(eVal: t.ESteamNetworkingConfigValue, data: [*c]const u8) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetString:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
        return undefined;
    }
};
pub const SteamDatagramHostedAddress = extern struct {
    m_cbSize: i32,
    m_data: [128]u8,
    pub fn Clear() callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_Clear\n\n", .{  });
        return undefined;
    }
    pub fn GetPopID() callconv(.C) t.SteamNetworkingPOPID {
        p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_GetPopID\n\n", .{  });
        return undefined;
    }
    pub fn SetDevAddress(nIP: t.uint32, nPort: t.uint16, popid: t.SteamNetworkingPOPID) callconv(.C) anyopaque {
        p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_SetDevAddress:\n\t- nIP = {any}\n\t- nPort = {any}\n\t- popid = {any}\n\n", .{ nIP, nPort, popid });
        return undefined;
    }
};
pub const SteamDatagramGameCoordinatorServerLogin = extern struct {
    m_identity: t.SteamNetworkingIdentity,
    m_routing: t.SteamDatagramHostedAddress,
    m_nAppID: t.AppId_t,
    m_rtime: t.RTime32,
    m_cbAppData: i32,
    m_appData: [2048]u8,
};
