import 'package:json_annotation/json_annotation.dart';
part 'info_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponse {
	UsersInfoResponseUser user;
	String status;
	UsersInfoResponse();
	factory UsersInfoResponse.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponseUserBiographyWithEntities {
	String rawText;
	List entities;
	UsersInfoResponseUserBiographyWithEntities();
	factory UsersInfoResponseUserBiographyWithEntities.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseUserBiographyWithEntitiesFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseUserBiographyWithEntitiesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponseUserHdProfilePicUrlInfo {
	String url;
	int width;
	int height;
	UsersInfoResponseUserHdProfilePicUrlInfo();
	factory UsersInfoResponseUserHdProfilePicUrlInfo.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseUserHdProfilePicUrlInfoFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseUserHdProfilePicUrlInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponseUserLinkedFbInfo {
	UsersInfoResponseUserLinkedFbInfo();
	factory UsersInfoResponseUserLinkedFbInfo.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseUserLinkedFbInfoFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseUserLinkedFbInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponseUserNametag {
	int mode;
	int gradient;
	String emoji;
	int selfieSticker;
	UsersInfoResponseUserNametag();
	factory UsersInfoResponseUserNametag.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseUserNametagFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseUserNametagToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersInfoResponseUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	bool hasAnonymousProfilePicture;
	int mediaCount;
	int followerCount;
	int followingCount;
	int followingTagCount;
	String biography;
	bool canLinkEntitiesInBio;
	UsersInfoResponseUserBiographyWithEntities biographyWithEntities;
	String externalUrl;
	String externalLynxUrl;
	bool hasBiographyTranslation;
	bool canBoostPost;
	bool canSeeOrganicInsights;
	bool showInsightsTerms;
	bool canConvertToBusiness;
	bool canCreateSponsorTags;
	bool canBeTaggedAsSponsor;
	int totalIgtvVideos;
	int totalArEffects;
	String reelAutoArchive;
	bool isProfileActionNeeded;
	int usertagsCount;
	bool usertagReviewEnabled;
	bool isNeedy;
	bool isInterestAccount;
	bool hasRecommendAccounts;
	bool hasChaining;
	UsersInfoResponseUserHdProfilePicUrlInfo hdProfilePicUrlInfo;
	bool hasPlacedOrders;
	bool canTagProductsFromMerchants;
	bool showConversionEditEntry;
	bool aggregatePromoteEngagement;
	String allowedCommenterType;
	bool isVideoCreator;
	bool hasProfileVideoFeed;
	bool hasHighlightReels;
	bool isEligibleToShowFbCrossSharingNux;
	dynamic pageIdForNewSumaBizAccount;
	List eligibleShoppingSignupEntrypoints;
	bool canBeReportedAsFraud;
	bool isBusiness;
	int accountType;
	dynamic isCallToActionEnabled;
	UsersInfoResponseUserLinkedFbInfo linkedFbInfo;
	bool includeDirectBlacklistStatus;
	bool canFollowHashtag;
	bool isPotentialBusiness;
	bool feedPostReshareDisabled;
	int bestiesCount;
	bool showBestiesBadge;
	int recentlyBestiedByCount;
	UsersInfoResponseUserNametag nametag;
	bool autoExpandChaining;
	bool highlightReshareDisabled;
	bool showPostInsightsEntryPoint;
	bool showPostInsightsSettingsEntryPoint;
	UsersInfoResponseUser();
	factory UsersInfoResponseUser.fromJson(Map<String, dynamic> json) => _$UsersInfoResponseUserFromJson(json);
	Map<String, dynamic> toJson() => _$UsersInfoResponseUserToJson(this);
}
