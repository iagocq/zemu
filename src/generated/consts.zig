const t = @import("../types.zig");
pub const k_uAppIdInvalid: t.AppId_t = 0x0;
pub const k_uDepotIdInvalid: t.DepotId_t = 0x0;
pub const k_uAPICallInvalid: t.SteamAPICall_t = 0x0;
pub const k_ulPartyBeaconIdInvalid: t.PartyBeaconID_t = 0;
pub const k_HAuthTicketInvalid: t.HAuthTicket = 0;
pub const k_unSteamAccountIDMask: u32 = 0xFFFFFFFF;
pub const k_unSteamAccountInstanceMask: u32 = 0x000FFFFF;
pub const k_unSteamUserDefaultInstance: u32 = 1;
pub const k_cchGameExtraInfoMax: i32 = 64;
pub const k_cchMaxFriendsGroupName: i32 = 64;
pub const k_cFriendsGroupLimit: i32 = 100;
pub const k_FriendsGroupID_Invalid: t.FriendsGroupID_t = - 1;
pub const k_cEnumerateFollowersMax: i32 = 50;
pub const k_cubChatMetadataMax: t.uint32 = 8192;
pub const k_cbMaxGameServerGameDir: i32 = 32;
pub const k_cbMaxGameServerMapName: i32 = 32;
pub const k_cbMaxGameServerGameDescription: i32 = 64;
pub const k_cbMaxGameServerName: i32 = 64;
pub const k_cbMaxGameServerTags: i32 = 128;
pub const k_cbMaxGameServerGameData: i32 = 2048;
pub const HSERVERQUERY_INVALID: i32 = 0xffffffff;
pub const k_unFavoriteFlagNone: t.uint32 = 0x00;
pub const k_unFavoriteFlagFavorite: t.uint32 = 0x01;
pub const k_unFavoriteFlagHistory: t.uint32 = 0x02;
pub const k_unMaxCloudFileChunkSize: t.uint32 = 100 * 1024 * 1024;
pub const k_PublishedFileIdInvalid: t.PublishedFileId_t = 0;
pub const k_UGCHandleInvalid: t.UGCHandle_t = 0xffffffffffffffff;
pub const k_PublishedFileUpdateHandleInvalid: t.PublishedFileUpdateHandle_t = 0xffffffffffffffff;
pub const k_UGCFileStreamHandleInvalid: t.UGCFileWriteStreamHandle_t = 0xffffffffffffffff;
pub const k_cchPublishedDocumentTitleMax: t.uint32 = 128 + 1;
pub const k_cchPublishedDocumentDescriptionMax: t.uint32 = 8000;
pub const k_cchPublishedDocumentChangeDescriptionMax: t.uint32 = 8000;
pub const k_unEnumeratePublishedFilesMaxResults: t.uint32 = 50;
pub const k_cchTagListMax: t.uint32 = 1024 + 1;
pub const k_cchFilenameMax: t.uint32 = 260;
pub const k_cchPublishedFileURLMax: t.uint32 = 256;
pub const k_cubAppProofOfPurchaseKeyMax: i32 = 240;
pub const k_nScreenshotMaxTaggedUsers: t.uint32 = 32;
pub const k_nScreenshotMaxTaggedPublishedFiles: t.uint32 = 32;
pub const k_cubUFSTagTypeMax: i32 = 255;
pub const k_cubUFSTagValueMax: i32 = 255;
pub const k_ScreenshotThumbWidth: i32 = 200;
pub const k_UGCQueryHandleInvalid: t.UGCQueryHandle_t = 0xffffffffffffffff;
pub const k_UGCUpdateHandleInvalid: t.UGCUpdateHandle_t = 0xffffffffffffffff;
pub const kNumUGCResultsPerPage: t.uint32 = 50;
pub const k_cchDeveloperMetadataMax: t.uint32 = 5000;
pub const INVALID_HTMLBROWSER: t.uint32 = 0;
pub const k_SteamItemInstanceIDInvalid: t.SteamItemInstanceID_t = ~@intCast(u64, 0);
pub const k_SteamInventoryResultInvalid: t.SteamInventoryResult_t = - 1;
pub const k_SteamInventoryUpdateHandleInvalid: t.SteamInventoryUpdateHandle_t = 0xffffffffffffffff;
pub const k_HSteamNetConnection_Invalid: t.HSteamNetConnection = 0;
pub const k_HSteamListenSocket_Invalid: t.HSteamListenSocket = 0;
pub const k_HSteamNetPollGroup_Invalid: t.HSteamNetPollGroup = 0;
pub const k_cchMaxSteamNetworkingErrMsg: i32 = 1024;
pub const k_cchSteamNetworkingMaxConnectionCloseReason: i32 = 128;
pub const k_cchSteamNetworkingMaxConnectionDescription: i32 = 128;
pub const k_cchSteamNetworkingMaxConnectionAppName: i32 = 32;
pub const k_nSteamNetworkConnectionInfoFlags_Unauthenticated: i32 = 1;
pub const k_nSteamNetworkConnectionInfoFlags_Unencrypted: i32 = 2;
pub const k_nSteamNetworkConnectionInfoFlags_LoopbackBuffers: i32 = 4;
pub const k_nSteamNetworkConnectionInfoFlags_Fast: i32 = 8;
pub const k_nSteamNetworkConnectionInfoFlags_Relayed: i32 = 16;
pub const k_nSteamNetworkConnectionInfoFlags_DualWifi: i32 = 32;
pub const k_cbMaxSteamNetworkingSocketsMessageSizeSend: i32 = 512 * 1024;
pub const k_nSteamNetworkingSend_Unreliable: i32 = 0;
pub const k_nSteamNetworkingSend_NoNagle: i32 = 1;
pub const k_nSteamNetworkingSend_UnreliableNoNagle: i32 = t.k_nSteamNetworkingSend_Unreliable | t.k_nSteamNetworkingSend_NoNagle;
pub const k_nSteamNetworkingSend_NoDelay: i32 = 4;
pub const k_nSteamNetworkingSend_UnreliableNoDelay: i32 = t.k_nSteamNetworkingSend_Unreliable | t.k_nSteamNetworkingSend_NoDelay | t.k_nSteamNetworkingSend_NoNagle;
pub const k_nSteamNetworkingSend_Reliable: i32 = 8;
pub const k_nSteamNetworkingSend_ReliableNoNagle: i32 = t.k_nSteamNetworkingSend_Reliable | t.k_nSteamNetworkingSend_NoNagle;
pub const k_nSteamNetworkingSend_UseCurrentThread: i32 = 16;
pub const k_nSteamNetworkingSend_AutoRestartBrokenSession: i32 = 32;
pub const k_cchMaxSteamNetworkingPingLocationString: i32 = 1024;
pub const k_nSteamNetworkingPing_Failed: i32 = - 1;
pub const k_nSteamNetworkingPing_Unknown: i32 = - 2;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_Default: i32 = - 1;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_Disable: i32 = 0;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_Relay: i32 = 1;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_Private: i32 = 2;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_Public: i32 = 4;
pub const k_nSteamNetworkingConfig_P2P_Transport_ICE_Enable_All: i32 = 0x7fffffff;
pub const k_SteamDatagramPOPID_dev: t.SteamNetworkingPOPID = ('d' << 16) | ('e' << 8) | 'v';
pub const STEAMGAMESERVER_QUERY_PORT_SHARED: t.uint16 = 0xffff;
pub const MASTERSERVERUPDATERPORT_USEGAMESOCKETSHARE: t.uint16 = t.STEAMGAMESERVER_QUERY_PORT_SHARED;
pub const k_cbSteamDatagramMaxSerializedTicket: t.uint32 = 512;
pub const k_cbMaxSteamDatagramGameCoordinatorServerLoginAppData: t.uint32 = 2048;
pub const k_cbMaxSteamDatagramGameCoordinatorServerLoginSerialized: t.uint32 = 4096;
pub const k_cbSteamNetworkingSocketsFakeUDPPortRecommendedMTU: i32 = 1200;
pub const k_cbSteamNetworkingSocketsFakeUDPPortMaxMessageSize: i32 = 4096;
