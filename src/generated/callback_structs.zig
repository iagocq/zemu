const t = @import("../steam_api.zig");
const p0 = t.p;
pub const SteamServersConnected_t = extern struct {
    pub const callback_id = 101;
};
pub const SteamServerConnectFailure_t = extern struct {
    pub const callback_id = 102;
    m_eResult: t.EResult,
    m_bStillRetrying: bool,
};
pub const SteamServersDisconnected_t = extern struct {
    pub const callback_id = 103;
    m_eResult: t.EResult,
};
pub const ClientGameServerDeny_t = extern struct {
    pub const callback_id = 113;
    m_uAppID: t.uint32,
    m_unGameServerIP: t.uint32,
    m_usGameServerPort: t.uint16,
    m_bSecure: t.uint16,
    m_uReason: t.uint32,
};
pub const IPCFailure_t = extern struct {
    pub const callback_id = 117;
    pub const EFailureType = extern struct {
        v: c_int,
        pub const k_EFailureFlushedCallbackQueue = 0;
        pub const k_EFailurePipeFail = 1;
    };
    m_eFailureType: t.uint8,
};
pub const LicensesUpdated_t = extern struct {
    pub const callback_id = 125;
};
pub const ValidateAuthTicketResponse_t = extern struct {
    pub const callback_id = 143;
    m_SteamID: t.CSteamID,
    m_eAuthSessionResponse: t.EAuthSessionResponse,
    m_OwnerSteamID: t.CSteamID,
};
pub const MicroTxnAuthorizationResponse_t = extern struct {
    pub const callback_id = 152;
    m_unAppID: t.uint32,
    m_ulOrderID: t.uint64,
    m_bAuthorized: t.uint8,
};
pub const EncryptedAppTicketResponse_t = extern struct {
    pub const callback_id = 154;
    m_eResult: t.EResult,
};
pub const GetAuthSessionTicketResponse_t = extern struct {
    pub const callback_id = 163;
    m_hAuthTicket: t.HAuthTicket,
    m_eResult: t.EResult,
};
pub const GameWebCallback_t = extern struct {
    pub const callback_id = 164;
    m_szURL: [256]u8,
};
pub const StoreAuthURLResponse_t = extern struct {
    pub const callback_id = 165;
    m_szURL: [512]u8,
};
pub const MarketEligibilityResponse_t = extern struct {
    pub const callback_id = 166;
    m_bAllowed: bool,
    m_eNotAllowedReason: t.EMarketNotAllowedReasonFlags,
    m_rtAllowedAtTime: t.RTime32,
    m_cdaySteamGuardRequiredDays: i32,
    m_cdayNewDeviceCooldown: i32,
};
pub const DurationControl_t = extern struct {
    pub const callback_id = 167;
    m_eResult: t.EResult,
    m_appid: t.AppId_t,
    m_bApplicable: bool,
    m_csecsLast5h: i32,
    m_progress: t.EDurationControlProgress,
    m_notification: t.EDurationControlNotification,
    m_csecsToday: i32,
    m_csecsRemaining: i32,
};
pub const PersonaStateChange_t = extern struct {
    pub const callback_id = 304;
    m_ulSteamID: t.uint64,
    m_nChangeFlags: i32,
};
pub const GameOverlayActivated_t = extern struct {
    pub const callback_id = 331;
    m_bActive: t.uint8,
};
pub const GameServerChangeRequested_t = extern struct {
    pub const callback_id = 332;
    m_rgchServer: [64]u8,
    m_rgchPassword: [64]u8,
};
pub const GameLobbyJoinRequested_t = extern struct {
    pub const callback_id = 333;
    m_steamIDLobby: t.CSteamID,
    m_steamIDFriend: t.CSteamID,
};
pub const AvatarImageLoaded_t = extern struct {
    pub const callback_id = 334;
    m_steamID: t.CSteamID,
    m_iImage: i32,
    m_iWide: i32,
    m_iTall: i32,
};
pub const ClanOfficerListResponse_t = extern struct {
    pub const callback_id = 335;
    m_steamIDClan: t.CSteamID,
    m_cOfficers: i32,
    m_bSuccess: t.uint8,
};
pub const FriendRichPresenceUpdate_t = extern struct {
    pub const callback_id = 336;
    m_steamIDFriend: t.CSteamID,
    m_nAppID: t.AppId_t,
};
pub const GameRichPresenceJoinRequested_t = extern struct {
    pub const callback_id = 337;
    m_steamIDFriend: t.CSteamID,
    m_rgchConnect: [256]u8,
};
pub const GameConnectedClanChatMsg_t = extern struct {
    pub const callback_id = 338;
    m_steamIDClanChat: t.CSteamID,
    m_steamIDUser: t.CSteamID,
    m_iMessageID: i32,
};
pub const GameConnectedChatJoin_t = extern struct {
    pub const callback_id = 339;
    m_steamIDClanChat: t.CSteamID,
    m_steamIDUser: t.CSteamID,
};
pub const GameConnectedChatLeave_t = extern struct {
    pub const callback_id = 340;
    m_steamIDClanChat: t.CSteamID,
    m_steamIDUser: t.CSteamID,
    m_bKicked: bool,
    m_bDropped: bool,
};
pub const DownloadClanActivityCountsResult_t = extern struct {
    pub const callback_id = 341;
    m_bSuccess: bool,
};
pub const JoinClanChatRoomCompletionResult_t = extern struct {
    pub const callback_id = 342;
    m_steamIDClanChat: t.CSteamID,
    m_eChatRoomEnterResponse: t.EChatRoomEnterResponse,
};
pub const GameConnectedFriendChatMsg_t = extern struct {
    pub const callback_id = 343;
    m_steamIDUser: t.CSteamID,
    m_iMessageID: i32,
};
pub const FriendsGetFollowerCount_t = extern struct {
    pub const callback_id = 344;
    m_eResult: t.EResult,
    m_steamID: t.CSteamID,
    m_nCount: i32,
};
pub const FriendsIsFollowing_t = extern struct {
    pub const callback_id = 345;
    m_eResult: t.EResult,
    m_steamID: t.CSteamID,
    m_bIsFollowing: bool,
};
pub const FriendsEnumerateFollowingList_t = extern struct {
    pub const callback_id = 346;
    m_eResult: t.EResult,
    m_rgSteamID: [50]t.CSteamID,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
};
pub const SetPersonaNameResponse_t = extern struct {
    pub const callback_id = 347;
    m_bSuccess: bool,
    m_bLocalSuccess: bool,
    m_result: t.EResult,
};
pub const UnreadChatMessagesChanged_t = extern struct {
    pub const callback_id = 348;
};
pub const OverlayBrowserProtocolNavigation_t = extern struct {
    pub const callback_id = 349;
    rgchURI: [1024]u8,
};
pub const IPCountry_t = extern struct {
    pub const callback_id = 701;
};
pub const LowBatteryPower_t = extern struct {
    pub const callback_id = 702;
    m_nMinutesBatteryLeft: t.uint8,
};
pub const SteamAPICallCompleted_t = extern struct {
    pub const callback_id = 703;
    m_hAsyncCall: t.SteamAPICall_t,
    m_iCallback: i32,
    m_cubParam: t.uint32,
};
pub const SteamShutdown_t = extern struct {
    pub const callback_id = 704;
};
pub const CheckFileSignature_t = extern struct {
    pub const callback_id = 705;
    m_eCheckFileSignature: t.ECheckFileSignature,
};
pub const GamepadTextInputDismissed_t = extern struct {
    pub const callback_id = 714;
    m_bSubmitted: bool,
    m_unSubmittedText: t.uint32,
};
pub const AppResumingFromSuspend_t = extern struct {
    pub const callback_id = 736;
};
pub const FloatingGamepadTextInputDismissed_t = extern struct {
    pub const callback_id = 738;
};
pub const FavoritesListChanged_t = extern struct {
    pub const callback_id = 502;
    m_nIP: t.uint32,
    m_nQueryPort: t.uint32,
    m_nConnPort: t.uint32,
    m_nAppID: t.uint32,
    m_nFlags: t.uint32,
    m_bAdd: bool,
    m_unAccountId: t.AccountID_t,
};
pub const LobbyInvite_t = extern struct {
    pub const callback_id = 503;
    m_ulSteamIDUser: t.uint64,
    m_ulSteamIDLobby: t.uint64,
    m_ulGameID: t.uint64,
};
pub const LobbyEnter_t = extern struct {
    pub const callback_id = 504;
    m_ulSteamIDLobby: t.uint64,
    m_rgfChatPermissions: t.uint32,
    m_bLocked: bool,
    m_EChatRoomEnterResponse: t.uint32,
};
pub const LobbyDataUpdate_t = extern struct {
    pub const callback_id = 505;
    m_ulSteamIDLobby: t.uint64,
    m_ulSteamIDMember: t.uint64,
    m_bSuccess: t.uint8,
};
pub const LobbyChatUpdate_t = extern struct {
    pub const callback_id = 506;
    m_ulSteamIDLobby: t.uint64,
    m_ulSteamIDUserChanged: t.uint64,
    m_ulSteamIDMakingChange: t.uint64,
    m_rgfChatMemberStateChange: t.uint32,
};
pub const LobbyChatMsg_t = extern struct {
    pub const callback_id = 507;
    m_ulSteamIDLobby: t.uint64,
    m_ulSteamIDUser: t.uint64,
    m_eChatEntryType: t.uint8,
    m_iChatID: t.uint32,
};
pub const LobbyGameCreated_t = extern struct {
    pub const callback_id = 509;
    m_ulSteamIDLobby: t.uint64,
    m_ulSteamIDGameServer: t.uint64,
    m_unIP: t.uint32,
    m_usPort: t.uint16,
};
pub const LobbyMatchList_t = extern struct {
    pub const callback_id = 510;
    m_nLobbiesMatching: t.uint32,
};
pub const LobbyKicked_t = extern struct {
    pub const callback_id = 512;
    m_ulSteamIDLobby: t.uint64,
    m_ulSteamIDAdmin: t.uint64,
    m_bKickedDueToDisconnect: t.uint8,
};
pub const LobbyCreated_t = extern struct {
    pub const callback_id = 513;
    m_eResult: t.EResult,
    m_ulSteamIDLobby: t.uint64,
};
pub const PSNGameBootInviteResult_t = extern struct {
    pub const callback_id = 515;
    m_bGameBootInviteExists: bool,
    m_steamIDLobby: t.CSteamID,
};
pub const FavoritesListAccountsUpdated_t = extern struct {
    pub const callback_id = 516;
    m_eResult: t.EResult,
};
pub const SearchForGameProgressCallback_t = extern struct {
    pub const callback_id = 5201;
    m_ullSearchID: t.uint64,
    m_eResult: t.EResult,
    m_lobbyID: t.CSteamID,
    m_steamIDEndedSearch: t.CSteamID,
    m_nSecondsRemainingEstimate: i32,
    m_cPlayersSearching: i32,
};
pub const SearchForGameResultCallback_t = extern struct {
    pub const callback_id = 5202;
    m_ullSearchID: t.uint64,
    m_eResult: t.EResult,
    m_nCountPlayersInGame: i32,
    m_nCountAcceptedGame: i32,
    m_steamIDHost: t.CSteamID,
    m_bFinalCallback: bool,
};
pub const RequestPlayersForGameProgressCallback_t = extern struct {
    pub const callback_id = 5211;
    m_eResult: t.EResult,
    m_ullSearchID: t.uint64,
};
pub const RequestPlayersForGameResultCallback_t = extern struct {
    pub const callback_id = 5212;
    pub const PlayerAcceptState_t = extern struct {
        v: c_int,
        pub const k_EStateUnknown = 0;
        pub const k_EStatePlayerAccepted = 1;
        pub const k_EStatePlayerDeclined = 2;
    };
    m_eResult: t.EResult,
    m_ullSearchID: t.uint64,
    m_SteamIDPlayerFound: t.CSteamID,
    m_SteamIDLobby: t.CSteamID,
    m_ePlayerAcceptState: t.RequestPlayersForGameResultCallback_t.PlayerAcceptState_t,
    m_nPlayerIndex: i32,
    m_nTotalPlayersFound: i32,
    m_nTotalPlayersAcceptedGame: i32,
    m_nSuggestedTeamIndex: i32,
    m_ullUniqueGameID: t.uint64,
};
pub const RequestPlayersForGameFinalResultCallback_t = extern struct {
    pub const callback_id = 5213;
    m_eResult: t.EResult,
    m_ullSearchID: t.uint64,
    m_ullUniqueGameID: t.uint64,
};
pub const SubmitPlayerResultResultCallback_t = extern struct {
    pub const callback_id = 5214;
    m_eResult: t.EResult,
    ullUniqueGameID: t.uint64,
    steamIDPlayer: t.CSteamID,
};
pub const EndGameResultCallback_t = extern struct {
    pub const callback_id = 5215;
    m_eResult: t.EResult,
    ullUniqueGameID: t.uint64,
};
pub const JoinPartyCallback_t = extern struct {
    pub const callback_id = 5301;
    m_eResult: t.EResult,
    m_ulBeaconID: t.PartyBeaconID_t,
    m_SteamIDBeaconOwner: t.CSteamID,
    m_rgchConnectString: [256]u8,
};
pub const CreateBeaconCallback_t = extern struct {
    pub const callback_id = 5302;
    m_eResult: t.EResult,
    m_ulBeaconID: t.PartyBeaconID_t,
};
pub const ReservationNotificationCallback_t = extern struct {
    pub const callback_id = 5303;
    m_ulBeaconID: t.PartyBeaconID_t,
    m_steamIDJoiner: t.CSteamID,
};
pub const ChangeNumOpenSlotsCallback_t = extern struct {
    pub const callback_id = 5304;
    m_eResult: t.EResult,
};
pub const AvailableBeaconLocationsUpdated_t = extern struct {
    pub const callback_id = 5305;
};
pub const ActiveBeaconsUpdated_t = extern struct {
    pub const callback_id = 5306;
};
pub const RemoteStorageFileShareResult_t = extern struct {
    pub const callback_id = 1307;
    m_eResult: t.EResult,
    m_hFile: t.UGCHandle_t,
    m_rgchFilename: [260]u8,
};
pub const RemoteStoragePublishFileResult_t = extern struct {
    pub const callback_id = 1309;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool,
};
pub const RemoteStorageDeletePublishedFileResult_t = extern struct {
    pub const callback_id = 1311;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const RemoteStorageEnumerateUserPublishedFilesResult_t = extern struct {
    pub const callback_id = 1312;
    m_eResult: t.EResult,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
    m_rgPublishedFileId: [50]t.PublishedFileId_t,
};
pub const RemoteStorageSubscribePublishedFileResult_t = extern struct {
    pub const callback_id = 1313;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const RemoteStorageEnumerateUserSubscribedFilesResult_t = extern struct {
    pub const callback_id = 1314;
    m_eResult: t.EResult,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
    m_rgPublishedFileId: [50]t.PublishedFileId_t,
    m_rgRTimeSubscribed: [50]t.uint32,
};
pub const RemoteStorageUnsubscribePublishedFileResult_t = extern struct {
    pub const callback_id = 1315;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const RemoteStorageUpdatePublishedFileResult_t = extern struct {
    pub const callback_id = 1316;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool,
};
pub const RemoteStorageDownloadUGCResult_t = extern struct {
    pub const callback_id = 1317;
    m_eResult: t.EResult,
    m_hFile: t.UGCHandle_t,
    m_nAppID: t.AppId_t,
    m_nSizeInBytes: i32,
    m_pchFileName: [260]u8,
    m_ulSteamIDOwner: t.uint64,
};
pub const RemoteStorageGetPublishedFileDetailsResult_t = extern struct {
    pub const callback_id = 1318;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nCreatorAppID: t.AppId_t,
    m_nConsumerAppID: t.AppId_t,
    m_rgchTitle: [129]u8,
    m_rgchDescription: [8000]u8,
    m_hFile: t.UGCHandle_t,
    m_hPreviewFile: t.UGCHandle_t,
    m_ulSteamIDOwner: t.uint64,
    m_rtimeCreated: t.uint32,
    m_rtimeUpdated: t.uint32,
    m_eVisibility: t.ERemoteStoragePublishedFileVisibility,
    m_bBanned: bool,
    m_rgchTags: [1025]u8,
    m_bTagsTruncated: bool,
    m_pchFileName: [260]u8,
    m_nFileSize: i32,
    m_nPreviewFileSize: i32,
    m_rgchURL: [256]u8,
    m_eFileType: t.EWorkshopFileType,
    m_bAcceptedForUse: bool,
};
pub const RemoteStorageEnumerateWorkshopFilesResult_t = extern struct {
    pub const callback_id = 1319;
    m_eResult: t.EResult,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
    m_rgPublishedFileId: [50]t.PublishedFileId_t,
    m_rgScore: [50]f32,
    m_nAppId: t.AppId_t,
    m_unStartIndex: t.uint32,
};
pub const RemoteStorageGetPublishedItemVoteDetailsResult_t = extern struct {
    pub const callback_id = 1320;
    m_eResult: t.EResult,
    m_unPublishedFileId: t.PublishedFileId_t,
    m_nVotesFor: i32,
    m_nVotesAgainst: i32,
    m_nReports: i32,
    m_fScore: f32,
};
pub const RemoteStoragePublishedFileSubscribed_t = extern struct {
    pub const callback_id = 1321;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
};
pub const RemoteStoragePublishedFileUnsubscribed_t = extern struct {
    pub const callback_id = 1322;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
};
pub const RemoteStoragePublishedFileDeleted_t = extern struct {
    pub const callback_id = 1323;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
};
pub const RemoteStorageUpdateUserPublishedItemVoteResult_t = extern struct {
    pub const callback_id = 1324;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const RemoteStorageUserVoteDetails_t = extern struct {
    pub const callback_id = 1325;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eVote: t.EWorkshopVote,
};
pub const RemoteStorageEnumerateUserSharedWorkshopFilesResult_t = extern struct {
    pub const callback_id = 1326;
    m_eResult: t.EResult,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
    m_rgPublishedFileId: [50]t.PublishedFileId_t,
};
pub const RemoteStorageSetUserPublishedFileActionResult_t = extern struct {
    pub const callback_id = 1327;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eAction: t.EWorkshopFileAction,
};
pub const RemoteStorageEnumeratePublishedFilesByUserActionResult_t = extern struct {
    pub const callback_id = 1328;
    m_eResult: t.EResult,
    m_eAction: t.EWorkshopFileAction,
    m_nResultsReturned: i32,
    m_nTotalResultCount: i32,
    m_rgPublishedFileId: [50]t.PublishedFileId_t,
    m_rgRTimeUpdated: [50]t.uint32,
};
pub const RemoteStoragePublishFileProgress_t = extern struct {
    pub const callback_id = 1329;
    m_dPercentFile: f64,
    m_bPreview: bool,
};
pub const RemoteStoragePublishedFileUpdated_t = extern struct {
    pub const callback_id = 1330;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
    m_ulUnused: t.uint64,
};
pub const RemoteStorageFileWriteAsyncComplete_t = extern struct {
    pub const callback_id = 1331;
    m_eResult: t.EResult,
};
pub const RemoteStorageFileReadAsyncComplete_t = extern struct {
    pub const callback_id = 1332;
    m_hFileReadAsync: t.SteamAPICall_t,
    m_eResult: t.EResult,
    m_nOffset: t.uint32,
    m_cubRead: t.uint32,
};
pub const RemoteStorageLocalFileChange_t = extern struct {
    pub const callback_id = 1333;
};
pub const UserStatsReceived_t = extern struct {
    pub const callback_id = 1101;
    m_nGameID: t.uint64,
    m_eResult: t.EResult,
    m_steamIDUser: t.CSteamID,
};
pub const UserStatsStored_t = extern struct {
    pub const callback_id = 1102;
    m_nGameID: t.uint64,
    m_eResult: t.EResult,
};
pub const UserAchievementStored_t = extern struct {
    pub const callback_id = 1103;
    m_nGameID: t.uint64,
    m_bGroupAchievement: bool,
    m_rgchAchievementName: [128]u8,
    m_nCurProgress: t.uint32,
    m_nMaxProgress: t.uint32,
};
pub const LeaderboardFindResult_t = extern struct {
    pub const callback_id = 1104;
    m_hSteamLeaderboard: t.SteamLeaderboard_t,
    m_bLeaderboardFound: t.uint8,
};
pub const LeaderboardScoresDownloaded_t = extern struct {
    pub const callback_id = 1105;
    m_hSteamLeaderboard: t.SteamLeaderboard_t,
    m_hSteamLeaderboardEntries: t.SteamLeaderboardEntries_t,
    m_cEntryCount: i32,
};
pub const LeaderboardScoreUploaded_t = extern struct {
    pub const callback_id = 1106;
    m_bSuccess: t.uint8,
    m_hSteamLeaderboard: t.SteamLeaderboard_t,
    m_nScore: i32,
    m_bScoreChanged: t.uint8,
    m_nGlobalRankNew: i32,
    m_nGlobalRankPrevious: i32,
};
pub const NumberOfCurrentPlayers_t = extern struct {
    pub const callback_id = 1107;
    m_bSuccess: t.uint8,
    m_cPlayers: i32,
};
pub const UserStatsUnloaded_t = extern struct {
    pub const callback_id = 1108;
    m_steamIDUser: t.CSteamID,
};
pub const UserAchievementIconFetched_t = extern struct {
    pub const callback_id = 1109;
    m_nGameID: t.CGameID,
    m_rgchAchievementName: [128]u8,
    m_bAchieved: bool,
    m_nIconHandle: i32,
};
pub const GlobalAchievementPercentagesReady_t = extern struct {
    pub const callback_id = 1110;
    m_nGameID: t.uint64,
    m_eResult: t.EResult,
};
pub const LeaderboardUGCSet_t = extern struct {
    pub const callback_id = 1111;
    m_eResult: t.EResult,
    m_hSteamLeaderboard: t.SteamLeaderboard_t,
};
pub const PS3TrophiesInstalled_t = extern struct {
    pub const callback_id = 1112;
    m_nGameID: t.uint64,
    m_eResult: t.EResult,
    m_ulRequiredDiskSpace: t.uint64,
};
pub const GlobalStatsReceived_t = extern struct {
    pub const callback_id = 1112;
    m_nGameID: t.uint64,
    m_eResult: t.EResult,
};
pub const DlcInstalled_t = extern struct {
    pub const callback_id = 1005;
    m_nAppID: t.AppId_t,
};
pub const RegisterActivationCodeResponse_t = extern struct {
    pub const callback_id = 1008;
    m_eResult: t.ERegisterActivationCodeResult,
    m_unPackageRegistered: t.uint32,
};
pub const NewUrlLaunchParameters_t = extern struct {
    pub const callback_id = 1014;
};
pub const AppProofOfPurchaseKeyResponse_t = extern struct {
    pub const callback_id = 1021;
    m_eResult: t.EResult,
    m_nAppID: t.uint32,
    m_cchKeyLength: t.uint32,
    m_rgchKey: [240]u8,
};
pub const FileDetailsResult_t = extern struct {
    pub const callback_id = 1023;
    m_eResult: t.EResult,
    m_ulFileSize: t.uint64,
    m_FileSHA: [20]t.uint8,
    m_unFlags: t.uint32,
};
pub const TimedTrialStatus_t = extern struct {
    pub const callback_id = 1030;
    m_unAppID: t.AppId_t,
    m_bIsOffline: bool,
    m_unSecondsAllowed: t.uint32,
    m_unSecondsPlayed: t.uint32,
};
pub const P2PSessionRequest_t = extern struct {
    pub const callback_id = 1202;
    m_steamIDRemote: t.CSteamID,
};
pub const P2PSessionConnectFail_t = extern struct {
    pub const callback_id = 1203;
    m_steamIDRemote: t.CSteamID,
    m_eP2PSessionError: t.uint8,
};
pub const SocketStatusCallback_t = extern struct {
    pub const callback_id = 1201;
    m_hSocket: t.SNetSocket_t,
    m_hListenSocket: t.SNetListenSocket_t,
    m_steamIDRemote: t.CSteamID,
    m_eSNetSocketState: i32,
};
pub const ScreenshotReady_t = extern struct {
    pub const callback_id = 2301;
    m_hLocal: t.ScreenshotHandle,
    m_eResult: t.EResult,
};
pub const ScreenshotRequested_t = extern struct {
    pub const callback_id = 2302;
};
pub const PlaybackStatusHasChanged_t = extern struct {
    pub const callback_id = 4001;
};
pub const VolumeHasChanged_t = extern struct {
    pub const callback_id = 4002;
    m_flNewVolume: f32,
};
pub const MusicPlayerRemoteWillActivate_t = extern struct {
    pub const callback_id = 4101;
};
pub const MusicPlayerRemoteWillDeactivate_t = extern struct {
    pub const callback_id = 4102;
};
pub const MusicPlayerRemoteToFront_t = extern struct {
    pub const callback_id = 4103;
};
pub const MusicPlayerWillQuit_t = extern struct {
    pub const callback_id = 4104;
};
pub const MusicPlayerWantsPlay_t = extern struct {
    pub const callback_id = 4105;
};
pub const MusicPlayerWantsPause_t = extern struct {
    pub const callback_id = 4106;
};
pub const MusicPlayerWantsPlayPrevious_t = extern struct {
    pub const callback_id = 4107;
};
pub const MusicPlayerWantsPlayNext_t = extern struct {
    pub const callback_id = 4108;
};
pub const MusicPlayerWantsShuffled_t = extern struct {
    pub const callback_id = 4109;
    m_bShuffled: bool,
};
pub const MusicPlayerWantsLooped_t = extern struct {
    pub const callback_id = 4110;
    m_bLooped: bool,
};
pub const MusicPlayerWantsVolume_t = extern struct {
    pub const callback_id = 4011;
    m_flNewVolume: f32,
};
pub const MusicPlayerSelectsQueueEntry_t = extern struct {
    pub const callback_id = 4012;
    nID: i32,
};
pub const MusicPlayerSelectsPlaylistEntry_t = extern struct {
    pub const callback_id = 4013;
    nID: i32,
};
pub const MusicPlayerWantsPlayingRepeatStatus_t = extern struct {
    pub const callback_id = 4114;
    m_nPlayingRepeatStatus: i32,
};
pub const HTTPRequestCompleted_t = extern struct {
    pub const callback_id = 2101;
    m_hRequest: t.HTTPRequestHandle,
    m_ulContextValue: t.uint64,
    m_bRequestSuccessful: bool,
    m_eStatusCode: t.EHTTPStatusCode,
    m_unBodySize: t.uint32,
};
pub const HTTPRequestHeadersReceived_t = extern struct {
    pub const callback_id = 2102;
    m_hRequest: t.HTTPRequestHandle,
    m_ulContextValue: t.uint64,
};
pub const HTTPRequestDataReceived_t = extern struct {
    pub const callback_id = 2103;
    m_hRequest: t.HTTPRequestHandle,
    m_ulContextValue: t.uint64,
    m_cOffset: t.uint32,
    m_cBytesReceived: t.uint32,
};
pub const SteamInputDeviceConnected_t = extern struct {
    pub const callback_id = 2801;
    m_ulConnectedDeviceHandle: t.InputHandle_t,
};
pub const SteamInputDeviceDisconnected_t = extern struct {
    pub const callback_id = 2802;
    m_ulDisconnectedDeviceHandle: t.InputHandle_t,
};
pub const SteamInputConfigurationLoaded_t = extern struct {
    pub const callback_id = 2803;
    m_unAppID: t.AppId_t,
    m_ulDeviceHandle: t.InputHandle_t,
    m_ulMappingCreator: t.CSteamID,
    m_unMajorRevision: t.uint32,
    m_unMinorRevision: t.uint32,
    m_bUsesSteamInputAPI: bool,
    m_bUsesGamepadAPI: bool,
};
pub const SteamUGCQueryCompleted_t = extern struct {
    pub const callback_id = 3401;
    m_handle: t.UGCQueryHandle_t,
    m_eResult: t.EResult,
    m_unNumResultsReturned: t.uint32,
    m_unTotalMatchingResults: t.uint32,
    m_bCachedData: bool,
    m_rgchNextCursor: [256]u8,
};
pub const SteamUGCRequestUGCDetailsResult_t = extern struct {
    pub const callback_id = 3402;
    m_details: t.SteamUGCDetails_t,
    m_bCachedData: bool,
};
pub const CreateItemResult_t = extern struct {
    pub const callback_id = 3403;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool,
};
pub const SubmitItemUpdateResult_t = extern struct {
    pub const callback_id = 3404;
    m_eResult: t.EResult,
    m_bUserNeedsToAcceptWorkshopLegalAgreement: bool,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const ItemInstalled_t = extern struct {
    pub const callback_id = 3405;
    m_unAppID: t.AppId_t,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const DownloadItemResult_t = extern struct {
    pub const callback_id = 3406;
    m_unAppID: t.AppId_t,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eResult: t.EResult,
};
pub const UserFavoriteItemsListChanged_t = extern struct {
    pub const callback_id = 3407;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eResult: t.EResult,
    m_bWasAddRequest: bool,
};
pub const SetUserItemVoteResult_t = extern struct {
    pub const callback_id = 3408;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eResult: t.EResult,
    m_bVoteUp: bool,
};
pub const GetUserItemVoteResult_t = extern struct {
    pub const callback_id = 3409;
    m_nPublishedFileId: t.PublishedFileId_t,
    m_eResult: t.EResult,
    m_bVotedUp: bool,
    m_bVotedDown: bool,
    m_bVoteSkipped: bool,
};
pub const StartPlaytimeTrackingResult_t = extern struct {
    pub const callback_id = 3410;
    m_eResult: t.EResult,
};
pub const StopPlaytimeTrackingResult_t = extern struct {
    pub const callback_id = 3411;
    m_eResult: t.EResult,
};
pub const AddUGCDependencyResult_t = extern struct {
    pub const callback_id = 3412;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nChildPublishedFileId: t.PublishedFileId_t,
};
pub const RemoveUGCDependencyResult_t = extern struct {
    pub const callback_id = 3413;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nChildPublishedFileId: t.PublishedFileId_t,
};
pub const AddAppDependencyResult_t = extern struct {
    pub const callback_id = 3414;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
};
pub const RemoveAppDependencyResult_t = extern struct {
    pub const callback_id = 3415;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_nAppID: t.AppId_t,
};
pub const GetAppDependenciesResult_t = extern struct {
    pub const callback_id = 3416;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
    m_rgAppIDs: [32]t.AppId_t,
    m_nNumAppDependencies: t.uint32,
    m_nTotalNumAppDependencies: t.uint32,
};
pub const DeleteItemResult_t = extern struct {
    pub const callback_id = 3417;
    m_eResult: t.EResult,
    m_nPublishedFileId: t.PublishedFileId_t,
};
pub const UserSubscribedItemsListChanged_t = extern struct {
    pub const callback_id = 3418;
    m_nAppID: t.AppId_t,
};
pub const WorkshopEULAStatus_t = extern struct {
    pub const callback_id = 3420;
    m_eResult: t.EResult,
    m_nAppID: t.AppId_t,
    m_unVersion: t.uint32,
    m_rtAction: t.RTime32,
    m_bAccepted: bool,
    m_bNeedsAction: bool,
};
pub const SteamAppInstalled_t = extern struct {
    pub const callback_id = 3901;
    m_nAppID: t.AppId_t,
    m_iInstallFolderIndex: i32,
};
pub const SteamAppUninstalled_t = extern struct {
    pub const callback_id = 3902;
    m_nAppID: t.AppId_t,
    m_iInstallFolderIndex: i32,
};
pub const HTML_BrowserReady_t = extern struct {
    pub const callback_id = 4501;
    unBrowserHandle: t.HHTMLBrowser,
};
pub const HTML_NeedsPaint_t = extern struct {
    pub const callback_id = 4502;
    unBrowserHandle: t.HHTMLBrowser,
    pBGRA: [*c]const u8,
    unWide: t.uint32,
    unTall: t.uint32,
    unUpdateX: t.uint32,
    unUpdateY: t.uint32,
    unUpdateWide: t.uint32,
    unUpdateTall: t.uint32,
    unScrollX: t.uint32,
    unScrollY: t.uint32,
    flPageScale: f32,
    unPageSerial: t.uint32,
};
pub const HTML_StartRequest_t = extern struct {
    pub const callback_id = 4503;
    unBrowserHandle: t.HHTMLBrowser,
    pchURL: [*c]const u8,
    pchTarget: [*c]const u8,
    pchPostData: [*c]const u8,
    bIsRedirect: bool,
};
pub const HTML_CloseBrowser_t = extern struct {
    pub const callback_id = 4504;
    unBrowserHandle: t.HHTMLBrowser,
};
pub const HTML_URLChanged_t = extern struct {
    pub const callback_id = 4505;
    unBrowserHandle: t.HHTMLBrowser,
    pchURL: [*c]const u8,
    pchPostData: [*c]const u8,
    bIsRedirect: bool,
    pchPageTitle: [*c]const u8,
    bNewNavigation: bool,
};
pub const HTML_FinishedRequest_t = extern struct {
    pub const callback_id = 4506;
    unBrowserHandle: t.HHTMLBrowser,
    pchURL: [*c]const u8,
    pchPageTitle: [*c]const u8,
};
pub const HTML_OpenLinkInNewTab_t = extern struct {
    pub const callback_id = 4507;
    unBrowserHandle: t.HHTMLBrowser,
    pchURL: [*c]const u8,
};
pub const HTML_ChangedTitle_t = extern struct {
    pub const callback_id = 4508;
    unBrowserHandle: t.HHTMLBrowser,
    pchTitle: [*c]const u8,
};
pub const HTML_SearchResults_t = extern struct {
    pub const callback_id = 4509;
    unBrowserHandle: t.HHTMLBrowser,
    unResults: t.uint32,
    unCurrentMatch: t.uint32,
};
pub const HTML_CanGoBackAndForward_t = extern struct {
    pub const callback_id = 4510;
    unBrowserHandle: t.HHTMLBrowser,
    bCanGoBack: bool,
    bCanGoForward: bool,
};
pub const HTML_HorizontalScroll_t = extern struct {
    pub const callback_id = 4511;
    unBrowserHandle: t.HHTMLBrowser,
    unScrollMax: t.uint32,
    unScrollCurrent: t.uint32,
    flPageScale: f32,
    bVisible: bool,
    unPageSize: t.uint32,
};
pub const HTML_VerticalScroll_t = extern struct {
    pub const callback_id = 4512;
    unBrowserHandle: t.HHTMLBrowser,
    unScrollMax: t.uint32,
    unScrollCurrent: t.uint32,
    flPageScale: f32,
    bVisible: bool,
    unPageSize: t.uint32,
};
pub const HTML_LinkAtPosition_t = extern struct {
    pub const callback_id = 4513;
    unBrowserHandle: t.HHTMLBrowser,
    x: t.uint32,
    y: t.uint32,
    pchURL: [*c]const u8,
    bInput: bool,
    bLiveLink: bool,
};
pub const HTML_JSAlert_t = extern struct {
    pub const callback_id = 4514;
    unBrowserHandle: t.HHTMLBrowser,
    pchMessage: [*c]const u8,
};
pub const HTML_JSConfirm_t = extern struct {
    pub const callback_id = 4515;
    unBrowserHandle: t.HHTMLBrowser,
    pchMessage: [*c]const u8,
};
pub const HTML_FileOpenDialog_t = extern struct {
    pub const callback_id = 4516;
    unBrowserHandle: t.HHTMLBrowser,
    pchTitle: [*c]const u8,
    pchInitialFile: [*c]const u8,
};
pub const HTML_NewWindow_t = extern struct {
    pub const callback_id = 4521;
    unBrowserHandle: t.HHTMLBrowser,
    pchURL: [*c]const u8,
    unX: t.uint32,
    unY: t.uint32,
    unWide: t.uint32,
    unTall: t.uint32,
    unNewWindow_BrowserHandle_IGNORE: t.HHTMLBrowser,
};
pub const HTML_SetCursor_t = extern struct {
    pub const callback_id = 4522;
    unBrowserHandle: t.HHTMLBrowser,
    eMouseCursor: t.uint32,
};
pub const HTML_StatusText_t = extern struct {
    pub const callback_id = 4523;
    unBrowserHandle: t.HHTMLBrowser,
    pchMsg: [*c]const u8,
};
pub const HTML_ShowToolTip_t = extern struct {
    pub const callback_id = 4524;
    unBrowserHandle: t.HHTMLBrowser,
    pchMsg: [*c]const u8,
};
pub const HTML_UpdateToolTip_t = extern struct {
    pub const callback_id = 4525;
    unBrowserHandle: t.HHTMLBrowser,
    pchMsg: [*c]const u8,
};
pub const HTML_HideToolTip_t = extern struct {
    pub const callback_id = 4526;
    unBrowserHandle: t.HHTMLBrowser,
};
pub const HTML_BrowserRestarted_t = extern struct {
    pub const callback_id = 4527;
    unBrowserHandle: t.HHTMLBrowser,
    unOldBrowserHandle: t.HHTMLBrowser,
};
pub const SteamInventoryResultReady_t = extern struct {
    pub const callback_id = 4700;
    m_handle: t.SteamInventoryResult_t,
    m_result: t.EResult,
};
pub const SteamInventoryFullUpdate_t = extern struct {
    pub const callback_id = 4701;
    m_handle: t.SteamInventoryResult_t,
};
pub const SteamInventoryDefinitionUpdate_t = extern struct {
    pub const callback_id = 4702;
};
pub const SteamInventoryEligiblePromoItemDefIDs_t = extern struct {
    pub const callback_id = 4703;
    m_result: t.EResult,
    m_steamID: t.CSteamID,
    m_numEligiblePromoItemDefs: i32,
    m_bCachedData: bool,
};
pub const SteamInventoryStartPurchaseResult_t = extern struct {
    pub const callback_id = 4704;
    m_result: t.EResult,
    m_ulOrderID: t.uint64,
    m_ulTransID: t.uint64,
};
pub const SteamInventoryRequestPricesResult_t = extern struct {
    pub const callback_id = 4705;
    m_result: t.EResult,
    m_rgchCurrency: [4]u8,
};
pub const GetVideoURLResult_t = extern struct {
    pub const callback_id = 4611;
    m_eResult: t.EResult,
    m_unVideoAppID: t.AppId_t,
    m_rgchURL: [256]u8,
};
pub const GetOPFSettingsResult_t = extern struct {
    pub const callback_id = 4624;
    m_eResult: t.EResult,
    m_unVideoAppID: t.AppId_t,
};
pub const SteamParentalSettingsChanged_t = extern struct {
    pub const callback_id = 5001;
};
pub const SteamRemotePlaySessionConnected_t = extern struct {
    pub const callback_id = 5701;
    m_unSessionID: t.RemotePlaySessionID_t,
};
pub const SteamRemotePlaySessionDisconnected_t = extern struct {
    pub const callback_id = 5702;
    m_unSessionID: t.RemotePlaySessionID_t,
};
pub const SteamNetworkingMessagesSessionRequest_t = extern struct {
    pub const callback_id = 1251;
    m_identityRemote: t.SteamNetworkingIdentity,
};
pub const SteamNetworkingMessagesSessionFailed_t = extern struct {
    pub const callback_id = 1252;
    m_info: t.SteamNetConnectionInfo_t,
};
pub const SteamNetConnectionStatusChangedCallback_t = extern struct {
    pub const callback_id = 1221;
    m_hConn: t.HSteamNetConnection,
    m_info: t.SteamNetConnectionInfo_t,
    m_eOldState: t.ESteamNetworkingConnectionState,
};
pub const SteamNetAuthenticationStatus_t = extern struct {
    pub const callback_id = 1222;
    m_eAvail: t.ESteamNetworkingAvailability,
    m_debugMsg: [256]u8,
};
pub const SteamRelayNetworkStatus_t = extern struct {
    pub const callback_id = 1281;
    m_eAvail: t.ESteamNetworkingAvailability,
    m_bPingMeasurementInProgress: i32,
    m_eAvailNetworkConfig: t.ESteamNetworkingAvailability,
    m_eAvailAnyRelay: t.ESteamNetworkingAvailability,
    m_debugMsg: [256]u8,
};
pub const GSClientApprove_t = extern struct {
    pub const callback_id = 201;
    m_SteamID: t.CSteamID,
    m_OwnerSteamID: t.CSteamID,
};
pub const GSClientDeny_t = extern struct {
    pub const callback_id = 202;
    m_SteamID: t.CSteamID,
    m_eDenyReason: t.EDenyReason,
    m_rgchOptionalText: [128]u8,
};
pub const GSClientKick_t = extern struct {
    pub const callback_id = 203;
    m_SteamID: t.CSteamID,
    m_eDenyReason: t.EDenyReason,
};
pub const GSClientAchievementStatus_t = extern struct {
    pub const callback_id = 206;
    m_SteamID: t.uint64,
    m_pchAchievement: [128]u8,
    m_bUnlocked: bool,
};
pub const GSPolicyResponse_t = extern struct {
    pub const callback_id = 115;
    m_bSecure: t.uint8,
};
pub const GSGameplayStats_t = extern struct {
    pub const callback_id = 207;
    m_eResult: t.EResult,
    m_nRank: i32,
    m_unTotalConnects: t.uint32,
    m_unTotalMinutesPlayed: t.uint32,
};
pub const GSClientGroupStatus_t = extern struct {
    pub const callback_id = 208;
    m_SteamIDUser: t.CSteamID,
    m_SteamIDGroup: t.CSteamID,
    m_bMember: bool,
    m_bOfficer: bool,
};
pub const GSReputation_t = extern struct {
    pub const callback_id = 209;
    m_eResult: t.EResult,
    m_unReputationScore: t.uint32,
    m_bBanned: bool,
    m_unBannedIP: t.uint32,
    m_usBannedPort: t.uint16,
    m_ulBannedGameID: t.uint64,
    m_unBanExpires: t.uint32,
};
pub const AssociateWithClanResult_t = extern struct {
    pub const callback_id = 210;
    m_eResult: t.EResult,
};
pub const ComputeNewPlayerCompatibilityResult_t = extern struct {
    pub const callback_id = 211;
    m_eResult: t.EResult,
    m_cPlayersThatDontLikeCandidate: i32,
    m_cPlayersThatCandidateDoesntLike: i32,
    m_cClanPlayersThatDontLikeCandidate: i32,
    m_SteamIDCandidate: t.CSteamID,
};
pub const GSStatsReceived_t = extern struct {
    pub const callback_id = 1800;
    m_eResult: t.EResult,
    m_steamIDUser: t.CSteamID,
};
pub const GSStatsStored_t = extern struct {
    pub const callback_id = 1801;
    m_eResult: t.EResult,
    m_steamIDUser: t.CSteamID,
};
pub const GSStatsUnloaded_t = extern struct {
    pub const callback_id = 1108;
    m_steamIDUser: t.CSteamID,
};
pub const SteamNetworkingFakeIPResult_t = extern struct {
    pub const callback_id = 1223;
    pub const k_nMaxReturnPorts: i32 = 8;
    m_eResult: t.EResult,
    m_identity: t.SteamNetworkingIdentity,
    m_unIP: t.uint32,
    m_unPorts: [8]t.uint16,
};
