const t = @import("../steam_api.zig");
const p0 = t.p;
pub const ESteamIPType = extern struct {
    v: c_int,
    pub const k_ESteamIPTypeIPv4 = 0;
    pub const k_ESteamIPTypeIPv6 = 1;
};
pub const EUniverse = extern struct {
    v: c_int,
    pub const k_EUniverseInvalid = 0;
    pub const k_EUniversePublic = 1;
    pub const k_EUniverseBeta = 2;
    pub const k_EUniverseInternal = 3;
    pub const k_EUniverseDev = 4;
    pub const k_EUniverseMax = 5;
};
pub const EResult = extern struct {
    v: c_int,
    pub const k_EResultNone = 0;
    pub const k_EResultOK = 1;
    pub const k_EResultFail = 2;
    pub const k_EResultNoConnection = 3;
    pub const k_EResultInvalidPassword = 5;
    pub const k_EResultLoggedInElsewhere = 6;
    pub const k_EResultInvalidProtocolVer = 7;
    pub const k_EResultInvalidParam = 8;
    pub const k_EResultFileNotFound = 9;
    pub const k_EResultBusy = 10;
    pub const k_EResultInvalidState = 11;
    pub const k_EResultInvalidName = 12;
    pub const k_EResultInvalidEmail = 13;
    pub const k_EResultDuplicateName = 14;
    pub const k_EResultAccessDenied = 15;
    pub const k_EResultTimeout = 16;
    pub const k_EResultBanned = 17;
    pub const k_EResultAccountNotFound = 18;
    pub const k_EResultInvalidSteamID = 19;
    pub const k_EResultServiceUnavailable = 20;
    pub const k_EResultNotLoggedOn = 21;
    pub const k_EResultPending = 22;
    pub const k_EResultEncryptionFailure = 23;
    pub const k_EResultInsufficientPrivilege = 24;
    pub const k_EResultLimitExceeded = 25;
    pub const k_EResultRevoked = 26;
    pub const k_EResultExpired = 27;
    pub const k_EResultAlreadyRedeemed = 28;
    pub const k_EResultDuplicateRequest = 29;
    pub const k_EResultAlreadyOwned = 30;
    pub const k_EResultIPNotFound = 31;
    pub const k_EResultPersistFailed = 32;
    pub const k_EResultLockingFailed = 33;
    pub const k_EResultLogonSessionReplaced = 34;
    pub const k_EResultConnectFailed = 35;
    pub const k_EResultHandshakeFailed = 36;
    pub const k_EResultIOFailure = 37;
    pub const k_EResultRemoteDisconnect = 38;
    pub const k_EResultShoppingCartNotFound = 39;
    pub const k_EResultBlocked = 40;
    pub const k_EResultIgnored = 41;
    pub const k_EResultNoMatch = 42;
    pub const k_EResultAccountDisabled = 43;
    pub const k_EResultServiceReadOnly = 44;
    pub const k_EResultAccountNotFeatured = 45;
    pub const k_EResultAdministratorOK = 46;
    pub const k_EResultContentVersion = 47;
    pub const k_EResultTryAnotherCM = 48;
    pub const k_EResultPasswordRequiredToKickSession = 49;
    pub const k_EResultAlreadyLoggedInElsewhere = 50;
    pub const k_EResultSuspended = 51;
    pub const k_EResultCancelled = 52;
    pub const k_EResultDataCorruption = 53;
    pub const k_EResultDiskFull = 54;
    pub const k_EResultRemoteCallFailed = 55;
    pub const k_EResultPasswordUnset = 56;
    pub const k_EResultExternalAccountUnlinked = 57;
    pub const k_EResultPSNTicketInvalid = 58;
    pub const k_EResultExternalAccountAlreadyLinked = 59;
    pub const k_EResultRemoteFileConflict = 60;
    pub const k_EResultIllegalPassword = 61;
    pub const k_EResultSameAsPreviousValue = 62;
    pub const k_EResultAccountLogonDenied = 63;
    pub const k_EResultCannotUseOldPassword = 64;
    pub const k_EResultInvalidLoginAuthCode = 65;
    pub const k_EResultAccountLogonDeniedNoMail = 66;
    pub const k_EResultHardwareNotCapableOfIPT = 67;
    pub const k_EResultIPTInitError = 68;
    pub const k_EResultParentalControlRestricted = 69;
    pub const k_EResultFacebookQueryError = 70;
    pub const k_EResultExpiredLoginAuthCode = 71;
    pub const k_EResultIPLoginRestrictionFailed = 72;
    pub const k_EResultAccountLockedDown = 73;
    pub const k_EResultAccountLogonDeniedVerifiedEmailRequired = 74;
    pub const k_EResultNoMatchingURL = 75;
    pub const k_EResultBadResponse = 76;
    pub const k_EResultRequirePasswordReEntry = 77;
    pub const k_EResultValueOutOfRange = 78;
    pub const k_EResultUnexpectedError = 79;
    pub const k_EResultDisabled = 80;
    pub const k_EResultInvalidCEGSubmission = 81;
    pub const k_EResultRestrictedDevice = 82;
    pub const k_EResultRegionLocked = 83;
    pub const k_EResultRateLimitExceeded = 84;
    pub const k_EResultAccountLoginDeniedNeedTwoFactor = 85;
    pub const k_EResultItemDeleted = 86;
    pub const k_EResultAccountLoginDeniedThrottle = 87;
    pub const k_EResultTwoFactorCodeMismatch = 88;
    pub const k_EResultTwoFactorActivationCodeMismatch = 89;
    pub const k_EResultAccountAssociatedToMultiplePartners = 90;
    pub const k_EResultNotModified = 91;
    pub const k_EResultNoMobileDevice = 92;
    pub const k_EResultTimeNotSynced = 93;
    pub const k_EResultSmsCodeFailed = 94;
    pub const k_EResultAccountLimitExceeded = 95;
    pub const k_EResultAccountActivityLimitExceeded = 96;
    pub const k_EResultPhoneActivityLimitExceeded = 97;
    pub const k_EResultRefundToWallet = 98;
    pub const k_EResultEmailSendFailure = 99;
    pub const k_EResultNotSettled = 100;
    pub const k_EResultNeedCaptcha = 101;
    pub const k_EResultGSLTDenied = 102;
    pub const k_EResultGSOwnerDenied = 103;
    pub const k_EResultInvalidItemType = 104;
    pub const k_EResultIPBanned = 105;
    pub const k_EResultGSLTExpired = 106;
    pub const k_EResultInsufficientFunds = 107;
    pub const k_EResultTooManyPending = 108;
    pub const k_EResultNoSiteLicensesFound = 109;
    pub const k_EResultWGNetworkSendExceeded = 110;
    pub const k_EResultAccountNotFriends = 111;
    pub const k_EResultLimitedUserAccount = 112;
    pub const k_EResultCantRemoveItem = 113;
    pub const k_EResultAccountDeleted = 114;
    pub const k_EResultExistingUserCancelledLicense = 115;
    pub const k_EResultCommunityCooldown = 116;
    pub const k_EResultNoLauncherSpecified = 117;
    pub const k_EResultMustAgreeToSSA = 118;
    pub const k_EResultLauncherMigrated = 119;
    pub const k_EResultSteamRealmMismatch = 120;
    pub const k_EResultInvalidSignature = 121;
    pub const k_EResultParseFailure = 122;
    pub const k_EResultNoVerifiedPhone = 123;
};
pub const EVoiceResult = extern struct {
    v: c_int,
    pub const k_EVoiceResultOK = 0;
    pub const k_EVoiceResultNotInitialized = 1;
    pub const k_EVoiceResultNotRecording = 2;
    pub const k_EVoiceResultNoData = 3;
    pub const k_EVoiceResultBufferTooSmall = 4;
    pub const k_EVoiceResultDataCorrupted = 5;
    pub const k_EVoiceResultRestricted = 6;
    pub const k_EVoiceResultUnsupportedCodec = 7;
    pub const k_EVoiceResultReceiverOutOfDate = 8;
    pub const k_EVoiceResultReceiverDidNotAnswer = 9;
};
pub const EDenyReason = extern struct {
    v: c_int,
    pub const k_EDenyInvalid = 0;
    pub const k_EDenyInvalidVersion = 1;
    pub const k_EDenyGeneric = 2;
    pub const k_EDenyNotLoggedOn = 3;
    pub const k_EDenyNoLicense = 4;
    pub const k_EDenyCheater = 5;
    pub const k_EDenyLoggedInElseWhere = 6;
    pub const k_EDenyUnknownText = 7;
    pub const k_EDenyIncompatibleAnticheat = 8;
    pub const k_EDenyMemoryCorruption = 9;
    pub const k_EDenyIncompatibleSoftware = 10;
    pub const k_EDenySteamConnectionLost = 11;
    pub const k_EDenySteamConnectionError = 12;
    pub const k_EDenySteamResponseTimedOut = 13;
    pub const k_EDenySteamValidationStalled = 14;
    pub const k_EDenySteamOwnerLeftGuestUser = 15;
};
pub const EBeginAuthSessionResult = extern struct {
    v: c_int,
    pub const k_EBeginAuthSessionResultOK = 0;
    pub const k_EBeginAuthSessionResultInvalidTicket = 1;
    pub const k_EBeginAuthSessionResultDuplicateRequest = 2;
    pub const k_EBeginAuthSessionResultInvalidVersion = 3;
    pub const k_EBeginAuthSessionResultGameMismatch = 4;
    pub const k_EBeginAuthSessionResultExpiredTicket = 5;
};
pub const EAuthSessionResponse = extern struct {
    v: c_int,
    pub const k_EAuthSessionResponseOK = 0;
    pub const k_EAuthSessionResponseUserNotConnectedToSteam = 1;
    pub const k_EAuthSessionResponseNoLicenseOrExpired = 2;
    pub const k_EAuthSessionResponseVACBanned = 3;
    pub const k_EAuthSessionResponseLoggedInElseWhere = 4;
    pub const k_EAuthSessionResponseVACCheckTimedOut = 5;
    pub const k_EAuthSessionResponseAuthTicketCanceled = 6;
    pub const k_EAuthSessionResponseAuthTicketInvalidAlreadyUsed = 7;
    pub const k_EAuthSessionResponseAuthTicketInvalid = 8;
    pub const k_EAuthSessionResponsePublisherIssuedBan = 9;
};
pub const EUserHasLicenseForAppResult = extern struct {
    v: c_int,
    pub const k_EUserHasLicenseResultHasLicense = 0;
    pub const k_EUserHasLicenseResultDoesNotHaveLicense = 1;
    pub const k_EUserHasLicenseResultNoAuth = 2;
};
pub const EAccountType = extern struct {
    v: c_int,
    pub const k_EAccountTypeInvalid = 0;
    pub const k_EAccountTypeIndividual = 1;
    pub const k_EAccountTypeMultiseat = 2;
    pub const k_EAccountTypeGameServer = 3;
    pub const k_EAccountTypeAnonGameServer = 4;
    pub const k_EAccountTypePending = 5;
    pub const k_EAccountTypeContentServer = 6;
    pub const k_EAccountTypeClan = 7;
    pub const k_EAccountTypeChat = 8;
    pub const k_EAccountTypeConsoleUser = 9;
    pub const k_EAccountTypeAnonUser = 10;
    pub const k_EAccountTypeMax = 11;
};
pub const EChatEntryType = extern struct {
    v: c_int,
    pub const k_EChatEntryTypeInvalid = 0;
    pub const k_EChatEntryTypeChatMsg = 1;
    pub const k_EChatEntryTypeTyping = 2;
    pub const k_EChatEntryTypeInviteGame = 3;
    pub const k_EChatEntryTypeEmote = 4;
    pub const k_EChatEntryTypeLeftConversation = 6;
    pub const k_EChatEntryTypeEntered = 7;
    pub const k_EChatEntryTypeWasKicked = 8;
    pub const k_EChatEntryTypeWasBanned = 9;
    pub const k_EChatEntryTypeDisconnected = 10;
    pub const k_EChatEntryTypeHistoricalChat = 11;
    pub const k_EChatEntryTypeLinkBlocked = 14;
};
pub const EChatRoomEnterResponse = extern struct {
    v: c_int,
    pub const k_EChatRoomEnterResponseSuccess = 1;
    pub const k_EChatRoomEnterResponseDoesntExist = 2;
    pub const k_EChatRoomEnterResponseNotAllowed = 3;
    pub const k_EChatRoomEnterResponseFull = 4;
    pub const k_EChatRoomEnterResponseError = 5;
    pub const k_EChatRoomEnterResponseBanned = 6;
    pub const k_EChatRoomEnterResponseLimited = 7;
    pub const k_EChatRoomEnterResponseClanDisabled = 8;
    pub const k_EChatRoomEnterResponseCommunityBan = 9;
    pub const k_EChatRoomEnterResponseMemberBlockedYou = 10;
    pub const k_EChatRoomEnterResponseYouBlockedMember = 11;
    pub const k_EChatRoomEnterResponseRatelimitExceeded = 15;
};
pub const EChatSteamIDInstanceFlags = extern struct {
    v: c_int,
    pub const k_EChatAccountInstanceMask = 4095;
    pub const k_EChatInstanceFlagClan = 524288;
    pub const k_EChatInstanceFlagLobby = 262144;
    pub const k_EChatInstanceFlagMMSLobby = 131072;
};
pub const ENotificationPosition = extern struct {
    v: c_int,
    pub const k_EPositionTopLeft = 0;
    pub const k_EPositionTopRight = 1;
    pub const k_EPositionBottomLeft = 2;
    pub const k_EPositionBottomRight = 3;
};
pub const EBroadcastUploadResult = extern struct {
    v: c_int,
    pub const k_EBroadcastUploadResultNone = 0;
    pub const k_EBroadcastUploadResultOK = 1;
    pub const k_EBroadcastUploadResultInitFailed = 2;
    pub const k_EBroadcastUploadResultFrameFailed = 3;
    pub const k_EBroadcastUploadResultTimeout = 4;
    pub const k_EBroadcastUploadResultBandwidthExceeded = 5;
    pub const k_EBroadcastUploadResultLowFPS = 6;
    pub const k_EBroadcastUploadResultMissingKeyFrames = 7;
    pub const k_EBroadcastUploadResultNoConnection = 8;
    pub const k_EBroadcastUploadResultRelayFailed = 9;
    pub const k_EBroadcastUploadResultSettingsChanged = 10;
    pub const k_EBroadcastUploadResultMissingAudio = 11;
    pub const k_EBroadcastUploadResultTooFarBehind = 12;
    pub const k_EBroadcastUploadResultTranscodeBehind = 13;
    pub const k_EBroadcastUploadResultNotAllowedToPlay = 14;
    pub const k_EBroadcastUploadResultBusy = 15;
    pub const k_EBroadcastUploadResultBanned = 16;
    pub const k_EBroadcastUploadResultAlreadyActive = 17;
    pub const k_EBroadcastUploadResultForcedOff = 18;
    pub const k_EBroadcastUploadResultAudioBehind = 19;
    pub const k_EBroadcastUploadResultShutdown = 20;
    pub const k_EBroadcastUploadResultDisconnect = 21;
    pub const k_EBroadcastUploadResultVideoInitFailed = 22;
    pub const k_EBroadcastUploadResultAudioInitFailed = 23;
};
pub const EMarketNotAllowedReasonFlags = extern struct {
    v: c_int,
    pub const k_EMarketNotAllowedReason_None = 0;
    pub const k_EMarketNotAllowedReason_TemporaryFailure = 1;
    pub const k_EMarketNotAllowedReason_AccountDisabled = 2;
    pub const k_EMarketNotAllowedReason_AccountLockedDown = 4;
    pub const k_EMarketNotAllowedReason_AccountLimited = 8;
    pub const k_EMarketNotAllowedReason_TradeBanned = 16;
    pub const k_EMarketNotAllowedReason_AccountNotTrusted = 32;
    pub const k_EMarketNotAllowedReason_SteamGuardNotEnabled = 64;
    pub const k_EMarketNotAllowedReason_SteamGuardOnlyRecentlyEnabled = 128;
    pub const k_EMarketNotAllowedReason_RecentPasswordReset = 256;
    pub const k_EMarketNotAllowedReason_NewPaymentMethod = 512;
    pub const k_EMarketNotAllowedReason_InvalidCookie = 1024;
    pub const k_EMarketNotAllowedReason_UsingNewDevice = 2048;
    pub const k_EMarketNotAllowedReason_RecentSelfRefund = 4096;
    pub const k_EMarketNotAllowedReason_NewPaymentMethodCannotBeVerified = 8192;
    pub const k_EMarketNotAllowedReason_NoRecentPurchases = 16384;
    pub const k_EMarketNotAllowedReason_AcceptedWalletGift = 32768;
};
pub const EDurationControlProgress = extern struct {
    v: c_int,
    pub const k_EDurationControlProgress_Full = 0;
    pub const k_EDurationControlProgress_Half = 1;
    pub const k_EDurationControlProgress_None = 2;
    pub const k_EDurationControl_ExitSoon_3h = 3;
    pub const k_EDurationControl_ExitSoon_5h = 4;
    pub const k_EDurationControl_ExitSoon_Night = 5;
};
pub const EDurationControlNotification = extern struct {
    v: c_int,
    pub const k_EDurationControlNotification_None = 0;
    pub const k_EDurationControlNotification_1Hour = 1;
    pub const k_EDurationControlNotification_3Hours = 2;
    pub const k_EDurationControlNotification_HalfProgress = 3;
    pub const k_EDurationControlNotification_NoProgress = 4;
    pub const k_EDurationControlNotification_ExitSoon_3h = 5;
    pub const k_EDurationControlNotification_ExitSoon_5h = 6;
    pub const k_EDurationControlNotification_ExitSoon_Night = 7;
};
pub const EDurationControlOnlineState = extern struct {
    v: c_int,
    pub const k_EDurationControlOnlineState_Invalid = 0;
    pub const k_EDurationControlOnlineState_Offline = 1;
    pub const k_EDurationControlOnlineState_Online = 2;
    pub const k_EDurationControlOnlineState_OnlineHighPri = 3;
};
pub const EGameSearchErrorCode_t = extern struct {
    v: c_int,
    pub const k_EGameSearchErrorCode_OK = 1;
    pub const k_EGameSearchErrorCode_Failed_Search_Already_In_Progress = 2;
    pub const k_EGameSearchErrorCode_Failed_No_Search_In_Progress = 3;
    pub const k_EGameSearchErrorCode_Failed_Not_Lobby_Leader = 4;
    pub const k_EGameSearchErrorCode_Failed_No_Host_Available = 5;
    pub const k_EGameSearchErrorCode_Failed_Search_Params_Invalid = 6;
    pub const k_EGameSearchErrorCode_Failed_Offline = 7;
    pub const k_EGameSearchErrorCode_Failed_NotAuthorized = 8;
    pub const k_EGameSearchErrorCode_Failed_Unknown_Error = 9;
};
pub const EPlayerResult_t = extern struct {
    v: c_int,
    pub const k_EPlayerResultFailedToConnect = 1;
    pub const k_EPlayerResultAbandoned = 2;
    pub const k_EPlayerResultKicked = 3;
    pub const k_EPlayerResultIncomplete = 4;
    pub const k_EPlayerResultCompleted = 5;
};
pub const ESteamIPv6ConnectivityProtocol = extern struct {
    v: c_int,
    pub const k_ESteamIPv6ConnectivityProtocol_Invalid = 0;
    pub const k_ESteamIPv6ConnectivityProtocol_HTTP = 1;
    pub const k_ESteamIPv6ConnectivityProtocol_UDP = 2;
};
pub const ESteamIPv6ConnectivityState = extern struct {
    v: c_int,
    pub const k_ESteamIPv6ConnectivityState_Unknown = 0;
    pub const k_ESteamIPv6ConnectivityState_Good = 1;
    pub const k_ESteamIPv6ConnectivityState_Bad = 2;
};
pub const EFriendRelationship = extern struct {
    v: c_int,
    pub const k_EFriendRelationshipNone = 0;
    pub const k_EFriendRelationshipBlocked = 1;
    pub const k_EFriendRelationshipRequestRecipient = 2;
    pub const k_EFriendRelationshipFriend = 3;
    pub const k_EFriendRelationshipRequestInitiator = 4;
    pub const k_EFriendRelationshipIgnored = 5;
    pub const k_EFriendRelationshipIgnoredFriend = 6;
    pub const k_EFriendRelationshipSuggested_DEPRECATED = 7;
    pub const k_EFriendRelationshipMax = 8;
};
pub const EPersonaState = extern struct {
    v: c_int,
    pub const k_EPersonaStateOffline = 0;
    pub const k_EPersonaStateOnline = 1;
    pub const k_EPersonaStateBusy = 2;
    pub const k_EPersonaStateAway = 3;
    pub const k_EPersonaStateSnooze = 4;
    pub const k_EPersonaStateLookingToTrade = 5;
    pub const k_EPersonaStateLookingToPlay = 6;
    pub const k_EPersonaStateInvisible = 7;
    pub const k_EPersonaStateMax = 8;
};
pub const EFriendFlags = extern struct {
    v: c_int,
    pub const k_EFriendFlagNone = 0;
    pub const k_EFriendFlagBlocked = 1;
    pub const k_EFriendFlagFriendshipRequested = 2;
    pub const k_EFriendFlagImmediate = 4;
    pub const k_EFriendFlagClanMember = 8;
    pub const k_EFriendFlagOnGameServer = 16;
    pub const k_EFriendFlagRequestingFriendship = 128;
    pub const k_EFriendFlagRequestingInfo = 256;
    pub const k_EFriendFlagIgnored = 512;
    pub const k_EFriendFlagIgnoredFriend = 1024;
    pub const k_EFriendFlagChatMember = 4096;
    pub const k_EFriendFlagAll = 65535;
};
pub const EUserRestriction = extern struct {
    v: c_int,
    pub const k_nUserRestrictionNone = 0;
    pub const k_nUserRestrictionUnknown = 1;
    pub const k_nUserRestrictionAnyChat = 2;
    pub const k_nUserRestrictionVoiceChat = 4;
    pub const k_nUserRestrictionGroupChat = 8;
    pub const k_nUserRestrictionRating = 16;
    pub const k_nUserRestrictionGameInvites = 32;
    pub const k_nUserRestrictionTrading = 64;
};
pub const EOverlayToStoreFlag = extern struct {
    v: c_int,
    pub const k_EOverlayToStoreFlag_None = 0;
    pub const k_EOverlayToStoreFlag_AddToCart = 1;
    pub const k_EOverlayToStoreFlag_AddToCartAndShow = 2;
};
pub const EActivateGameOverlayToWebPageMode = extern struct {
    v: c_int,
    pub const k_EActivateGameOverlayToWebPageMode_Default = 0;
    pub const k_EActivateGameOverlayToWebPageMode_Modal = 1;
};
pub const EPersonaChange = extern struct {
    v: c_int,
    pub const k_EPersonaChangeName = 1;
    pub const k_EPersonaChangeStatus = 2;
    pub const k_EPersonaChangeComeOnline = 4;
    pub const k_EPersonaChangeGoneOffline = 8;
    pub const k_EPersonaChangeGamePlayed = 16;
    pub const k_EPersonaChangeGameServer = 32;
    pub const k_EPersonaChangeAvatar = 64;
    pub const k_EPersonaChangeJoinedSource = 128;
    pub const k_EPersonaChangeLeftSource = 256;
    pub const k_EPersonaChangeRelationshipChanged = 512;
    pub const k_EPersonaChangeNameFirstSet = 1024;
    pub const k_EPersonaChangeBroadcast = 2048;
    pub const k_EPersonaChangeNickname = 4096;
    pub const k_EPersonaChangeSteamLevel = 8192;
    pub const k_EPersonaChangeRichPresence = 16384;
};
pub const ESteamAPICallFailure = extern struct {
    v: c_int,
    pub const k_ESteamAPICallFailureNone = -1;
    pub const k_ESteamAPICallFailureSteamGone = 0;
    pub const k_ESteamAPICallFailureNetworkFailure = 1;
    pub const k_ESteamAPICallFailureInvalidHandle = 2;
    pub const k_ESteamAPICallFailureMismatchedCallback = 3;
};
pub const EGamepadTextInputMode = extern struct {
    v: c_int,
    pub const k_EGamepadTextInputModeNormal = 0;
    pub const k_EGamepadTextInputModePassword = 1;
};
pub const EGamepadTextInputLineMode = extern struct {
    v: c_int,
    pub const k_EGamepadTextInputLineModeSingleLine = 0;
    pub const k_EGamepadTextInputLineModeMultipleLines = 1;
};
pub const EFloatingGamepadTextInputMode = extern struct {
    v: c_int,
    pub const k_EFloatingGamepadTextInputModeModeSingleLine = 0;
    pub const k_EFloatingGamepadTextInputModeModeMultipleLines = 1;
    pub const k_EFloatingGamepadTextInputModeModeEmail = 2;
    pub const k_EFloatingGamepadTextInputModeModeNumeric = 3;
};
pub const ETextFilteringContext = extern struct {
    v: c_int,
    pub const k_ETextFilteringContextUnknown = 0;
    pub const k_ETextFilteringContextGameContent = 1;
    pub const k_ETextFilteringContextChat = 2;
    pub const k_ETextFilteringContextName = 3;
};
pub const ECheckFileSignature = extern struct {
    v: c_int,
    pub const k_ECheckFileSignatureInvalidSignature = 0;
    pub const k_ECheckFileSignatureValidSignature = 1;
    pub const k_ECheckFileSignatureFileNotFound = 2;
    pub const k_ECheckFileSignatureNoSignaturesFoundForThisApp = 3;
    pub const k_ECheckFileSignatureNoSignaturesFoundForThisFile = 4;
};
pub const EMatchMakingServerResponse = extern struct {
    v: c_int,
    pub const eServerResponded = 0;
    pub const eServerFailedToRespond = 1;
    pub const eNoServersListedOnMasterServer = 2;
};
pub const ELobbyType = extern struct {
    v: c_int,
    pub const k_ELobbyTypePrivate = 0;
    pub const k_ELobbyTypeFriendsOnly = 1;
    pub const k_ELobbyTypePublic = 2;
    pub const k_ELobbyTypeInvisible = 3;
    pub const k_ELobbyTypePrivateUnique = 4;
};
pub const ELobbyComparison = extern struct {
    v: c_int,
    pub const k_ELobbyComparisonEqualToOrLessThan = -2;
    pub const k_ELobbyComparisonLessThan = -1;
    pub const k_ELobbyComparisonEqual = 0;
    pub const k_ELobbyComparisonGreaterThan = 1;
    pub const k_ELobbyComparisonEqualToOrGreaterThan = 2;
    pub const k_ELobbyComparisonNotEqual = 3;
};
pub const ELobbyDistanceFilter = extern struct {
    v: c_int,
    pub const k_ELobbyDistanceFilterClose = 0;
    pub const k_ELobbyDistanceFilterDefault = 1;
    pub const k_ELobbyDistanceFilterFar = 2;
    pub const k_ELobbyDistanceFilterWorldwide = 3;
};
pub const EChatMemberStateChange = extern struct {
    v: c_int,
    pub const k_EChatMemberStateChangeEntered = 1;
    pub const k_EChatMemberStateChangeLeft = 2;
    pub const k_EChatMemberStateChangeDisconnected = 4;
    pub const k_EChatMemberStateChangeKicked = 8;
    pub const k_EChatMemberStateChangeBanned = 16;
};
pub const ESteamPartyBeaconLocationType = extern struct {
    v: c_int,
    pub const k_ESteamPartyBeaconLocationType_Invalid = 0;
    pub const k_ESteamPartyBeaconLocationType_ChatGroup = 1;
    pub const k_ESteamPartyBeaconLocationType_Max = 2;
};
pub const ESteamPartyBeaconLocationData = extern struct {
    v: c_int,
    pub const k_ESteamPartyBeaconLocationDataInvalid = 0;
    pub const k_ESteamPartyBeaconLocationDataName = 1;
    pub const k_ESteamPartyBeaconLocationDataIconURLSmall = 2;
    pub const k_ESteamPartyBeaconLocationDataIconURLMedium = 3;
    pub const k_ESteamPartyBeaconLocationDataIconURLLarge = 4;
};
pub const ERemoteStoragePlatform = extern struct {
    v: c_int,
    pub const k_ERemoteStoragePlatformNone = 0;
    pub const k_ERemoteStoragePlatformWindows = 1;
    pub const k_ERemoteStoragePlatformOSX = 2;
    pub const k_ERemoteStoragePlatformPS3 = 4;
    pub const k_ERemoteStoragePlatformLinux = 8;
    pub const k_ERemoteStoragePlatformSwitch = 16;
    pub const k_ERemoteStoragePlatformAndroid = 32;
    pub const k_ERemoteStoragePlatformIOS = 64;
    pub const k_ERemoteStoragePlatformAll = -1;
};
pub const ERemoteStoragePublishedFileVisibility = extern struct {
    v: c_int,
    pub const k_ERemoteStoragePublishedFileVisibilityPublic = 0;
    pub const k_ERemoteStoragePublishedFileVisibilityFriendsOnly = 1;
    pub const k_ERemoteStoragePublishedFileVisibilityPrivate = 2;
    pub const k_ERemoteStoragePublishedFileVisibilityUnlisted = 3;
};
pub const EWorkshopFileType = extern struct {
    v: c_int,
    pub const k_EWorkshopFileTypeFirst = 0;
    pub const k_EWorkshopFileTypeCommunity = 0;
    pub const k_EWorkshopFileTypeMicrotransaction = 1;
    pub const k_EWorkshopFileTypeCollection = 2;
    pub const k_EWorkshopFileTypeArt = 3;
    pub const k_EWorkshopFileTypeVideo = 4;
    pub const k_EWorkshopFileTypeScreenshot = 5;
    pub const k_EWorkshopFileTypeGame = 6;
    pub const k_EWorkshopFileTypeSoftware = 7;
    pub const k_EWorkshopFileTypeConcept = 8;
    pub const k_EWorkshopFileTypeWebGuide = 9;
    pub const k_EWorkshopFileTypeIntegratedGuide = 10;
    pub const k_EWorkshopFileTypeMerch = 11;
    pub const k_EWorkshopFileTypeControllerBinding = 12;
    pub const k_EWorkshopFileTypeSteamworksAccessInvite = 13;
    pub const k_EWorkshopFileTypeSteamVideo = 14;
    pub const k_EWorkshopFileTypeGameManagedItem = 15;
    pub const k_EWorkshopFileTypeMax = 16;
};
pub const EWorkshopVote = extern struct {
    v: c_int,
    pub const k_EWorkshopVoteUnvoted = 0;
    pub const k_EWorkshopVoteFor = 1;
    pub const k_EWorkshopVoteAgainst = 2;
    pub const k_EWorkshopVoteLater = 3;
};
pub const EWorkshopFileAction = extern struct {
    v: c_int,
    pub const k_EWorkshopFileActionPlayed = 0;
    pub const k_EWorkshopFileActionCompleted = 1;
};
pub const EWorkshopEnumerationType = extern struct {
    v: c_int,
    pub const k_EWorkshopEnumerationTypeRankedByVote = 0;
    pub const k_EWorkshopEnumerationTypeRecent = 1;
    pub const k_EWorkshopEnumerationTypeTrending = 2;
    pub const k_EWorkshopEnumerationTypeFavoritesOfFriends = 3;
    pub const k_EWorkshopEnumerationTypeVotedByFriends = 4;
    pub const k_EWorkshopEnumerationTypeContentByFriends = 5;
    pub const k_EWorkshopEnumerationTypeRecentFromFollowedUsers = 6;
};
pub const EWorkshopVideoProvider = extern struct {
    v: c_int,
    pub const k_EWorkshopVideoProviderNone = 0;
    pub const k_EWorkshopVideoProviderYoutube = 1;
};
pub const EUGCReadAction = extern struct {
    v: c_int,
    pub const k_EUGCRead_ContinueReadingUntilFinished = 0;
    pub const k_EUGCRead_ContinueReading = 1;
    pub const k_EUGCRead_Close = 2;
};
pub const ERemoteStorageLocalFileChange = extern struct {
    v: c_int,
    pub const k_ERemoteStorageLocalFileChange_Invalid = 0;
    pub const k_ERemoteStorageLocalFileChange_FileUpdated = 1;
    pub const k_ERemoteStorageLocalFileChange_FileDeleted = 2;
};
pub const ERemoteStorageFilePathType = extern struct {
    v: c_int,
    pub const k_ERemoteStorageFilePathType_Invalid = 0;
    pub const k_ERemoteStorageFilePathType_Absolute = 1;
    pub const k_ERemoteStorageFilePathType_APIFilename = 2;
};
pub const ELeaderboardDataRequest = extern struct {
    v: c_int,
    pub const k_ELeaderboardDataRequestGlobal = 0;
    pub const k_ELeaderboardDataRequestGlobalAroundUser = 1;
    pub const k_ELeaderboardDataRequestFriends = 2;
    pub const k_ELeaderboardDataRequestUsers = 3;
};
pub const ELeaderboardSortMethod = extern struct {
    v: c_int,
    pub const k_ELeaderboardSortMethodNone = 0;
    pub const k_ELeaderboardSortMethodAscending = 1;
    pub const k_ELeaderboardSortMethodDescending = 2;
};
pub const ELeaderboardDisplayType = extern struct {
    v: c_int,
    pub const k_ELeaderboardDisplayTypeNone = 0;
    pub const k_ELeaderboardDisplayTypeNumeric = 1;
    pub const k_ELeaderboardDisplayTypeTimeSeconds = 2;
    pub const k_ELeaderboardDisplayTypeTimeMilliSeconds = 3;
};
pub const ELeaderboardUploadScoreMethod = extern struct {
    v: c_int,
    pub const k_ELeaderboardUploadScoreMethodNone = 0;
    pub const k_ELeaderboardUploadScoreMethodKeepBest = 1;
    pub const k_ELeaderboardUploadScoreMethodForceUpdate = 2;
};
pub const ERegisterActivationCodeResult = extern struct {
    v: c_int,
    pub const k_ERegisterActivationCodeResultOK = 0;
    pub const k_ERegisterActivationCodeResultFail = 1;
    pub const k_ERegisterActivationCodeResultAlreadyRegistered = 2;
    pub const k_ERegisterActivationCodeResultTimeout = 3;
    pub const k_ERegisterActivationCodeAlreadyOwned = 4;
};
pub const EP2PSessionError = extern struct {
    v: c_int,
    pub const k_EP2PSessionErrorNone = 0;
    pub const k_EP2PSessionErrorNoRightsToApp = 2;
    pub const k_EP2PSessionErrorTimeout = 4;
    pub const k_EP2PSessionErrorNotRunningApp_DELETED = 1;
    pub const k_EP2PSessionErrorDestinationNotLoggedIn_DELETED = 3;
    pub const k_EP2PSessionErrorMax = 5;
};
pub const EP2PSend = extern struct {
    v: c_int,
    pub const k_EP2PSendUnreliable = 0;
    pub const k_EP2PSendUnreliableNoDelay = 1;
    pub const k_EP2PSendReliable = 2;
    pub const k_EP2PSendReliableWithBuffering = 3;
};
pub const ESNetSocketState = extern struct {
    v: c_int,
    pub const k_ESNetSocketStateInvalid = 0;
    pub const k_ESNetSocketStateConnected = 1;
    pub const k_ESNetSocketStateInitiated = 10;
    pub const k_ESNetSocketStateLocalCandidatesFound = 11;
    pub const k_ESNetSocketStateReceivedRemoteCandidates = 12;
    pub const k_ESNetSocketStateChallengeHandshake = 15;
    pub const k_ESNetSocketStateDisconnecting = 21;
    pub const k_ESNetSocketStateLocalDisconnect = 22;
    pub const k_ESNetSocketStateTimeoutDuringConnect = 23;
    pub const k_ESNetSocketStateRemoteEndDisconnected = 24;
    pub const k_ESNetSocketStateConnectionBroken = 25;
};
pub const ESNetSocketConnectionType = extern struct {
    v: c_int,
    pub const k_ESNetSocketConnectionTypeNotConnected = 0;
    pub const k_ESNetSocketConnectionTypeUDP = 1;
    pub const k_ESNetSocketConnectionTypeUDPRelay = 2;
};
pub const EVRScreenshotType = extern struct {
    v: c_int,
    pub const k_EVRScreenshotType_None = 0;
    pub const k_EVRScreenshotType_Mono = 1;
    pub const k_EVRScreenshotType_Stereo = 2;
    pub const k_EVRScreenshotType_MonoCubemap = 3;
    pub const k_EVRScreenshotType_MonoPanorama = 4;
    pub const k_EVRScreenshotType_StereoPanorama = 5;
};
pub const AudioPlayback_Status = extern struct {
    v: c_int,
    pub const AudioPlayback_Undefined = 0;
    pub const AudioPlayback_Playing = 1;
    pub const AudioPlayback_Paused = 2;
    pub const AudioPlayback_Idle = 3;
};
pub const EHTTPMethod = extern struct {
    v: c_int,
    pub const k_EHTTPMethodInvalid = 0;
    pub const k_EHTTPMethodGET = 1;
    pub const k_EHTTPMethodHEAD = 2;
    pub const k_EHTTPMethodPOST = 3;
    pub const k_EHTTPMethodPUT = 4;
    pub const k_EHTTPMethodDELETE = 5;
    pub const k_EHTTPMethodOPTIONS = 6;
    pub const k_EHTTPMethodPATCH = 7;
};
pub const EHTTPStatusCode = extern struct {
    v: c_int,
    pub const k_EHTTPStatusCodeInvalid = 0;
    pub const k_EHTTPStatusCode100Continue = 100;
    pub const k_EHTTPStatusCode101SwitchingProtocols = 101;
    pub const k_EHTTPStatusCode200OK = 200;
    pub const k_EHTTPStatusCode201Created = 201;
    pub const k_EHTTPStatusCode202Accepted = 202;
    pub const k_EHTTPStatusCode203NonAuthoritative = 203;
    pub const k_EHTTPStatusCode204NoContent = 204;
    pub const k_EHTTPStatusCode205ResetContent = 205;
    pub const k_EHTTPStatusCode206PartialContent = 206;
    pub const k_EHTTPStatusCode300MultipleChoices = 300;
    pub const k_EHTTPStatusCode301MovedPermanently = 301;
    pub const k_EHTTPStatusCode302Found = 302;
    pub const k_EHTTPStatusCode303SeeOther = 303;
    pub const k_EHTTPStatusCode304NotModified = 304;
    pub const k_EHTTPStatusCode305UseProxy = 305;
    pub const k_EHTTPStatusCode307TemporaryRedirect = 307;
    pub const k_EHTTPStatusCode400BadRequest = 400;
    pub const k_EHTTPStatusCode401Unauthorized = 401;
    pub const k_EHTTPStatusCode402PaymentRequired = 402;
    pub const k_EHTTPStatusCode403Forbidden = 403;
    pub const k_EHTTPStatusCode404NotFound = 404;
    pub const k_EHTTPStatusCode405MethodNotAllowed = 405;
    pub const k_EHTTPStatusCode406NotAcceptable = 406;
    pub const k_EHTTPStatusCode407ProxyAuthRequired = 407;
    pub const k_EHTTPStatusCode408RequestTimeout = 408;
    pub const k_EHTTPStatusCode409Conflict = 409;
    pub const k_EHTTPStatusCode410Gone = 410;
    pub const k_EHTTPStatusCode411LengthRequired = 411;
    pub const k_EHTTPStatusCode412PreconditionFailed = 412;
    pub const k_EHTTPStatusCode413RequestEntityTooLarge = 413;
    pub const k_EHTTPStatusCode414RequestURITooLong = 414;
    pub const k_EHTTPStatusCode415UnsupportedMediaType = 415;
    pub const k_EHTTPStatusCode416RequestedRangeNotSatisfiable = 416;
    pub const k_EHTTPStatusCode417ExpectationFailed = 417;
    pub const k_EHTTPStatusCode4xxUnknown = 418;
    pub const k_EHTTPStatusCode429TooManyRequests = 429;
    pub const k_EHTTPStatusCode444ConnectionClosed = 444;
    pub const k_EHTTPStatusCode500InternalServerError = 500;
    pub const k_EHTTPStatusCode501NotImplemented = 501;
    pub const k_EHTTPStatusCode502BadGateway = 502;
    pub const k_EHTTPStatusCode503ServiceUnavailable = 503;
    pub const k_EHTTPStatusCode504GatewayTimeout = 504;
    pub const k_EHTTPStatusCode505HTTPVersionNotSupported = 505;
    pub const k_EHTTPStatusCode5xxUnknown = 599;
};
pub const EInputSourceMode = extern struct {
    v: c_int,
    pub const k_EInputSourceMode_None = 0;
    pub const k_EInputSourceMode_Dpad = 1;
    pub const k_EInputSourceMode_Buttons = 2;
    pub const k_EInputSourceMode_FourButtons = 3;
    pub const k_EInputSourceMode_AbsoluteMouse = 4;
    pub const k_EInputSourceMode_RelativeMouse = 5;
    pub const k_EInputSourceMode_JoystickMove = 6;
    pub const k_EInputSourceMode_JoystickMouse = 7;
    pub const k_EInputSourceMode_JoystickCamera = 8;
    pub const k_EInputSourceMode_ScrollWheel = 9;
    pub const k_EInputSourceMode_Trigger = 10;
    pub const k_EInputSourceMode_TouchMenu = 11;
    pub const k_EInputSourceMode_MouseJoystick = 12;
    pub const k_EInputSourceMode_MouseRegion = 13;
    pub const k_EInputSourceMode_RadialMenu = 14;
    pub const k_EInputSourceMode_SingleButton = 15;
    pub const k_EInputSourceMode_Switches = 16;
};
pub const EInputActionOrigin = extern struct {
    v: c_int,
    pub const k_EInputActionOrigin_None = 0;
    pub const k_EInputActionOrigin_SteamController_A = 1;
    pub const k_EInputActionOrigin_SteamController_B = 2;
    pub const k_EInputActionOrigin_SteamController_X = 3;
    pub const k_EInputActionOrigin_SteamController_Y = 4;
    pub const k_EInputActionOrigin_SteamController_LeftBumper = 5;
    pub const k_EInputActionOrigin_SteamController_RightBumper = 6;
    pub const k_EInputActionOrigin_SteamController_LeftGrip = 7;
    pub const k_EInputActionOrigin_SteamController_RightGrip = 8;
    pub const k_EInputActionOrigin_SteamController_Start = 9;
    pub const k_EInputActionOrigin_SteamController_Back = 10;
    pub const k_EInputActionOrigin_SteamController_LeftPad_Touch = 11;
    pub const k_EInputActionOrigin_SteamController_LeftPad_Swipe = 12;
    pub const k_EInputActionOrigin_SteamController_LeftPad_Click = 13;
    pub const k_EInputActionOrigin_SteamController_LeftPad_DPadNorth = 14;
    pub const k_EInputActionOrigin_SteamController_LeftPad_DPadSouth = 15;
    pub const k_EInputActionOrigin_SteamController_LeftPad_DPadWest = 16;
    pub const k_EInputActionOrigin_SteamController_LeftPad_DPadEast = 17;
    pub const k_EInputActionOrigin_SteamController_RightPad_Touch = 18;
    pub const k_EInputActionOrigin_SteamController_RightPad_Swipe = 19;
    pub const k_EInputActionOrigin_SteamController_RightPad_Click = 20;
    pub const k_EInputActionOrigin_SteamController_RightPad_DPadNorth = 21;
    pub const k_EInputActionOrigin_SteamController_RightPad_DPadSouth = 22;
    pub const k_EInputActionOrigin_SteamController_RightPad_DPadWest = 23;
    pub const k_EInputActionOrigin_SteamController_RightPad_DPadEast = 24;
    pub const k_EInputActionOrigin_SteamController_LeftTrigger_Pull = 25;
    pub const k_EInputActionOrigin_SteamController_LeftTrigger_Click = 26;
    pub const k_EInputActionOrigin_SteamController_RightTrigger_Pull = 27;
    pub const k_EInputActionOrigin_SteamController_RightTrigger_Click = 28;
    pub const k_EInputActionOrigin_SteamController_LeftStick_Move = 29;
    pub const k_EInputActionOrigin_SteamController_LeftStick_Click = 30;
    pub const k_EInputActionOrigin_SteamController_LeftStick_DPadNorth = 31;
    pub const k_EInputActionOrigin_SteamController_LeftStick_DPadSouth = 32;
    pub const k_EInputActionOrigin_SteamController_LeftStick_DPadWest = 33;
    pub const k_EInputActionOrigin_SteamController_LeftStick_DPadEast = 34;
    pub const k_EInputActionOrigin_SteamController_Gyro_Move = 35;
    pub const k_EInputActionOrigin_SteamController_Gyro_Pitch = 36;
    pub const k_EInputActionOrigin_SteamController_Gyro_Yaw = 37;
    pub const k_EInputActionOrigin_SteamController_Gyro_Roll = 38;
    pub const k_EInputActionOrigin_SteamController_Reserved0 = 39;
    pub const k_EInputActionOrigin_SteamController_Reserved1 = 40;
    pub const k_EInputActionOrigin_SteamController_Reserved2 = 41;
    pub const k_EInputActionOrigin_SteamController_Reserved3 = 42;
    pub const k_EInputActionOrigin_SteamController_Reserved4 = 43;
    pub const k_EInputActionOrigin_SteamController_Reserved5 = 44;
    pub const k_EInputActionOrigin_SteamController_Reserved6 = 45;
    pub const k_EInputActionOrigin_SteamController_Reserved7 = 46;
    pub const k_EInputActionOrigin_SteamController_Reserved8 = 47;
    pub const k_EInputActionOrigin_SteamController_Reserved9 = 48;
    pub const k_EInputActionOrigin_SteamController_Reserved10 = 49;
    pub const k_EInputActionOrigin_PS4_X = 50;
    pub const k_EInputActionOrigin_PS4_Circle = 51;
    pub const k_EInputActionOrigin_PS4_Triangle = 52;
    pub const k_EInputActionOrigin_PS4_Square = 53;
    pub const k_EInputActionOrigin_PS4_LeftBumper = 54;
    pub const k_EInputActionOrigin_PS4_RightBumper = 55;
    pub const k_EInputActionOrigin_PS4_Options = 56;
    pub const k_EInputActionOrigin_PS4_Share = 57;
    pub const k_EInputActionOrigin_PS4_LeftPad_Touch = 58;
    pub const k_EInputActionOrigin_PS4_LeftPad_Swipe = 59;
    pub const k_EInputActionOrigin_PS4_LeftPad_Click = 60;
    pub const k_EInputActionOrigin_PS4_LeftPad_DPadNorth = 61;
    pub const k_EInputActionOrigin_PS4_LeftPad_DPadSouth = 62;
    pub const k_EInputActionOrigin_PS4_LeftPad_DPadWest = 63;
    pub const k_EInputActionOrigin_PS4_LeftPad_DPadEast = 64;
    pub const k_EInputActionOrigin_PS4_RightPad_Touch = 65;
    pub const k_EInputActionOrigin_PS4_RightPad_Swipe = 66;
    pub const k_EInputActionOrigin_PS4_RightPad_Click = 67;
    pub const k_EInputActionOrigin_PS4_RightPad_DPadNorth = 68;
    pub const k_EInputActionOrigin_PS4_RightPad_DPadSouth = 69;
    pub const k_EInputActionOrigin_PS4_RightPad_DPadWest = 70;
    pub const k_EInputActionOrigin_PS4_RightPad_DPadEast = 71;
    pub const k_EInputActionOrigin_PS4_CenterPad_Touch = 72;
    pub const k_EInputActionOrigin_PS4_CenterPad_Swipe = 73;
    pub const k_EInputActionOrigin_PS4_CenterPad_Click = 74;
    pub const k_EInputActionOrigin_PS4_CenterPad_DPadNorth = 75;
    pub const k_EInputActionOrigin_PS4_CenterPad_DPadSouth = 76;
    pub const k_EInputActionOrigin_PS4_CenterPad_DPadWest = 77;
    pub const k_EInputActionOrigin_PS4_CenterPad_DPadEast = 78;
    pub const k_EInputActionOrigin_PS4_LeftTrigger_Pull = 79;
    pub const k_EInputActionOrigin_PS4_LeftTrigger_Click = 80;
    pub const k_EInputActionOrigin_PS4_RightTrigger_Pull = 81;
    pub const k_EInputActionOrigin_PS4_RightTrigger_Click = 82;
    pub const k_EInputActionOrigin_PS4_LeftStick_Move = 83;
    pub const k_EInputActionOrigin_PS4_LeftStick_Click = 84;
    pub const k_EInputActionOrigin_PS4_LeftStick_DPadNorth = 85;
    pub const k_EInputActionOrigin_PS4_LeftStick_DPadSouth = 86;
    pub const k_EInputActionOrigin_PS4_LeftStick_DPadWest = 87;
    pub const k_EInputActionOrigin_PS4_LeftStick_DPadEast = 88;
    pub const k_EInputActionOrigin_PS4_RightStick_Move = 89;
    pub const k_EInputActionOrigin_PS4_RightStick_Click = 90;
    pub const k_EInputActionOrigin_PS4_RightStick_DPadNorth = 91;
    pub const k_EInputActionOrigin_PS4_RightStick_DPadSouth = 92;
    pub const k_EInputActionOrigin_PS4_RightStick_DPadWest = 93;
    pub const k_EInputActionOrigin_PS4_RightStick_DPadEast = 94;
    pub const k_EInputActionOrigin_PS4_DPad_North = 95;
    pub const k_EInputActionOrigin_PS4_DPad_South = 96;
    pub const k_EInputActionOrigin_PS4_DPad_West = 97;
    pub const k_EInputActionOrigin_PS4_DPad_East = 98;
    pub const k_EInputActionOrigin_PS4_Gyro_Move = 99;
    pub const k_EInputActionOrigin_PS4_Gyro_Pitch = 100;
    pub const k_EInputActionOrigin_PS4_Gyro_Yaw = 101;
    pub const k_EInputActionOrigin_PS4_Gyro_Roll = 102;
    pub const k_EInputActionOrigin_PS4_DPad_Move = 103;
    pub const k_EInputActionOrigin_PS4_Reserved1 = 104;
    pub const k_EInputActionOrigin_PS4_Reserved2 = 105;
    pub const k_EInputActionOrigin_PS4_Reserved3 = 106;
    pub const k_EInputActionOrigin_PS4_Reserved4 = 107;
    pub const k_EInputActionOrigin_PS4_Reserved5 = 108;
    pub const k_EInputActionOrigin_PS4_Reserved6 = 109;
    pub const k_EInputActionOrigin_PS4_Reserved7 = 110;
    pub const k_EInputActionOrigin_PS4_Reserved8 = 111;
    pub const k_EInputActionOrigin_PS4_Reserved9 = 112;
    pub const k_EInputActionOrigin_PS4_Reserved10 = 113;
    pub const k_EInputActionOrigin_XBoxOne_A = 114;
    pub const k_EInputActionOrigin_XBoxOne_B = 115;
    pub const k_EInputActionOrigin_XBoxOne_X = 116;
    pub const k_EInputActionOrigin_XBoxOne_Y = 117;
    pub const k_EInputActionOrigin_XBoxOne_LeftBumper = 118;
    pub const k_EInputActionOrigin_XBoxOne_RightBumper = 119;
    pub const k_EInputActionOrigin_XBoxOne_Menu = 120;
    pub const k_EInputActionOrigin_XBoxOne_View = 121;
    pub const k_EInputActionOrigin_XBoxOne_LeftTrigger_Pull = 122;
    pub const k_EInputActionOrigin_XBoxOne_LeftTrigger_Click = 123;
    pub const k_EInputActionOrigin_XBoxOne_RightTrigger_Pull = 124;
    pub const k_EInputActionOrigin_XBoxOne_RightTrigger_Click = 125;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_Move = 126;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_Click = 127;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_DPadNorth = 128;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_DPadSouth = 129;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_DPadWest = 130;
    pub const k_EInputActionOrigin_XBoxOne_LeftStick_DPadEast = 131;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_Move = 132;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_Click = 133;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_DPadNorth = 134;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_DPadSouth = 135;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_DPadWest = 136;
    pub const k_EInputActionOrigin_XBoxOne_RightStick_DPadEast = 137;
    pub const k_EInputActionOrigin_XBoxOne_DPad_North = 138;
    pub const k_EInputActionOrigin_XBoxOne_DPad_South = 139;
    pub const k_EInputActionOrigin_XBoxOne_DPad_West = 140;
    pub const k_EInputActionOrigin_XBoxOne_DPad_East = 141;
    pub const k_EInputActionOrigin_XBoxOne_DPad_Move = 142;
    pub const k_EInputActionOrigin_XBoxOne_LeftGrip_Lower = 143;
    pub const k_EInputActionOrigin_XBoxOne_LeftGrip_Upper = 144;
    pub const k_EInputActionOrigin_XBoxOne_RightGrip_Lower = 145;
    pub const k_EInputActionOrigin_XBoxOne_RightGrip_Upper = 146;
    pub const k_EInputActionOrigin_XBoxOne_Share = 147;
    pub const k_EInputActionOrigin_XBoxOne_Reserved6 = 148;
    pub const k_EInputActionOrigin_XBoxOne_Reserved7 = 149;
    pub const k_EInputActionOrigin_XBoxOne_Reserved8 = 150;
    pub const k_EInputActionOrigin_XBoxOne_Reserved9 = 151;
    pub const k_EInputActionOrigin_XBoxOne_Reserved10 = 152;
    pub const k_EInputActionOrigin_XBox360_A = 153;
    pub const k_EInputActionOrigin_XBox360_B = 154;
    pub const k_EInputActionOrigin_XBox360_X = 155;
    pub const k_EInputActionOrigin_XBox360_Y = 156;
    pub const k_EInputActionOrigin_XBox360_LeftBumper = 157;
    pub const k_EInputActionOrigin_XBox360_RightBumper = 158;
    pub const k_EInputActionOrigin_XBox360_Start = 159;
    pub const k_EInputActionOrigin_XBox360_Back = 160;
    pub const k_EInputActionOrigin_XBox360_LeftTrigger_Pull = 161;
    pub const k_EInputActionOrigin_XBox360_LeftTrigger_Click = 162;
    pub const k_EInputActionOrigin_XBox360_RightTrigger_Pull = 163;
    pub const k_EInputActionOrigin_XBox360_RightTrigger_Click = 164;
    pub const k_EInputActionOrigin_XBox360_LeftStick_Move = 165;
    pub const k_EInputActionOrigin_XBox360_LeftStick_Click = 166;
    pub const k_EInputActionOrigin_XBox360_LeftStick_DPadNorth = 167;
    pub const k_EInputActionOrigin_XBox360_LeftStick_DPadSouth = 168;
    pub const k_EInputActionOrigin_XBox360_LeftStick_DPadWest = 169;
    pub const k_EInputActionOrigin_XBox360_LeftStick_DPadEast = 170;
    pub const k_EInputActionOrigin_XBox360_RightStick_Move = 171;
    pub const k_EInputActionOrigin_XBox360_RightStick_Click = 172;
    pub const k_EInputActionOrigin_XBox360_RightStick_DPadNorth = 173;
    pub const k_EInputActionOrigin_XBox360_RightStick_DPadSouth = 174;
    pub const k_EInputActionOrigin_XBox360_RightStick_DPadWest = 175;
    pub const k_EInputActionOrigin_XBox360_RightStick_DPadEast = 176;
    pub const k_EInputActionOrigin_XBox360_DPad_North = 177;
    pub const k_EInputActionOrigin_XBox360_DPad_South = 178;
    pub const k_EInputActionOrigin_XBox360_DPad_West = 179;
    pub const k_EInputActionOrigin_XBox360_DPad_East = 180;
    pub const k_EInputActionOrigin_XBox360_DPad_Move = 181;
    pub const k_EInputActionOrigin_XBox360_Reserved1 = 182;
    pub const k_EInputActionOrigin_XBox360_Reserved2 = 183;
    pub const k_EInputActionOrigin_XBox360_Reserved3 = 184;
    pub const k_EInputActionOrigin_XBox360_Reserved4 = 185;
    pub const k_EInputActionOrigin_XBox360_Reserved5 = 186;
    pub const k_EInputActionOrigin_XBox360_Reserved6 = 187;
    pub const k_EInputActionOrigin_XBox360_Reserved7 = 188;
    pub const k_EInputActionOrigin_XBox360_Reserved8 = 189;
    pub const k_EInputActionOrigin_XBox360_Reserved9 = 190;
    pub const k_EInputActionOrigin_XBox360_Reserved10 = 191;
    pub const k_EInputActionOrigin_Switch_A = 192;
    pub const k_EInputActionOrigin_Switch_B = 193;
    pub const k_EInputActionOrigin_Switch_X = 194;
    pub const k_EInputActionOrigin_Switch_Y = 195;
    pub const k_EInputActionOrigin_Switch_LeftBumper = 196;
    pub const k_EInputActionOrigin_Switch_RightBumper = 197;
    pub const k_EInputActionOrigin_Switch_Plus = 198;
    pub const k_EInputActionOrigin_Switch_Minus = 199;
    pub const k_EInputActionOrigin_Switch_Capture = 200;
    pub const k_EInputActionOrigin_Switch_LeftTrigger_Pull = 201;
    pub const k_EInputActionOrigin_Switch_LeftTrigger_Click = 202;
    pub const k_EInputActionOrigin_Switch_RightTrigger_Pull = 203;
    pub const k_EInputActionOrigin_Switch_RightTrigger_Click = 204;
    pub const k_EInputActionOrigin_Switch_LeftStick_Move = 205;
    pub const k_EInputActionOrigin_Switch_LeftStick_Click = 206;
    pub const k_EInputActionOrigin_Switch_LeftStick_DPadNorth = 207;
    pub const k_EInputActionOrigin_Switch_LeftStick_DPadSouth = 208;
    pub const k_EInputActionOrigin_Switch_LeftStick_DPadWest = 209;
    pub const k_EInputActionOrigin_Switch_LeftStick_DPadEast = 210;
    pub const k_EInputActionOrigin_Switch_RightStick_Move = 211;
    pub const k_EInputActionOrigin_Switch_RightStick_Click = 212;
    pub const k_EInputActionOrigin_Switch_RightStick_DPadNorth = 213;
    pub const k_EInputActionOrigin_Switch_RightStick_DPadSouth = 214;
    pub const k_EInputActionOrigin_Switch_RightStick_DPadWest = 215;
    pub const k_EInputActionOrigin_Switch_RightStick_DPadEast = 216;
    pub const k_EInputActionOrigin_Switch_DPad_North = 217;
    pub const k_EInputActionOrigin_Switch_DPad_South = 218;
    pub const k_EInputActionOrigin_Switch_DPad_West = 219;
    pub const k_EInputActionOrigin_Switch_DPad_East = 220;
    pub const k_EInputActionOrigin_Switch_ProGyro_Move = 221;
    pub const k_EInputActionOrigin_Switch_ProGyro_Pitch = 222;
    pub const k_EInputActionOrigin_Switch_ProGyro_Yaw = 223;
    pub const k_EInputActionOrigin_Switch_ProGyro_Roll = 224;
    pub const k_EInputActionOrigin_Switch_DPad_Move = 225;
    pub const k_EInputActionOrigin_Switch_Reserved1 = 226;
    pub const k_EInputActionOrigin_Switch_Reserved2 = 227;
    pub const k_EInputActionOrigin_Switch_Reserved3 = 228;
    pub const k_EInputActionOrigin_Switch_Reserved4 = 229;
    pub const k_EInputActionOrigin_Switch_Reserved5 = 230;
    pub const k_EInputActionOrigin_Switch_Reserved6 = 231;
    pub const k_EInputActionOrigin_Switch_Reserved7 = 232;
    pub const k_EInputActionOrigin_Switch_Reserved8 = 233;
    pub const k_EInputActionOrigin_Switch_Reserved9 = 234;
    pub const k_EInputActionOrigin_Switch_Reserved10 = 235;
    pub const k_EInputActionOrigin_Switch_RightGyro_Move = 236;
    pub const k_EInputActionOrigin_Switch_RightGyro_Pitch = 237;
    pub const k_EInputActionOrigin_Switch_RightGyro_Yaw = 238;
    pub const k_EInputActionOrigin_Switch_RightGyro_Roll = 239;
    pub const k_EInputActionOrigin_Switch_LeftGyro_Move = 240;
    pub const k_EInputActionOrigin_Switch_LeftGyro_Pitch = 241;
    pub const k_EInputActionOrigin_Switch_LeftGyro_Yaw = 242;
    pub const k_EInputActionOrigin_Switch_LeftGyro_Roll = 243;
    pub const k_EInputActionOrigin_Switch_LeftGrip_Lower = 244;
    pub const k_EInputActionOrigin_Switch_LeftGrip_Upper = 245;
    pub const k_EInputActionOrigin_Switch_RightGrip_Lower = 246;
    pub const k_EInputActionOrigin_Switch_RightGrip_Upper = 247;
    pub const k_EInputActionOrigin_Switch_Reserved11 = 248;
    pub const k_EInputActionOrigin_Switch_Reserved12 = 249;
    pub const k_EInputActionOrigin_Switch_Reserved13 = 250;
    pub const k_EInputActionOrigin_Switch_Reserved14 = 251;
    pub const k_EInputActionOrigin_Switch_Reserved15 = 252;
    pub const k_EInputActionOrigin_Switch_Reserved16 = 253;
    pub const k_EInputActionOrigin_Switch_Reserved17 = 254;
    pub const k_EInputActionOrigin_Switch_Reserved18 = 255;
    pub const k_EInputActionOrigin_Switch_Reserved19 = 256;
    pub const k_EInputActionOrigin_Switch_Reserved20 = 257;
    pub const k_EInputActionOrigin_PS5_X = 258;
    pub const k_EInputActionOrigin_PS5_Circle = 259;
    pub const k_EInputActionOrigin_PS5_Triangle = 260;
    pub const k_EInputActionOrigin_PS5_Square = 261;
    pub const k_EInputActionOrigin_PS5_LeftBumper = 262;
    pub const k_EInputActionOrigin_PS5_RightBumper = 263;
    pub const k_EInputActionOrigin_PS5_Option = 264;
    pub const k_EInputActionOrigin_PS5_Create = 265;
    pub const k_EInputActionOrigin_PS5_Mute = 266;
    pub const k_EInputActionOrigin_PS5_LeftPad_Touch = 267;
    pub const k_EInputActionOrigin_PS5_LeftPad_Swipe = 268;
    pub const k_EInputActionOrigin_PS5_LeftPad_Click = 269;
    pub const k_EInputActionOrigin_PS5_LeftPad_DPadNorth = 270;
    pub const k_EInputActionOrigin_PS5_LeftPad_DPadSouth = 271;
    pub const k_EInputActionOrigin_PS5_LeftPad_DPadWest = 272;
    pub const k_EInputActionOrigin_PS5_LeftPad_DPadEast = 273;
    pub const k_EInputActionOrigin_PS5_RightPad_Touch = 274;
    pub const k_EInputActionOrigin_PS5_RightPad_Swipe = 275;
    pub const k_EInputActionOrigin_PS5_RightPad_Click = 276;
    pub const k_EInputActionOrigin_PS5_RightPad_DPadNorth = 277;
    pub const k_EInputActionOrigin_PS5_RightPad_DPadSouth = 278;
    pub const k_EInputActionOrigin_PS5_RightPad_DPadWest = 279;
    pub const k_EInputActionOrigin_PS5_RightPad_DPadEast = 280;
    pub const k_EInputActionOrigin_PS5_CenterPad_Touch = 281;
    pub const k_EInputActionOrigin_PS5_CenterPad_Swipe = 282;
    pub const k_EInputActionOrigin_PS5_CenterPad_Click = 283;
    pub const k_EInputActionOrigin_PS5_CenterPad_DPadNorth = 284;
    pub const k_EInputActionOrigin_PS5_CenterPad_DPadSouth = 285;
    pub const k_EInputActionOrigin_PS5_CenterPad_DPadWest = 286;
    pub const k_EInputActionOrigin_PS5_CenterPad_DPadEast = 287;
    pub const k_EInputActionOrigin_PS5_LeftTrigger_Pull = 288;
    pub const k_EInputActionOrigin_PS5_LeftTrigger_Click = 289;
    pub const k_EInputActionOrigin_PS5_RightTrigger_Pull = 290;
    pub const k_EInputActionOrigin_PS5_RightTrigger_Click = 291;
    pub const k_EInputActionOrigin_PS5_LeftStick_Move = 292;
    pub const k_EInputActionOrigin_PS5_LeftStick_Click = 293;
    pub const k_EInputActionOrigin_PS5_LeftStick_DPadNorth = 294;
    pub const k_EInputActionOrigin_PS5_LeftStick_DPadSouth = 295;
    pub const k_EInputActionOrigin_PS5_LeftStick_DPadWest = 296;
    pub const k_EInputActionOrigin_PS5_LeftStick_DPadEast = 297;
    pub const k_EInputActionOrigin_PS5_RightStick_Move = 298;
    pub const k_EInputActionOrigin_PS5_RightStick_Click = 299;
    pub const k_EInputActionOrigin_PS5_RightStick_DPadNorth = 300;
    pub const k_EInputActionOrigin_PS5_RightStick_DPadSouth = 301;
    pub const k_EInputActionOrigin_PS5_RightStick_DPadWest = 302;
    pub const k_EInputActionOrigin_PS5_RightStick_DPadEast = 303;
    pub const k_EInputActionOrigin_PS5_DPad_North = 304;
    pub const k_EInputActionOrigin_PS5_DPad_South = 305;
    pub const k_EInputActionOrigin_PS5_DPad_West = 306;
    pub const k_EInputActionOrigin_PS5_DPad_East = 307;
    pub const k_EInputActionOrigin_PS5_Gyro_Move = 308;
    pub const k_EInputActionOrigin_PS5_Gyro_Pitch = 309;
    pub const k_EInputActionOrigin_PS5_Gyro_Yaw = 310;
    pub const k_EInputActionOrigin_PS5_Gyro_Roll = 311;
    pub const k_EInputActionOrigin_PS5_DPad_Move = 312;
    pub const k_EInputActionOrigin_PS5_Reserved1 = 313;
    pub const k_EInputActionOrigin_PS5_Reserved2 = 314;
    pub const k_EInputActionOrigin_PS5_Reserved3 = 315;
    pub const k_EInputActionOrigin_PS5_Reserved4 = 316;
    pub const k_EInputActionOrigin_PS5_Reserved5 = 317;
    pub const k_EInputActionOrigin_PS5_Reserved6 = 318;
    pub const k_EInputActionOrigin_PS5_Reserved7 = 319;
    pub const k_EInputActionOrigin_PS5_Reserved8 = 320;
    pub const k_EInputActionOrigin_PS5_Reserved9 = 321;
    pub const k_EInputActionOrigin_PS5_Reserved10 = 322;
    pub const k_EInputActionOrigin_PS5_Reserved11 = 323;
    pub const k_EInputActionOrigin_PS5_Reserved12 = 324;
    pub const k_EInputActionOrigin_PS5_Reserved13 = 325;
    pub const k_EInputActionOrigin_PS5_Reserved14 = 326;
    pub const k_EInputActionOrigin_PS5_Reserved15 = 327;
    pub const k_EInputActionOrigin_PS5_Reserved16 = 328;
    pub const k_EInputActionOrigin_PS5_Reserved17 = 329;
    pub const k_EInputActionOrigin_PS5_Reserved18 = 330;
    pub const k_EInputActionOrigin_PS5_Reserved19 = 331;
    pub const k_EInputActionOrigin_PS5_Reserved20 = 332;
    pub const k_EInputActionOrigin_SteamDeck_A = 333;
    pub const k_EInputActionOrigin_SteamDeck_B = 334;
    pub const k_EInputActionOrigin_SteamDeck_X = 335;
    pub const k_EInputActionOrigin_SteamDeck_Y = 336;
    pub const k_EInputActionOrigin_SteamDeck_L1 = 337;
    pub const k_EInputActionOrigin_SteamDeck_R1 = 338;
    pub const k_EInputActionOrigin_SteamDeck_Menu = 339;
    pub const k_EInputActionOrigin_SteamDeck_View = 340;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_Touch = 341;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_Swipe = 342;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_Click = 343;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_DPadNorth = 344;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_DPadSouth = 345;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_DPadWest = 346;
    pub const k_EInputActionOrigin_SteamDeck_LeftPad_DPadEast = 347;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_Touch = 348;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_Swipe = 349;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_Click = 350;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_DPadNorth = 351;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_DPadSouth = 352;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_DPadWest = 353;
    pub const k_EInputActionOrigin_SteamDeck_RightPad_DPadEast = 354;
    pub const k_EInputActionOrigin_SteamDeck_L2_SoftPull = 355;
    pub const k_EInputActionOrigin_SteamDeck_L2 = 356;
    pub const k_EInputActionOrigin_SteamDeck_R2_SoftPull = 357;
    pub const k_EInputActionOrigin_SteamDeck_R2 = 358;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_Move = 359;
    pub const k_EInputActionOrigin_SteamDeck_L3 = 360;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_DPadNorth = 361;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_DPadSouth = 362;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_DPadWest = 363;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_DPadEast = 364;
    pub const k_EInputActionOrigin_SteamDeck_LeftStick_Touch = 365;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_Move = 366;
    pub const k_EInputActionOrigin_SteamDeck_R3 = 367;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_DPadNorth = 368;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_DPadSouth = 369;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_DPadWest = 370;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_DPadEast = 371;
    pub const k_EInputActionOrigin_SteamDeck_RightStick_Touch = 372;
    pub const k_EInputActionOrigin_SteamDeck_L4 = 373;
    pub const k_EInputActionOrigin_SteamDeck_R4 = 374;
    pub const k_EInputActionOrigin_SteamDeck_L5 = 375;
    pub const k_EInputActionOrigin_SteamDeck_R5 = 376;
    pub const k_EInputActionOrigin_SteamDeck_DPad_Move = 377;
    pub const k_EInputActionOrigin_SteamDeck_DPad_North = 378;
    pub const k_EInputActionOrigin_SteamDeck_DPad_South = 379;
    pub const k_EInputActionOrigin_SteamDeck_DPad_West = 380;
    pub const k_EInputActionOrigin_SteamDeck_DPad_East = 381;
    pub const k_EInputActionOrigin_SteamDeck_Gyro_Move = 382;
    pub const k_EInputActionOrigin_SteamDeck_Gyro_Pitch = 383;
    pub const k_EInputActionOrigin_SteamDeck_Gyro_Yaw = 384;
    pub const k_EInputActionOrigin_SteamDeck_Gyro_Roll = 385;
    pub const k_EInputActionOrigin_SteamDeck_Reserved1 = 386;
    pub const k_EInputActionOrigin_SteamDeck_Reserved2 = 387;
    pub const k_EInputActionOrigin_SteamDeck_Reserved3 = 388;
    pub const k_EInputActionOrigin_SteamDeck_Reserved4 = 389;
    pub const k_EInputActionOrigin_SteamDeck_Reserved5 = 390;
    pub const k_EInputActionOrigin_SteamDeck_Reserved6 = 391;
    pub const k_EInputActionOrigin_SteamDeck_Reserved7 = 392;
    pub const k_EInputActionOrigin_SteamDeck_Reserved8 = 393;
    pub const k_EInputActionOrigin_SteamDeck_Reserved9 = 394;
    pub const k_EInputActionOrigin_SteamDeck_Reserved10 = 395;
    pub const k_EInputActionOrigin_SteamDeck_Reserved11 = 396;
    pub const k_EInputActionOrigin_SteamDeck_Reserved12 = 397;
    pub const k_EInputActionOrigin_SteamDeck_Reserved13 = 398;
    pub const k_EInputActionOrigin_SteamDeck_Reserved14 = 399;
    pub const k_EInputActionOrigin_SteamDeck_Reserved15 = 400;
    pub const k_EInputActionOrigin_SteamDeck_Reserved16 = 401;
    pub const k_EInputActionOrigin_SteamDeck_Reserved17 = 402;
    pub const k_EInputActionOrigin_SteamDeck_Reserved18 = 403;
    pub const k_EInputActionOrigin_SteamDeck_Reserved19 = 404;
    pub const k_EInputActionOrigin_SteamDeck_Reserved20 = 405;
    pub const k_EInputActionOrigin_Count = 406;
    pub const k_EInputActionOrigin_MaximumPossibleValue = 32767;
};
pub const EXboxOrigin = extern struct {
    v: c_int,
    pub const k_EXboxOrigin_A = 0;
    pub const k_EXboxOrigin_B = 1;
    pub const k_EXboxOrigin_X = 2;
    pub const k_EXboxOrigin_Y = 3;
    pub const k_EXboxOrigin_LeftBumper = 4;
    pub const k_EXboxOrigin_RightBumper = 5;
    pub const k_EXboxOrigin_Menu = 6;
    pub const k_EXboxOrigin_View = 7;
    pub const k_EXboxOrigin_LeftTrigger_Pull = 8;
    pub const k_EXboxOrigin_LeftTrigger_Click = 9;
    pub const k_EXboxOrigin_RightTrigger_Pull = 10;
    pub const k_EXboxOrigin_RightTrigger_Click = 11;
    pub const k_EXboxOrigin_LeftStick_Move = 12;
    pub const k_EXboxOrigin_LeftStick_Click = 13;
    pub const k_EXboxOrigin_LeftStick_DPadNorth = 14;
    pub const k_EXboxOrigin_LeftStick_DPadSouth = 15;
    pub const k_EXboxOrigin_LeftStick_DPadWest = 16;
    pub const k_EXboxOrigin_LeftStick_DPadEast = 17;
    pub const k_EXboxOrigin_RightStick_Move = 18;
    pub const k_EXboxOrigin_RightStick_Click = 19;
    pub const k_EXboxOrigin_RightStick_DPadNorth = 20;
    pub const k_EXboxOrigin_RightStick_DPadSouth = 21;
    pub const k_EXboxOrigin_RightStick_DPadWest = 22;
    pub const k_EXboxOrigin_RightStick_DPadEast = 23;
    pub const k_EXboxOrigin_DPad_North = 24;
    pub const k_EXboxOrigin_DPad_South = 25;
    pub const k_EXboxOrigin_DPad_West = 26;
    pub const k_EXboxOrigin_DPad_East = 27;
    pub const k_EXboxOrigin_Count = 28;
};
pub const ESteamControllerPad = extern struct {
    v: c_int,
    pub const k_ESteamControllerPad_Left = 0;
    pub const k_ESteamControllerPad_Right = 1;
};
pub const EControllerHapticLocation = extern struct {
    v: c_int,
    pub const k_EControllerHapticLocation_Left = 1;
    pub const k_EControllerHapticLocation_Right = 2;
    pub const k_EControllerHapticLocation_Both = 3;
};
pub const EControllerHapticType = extern struct {
    v: c_int,
    pub const k_EControllerHapticType_Off = 0;
    pub const k_EControllerHapticType_Tick = 1;
    pub const k_EControllerHapticType_Click = 2;
};
pub const ESteamInputType = extern struct {
    v: c_int,
    pub const k_ESteamInputType_Unknown = 0;
    pub const k_ESteamInputType_SteamController = 1;
    pub const k_ESteamInputType_XBox360Controller = 2;
    pub const k_ESteamInputType_XBoxOneController = 3;
    pub const k_ESteamInputType_GenericGamepad = 4;
    pub const k_ESteamInputType_PS4Controller = 5;
    pub const k_ESteamInputType_AppleMFiController = 6;
    pub const k_ESteamInputType_AndroidController = 7;
    pub const k_ESteamInputType_SwitchJoyConPair = 8;
    pub const k_ESteamInputType_SwitchJoyConSingle = 9;
    pub const k_ESteamInputType_SwitchProController = 10;
    pub const k_ESteamInputType_MobileTouch = 11;
    pub const k_ESteamInputType_PS3Controller = 12;
    pub const k_ESteamInputType_PS5Controller = 13;
    pub const k_ESteamInputType_SteamDeckController = 14;
    pub const k_ESteamInputType_Count = 15;
    pub const k_ESteamInputType_MaximumPossibleValue = 255;
};
pub const ESteamInputConfigurationEnableType = extern struct {
    v: c_int,
    pub const k_ESteamInputConfigurationEnableType_None = 0;
    pub const k_ESteamInputConfigurationEnableType_Playstation = 1;
    pub const k_ESteamInputConfigurationEnableType_Xbox = 2;
    pub const k_ESteamInputConfigurationEnableType_Generic = 4;
    pub const k_ESteamInputConfigurationEnableType_Switch = 8;
};
pub const ESteamInputLEDFlag = extern struct {
    v: c_int,
    pub const k_ESteamInputLEDFlag_SetColor = 0;
    pub const k_ESteamInputLEDFlag_RestoreUserDefault = 1;
};
pub const ESteamInputGlyphSize = extern struct {
    v: c_int,
    pub const k_ESteamInputGlyphSize_Small = 0;
    pub const k_ESteamInputGlyphSize_Medium = 1;
    pub const k_ESteamInputGlyphSize_Large = 2;
    pub const k_ESteamInputGlyphSize_Count = 3;
};
pub const ESteamInputGlyphStyle = extern struct {
    v: c_int,
    pub const ESteamInputGlyphStyle_Knockout = 0;
    pub const ESteamInputGlyphStyle_Light = 1;
    pub const ESteamInputGlyphStyle_Dark = 2;
    pub const ESteamInputGlyphStyle_NeutralColorABXY = 16;
    pub const ESteamInputGlyphStyle_SolidABXY = 32;
};
pub const ESteamInputActionEventType = extern struct {
    v: c_int,
    pub const ESteamInputActionEventType_DigitalAction = 0;
    pub const ESteamInputActionEventType_AnalogAction = 1;
};
pub const EControllerActionOrigin = extern struct {
    v: c_int,
    pub const k_EControllerActionOrigin_None = 0;
    pub const k_EControllerActionOrigin_A = 1;
    pub const k_EControllerActionOrigin_B = 2;
    pub const k_EControllerActionOrigin_X = 3;
    pub const k_EControllerActionOrigin_Y = 4;
    pub const k_EControllerActionOrigin_LeftBumper = 5;
    pub const k_EControllerActionOrigin_RightBumper = 6;
    pub const k_EControllerActionOrigin_LeftGrip = 7;
    pub const k_EControllerActionOrigin_RightGrip = 8;
    pub const k_EControllerActionOrigin_Start = 9;
    pub const k_EControllerActionOrigin_Back = 10;
    pub const k_EControllerActionOrigin_LeftPad_Touch = 11;
    pub const k_EControllerActionOrigin_LeftPad_Swipe = 12;
    pub const k_EControllerActionOrigin_LeftPad_Click = 13;
    pub const k_EControllerActionOrigin_LeftPad_DPadNorth = 14;
    pub const k_EControllerActionOrigin_LeftPad_DPadSouth = 15;
    pub const k_EControllerActionOrigin_LeftPad_DPadWest = 16;
    pub const k_EControllerActionOrigin_LeftPad_DPadEast = 17;
    pub const k_EControllerActionOrigin_RightPad_Touch = 18;
    pub const k_EControllerActionOrigin_RightPad_Swipe = 19;
    pub const k_EControllerActionOrigin_RightPad_Click = 20;
    pub const k_EControllerActionOrigin_RightPad_DPadNorth = 21;
    pub const k_EControllerActionOrigin_RightPad_DPadSouth = 22;
    pub const k_EControllerActionOrigin_RightPad_DPadWest = 23;
    pub const k_EControllerActionOrigin_RightPad_DPadEast = 24;
    pub const k_EControllerActionOrigin_LeftTrigger_Pull = 25;
    pub const k_EControllerActionOrigin_LeftTrigger_Click = 26;
    pub const k_EControllerActionOrigin_RightTrigger_Pull = 27;
    pub const k_EControllerActionOrigin_RightTrigger_Click = 28;
    pub const k_EControllerActionOrigin_LeftStick_Move = 29;
    pub const k_EControllerActionOrigin_LeftStick_Click = 30;
    pub const k_EControllerActionOrigin_LeftStick_DPadNorth = 31;
    pub const k_EControllerActionOrigin_LeftStick_DPadSouth = 32;
    pub const k_EControllerActionOrigin_LeftStick_DPadWest = 33;
    pub const k_EControllerActionOrigin_LeftStick_DPadEast = 34;
    pub const k_EControllerActionOrigin_Gyro_Move = 35;
    pub const k_EControllerActionOrigin_Gyro_Pitch = 36;
    pub const k_EControllerActionOrigin_Gyro_Yaw = 37;
    pub const k_EControllerActionOrigin_Gyro_Roll = 38;
    pub const k_EControllerActionOrigin_PS4_X = 39;
    pub const k_EControllerActionOrigin_PS4_Circle = 40;
    pub const k_EControllerActionOrigin_PS4_Triangle = 41;
    pub const k_EControllerActionOrigin_PS4_Square = 42;
    pub const k_EControllerActionOrigin_PS4_LeftBumper = 43;
    pub const k_EControllerActionOrigin_PS4_RightBumper = 44;
    pub const k_EControllerActionOrigin_PS4_Options = 45;
    pub const k_EControllerActionOrigin_PS4_Share = 46;
    pub const k_EControllerActionOrigin_PS4_LeftPad_Touch = 47;
    pub const k_EControllerActionOrigin_PS4_LeftPad_Swipe = 48;
    pub const k_EControllerActionOrigin_PS4_LeftPad_Click = 49;
    pub const k_EControllerActionOrigin_PS4_LeftPad_DPadNorth = 50;
    pub const k_EControllerActionOrigin_PS4_LeftPad_DPadSouth = 51;
    pub const k_EControllerActionOrigin_PS4_LeftPad_DPadWest = 52;
    pub const k_EControllerActionOrigin_PS4_LeftPad_DPadEast = 53;
    pub const k_EControllerActionOrigin_PS4_RightPad_Touch = 54;
    pub const k_EControllerActionOrigin_PS4_RightPad_Swipe = 55;
    pub const k_EControllerActionOrigin_PS4_RightPad_Click = 56;
    pub const k_EControllerActionOrigin_PS4_RightPad_DPadNorth = 57;
    pub const k_EControllerActionOrigin_PS4_RightPad_DPadSouth = 58;
    pub const k_EControllerActionOrigin_PS4_RightPad_DPadWest = 59;
    pub const k_EControllerActionOrigin_PS4_RightPad_DPadEast = 60;
    pub const k_EControllerActionOrigin_PS4_CenterPad_Touch = 61;
    pub const k_EControllerActionOrigin_PS4_CenterPad_Swipe = 62;
    pub const k_EControllerActionOrigin_PS4_CenterPad_Click = 63;
    pub const k_EControllerActionOrigin_PS4_CenterPad_DPadNorth = 64;
    pub const k_EControllerActionOrigin_PS4_CenterPad_DPadSouth = 65;
    pub const k_EControllerActionOrigin_PS4_CenterPad_DPadWest = 66;
    pub const k_EControllerActionOrigin_PS4_CenterPad_DPadEast = 67;
    pub const k_EControllerActionOrigin_PS4_LeftTrigger_Pull = 68;
    pub const k_EControllerActionOrigin_PS4_LeftTrigger_Click = 69;
    pub const k_EControllerActionOrigin_PS4_RightTrigger_Pull = 70;
    pub const k_EControllerActionOrigin_PS4_RightTrigger_Click = 71;
    pub const k_EControllerActionOrigin_PS4_LeftStick_Move = 72;
    pub const k_EControllerActionOrigin_PS4_LeftStick_Click = 73;
    pub const k_EControllerActionOrigin_PS4_LeftStick_DPadNorth = 74;
    pub const k_EControllerActionOrigin_PS4_LeftStick_DPadSouth = 75;
    pub const k_EControllerActionOrigin_PS4_LeftStick_DPadWest = 76;
    pub const k_EControllerActionOrigin_PS4_LeftStick_DPadEast = 77;
    pub const k_EControllerActionOrigin_PS4_RightStick_Move = 78;
    pub const k_EControllerActionOrigin_PS4_RightStick_Click = 79;
    pub const k_EControllerActionOrigin_PS4_RightStick_DPadNorth = 80;
    pub const k_EControllerActionOrigin_PS4_RightStick_DPadSouth = 81;
    pub const k_EControllerActionOrigin_PS4_RightStick_DPadWest = 82;
    pub const k_EControllerActionOrigin_PS4_RightStick_DPadEast = 83;
    pub const k_EControllerActionOrigin_PS4_DPad_North = 84;
    pub const k_EControllerActionOrigin_PS4_DPad_South = 85;
    pub const k_EControllerActionOrigin_PS4_DPad_West = 86;
    pub const k_EControllerActionOrigin_PS4_DPad_East = 87;
    pub const k_EControllerActionOrigin_PS4_Gyro_Move = 88;
    pub const k_EControllerActionOrigin_PS4_Gyro_Pitch = 89;
    pub const k_EControllerActionOrigin_PS4_Gyro_Yaw = 90;
    pub const k_EControllerActionOrigin_PS4_Gyro_Roll = 91;
    pub const k_EControllerActionOrigin_XBoxOne_A = 92;
    pub const k_EControllerActionOrigin_XBoxOne_B = 93;
    pub const k_EControllerActionOrigin_XBoxOne_X = 94;
    pub const k_EControllerActionOrigin_XBoxOne_Y = 95;
    pub const k_EControllerActionOrigin_XBoxOne_LeftBumper = 96;
    pub const k_EControllerActionOrigin_XBoxOne_RightBumper = 97;
    pub const k_EControllerActionOrigin_XBoxOne_Menu = 98;
    pub const k_EControllerActionOrigin_XBoxOne_View = 99;
    pub const k_EControllerActionOrigin_XBoxOne_LeftTrigger_Pull = 100;
    pub const k_EControllerActionOrigin_XBoxOne_LeftTrigger_Click = 101;
    pub const k_EControllerActionOrigin_XBoxOne_RightTrigger_Pull = 102;
    pub const k_EControllerActionOrigin_XBoxOne_RightTrigger_Click = 103;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_Move = 104;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_Click = 105;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_DPadNorth = 106;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_DPadSouth = 107;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_DPadWest = 108;
    pub const k_EControllerActionOrigin_XBoxOne_LeftStick_DPadEast = 109;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_Move = 110;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_Click = 111;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_DPadNorth = 112;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_DPadSouth = 113;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_DPadWest = 114;
    pub const k_EControllerActionOrigin_XBoxOne_RightStick_DPadEast = 115;
    pub const k_EControllerActionOrigin_XBoxOne_DPad_North = 116;
    pub const k_EControllerActionOrigin_XBoxOne_DPad_South = 117;
    pub const k_EControllerActionOrigin_XBoxOne_DPad_West = 118;
    pub const k_EControllerActionOrigin_XBoxOne_DPad_East = 119;
    pub const k_EControllerActionOrigin_XBox360_A = 120;
    pub const k_EControllerActionOrigin_XBox360_B = 121;
    pub const k_EControllerActionOrigin_XBox360_X = 122;
    pub const k_EControllerActionOrigin_XBox360_Y = 123;
    pub const k_EControllerActionOrigin_XBox360_LeftBumper = 124;
    pub const k_EControllerActionOrigin_XBox360_RightBumper = 125;
    pub const k_EControllerActionOrigin_XBox360_Start = 126;
    pub const k_EControllerActionOrigin_XBox360_Back = 127;
    pub const k_EControllerActionOrigin_XBox360_LeftTrigger_Pull = 128;
    pub const k_EControllerActionOrigin_XBox360_LeftTrigger_Click = 129;
    pub const k_EControllerActionOrigin_XBox360_RightTrigger_Pull = 130;
    pub const k_EControllerActionOrigin_XBox360_RightTrigger_Click = 131;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_Move = 132;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_Click = 133;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_DPadNorth = 134;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_DPadSouth = 135;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_DPadWest = 136;
    pub const k_EControllerActionOrigin_XBox360_LeftStick_DPadEast = 137;
    pub const k_EControllerActionOrigin_XBox360_RightStick_Move = 138;
    pub const k_EControllerActionOrigin_XBox360_RightStick_Click = 139;
    pub const k_EControllerActionOrigin_XBox360_RightStick_DPadNorth = 140;
    pub const k_EControllerActionOrigin_XBox360_RightStick_DPadSouth = 141;
    pub const k_EControllerActionOrigin_XBox360_RightStick_DPadWest = 142;
    pub const k_EControllerActionOrigin_XBox360_RightStick_DPadEast = 143;
    pub const k_EControllerActionOrigin_XBox360_DPad_North = 144;
    pub const k_EControllerActionOrigin_XBox360_DPad_South = 145;
    pub const k_EControllerActionOrigin_XBox360_DPad_West = 146;
    pub const k_EControllerActionOrigin_XBox360_DPad_East = 147;
    pub const k_EControllerActionOrigin_SteamV2_A = 148;
    pub const k_EControllerActionOrigin_SteamV2_B = 149;
    pub const k_EControllerActionOrigin_SteamV2_X = 150;
    pub const k_EControllerActionOrigin_SteamV2_Y = 151;
    pub const k_EControllerActionOrigin_SteamV2_LeftBumper = 152;
    pub const k_EControllerActionOrigin_SteamV2_RightBumper = 153;
    pub const k_EControllerActionOrigin_SteamV2_LeftGrip_Lower = 154;
    pub const k_EControllerActionOrigin_SteamV2_LeftGrip_Upper = 155;
    pub const k_EControllerActionOrigin_SteamV2_RightGrip_Lower = 156;
    pub const k_EControllerActionOrigin_SteamV2_RightGrip_Upper = 157;
    pub const k_EControllerActionOrigin_SteamV2_LeftBumper_Pressure = 158;
    pub const k_EControllerActionOrigin_SteamV2_RightBumper_Pressure = 159;
    pub const k_EControllerActionOrigin_SteamV2_LeftGrip_Pressure = 160;
    pub const k_EControllerActionOrigin_SteamV2_RightGrip_Pressure = 161;
    pub const k_EControllerActionOrigin_SteamV2_LeftGrip_Upper_Pressure = 162;
    pub const k_EControllerActionOrigin_SteamV2_RightGrip_Upper_Pressure = 163;
    pub const k_EControllerActionOrigin_SteamV2_Start = 164;
    pub const k_EControllerActionOrigin_SteamV2_Back = 165;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_Touch = 166;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_Swipe = 167;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_Click = 168;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_Pressure = 169;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_DPadNorth = 170;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_DPadSouth = 171;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_DPadWest = 172;
    pub const k_EControllerActionOrigin_SteamV2_LeftPad_DPadEast = 173;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_Touch = 174;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_Swipe = 175;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_Click = 176;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_Pressure = 177;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_DPadNorth = 178;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_DPadSouth = 179;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_DPadWest = 180;
    pub const k_EControllerActionOrigin_SteamV2_RightPad_DPadEast = 181;
    pub const k_EControllerActionOrigin_SteamV2_LeftTrigger_Pull = 182;
    pub const k_EControllerActionOrigin_SteamV2_LeftTrigger_Click = 183;
    pub const k_EControllerActionOrigin_SteamV2_RightTrigger_Pull = 184;
    pub const k_EControllerActionOrigin_SteamV2_RightTrigger_Click = 185;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_Move = 186;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_Click = 187;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_DPadNorth = 188;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_DPadSouth = 189;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_DPadWest = 190;
    pub const k_EControllerActionOrigin_SteamV2_LeftStick_DPadEast = 191;
    pub const k_EControllerActionOrigin_SteamV2_Gyro_Move = 192;
    pub const k_EControllerActionOrigin_SteamV2_Gyro_Pitch = 193;
    pub const k_EControllerActionOrigin_SteamV2_Gyro_Yaw = 194;
    pub const k_EControllerActionOrigin_SteamV2_Gyro_Roll = 195;
    pub const k_EControllerActionOrigin_Switch_A = 196;
    pub const k_EControllerActionOrigin_Switch_B = 197;
    pub const k_EControllerActionOrigin_Switch_X = 198;
    pub const k_EControllerActionOrigin_Switch_Y = 199;
    pub const k_EControllerActionOrigin_Switch_LeftBumper = 200;
    pub const k_EControllerActionOrigin_Switch_RightBumper = 201;
    pub const k_EControllerActionOrigin_Switch_Plus = 202;
    pub const k_EControllerActionOrigin_Switch_Minus = 203;
    pub const k_EControllerActionOrigin_Switch_Capture = 204;
    pub const k_EControllerActionOrigin_Switch_LeftTrigger_Pull = 205;
    pub const k_EControllerActionOrigin_Switch_LeftTrigger_Click = 206;
    pub const k_EControllerActionOrigin_Switch_RightTrigger_Pull = 207;
    pub const k_EControllerActionOrigin_Switch_RightTrigger_Click = 208;
    pub const k_EControllerActionOrigin_Switch_LeftStick_Move = 209;
    pub const k_EControllerActionOrigin_Switch_LeftStick_Click = 210;
    pub const k_EControllerActionOrigin_Switch_LeftStick_DPadNorth = 211;
    pub const k_EControllerActionOrigin_Switch_LeftStick_DPadSouth = 212;
    pub const k_EControllerActionOrigin_Switch_LeftStick_DPadWest = 213;
    pub const k_EControllerActionOrigin_Switch_LeftStick_DPadEast = 214;
    pub const k_EControllerActionOrigin_Switch_RightStick_Move = 215;
    pub const k_EControllerActionOrigin_Switch_RightStick_Click = 216;
    pub const k_EControllerActionOrigin_Switch_RightStick_DPadNorth = 217;
    pub const k_EControllerActionOrigin_Switch_RightStick_DPadSouth = 218;
    pub const k_EControllerActionOrigin_Switch_RightStick_DPadWest = 219;
    pub const k_EControllerActionOrigin_Switch_RightStick_DPadEast = 220;
    pub const k_EControllerActionOrigin_Switch_DPad_North = 221;
    pub const k_EControllerActionOrigin_Switch_DPad_South = 222;
    pub const k_EControllerActionOrigin_Switch_DPad_West = 223;
    pub const k_EControllerActionOrigin_Switch_DPad_East = 224;
    pub const k_EControllerActionOrigin_Switch_ProGyro_Move = 225;
    pub const k_EControllerActionOrigin_Switch_ProGyro_Pitch = 226;
    pub const k_EControllerActionOrigin_Switch_ProGyro_Yaw = 227;
    pub const k_EControllerActionOrigin_Switch_ProGyro_Roll = 228;
    pub const k_EControllerActionOrigin_Switch_RightGyro_Move = 229;
    pub const k_EControllerActionOrigin_Switch_RightGyro_Pitch = 230;
    pub const k_EControllerActionOrigin_Switch_RightGyro_Yaw = 231;
    pub const k_EControllerActionOrigin_Switch_RightGyro_Roll = 232;
    pub const k_EControllerActionOrigin_Switch_LeftGyro_Move = 233;
    pub const k_EControllerActionOrigin_Switch_LeftGyro_Pitch = 234;
    pub const k_EControllerActionOrigin_Switch_LeftGyro_Yaw = 235;
    pub const k_EControllerActionOrigin_Switch_LeftGyro_Roll = 236;
    pub const k_EControllerActionOrigin_Switch_LeftGrip_Lower = 237;
    pub const k_EControllerActionOrigin_Switch_LeftGrip_Upper = 238;
    pub const k_EControllerActionOrigin_Switch_RightGrip_Lower = 239;
    pub const k_EControllerActionOrigin_Switch_RightGrip_Upper = 240;
    pub const k_EControllerActionOrigin_PS4_DPad_Move = 241;
    pub const k_EControllerActionOrigin_XBoxOne_DPad_Move = 242;
    pub const k_EControllerActionOrigin_XBox360_DPad_Move = 243;
    pub const k_EControllerActionOrigin_Switch_DPad_Move = 244;
    pub const k_EControllerActionOrigin_PS5_X = 245;
    pub const k_EControllerActionOrigin_PS5_Circle = 246;
    pub const k_EControllerActionOrigin_PS5_Triangle = 247;
    pub const k_EControllerActionOrigin_PS5_Square = 248;
    pub const k_EControllerActionOrigin_PS5_LeftBumper = 249;
    pub const k_EControllerActionOrigin_PS5_RightBumper = 250;
    pub const k_EControllerActionOrigin_PS5_Option = 251;
    pub const k_EControllerActionOrigin_PS5_Create = 252;
    pub const k_EControllerActionOrigin_PS5_Mute = 253;
    pub const k_EControllerActionOrigin_PS5_LeftPad_Touch = 254;
    pub const k_EControllerActionOrigin_PS5_LeftPad_Swipe = 255;
    pub const k_EControllerActionOrigin_PS5_LeftPad_Click = 256;
    pub const k_EControllerActionOrigin_PS5_LeftPad_DPadNorth = 257;
    pub const k_EControllerActionOrigin_PS5_LeftPad_DPadSouth = 258;
    pub const k_EControllerActionOrigin_PS5_LeftPad_DPadWest = 259;
    pub const k_EControllerActionOrigin_PS5_LeftPad_DPadEast = 260;
    pub const k_EControllerActionOrigin_PS5_RightPad_Touch = 261;
    pub const k_EControllerActionOrigin_PS5_RightPad_Swipe = 262;
    pub const k_EControllerActionOrigin_PS5_RightPad_Click = 263;
    pub const k_EControllerActionOrigin_PS5_RightPad_DPadNorth = 264;
    pub const k_EControllerActionOrigin_PS5_RightPad_DPadSouth = 265;
    pub const k_EControllerActionOrigin_PS5_RightPad_DPadWest = 266;
    pub const k_EControllerActionOrigin_PS5_RightPad_DPadEast = 267;
    pub const k_EControllerActionOrigin_PS5_CenterPad_Touch = 268;
    pub const k_EControllerActionOrigin_PS5_CenterPad_Swipe = 269;
    pub const k_EControllerActionOrigin_PS5_CenterPad_Click = 270;
    pub const k_EControllerActionOrigin_PS5_CenterPad_DPadNorth = 271;
    pub const k_EControllerActionOrigin_PS5_CenterPad_DPadSouth = 272;
    pub const k_EControllerActionOrigin_PS5_CenterPad_DPadWest = 273;
    pub const k_EControllerActionOrigin_PS5_CenterPad_DPadEast = 274;
    pub const k_EControllerActionOrigin_PS5_LeftTrigger_Pull = 275;
    pub const k_EControllerActionOrigin_PS5_LeftTrigger_Click = 276;
    pub const k_EControllerActionOrigin_PS5_RightTrigger_Pull = 277;
    pub const k_EControllerActionOrigin_PS5_RightTrigger_Click = 278;
    pub const k_EControllerActionOrigin_PS5_LeftStick_Move = 279;
    pub const k_EControllerActionOrigin_PS5_LeftStick_Click = 280;
    pub const k_EControllerActionOrigin_PS5_LeftStick_DPadNorth = 281;
    pub const k_EControllerActionOrigin_PS5_LeftStick_DPadSouth = 282;
    pub const k_EControllerActionOrigin_PS5_LeftStick_DPadWest = 283;
    pub const k_EControllerActionOrigin_PS5_LeftStick_DPadEast = 284;
    pub const k_EControllerActionOrigin_PS5_RightStick_Move = 285;
    pub const k_EControllerActionOrigin_PS5_RightStick_Click = 286;
    pub const k_EControllerActionOrigin_PS5_RightStick_DPadNorth = 287;
    pub const k_EControllerActionOrigin_PS5_RightStick_DPadSouth = 288;
    pub const k_EControllerActionOrigin_PS5_RightStick_DPadWest = 289;
    pub const k_EControllerActionOrigin_PS5_RightStick_DPadEast = 290;
    pub const k_EControllerActionOrigin_PS5_DPad_Move = 291;
    pub const k_EControllerActionOrigin_PS5_DPad_North = 292;
    pub const k_EControllerActionOrigin_PS5_DPad_South = 293;
    pub const k_EControllerActionOrigin_PS5_DPad_West = 294;
    pub const k_EControllerActionOrigin_PS5_DPad_East = 295;
    pub const k_EControllerActionOrigin_PS5_Gyro_Move = 296;
    pub const k_EControllerActionOrigin_PS5_Gyro_Pitch = 297;
    pub const k_EControllerActionOrigin_PS5_Gyro_Yaw = 298;
    pub const k_EControllerActionOrigin_PS5_Gyro_Roll = 299;
    pub const k_EControllerActionOrigin_XBoxOne_LeftGrip_Lower = 300;
    pub const k_EControllerActionOrigin_XBoxOne_LeftGrip_Upper = 301;
    pub const k_EControllerActionOrigin_XBoxOne_RightGrip_Lower = 302;
    pub const k_EControllerActionOrigin_XBoxOne_RightGrip_Upper = 303;
    pub const k_EControllerActionOrigin_XBoxOne_Share = 304;
    pub const k_EControllerActionOrigin_SteamDeck_A = 305;
    pub const k_EControllerActionOrigin_SteamDeck_B = 306;
    pub const k_EControllerActionOrigin_SteamDeck_X = 307;
    pub const k_EControllerActionOrigin_SteamDeck_Y = 308;
    pub const k_EControllerActionOrigin_SteamDeck_L1 = 309;
    pub const k_EControllerActionOrigin_SteamDeck_R1 = 310;
    pub const k_EControllerActionOrigin_SteamDeck_Menu = 311;
    pub const k_EControllerActionOrigin_SteamDeck_View = 312;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_Touch = 313;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_Swipe = 314;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_Click = 315;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_DPadNorth = 316;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_DPadSouth = 317;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_DPadWest = 318;
    pub const k_EControllerActionOrigin_SteamDeck_LeftPad_DPadEast = 319;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_Touch = 320;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_Swipe = 321;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_Click = 322;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_DPadNorth = 323;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_DPadSouth = 324;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_DPadWest = 325;
    pub const k_EControllerActionOrigin_SteamDeck_RightPad_DPadEast = 326;
    pub const k_EControllerActionOrigin_SteamDeck_L2_SoftPull = 327;
    pub const k_EControllerActionOrigin_SteamDeck_L2 = 328;
    pub const k_EControllerActionOrigin_SteamDeck_R2_SoftPull = 329;
    pub const k_EControllerActionOrigin_SteamDeck_R2 = 330;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_Move = 331;
    pub const k_EControllerActionOrigin_SteamDeck_L3 = 332;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_DPadNorth = 333;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_DPadSouth = 334;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_DPadWest = 335;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_DPadEast = 336;
    pub const k_EControllerActionOrigin_SteamDeck_LeftStick_Touch = 337;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_Move = 338;
    pub const k_EControllerActionOrigin_SteamDeck_R3 = 339;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_DPadNorth = 340;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_DPadSouth = 341;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_DPadWest = 342;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_DPadEast = 343;
    pub const k_EControllerActionOrigin_SteamDeck_RightStick_Touch = 344;
    pub const k_EControllerActionOrigin_SteamDeck_L4 = 345;
    pub const k_EControllerActionOrigin_SteamDeck_R4 = 346;
    pub const k_EControllerActionOrigin_SteamDeck_L5 = 347;
    pub const k_EControllerActionOrigin_SteamDeck_R5 = 348;
    pub const k_EControllerActionOrigin_SteamDeck_DPad_Move = 349;
    pub const k_EControllerActionOrigin_SteamDeck_DPad_North = 350;
    pub const k_EControllerActionOrigin_SteamDeck_DPad_South = 351;
    pub const k_EControllerActionOrigin_SteamDeck_DPad_West = 352;
    pub const k_EControllerActionOrigin_SteamDeck_DPad_East = 353;
    pub const k_EControllerActionOrigin_SteamDeck_Gyro_Move = 354;
    pub const k_EControllerActionOrigin_SteamDeck_Gyro_Pitch = 355;
    pub const k_EControllerActionOrigin_SteamDeck_Gyro_Yaw = 356;
    pub const k_EControllerActionOrigin_SteamDeck_Gyro_Roll = 357;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved1 = 358;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved2 = 359;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved3 = 360;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved4 = 361;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved5 = 362;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved6 = 363;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved7 = 364;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved8 = 365;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved9 = 366;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved10 = 367;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved11 = 368;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved12 = 369;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved13 = 370;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved14 = 371;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved15 = 372;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved16 = 373;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved17 = 374;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved18 = 375;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved19 = 376;
    pub const k_EControllerActionOrigin_SteamDeck_Reserved20 = 377;
    pub const k_EControllerActionOrigin_Count = 378;
    pub const k_EControllerActionOrigin_MaximumPossibleValue = 32767;
};
pub const ESteamControllerLEDFlag = extern struct {
    v: c_int,
    pub const k_ESteamControllerLEDFlag_SetColor = 0;
    pub const k_ESteamControllerLEDFlag_RestoreUserDefault = 1;
};
pub const EUGCMatchingUGCType = extern struct {
    v: c_int,
    pub const k_EUGCMatchingUGCType_Items = 0;
    pub const k_EUGCMatchingUGCType_Items_Mtx = 1;
    pub const k_EUGCMatchingUGCType_Items_ReadyToUse = 2;
    pub const k_EUGCMatchingUGCType_Collections = 3;
    pub const k_EUGCMatchingUGCType_Artwork = 4;
    pub const k_EUGCMatchingUGCType_Videos = 5;
    pub const k_EUGCMatchingUGCType_Screenshots = 6;
    pub const k_EUGCMatchingUGCType_AllGuides = 7;
    pub const k_EUGCMatchingUGCType_WebGuides = 8;
    pub const k_EUGCMatchingUGCType_IntegratedGuides = 9;
    pub const k_EUGCMatchingUGCType_UsableInGame = 10;
    pub const k_EUGCMatchingUGCType_ControllerBindings = 11;
    pub const k_EUGCMatchingUGCType_GameManagedItems = 12;
    pub const k_EUGCMatchingUGCType_All = -1;
};
pub const EUserUGCList = extern struct {
    v: c_int,
    pub const k_EUserUGCList_Published = 0;
    pub const k_EUserUGCList_VotedOn = 1;
    pub const k_EUserUGCList_VotedUp = 2;
    pub const k_EUserUGCList_VotedDown = 3;
    pub const k_EUserUGCList_WillVoteLater = 4;
    pub const k_EUserUGCList_Favorited = 5;
    pub const k_EUserUGCList_Subscribed = 6;
    pub const k_EUserUGCList_UsedOrPlayed = 7;
    pub const k_EUserUGCList_Followed = 8;
};
pub const EUserUGCListSortOrder = extern struct {
    v: c_int,
    pub const k_EUserUGCListSortOrder_CreationOrderDesc = 0;
    pub const k_EUserUGCListSortOrder_CreationOrderAsc = 1;
    pub const k_EUserUGCListSortOrder_TitleAsc = 2;
    pub const k_EUserUGCListSortOrder_LastUpdatedDesc = 3;
    pub const k_EUserUGCListSortOrder_SubscriptionDateDesc = 4;
    pub const k_EUserUGCListSortOrder_VoteScoreDesc = 5;
    pub const k_EUserUGCListSortOrder_ForModeration = 6;
};
pub const EUGCQuery = extern struct {
    v: c_int,
    pub const k_EUGCQuery_RankedByVote = 0;
    pub const k_EUGCQuery_RankedByPublicationDate = 1;
    pub const k_EUGCQuery_AcceptedForGameRankedByAcceptanceDate = 2;
    pub const k_EUGCQuery_RankedByTrend = 3;
    pub const k_EUGCQuery_FavoritedByFriendsRankedByPublicationDate = 4;
    pub const k_EUGCQuery_CreatedByFriendsRankedByPublicationDate = 5;
    pub const k_EUGCQuery_RankedByNumTimesReported = 6;
    pub const k_EUGCQuery_CreatedByFollowedUsersRankedByPublicationDate = 7;
    pub const k_EUGCQuery_NotYetRated = 8;
    pub const k_EUGCQuery_RankedByTotalVotesAsc = 9;
    pub const k_EUGCQuery_RankedByVotesUp = 10;
    pub const k_EUGCQuery_RankedByTextSearch = 11;
    pub const k_EUGCQuery_RankedByTotalUniqueSubscriptions = 12;
    pub const k_EUGCQuery_RankedByPlaytimeTrend = 13;
    pub const k_EUGCQuery_RankedByTotalPlaytime = 14;
    pub const k_EUGCQuery_RankedByAveragePlaytimeTrend = 15;
    pub const k_EUGCQuery_RankedByLifetimeAveragePlaytime = 16;
    pub const k_EUGCQuery_RankedByPlaytimeSessionsTrend = 17;
    pub const k_EUGCQuery_RankedByLifetimePlaytimeSessions = 18;
    pub const k_EUGCQuery_RankedByLastUpdatedDate = 19;
};
pub const EItemUpdateStatus = extern struct {
    v: c_int,
    pub const k_EItemUpdateStatusInvalid = 0;
    pub const k_EItemUpdateStatusPreparingConfig = 1;
    pub const k_EItemUpdateStatusPreparingContent = 2;
    pub const k_EItemUpdateStatusUploadingContent = 3;
    pub const k_EItemUpdateStatusUploadingPreviewFile = 4;
    pub const k_EItemUpdateStatusCommittingChanges = 5;
};
pub const EItemState = extern struct {
    v: c_int,
    pub const k_EItemStateNone = 0;
    pub const k_EItemStateSubscribed = 1;
    pub const k_EItemStateLegacyItem = 2;
    pub const k_EItemStateInstalled = 4;
    pub const k_EItemStateNeedsUpdate = 8;
    pub const k_EItemStateDownloading = 16;
    pub const k_EItemStateDownloadPending = 32;
};
pub const EItemStatistic = extern struct {
    v: c_int,
    pub const k_EItemStatistic_NumSubscriptions = 0;
    pub const k_EItemStatistic_NumFavorites = 1;
    pub const k_EItemStatistic_NumFollowers = 2;
    pub const k_EItemStatistic_NumUniqueSubscriptions = 3;
    pub const k_EItemStatistic_NumUniqueFavorites = 4;
    pub const k_EItemStatistic_NumUniqueFollowers = 5;
    pub const k_EItemStatistic_NumUniqueWebsiteViews = 6;
    pub const k_EItemStatistic_ReportScore = 7;
    pub const k_EItemStatistic_NumSecondsPlayed = 8;
    pub const k_EItemStatistic_NumPlaytimeSessions = 9;
    pub const k_EItemStatistic_NumComments = 10;
    pub const k_EItemStatistic_NumSecondsPlayedDuringTimePeriod = 11;
    pub const k_EItemStatistic_NumPlaytimeSessionsDuringTimePeriod = 12;
};
pub const EItemPreviewType = extern struct {
    v: c_int,
    pub const k_EItemPreviewType_Image = 0;
    pub const k_EItemPreviewType_YouTubeVideo = 1;
    pub const k_EItemPreviewType_Sketchfab = 2;
    pub const k_EItemPreviewType_EnvironmentMap_HorizontalCross = 3;
    pub const k_EItemPreviewType_EnvironmentMap_LatLong = 4;
    pub const k_EItemPreviewType_ReservedMax = 255;
};
pub const ESteamItemFlags = extern struct {
    v: c_int,
    pub const k_ESteamItemNoTrade = 1;
    pub const k_ESteamItemRemoved = 256;
    pub const k_ESteamItemConsumed = 512;
};
pub const EParentalFeature = extern struct {
    v: c_int,
    pub const k_EFeatureInvalid = 0;
    pub const k_EFeatureStore = 1;
    pub const k_EFeatureCommunity = 2;
    pub const k_EFeatureProfile = 3;
    pub const k_EFeatureFriends = 4;
    pub const k_EFeatureNews = 5;
    pub const k_EFeatureTrading = 6;
    pub const k_EFeatureSettings = 7;
    pub const k_EFeatureConsole = 8;
    pub const k_EFeatureBrowser = 9;
    pub const k_EFeatureParentalSetup = 10;
    pub const k_EFeatureLibrary = 11;
    pub const k_EFeatureTest = 12;
    pub const k_EFeatureSiteLicense = 13;
    pub const k_EFeatureMax = 14;
};
pub const ESteamDeviceFormFactor = extern struct {
    v: c_int,
    pub const k_ESteamDeviceFormFactorUnknown = 0;
    pub const k_ESteamDeviceFormFactorPhone = 1;
    pub const k_ESteamDeviceFormFactorTablet = 2;
    pub const k_ESteamDeviceFormFactorComputer = 3;
    pub const k_ESteamDeviceFormFactorTV = 4;
};
pub const ESteamNetworkingAvailability = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingAvailability_CannotTry = -102;
    pub const k_ESteamNetworkingAvailability_Failed = -101;
    pub const k_ESteamNetworkingAvailability_Previously = -100;
    pub const k_ESteamNetworkingAvailability_Retrying = -10;
    pub const k_ESteamNetworkingAvailability_NeverTried = 1;
    pub const k_ESteamNetworkingAvailability_Waiting = 2;
    pub const k_ESteamNetworkingAvailability_Attempting = 3;
    pub const k_ESteamNetworkingAvailability_Current = 100;
    pub const k_ESteamNetworkingAvailability_Unknown = 0;
    pub const k_ESteamNetworkingAvailability__Force32bit = 2147483647;
};
pub const ESteamNetworkingIdentityType = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingIdentityType_Invalid = 0;
    pub const k_ESteamNetworkingIdentityType_SteamID = 16;
    pub const k_ESteamNetworkingIdentityType_XboxPairwiseID = 17;
    pub const k_ESteamNetworkingIdentityType_SonyPSN = 18;
    pub const k_ESteamNetworkingIdentityType_GoogleStadia = 19;
    pub const k_ESteamNetworkingIdentityType_IPAddress = 1;
    pub const k_ESteamNetworkingIdentityType_GenericString = 2;
    pub const k_ESteamNetworkingIdentityType_GenericBytes = 3;
    pub const k_ESteamNetworkingIdentityType_UnknownType = 4;
    pub const k_ESteamNetworkingIdentityType__Force32bit = 2147483647;
};
pub const ESteamNetworkingFakeIPType = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingFakeIPType_Invalid = 0;
    pub const k_ESteamNetworkingFakeIPType_NotFake = 1;
    pub const k_ESteamNetworkingFakeIPType_GlobalIPv4 = 2;
    pub const k_ESteamNetworkingFakeIPType_LocalIPv4 = 3;
    pub const k_ESteamNetworkingFakeIPType__Force32Bit = 2147483647;
};
pub const ESteamNetworkingConnectionState = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingConnectionState_None = 0;
    pub const k_ESteamNetworkingConnectionState_Connecting = 1;
    pub const k_ESteamNetworkingConnectionState_FindingRoute = 2;
    pub const k_ESteamNetworkingConnectionState_Connected = 3;
    pub const k_ESteamNetworkingConnectionState_ClosedByPeer = 4;
    pub const k_ESteamNetworkingConnectionState_ProblemDetectedLocally = 5;
    pub const k_ESteamNetworkingConnectionState_FinWait = -1;
    pub const k_ESteamNetworkingConnectionState_Linger = -2;
    pub const k_ESteamNetworkingConnectionState_Dead = -3;
    pub const k_ESteamNetworkingConnectionState__Force32Bit = 2147483647;
};
pub const ESteamNetConnectionEnd = extern struct {
    v: c_int,
    pub const k_ESteamNetConnectionEnd_Invalid = 0;
    pub const k_ESteamNetConnectionEnd_App_Min = 1000;
    pub const k_ESteamNetConnectionEnd_App_Generic = 1000;
    pub const k_ESteamNetConnectionEnd_App_Max = 1999;
    pub const k_ESteamNetConnectionEnd_AppException_Min = 2000;
    pub const k_ESteamNetConnectionEnd_AppException_Generic = 2000;
    pub const k_ESteamNetConnectionEnd_AppException_Max = 2999;
    pub const k_ESteamNetConnectionEnd_Local_Min = 3000;
    pub const k_ESteamNetConnectionEnd_Local_OfflineMode = 3001;
    pub const k_ESteamNetConnectionEnd_Local_ManyRelayConnectivity = 3002;
    pub const k_ESteamNetConnectionEnd_Local_HostedServerPrimaryRelay = 3003;
    pub const k_ESteamNetConnectionEnd_Local_NetworkConfig = 3004;
    pub const k_ESteamNetConnectionEnd_Local_Rights = 3005;
    pub const k_ESteamNetConnectionEnd_Local_P2P_ICE_NoPublicAddresses = 3006;
    pub const k_ESteamNetConnectionEnd_Local_Max = 3999;
    pub const k_ESteamNetConnectionEnd_Remote_Min = 4000;
    pub const k_ESteamNetConnectionEnd_Remote_Timeout = 4001;
    pub const k_ESteamNetConnectionEnd_Remote_BadCrypt = 4002;
    pub const k_ESteamNetConnectionEnd_Remote_BadCert = 4003;
    pub const k_ESteamNetConnectionEnd_Remote_BadProtocolVersion = 4006;
    pub const k_ESteamNetConnectionEnd_Remote_P2P_ICE_NoPublicAddresses = 4007;
    pub const k_ESteamNetConnectionEnd_Remote_Max = 4999;
    pub const k_ESteamNetConnectionEnd_Misc_Min = 5000;
    pub const k_ESteamNetConnectionEnd_Misc_Generic = 5001;
    pub const k_ESteamNetConnectionEnd_Misc_InternalError = 5002;
    pub const k_ESteamNetConnectionEnd_Misc_Timeout = 5003;
    pub const k_ESteamNetConnectionEnd_Misc_SteamConnectivity = 5005;
    pub const k_ESteamNetConnectionEnd_Misc_NoRelaySessionsToClient = 5006;
    pub const k_ESteamNetConnectionEnd_Misc_P2P_Rendezvous = 5008;
    pub const k_ESteamNetConnectionEnd_Misc_P2P_NAT_Firewall = 5009;
    pub const k_ESteamNetConnectionEnd_Misc_PeerSentNoConnection = 5010;
    pub const k_ESteamNetConnectionEnd_Misc_Max = 5999;
    pub const k_ESteamNetConnectionEnd__Force32Bit = 2147483647;
};
pub const ESteamNetworkingConfigScope = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingConfig_Global = 1;
    pub const k_ESteamNetworkingConfig_SocketsInterface = 2;
    pub const k_ESteamNetworkingConfig_ListenSocket = 3;
    pub const k_ESteamNetworkingConfig_Connection = 4;
    pub const k_ESteamNetworkingConfigScope__Force32Bit = 2147483647;
};
pub const ESteamNetworkingConfigDataType = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingConfig_Int32 = 1;
    pub const k_ESteamNetworkingConfig_Int64 = 2;
    pub const k_ESteamNetworkingConfig_Float = 3;
    pub const k_ESteamNetworkingConfig_String = 4;
    pub const k_ESteamNetworkingConfig_Ptr = 5;
    pub const k_ESteamNetworkingConfigDataType__Force32Bit = 2147483647;
};
pub const ESteamNetworkingConfigValue = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingConfig_Invalid = 0;
    pub const k_ESteamNetworkingConfig_TimeoutInitial = 24;
    pub const k_ESteamNetworkingConfig_TimeoutConnected = 25;
    pub const k_ESteamNetworkingConfig_SendBufferSize = 9;
    pub const k_ESteamNetworkingConfig_ConnectionUserData = 40;
    pub const k_ESteamNetworkingConfig_SendRateMin = 10;
    pub const k_ESteamNetworkingConfig_SendRateMax = 11;
    pub const k_ESteamNetworkingConfig_NagleTime = 12;
    pub const k_ESteamNetworkingConfig_IP_AllowWithoutAuth = 23;
    pub const k_ESteamNetworkingConfig_MTU_PacketSize = 32;
    pub const k_ESteamNetworkingConfig_MTU_DataSize = 33;
    pub const k_ESteamNetworkingConfig_Unencrypted = 34;
    pub const k_ESteamNetworkingConfig_SymmetricConnect = 37;
    pub const k_ESteamNetworkingConfig_LocalVirtualPort = 38;
    pub const k_ESteamNetworkingConfig_DualWifi_Enable = 39;
    pub const k_ESteamNetworkingConfig_EnableDiagnosticsUI = 46;
    pub const k_ESteamNetworkingConfig_FakePacketLoss_Send = 2;
    pub const k_ESteamNetworkingConfig_FakePacketLoss_Recv = 3;
    pub const k_ESteamNetworkingConfig_FakePacketLag_Send = 4;
    pub const k_ESteamNetworkingConfig_FakePacketLag_Recv = 5;
    pub const k_ESteamNetworkingConfig_FakePacketReorder_Send = 6;
    pub const k_ESteamNetworkingConfig_FakePacketReorder_Recv = 7;
    pub const k_ESteamNetworkingConfig_FakePacketReorder_Time = 8;
    pub const k_ESteamNetworkingConfig_FakePacketDup_Send = 26;
    pub const k_ESteamNetworkingConfig_FakePacketDup_Recv = 27;
    pub const k_ESteamNetworkingConfig_FakePacketDup_TimeMax = 28;
    pub const k_ESteamNetworkingConfig_PacketTraceMaxBytes = 41;
    pub const k_ESteamNetworkingConfig_FakeRateLimit_Send_Rate = 42;
    pub const k_ESteamNetworkingConfig_FakeRateLimit_Send_Burst = 43;
    pub const k_ESteamNetworkingConfig_FakeRateLimit_Recv_Rate = 44;
    pub const k_ESteamNetworkingConfig_FakeRateLimit_Recv_Burst = 45;
    pub const k_ESteamNetworkingConfig_Callback_ConnectionStatusChanged = 201;
    pub const k_ESteamNetworkingConfig_Callback_AuthStatusChanged = 202;
    pub const k_ESteamNetworkingConfig_Callback_RelayNetworkStatusChanged = 203;
    pub const k_ESteamNetworkingConfig_Callback_MessagesSessionRequest = 204;
    pub const k_ESteamNetworkingConfig_Callback_MessagesSessionFailed = 205;
    pub const k_ESteamNetworkingConfig_Callback_CreateConnectionSignaling = 206;
    pub const k_ESteamNetworkingConfig_Callback_FakeIPResult = 207;
    pub const k_ESteamNetworkingConfig_P2P_STUN_ServerList = 103;
    pub const k_ESteamNetworkingConfig_P2P_Transport_ICE_Enable = 104;
    pub const k_ESteamNetworkingConfig_P2P_Transport_ICE_Penalty = 105;
    pub const k_ESteamNetworkingConfig_P2P_Transport_SDR_Penalty = 106;
    pub const k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFailInitial = 19;
    pub const k_ESteamNetworkingConfig_SDRClient_ConsecutitivePingTimeoutsFail = 20;
    pub const k_ESteamNetworkingConfig_SDRClient_MinPingsBeforePingAccurate = 21;
    pub const k_ESteamNetworkingConfig_SDRClient_SingleSocket = 22;
    pub const k_ESteamNetworkingConfig_SDRClient_ForceRelayCluster = 29;
    pub const k_ESteamNetworkingConfig_SDRClient_DebugTicketAddress = 30;
    pub const k_ESteamNetworkingConfig_SDRClient_ForceProxyAddr = 31;
    pub const k_ESteamNetworkingConfig_SDRClient_FakeClusterPing = 36;
    pub const k_ESteamNetworkingConfig_LogLevel_AckRTT = 13;
    pub const k_ESteamNetworkingConfig_LogLevel_PacketDecode = 14;
    pub const k_ESteamNetworkingConfig_LogLevel_Message = 15;
    pub const k_ESteamNetworkingConfig_LogLevel_PacketGaps = 16;
    pub const k_ESteamNetworkingConfig_LogLevel_P2PRendezvous = 17;
    pub const k_ESteamNetworkingConfig_LogLevel_SDRRelayPings = 18;
    pub const k_ESteamNetworkingConfig_DELETED_EnumerateDevVars = 35;
    pub const k_ESteamNetworkingConfigValue__Force32Bit = 2147483647;
};
pub const ESteamNetworkingGetConfigValueResult = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingGetConfigValue_BadValue = -1;
    pub const k_ESteamNetworkingGetConfigValue_BadScopeObj = -2;
    pub const k_ESteamNetworkingGetConfigValue_BufferTooSmall = -3;
    pub const k_ESteamNetworkingGetConfigValue_OK = 1;
    pub const k_ESteamNetworkingGetConfigValue_OKInherited = 2;
    pub const k_ESteamNetworkingGetConfigValueResult__Force32Bit = 2147483647;
};
pub const ESteamNetworkingSocketsDebugOutputType = extern struct {
    v: c_int,
    pub const k_ESteamNetworkingSocketsDebugOutputType_None = 0;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Bug = 1;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Error = 2;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Important = 3;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Warning = 4;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Msg = 5;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Verbose = 6;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Debug = 7;
    pub const k_ESteamNetworkingSocketsDebugOutputType_Everything = 8;
    pub const k_ESteamNetworkingSocketsDebugOutputType__Force32Bit = 2147483647;
};
pub const EServerMode = extern struct {
    v: c_int,
    pub const eServerModeInvalid = 0;
    pub const eServerModeNoAuthentication = 1;
    pub const eServerModeAuthentication = 2;
    pub const eServerModeAuthenticationAndSecure = 3;
};
