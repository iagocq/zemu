const t = @import("../types.zig");
const uint8 = u8;
const int8 = i8;
const int16 = i16;
const uint16 = u16;
const int32 = i32;
const uint32 = u32;
const int64 = i64;
const uint64 = u64;
const lint64 = i64;
const ulint64 = u64;
const intp = i64;
const uintp = u64;
const AppId_t = u32;
const DepotId_t = u32;
const RTime32 = u32;
const SteamAPICall_t = u64;
const AccountID_t = u32;
const PartyBeaconID_t = u64;
const HAuthTicket = u32;
const PFNPreMinidumpCallback = fn([*c]anyopaque) callconv(.C) void;
const HSteamPipe = i32;
const HSteamUser = i32;
const FriendsGroupID_t = i16;
const HServerListRequest = [*c]anyopaque;
const HServerQuery = i32;
const UGCHandle_t = u64;
const PublishedFileUpdateHandle_t = u64;
const PublishedFileId_t = u64;
const UGCFileWriteStreamHandle_t = u64;
const SteamLeaderboard_t = u64;
const SteamLeaderboardEntries_t = u64;
const SNetSocket_t = u32;
const SNetListenSocket_t = u32;
const ScreenshotHandle = u32;
const HTTPRequestHandle = u32;
const HTTPCookieContainerHandle = u32;
const InputHandle_t = u64;
const InputActionSetHandle_t = u64;
const InputDigitalActionHandle_t = u64;
const InputAnalogActionHandle_t = u64;
const SteamInputActionEventCallbackPointer = fn([*c]t.SteamInputActionEvent_t) callconv(.C) void;
const ControllerHandle_t = u64;
const ControllerActionSetHandle_t = u64;
const ControllerDigitalActionHandle_t = u64;
const ControllerAnalogActionHandle_t = u64;
const UGCQueryHandle_t = u64;
const UGCUpdateHandle_t = u64;
const HHTMLBrowser = u32;
const SteamItemInstanceID_t = u64;
const SteamItemDef_t = i32;
const SteamInventoryResult_t = i32;
const SteamInventoryUpdateHandle_t = u64;
const RemotePlaySessionID_t = u32;
const FnSteamNetConnectionStatusChanged = fn([*c]t.SteamNetConnectionStatusChangedCallback_t) callconv(.C) void;
const FnSteamNetAuthenticationStatusChanged = fn([*c]t.SteamNetAuthenticationStatus_t) callconv(.C) void;
const FnSteamRelayNetworkStatusChanged = fn([*c]t.SteamRelayNetworkStatus_t) callconv(.C) void;
const FnSteamNetworkingMessagesSessionRequest = fn([*c]t.SteamNetworkingMessagesSessionRequest_t) callconv(.C) void;
const FnSteamNetworkingMessagesSessionFailed = fn([*c]t.SteamNetworkingMessagesSessionFailed_t) callconv(.C) void;
const FnSteamNetworkingFakeIPResult = fn([*c]t.SteamNetworkingFakeIPResult_t) callconv(.C) void;
const HSteamNetConnection = u32;
const HSteamListenSocket = u32;
const HSteamNetPollGroup = u32;
const SteamNetworkingErrMsg = [1024]u8;
const SteamNetworkingPOPID = u32;
const SteamNetworkingMicroseconds = i64;
const FSteamNetworkingSocketsDebugOutput = fn(t.ESteamNetworkingSocketsDebugOutputType, [*c]const u8) callconv(.C) void;
