const t = @import("../steam_api.zig");
const p = @import("std").debug.print;
pub const SteamIPAddress_t = extern struct {
    m_rgubIPv6: [16]t.uint8,
    m_eType: t.ESteamIPType,
    pub const IsSet = t.getImplFn("SteamIPAddress_t", "IsSet", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamIPAddress_t_IsSet\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsSet, .{ .name = "SteamAPI_SteamIPAddress_t_IsSet", .linkage = .Strong }); }
};
comptime { _ = SteamIPAddress_t; }
pub const FriendGameInfo_t = extern struct {
    m_gameID: t.CGameID,
    m_unGameIP: t.uint32,
    m_usGamePort: t.uint16,
    m_usQueryPort: t.uint16,
    m_steamIDLobby: t.CSteamID,
};
comptime { _ = FriendGameInfo_t; }
pub const MatchMakingKeyValuePair_t = extern struct {
    m_szKey: [256]u8,
    m_szValue: [256]u8,
    pub const Construct = t.getImplFn("MatchMakingKeyValuePair_t", "Construct", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_MatchMakingKeyValuePair_t_Construct\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Construct, .{ .name = "SteamAPI_MatchMakingKeyValuePair_t_Construct", .linkage = .Strong }); }
};
comptime { _ = MatchMakingKeyValuePair_t; }
pub const servernetadr_t = extern struct {
    m_usConnectionPort: t.uint16,
    m_usQueryPort: t.uint16,
    m_unIP: t.uint32,
    pub const Construct = t.getImplFn("servernetadr_t", "Construct", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Construct\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Construct, .{ .name = "SteamAPI_servernetadr_t_Construct", .linkage = .Strong }); }
    pub const Init = t.getImplFn("servernetadr_t", "Init", fn(u32, t.uint16, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(ip: u32, usQueryPort: t.uint16, usConnectionPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Init:\n\t- ip = {any}\n\t- usQueryPort = {any}\n\t- usConnectionPort = {any}\n\n", .{ ip, usQueryPort, usConnectionPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Init, .{ .name = "SteamAPI_servernetadr_t_Init", .linkage = .Strong }); }
    pub const GetQueryPort = t.getImplFn("servernetadr_t", "GetQueryPort", fn() callconv(.C) t.uint16) orelse (struct {
        fn noImpl() callconv(.C) t.uint16 {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetQueryPort\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryPort, .{ .name = "SteamAPI_servernetadr_t_GetQueryPort", .linkage = .Strong }); }
    pub const SetQueryPort = t.getImplFn("servernetadr_t", "SetQueryPort", fn(t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(usPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetQueryPort:\n\t- usPort = {any}\n\n", .{ usPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetQueryPort, .{ .name = "SteamAPI_servernetadr_t_SetQueryPort", .linkage = .Strong }); }
    pub const GetConnectionPort = t.getImplFn("servernetadr_t", "GetConnectionPort", fn() callconv(.C) t.uint16) orelse (struct {
        fn noImpl() callconv(.C) t.uint16 {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetConnectionPort\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionPort, .{ .name = "SteamAPI_servernetadr_t_GetConnectionPort", .linkage = .Strong }); }
    pub const SetConnectionPort = t.getImplFn("servernetadr_t", "SetConnectionPort", fn(t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(usPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetConnectionPort:\n\t- usPort = {any}\n\n", .{ usPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetConnectionPort, .{ .name = "SteamAPI_servernetadr_t_SetConnectionPort", .linkage = .Strong }); }
    pub const GetIP = t.getImplFn("servernetadr_t", "GetIP", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetIP\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIP, .{ .name = "SteamAPI_servernetadr_t_GetIP", .linkage = .Strong }); }
    pub const SetIP = t.getImplFn("servernetadr_t", "SetIP", fn(t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(unIP: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_SetIP:\n\t- unIP = {any}\n\n", .{ unIP });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIP, .{ .name = "SteamAPI_servernetadr_t_SetIP", .linkage = .Strong }); }
    pub const GetConnectionAddressString = t.getImplFn("servernetadr_t", "GetConnectionAddressString", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetConnectionAddressString\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetConnectionAddressString, .{ .name = "SteamAPI_servernetadr_t_GetConnectionAddressString", .linkage = .Strong }); }
    pub const GetQueryAddressString = t.getImplFn("servernetadr_t", "GetQueryAddressString", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_GetQueryAddressString\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetQueryAddressString, .{ .name = "SteamAPI_servernetadr_t_GetQueryAddressString", .linkage = .Strong }); }
    pub const IsLessThan = t.getImplFn("servernetadr_t", "IsLessThan", fn([*c]const t.servernetadr_t) callconv(.C) bool) orelse (struct {
        fn noImpl(netadr: [*c]const t.servernetadr_t) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_IsLessThan:\n\t- netadr = {any}\n\n", .{ netadr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsLessThan, .{ .name = "SteamAPI_servernetadr_t_IsLessThan", .linkage = .Strong }); }
    pub const Assign = t.getImplFn("servernetadr_t", "Assign", fn([*c]const t.servernetadr_t) callconv(.C) void) orelse (struct {
        fn noImpl(that: [*c]const t.servernetadr_t) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_servernetadr_t_Assign:\n\t- that = {any}\n\n", .{ that });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Assign, .{ .name = "SteamAPI_servernetadr_t_Assign", .linkage = .Strong }); }
};
comptime { _ = servernetadr_t; }
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
    pub const Construct = t.getImplFn("gameserveritem_t", "Construct", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_Construct\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Construct, .{ .name = "SteamAPI_gameserveritem_t_Construct", .linkage = .Strong }); }
    pub const GetName = t.getImplFn("gameserveritem_t", "GetName", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_GetName\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetName, .{ .name = "SteamAPI_gameserveritem_t_GetName", .linkage = .Strong }); }
    pub const SetName = t.getImplFn("gameserveritem_t", "SetName", fn([*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(pName: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_gameserveritem_t_SetName:\n\t- pName = {any}\n\n", .{ pName });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetName, .{ .name = "SteamAPI_gameserveritem_t_SetName", .linkage = .Strong }); }
};
comptime { _ = gameserveritem_t; }
pub const SteamPartyBeaconLocation_t = extern struct {
    m_eType: t.ESteamPartyBeaconLocationType,
    m_ulLocationID: t.uint64,
};
comptime { _ = SteamPartyBeaconLocation_t; }
pub const SteamParamStringArray_t = extern struct {
    m_ppStrings: [*c][*c]const u8,
    m_nNumStrings: i32,
};
comptime { _ = SteamParamStringArray_t; }
pub const LeaderboardEntry_t = extern struct {
    m_steamIDUser: t.CSteamID,
    m_nGlobalRank: i32,
    m_nScore: i32,
    m_cDetails: i32,
    m_hUGC: t.UGCHandle_t,
};
comptime { _ = LeaderboardEntry_t; }
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
comptime { _ = P2PSessionState_t; }
pub const InputAnalogActionData_t = extern struct {
    eMode: t.EInputSourceMode,
    x: f32,
    y: f32,
    bActive: bool,
};
comptime { _ = InputAnalogActionData_t; }
pub const InputDigitalActionData_t = extern struct {
    bState: bool,
    bActive: bool,
};
comptime { _ = InputDigitalActionData_t; }
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
comptime { _ = InputMotionData_t; }
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
comptime { _ = SteamUGCDetails_t; }
pub const SteamItemDetails_t = extern struct {
    m_itemId: t.SteamItemInstanceID_t,
    m_iDefinition: t.SteamItemDef_t,
    m_unQuantity: t.uint16,
    m_unFlags: t.uint16,
};
comptime { _ = SteamItemDetails_t; }
pub const SteamNetworkingIPAddr = extern struct {
    m_ipv6: [16]t.uint8,
    m_port: t.uint16,
    pub const k_cchMaxString: i32 = 48;
    pub const Clear = t.getImplFn("SteamNetworkingIPAddr", "Clear", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_Clear\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Clear, .{ .name = "SteamAPI_SteamNetworkingIPAddr_Clear", .linkage = .Strong }); }
    pub const IsIPv6AllZeros = t.getImplFn("SteamNetworkingIPAddr", "IsIPv6AllZeros", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsIPv6AllZeros, .{ .name = "SteamAPI_SteamNetworkingIPAddr_IsIPv6AllZeros", .linkage = .Strong }); }
    pub const SetIPv6 = t.getImplFn("SteamNetworkingIPAddr", "SetIPv6", fn([*c]const t.uint8, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(ipv6: [*c]const t.uint8, nPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv6:\n\t- ipv6 = {any}\n\t- nPort = {any}\n\n", .{ ipv6, nPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIPv6, .{ .name = "SteamAPI_SteamNetworkingIPAddr_SetIPv6", .linkage = .Strong }); }
    pub const SetIPv4 = t.getImplFn("SteamNetworkingIPAddr", "SetIPv4", fn(t.uint32, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(nIP: t.uint32, nPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv4:\n\t- nIP = {any}\n\t- nPort = {any}\n\n", .{ nIP, nPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIPv4, .{ .name = "SteamAPI_SteamNetworkingIPAddr_SetIPv4", .linkage = .Strong }); }
    pub const IsIPv4 = t.getImplFn("SteamNetworkingIPAddr", "IsIPv4", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsIPv4\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsIPv4, .{ .name = "SteamAPI_SteamNetworkingIPAddr_IsIPv4", .linkage = .Strong }); }
    pub const GetIPv4 = t.getImplFn("SteamNetworkingIPAddr", "GetIPv4", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_GetIPv4\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPv4, .{ .name = "SteamAPI_SteamNetworkingIPAddr_GetIPv4", .linkage = .Strong }); }
    pub const SetIPv6LocalHost = t.getImplFn("SteamNetworkingIPAddr", "SetIPv6LocalHost", fn(t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(nPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost:\n\t- nPort = {any}\n\n", .{ nPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIPv6LocalHost, .{ .name = "SteamAPI_SteamNetworkingIPAddr_SetIPv6LocalHost", .linkage = .Strong }); }
    pub const IsLocalHost = t.getImplFn("SteamNetworkingIPAddr", "IsLocalHost", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsLocalHost\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsLocalHost, .{ .name = "SteamAPI_SteamNetworkingIPAddr_IsLocalHost", .linkage = .Strong }); }
    pub const ToString = t.getImplFn("SteamNetworkingIPAddr", "ToString", fn([*c]u8, t.uint32, bool) callconv(.C) void) orelse (struct {
        fn noImpl(buf: [*c]u8, cbBuf: t.uint32, bWithPort: bool) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_ToString:\n\t- buf = {any}\n\t- cbBuf = {any}\n\t- bWithPort = {any}\n\n", .{ buf, cbBuf, bWithPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ToString, .{ .name = "SteamAPI_SteamNetworkingIPAddr_ToString", .linkage = .Strong }); }
    pub const ParseString = t.getImplFn("SteamNetworkingIPAddr", "ParseString", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pszStr: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_ParseString:\n\t- pszStr = {any}\n\n", .{ pszStr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ParseString, .{ .name = "SteamAPI_SteamNetworkingIPAddr_ParseString", .linkage = .Strong }); }
    pub const IsEqualTo = t.getImplFn("SteamNetworkingIPAddr", "IsEqualTo", fn([*c]const t.SteamNetworkingIPAddr) callconv(.C) bool) orelse (struct {
        fn noImpl(x: [*c]const t.SteamNetworkingIPAddr) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsEqualTo:\n\t- x = {any}\n\n", .{ x });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsEqualTo, .{ .name = "SteamAPI_SteamNetworkingIPAddr_IsEqualTo", .linkage = .Strong }); }
    pub const GetFakeIPType = t.getImplFn("SteamNetworkingIPAddr", "GetFakeIPType", fn() callconv(.C) t.ESteamNetworkingFakeIPType) orelse (struct {
        fn noImpl() callconv(.C) t.ESteamNetworkingFakeIPType {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_GetFakeIPType\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFakeIPType, .{ .name = "SteamAPI_SteamNetworkingIPAddr_GetFakeIPType", .linkage = .Strong }); }
    pub const IsFakeIP = t.getImplFn("SteamNetworkingIPAddr", "IsFakeIP", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIPAddr_IsFakeIP\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsFakeIP, .{ .name = "SteamAPI_SteamNetworkingIPAddr_IsFakeIP", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingIPAddr; }
pub const SteamNetworkingIdentity = extern struct {
    m_eType: t.ESteamNetworkingIdentityType,
    m_cbSize: i32,
    m_szUnknownRawString: [128]u8,
    pub const k_cchMaxString: i32 = 128;
    pub const k_cchMaxGenericString: i32 = 32;
    pub const k_cchMaxXboxPairwiseID: i32 = 33;
    pub const k_cbMaxGenericBytes: i32 = 32;
    pub const Clear = t.getImplFn("SteamNetworkingIdentity", "Clear", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_Clear\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Clear, .{ .name = "SteamAPI_SteamNetworkingIdentity_Clear", .linkage = .Strong }); }
    pub const IsInvalid = t.getImplFn("SteamNetworkingIdentity", "IsInvalid", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsInvalid\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsInvalid, .{ .name = "SteamAPI_SteamNetworkingIdentity_IsInvalid", .linkage = .Strong }); }
    pub const SetSteamID = t.getImplFn("SteamNetworkingIdentity", "SetSteamID", fn(t.CSteamID) callconv(.C) void) orelse (struct {
        fn noImpl(steamID: t.CSteamID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetSteamID:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSteamID, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetSteamID", .linkage = .Strong }); }
    pub const GetSteamID = t.getImplFn("SteamNetworkingIdentity", "GetSteamID", fn() callconv(.C) t.CSteamID) orelse (struct {
        fn noImpl() callconv(.C) t.CSteamID {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetSteamID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSteamID, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetSteamID", .linkage = .Strong }); }
    pub const SetSteamID64 = t.getImplFn("SteamNetworkingIdentity", "SetSteamID64", fn(t.uint64) callconv(.C) void) orelse (struct {
        fn noImpl(steamID: t.uint64) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetSteamID64:\n\t- steamID = {any}\n\n", .{ steamID });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetSteamID64, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetSteamID64", .linkage = .Strong }); }
    pub const GetSteamID64 = t.getImplFn("SteamNetworkingIdentity", "GetSteamID64", fn() callconv(.C) t.uint64) orelse (struct {
        fn noImpl() callconv(.C) t.uint64 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetSteamID64\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetSteamID64, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetSteamID64", .linkage = .Strong }); }
    pub const SetXboxPairwiseID = t.getImplFn("SteamNetworkingIdentity", "SetXboxPairwiseID", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pszString: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID:\n\t- pszString = {any}\n\n", .{ pszString });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetXboxPairwiseID, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetXboxPairwiseID", .linkage = .Strong }); }
    pub const GetXboxPairwiseID = t.getImplFn("SteamNetworkingIdentity", "GetXboxPairwiseID", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetXboxPairwiseID, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetXboxPairwiseID", .linkage = .Strong }); }
    pub const SetPSNID = t.getImplFn("SteamNetworkingIdentity", "SetPSNID", fn(t.uint64) callconv(.C) void) orelse (struct {
        fn noImpl(id: t.uint64) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetPSNID:\n\t- id = {any}\n\n", .{ id });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPSNID, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetPSNID", .linkage = .Strong }); }
    pub const GetPSNID = t.getImplFn("SteamNetworkingIdentity", "GetPSNID", fn() callconv(.C) t.uint64) orelse (struct {
        fn noImpl() callconv(.C) t.uint64 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetPSNID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPSNID, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetPSNID", .linkage = .Strong }); }
    pub const SetStadiaID = t.getImplFn("SteamNetworkingIdentity", "SetStadiaID", fn(t.uint64) callconv(.C) void) orelse (struct {
        fn noImpl(id: t.uint64) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetStadiaID:\n\t- id = {any}\n\n", .{ id });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetStadiaID, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetStadiaID", .linkage = .Strong }); }
    pub const GetStadiaID = t.getImplFn("SteamNetworkingIdentity", "GetStadiaID", fn() callconv(.C) t.uint64) orelse (struct {
        fn noImpl() callconv(.C) t.uint64 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetStadiaID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetStadiaID, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetStadiaID", .linkage = .Strong }); }
    pub const SetIPAddr = t.getImplFn("SteamNetworkingIdentity", "SetIPAddr", fn([*c]const t.SteamNetworkingIPAddr) callconv(.C) void) orelse (struct {
        fn noImpl(addr: [*c]const t.SteamNetworkingIPAddr) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetIPAddr:\n\t- addr = {any}\n\n", .{ addr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIPAddr, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetIPAddr", .linkage = .Strong }); }
    pub const GetIPAddr = t.getImplFn("SteamNetworkingIdentity", "GetIPAddr", fn() callconv(.C) [*c]const t.SteamNetworkingIPAddr) orelse (struct {
        fn noImpl() callconv(.C) [*c]const t.SteamNetworkingIPAddr {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetIPAddr\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPAddr, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetIPAddr", .linkage = .Strong }); }
    pub const SetIPv4Addr = t.getImplFn("SteamNetworkingIdentity", "SetIPv4Addr", fn(t.uint32, t.uint16) callconv(.C) void) orelse (struct {
        fn noImpl(nIPv4: t.uint32, nPort: t.uint16) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetIPv4Addr:\n\t- nIPv4 = {any}\n\t- nPort = {any}\n\n", .{ nIPv4, nPort });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetIPv4Addr, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetIPv4Addr", .linkage = .Strong }); }
    pub const GetIPv4 = t.getImplFn("SteamNetworkingIdentity", "GetIPv4", fn() callconv(.C) t.uint32) orelse (struct {
        fn noImpl() callconv(.C) t.uint32 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetIPv4\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetIPv4, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetIPv4", .linkage = .Strong }); }
    pub const GetFakeIPType = t.getImplFn("SteamNetworkingIdentity", "GetFakeIPType", fn() callconv(.C) t.ESteamNetworkingFakeIPType) orelse (struct {
        fn noImpl() callconv(.C) t.ESteamNetworkingFakeIPType {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetFakeIPType\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetFakeIPType, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetFakeIPType", .linkage = .Strong }); }
    pub const IsFakeIP = t.getImplFn("SteamNetworkingIdentity", "IsFakeIP", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsFakeIP\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsFakeIP, .{ .name = "SteamAPI_SteamNetworkingIdentity_IsFakeIP", .linkage = .Strong }); }
    pub const SetLocalHost = t.getImplFn("SteamNetworkingIdentity", "SetLocalHost", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetLocalHost\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetLocalHost, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetLocalHost", .linkage = .Strong }); }
    pub const IsLocalHost = t.getImplFn("SteamNetworkingIdentity", "IsLocalHost", fn() callconv(.C) bool) orelse (struct {
        fn noImpl() callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsLocalHost\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsLocalHost, .{ .name = "SteamAPI_SteamNetworkingIdentity_IsLocalHost", .linkage = .Strong }); }
    pub const SetGenericString = t.getImplFn("SteamNetworkingIdentity", "SetGenericString", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pszString: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetGenericString:\n\t- pszString = {any}\n\n", .{ pszString });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGenericString, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetGenericString", .linkage = .Strong }); }
    pub const GetGenericString = t.getImplFn("SteamNetworkingIdentity", "GetGenericString", fn() callconv(.C) [*c]const u8) orelse (struct {
        fn noImpl() callconv(.C) [*c]const u8 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetGenericString\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGenericString, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetGenericString", .linkage = .Strong }); }
    pub const SetGenericBytes = t.getImplFn("SteamNetworkingIdentity", "SetGenericBytes", fn(?*const anyopaque, t.uint32) callconv(.C) bool) orelse (struct {
        fn noImpl(data: ?*const anyopaque, cbLen: t.uint32) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_SetGenericBytes:\n\t- data = {any}\n\t- cbLen = {any}\n\n", .{ data, cbLen });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetGenericBytes, .{ .name = "SteamAPI_SteamNetworkingIdentity_SetGenericBytes", .linkage = .Strong }); }
    pub const GetGenericBytes = t.getImplFn("SteamNetworkingIdentity", "GetGenericBytes", fn([*c]i32) callconv(.C) [*c]const t.uint8) orelse (struct {
        fn noImpl(cbLen: [*c]i32) callconv(.C) [*c]const t.uint8 {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_GetGenericBytes:\n\t- cbLen = {any}\n\n", .{ cbLen });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetGenericBytes, .{ .name = "SteamAPI_SteamNetworkingIdentity_GetGenericBytes", .linkage = .Strong }); }
    pub const IsEqualTo = t.getImplFn("SteamNetworkingIdentity", "IsEqualTo", fn([*c]const t.SteamNetworkingIdentity) callconv(.C) bool) orelse (struct {
        fn noImpl(x: [*c]const t.SteamNetworkingIdentity) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_IsEqualTo:\n\t- x = {any}\n\n", .{ x });
            return undefined;
        }
    }).noImpl;
    comptime { @export(IsEqualTo, .{ .name = "SteamAPI_SteamNetworkingIdentity_IsEqualTo", .linkage = .Strong }); }
    pub const ToString = t.getImplFn("SteamNetworkingIdentity", "ToString", fn([*c]u8, t.uint32) callconv(.C) void) orelse (struct {
        fn noImpl(buf: [*c]u8, cbBuf: t.uint32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_ToString:\n\t- buf = {any}\n\t- cbBuf = {any}\n\n", .{ buf, cbBuf });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ToString, .{ .name = "SteamAPI_SteamNetworkingIdentity_ToString", .linkage = .Strong }); }
    pub const ParseString = t.getImplFn("SteamNetworkingIdentity", "ParseString", fn([*c]const u8) callconv(.C) bool) orelse (struct {
        fn noImpl(pszStr: [*c]const u8) callconv(.C) bool {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingIdentity_ParseString:\n\t- pszStr = {any}\n\n", .{ pszStr });
            return undefined;
        }
    }).noImpl;
    comptime { @export(ParseString, .{ .name = "SteamAPI_SteamNetworkingIdentity_ParseString", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingIdentity; }
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
comptime { _ = SteamNetConnectionInfo_t; }
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
comptime { _ = SteamNetConnectionRealTimeStatus_t; }
pub const SteamNetConnectionRealTimeLaneStatus_t = extern struct {
    m_cbPendingUnreliable: i32,
    m_cbPendingReliable: i32,
    m_cbSentUnackedReliable: i32,
    _reservePad1: i32,
    m_usecQueueTime: t.SteamNetworkingMicroseconds,
    reserved: [10]t.uint32,
};
comptime { _ = SteamNetConnectionRealTimeLaneStatus_t; }
pub const SteamNetworkingMessage_t = extern struct {
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
    pub const Release = t.getImplFn("SteamNetworkingMessage_t", "Release", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingMessage_t_Release\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Release, .{ .name = "SteamAPI_SteamNetworkingMessage_t_Release", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingMessage_t; }
pub const SteamNetworkPingLocation_t = extern struct {
    m_data: [512]t.uint8,
};
comptime { _ = SteamNetworkPingLocation_t; }
pub const SteamNetworkingConfigValue_t = extern struct {
    m_eValue: t.ESteamNetworkingConfigValue,
    m_eDataType: t.ESteamNetworkingConfigDataType,
    m_int64: i32,
    pub const SetInt32 = t.getImplFn("SteamNetworkingConfigValue_t", "SetInt32", fn(t.ESteamNetworkingConfigValue, i32) callconv(.C) void) orelse (struct {
        fn noImpl(eVal: t.ESteamNetworkingConfigValue, data: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetInt32:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetInt32, .{ .name = "SteamAPI_SteamNetworkingConfigValue_t_SetInt32", .linkage = .Strong }); }
    pub const SetInt64 = t.getImplFn("SteamNetworkingConfigValue_t", "SetInt64", fn(t.ESteamNetworkingConfigValue, i32) callconv(.C) void) orelse (struct {
        fn noImpl(eVal: t.ESteamNetworkingConfigValue, data: i32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetInt64:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetInt64, .{ .name = "SteamAPI_SteamNetworkingConfigValue_t_SetInt64", .linkage = .Strong }); }
    pub const SetFloat = t.getImplFn("SteamNetworkingConfigValue_t", "SetFloat", fn(t.ESteamNetworkingConfigValue, f32) callconv(.C) void) orelse (struct {
        fn noImpl(eVal: t.ESteamNetworkingConfigValue, data: f32) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetFloat:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetFloat, .{ .name = "SteamAPI_SteamNetworkingConfigValue_t_SetFloat", .linkage = .Strong }); }
    pub const SetPtr = t.getImplFn("SteamNetworkingConfigValue_t", "SetPtr", fn(t.ESteamNetworkingConfigValue, ?*anyopaque) callconv(.C) void) orelse (struct {
        fn noImpl(eVal: t.ESteamNetworkingConfigValue, data: ?*anyopaque) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetPtr:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetPtr, .{ .name = "SteamAPI_SteamNetworkingConfigValue_t_SetPtr", .linkage = .Strong }); }
    pub const SetString = t.getImplFn("SteamNetworkingConfigValue_t", "SetString", fn(t.ESteamNetworkingConfigValue, [*c]const u8) callconv(.C) void) orelse (struct {
        fn noImpl(eVal: t.ESteamNetworkingConfigValue, data: [*c]const u8) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamNetworkingConfigValue_t_SetString:\n\t- eVal = {any}\n\t- data = {any}\n\n", .{ eVal, data });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetString, .{ .name = "SteamAPI_SteamNetworkingConfigValue_t_SetString", .linkage = .Strong }); }
};
comptime { _ = SteamNetworkingConfigValue_t; }
pub const SteamDatagramHostedAddress = extern struct {
    m_cbSize: i32,
    m_data: [128]u8,
    pub const Clear = t.getImplFn("SteamDatagramHostedAddress", "Clear", fn() callconv(.C) void) orelse (struct {
        fn noImpl() callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_Clear\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(Clear, .{ .name = "SteamAPI_SteamDatagramHostedAddress_Clear", .linkage = .Strong }); }
    pub const GetPopID = t.getImplFn("SteamDatagramHostedAddress", "GetPopID", fn() callconv(.C) t.SteamNetworkingPOPID) orelse (struct {
        fn noImpl() callconv(.C) t.SteamNetworkingPOPID {
            p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_GetPopID\n\n", .{  });
            return undefined;
        }
    }).noImpl;
    comptime { @export(GetPopID, .{ .name = "SteamAPI_SteamDatagramHostedAddress_GetPopID", .linkage = .Strong }); }
    pub const SetDevAddress = t.getImplFn("SteamDatagramHostedAddress", "SetDevAddress", fn(t.uint32, t.uint16, t.SteamNetworkingPOPID) callconv(.C) void) orelse (struct {
        fn noImpl(nIP: t.uint32, nPort: t.uint16, popid: t.SteamNetworkingPOPID) callconv(.C) void {
            p("NOT IMPLEMENTED SteamAPI_SteamDatagramHostedAddress_SetDevAddress:\n\t- nIP = {any}\n\t- nPort = {any}\n\t- popid = {any}\n\n", .{ nIP, nPort, popid });
            return undefined;
        }
    }).noImpl;
    comptime { @export(SetDevAddress, .{ .name = "SteamAPI_SteamDatagramHostedAddress_SetDevAddress", .linkage = .Strong }); }
};
comptime { _ = SteamDatagramHostedAddress; }
pub const SteamDatagramGameCoordinatorServerLogin = extern struct {
    m_identity: t.SteamNetworkingIdentity,
    m_routing: t.SteamDatagramHostedAddress,
    m_nAppID: t.AppId_t,
    m_rtime: t.RTime32,
    m_cbAppData: i32,
    m_appData: [2048]u8,
};
comptime { _ = SteamDatagramGameCoordinatorServerLogin; }
