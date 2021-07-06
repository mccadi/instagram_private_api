import 'package:json_annotation/json_annotation.dart';
part 'user_story_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponse {
	dynamic broadcast;
	FeedUserStoryResponseReel reel;
	String status;
	FeedUserStoryResponse();
	factory FeedUserStoryResponse.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelUserFriendshipStatus {
	bool following;
	bool followedBy;
	bool blocking;
	bool muting;
	bool isPrivate;
	bool incomingRequest;
	bool outgoingRequest;
	bool isBestie;
	bool isRestricted;
	FeedUserStoryResponseReelUserFriendshipStatus();
	factory FeedUserStoryResponseReelUserFriendshipStatus.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelUserFriendshipStatusFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelUserFriendshipStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	FeedUserStoryResponseReelUserFriendshipStatus friendshipStatus;
	bool isVerified;
	FeedUserStoryResponseReelUser();
	factory FeedUserStoryResponseReelUser.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem();
	factory FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemImageVersions2 {
	List<FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem> candidates;
	FeedUserStoryResponseReelItemsItemImageVersions2();
	factory FeedUserStoryResponseReelItemsItemImageVersions2.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	bool hasAnonymousProfilePicture;
	bool isUnpublished;
	bool isFavorite;
	FeedUserStoryResponseReelItemsItemUser();
	factory FeedUserStoryResponseReelItemsItemUser.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemReelMentionsItemUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	FeedUserStoryResponseReelItemsItemReelMentionsItemUser();
	factory FeedUserStoryResponseReelItemsItemReelMentionsItemUser.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemReelMentionsItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemReelMentionsItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemReelMentionsItem {
	double x;
	double y;
	int z;
	double width;
	double height;
	double rotation;
	int isPinned;
	int isHidden;
	String displayType;
	int isSticker;
	FeedUserStoryResponseReelItemsItemReelMentionsItemUser user;
	FeedUserStoryResponseReelItemsItemReelMentionsItem();
	factory FeedUserStoryResponseReelItemsItemReelMentionsItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemReelMentionsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemReelMentionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemVideoVersionsItem {
	int type;
	int width;
	int height;
	String url;
	String id;
	FeedUserStoryResponseReelItemsItemVideoVersionsItem();
	factory FeedUserStoryResponseReelItemsItemVideoVersionsItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemVideoVersionsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemVideoVersionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem {
	String text;
	int count;
	FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem();
	factory FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker {
	String id;
	int quizId;
	String question;
	List<FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem> tallies;
	int correctAnswer;
	bool viewerCanAnswer;
	bool finished;
	String textColor;
	String startBackgroundColor;
	String endBackgroundColor;
	FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker();
	factory FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryQuizsItem {
	double x;
	double y;
	int z;
	double width;
	double height;
	double rotation;
	int isPinned;
	int isHidden;
	int isSticker;
	FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker quizSticker;
	FeedUserStoryResponseReelItemsItemStoryQuizsItem();
	factory FeedUserStoryResponseReelItemsItemStoryQuizsItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryQuizsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist();
	factory FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtistFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtistToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo {
	String id;
	String title;
	String subtitle;
	String displayArtist;
	String coverArtworkUri;
	String coverArtworkThumbnailUri;
	String progressiveDownloadUrl;
	List<int> highlightStartTimesInMs;
	bool isExplicit;
	String dashManifest;
	bool hasLyrics;
	String audioAssetId;
	FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist igArtist;
	String placeholderProfilePicUrl;
	bool shouldMuteAudio;
	String shouldMuteAudioReason;
	int overlapDurationInMs;
	int audioAssetStartTimeInMs;
	FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo();
	factory FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItemStoryMusicStickersItem {
	double x;
	double y;
	int z;
	double width;
	double height;
	double rotation;
	String attribution;
	int isPinned;
	int isHidden;
	String displayType;
	int isSticker;
	FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo musicAssetInfo;
	FeedUserStoryResponseReelItemsItemStoryMusicStickersItem();
	factory FeedUserStoryResponseReelItemsItemStoryMusicStickersItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReelItemsItem {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	FeedUserStoryResponseReelItemsItemImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	FeedUserStoryResponseReelItemsItemUser user;
	bool captionIsEdited;
	double captionPosition;
	bool isReelMedia;
	bool photoOfYou;
	dynamic caption;
	bool canViewerSave;
	String organicTrackingToken;
	int expiringAt;
	int importedTakenAt;
	bool canReshare;
	bool canReply;
	bool isPrideMedia;
	List<FeedUserStoryResponseReelItemsItemReelMentionsItem> reelMentions;
	bool supportsReelReactions;
	bool showOneTapFbShareTooltip;
	int hasSharedToFb;
	int isDashEligible;
	String videoDashManifest;
	String videoCodec;
	int numberOfQualities;
	List<FeedUserStoryResponseReelItemsItemVideoVersionsItem> videoVersions;
	bool hasAudio;
	double videoDuration;
	List<FeedUserStoryResponseReelItemsItemStoryQuizsItem> storyQuizs;
	List<FeedUserStoryResponseReelItemsItemStoryMusicStickersItem> storyMusicStickers;
	FeedUserStoryResponseReelItemsItem();
	factory FeedUserStoryResponseReelItemsItem.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelItemsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelItemsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserStoryResponseReel {
	int id;
	int latestReelMedia;
	int expiringAt;
	int seen;
	bool canReply;
	bool canReshare;
	String reelType;
	FeedUserStoryResponseReelUser user;
	List<FeedUserStoryResponseReelItemsItem> items;
	int prefetchCount;
	bool hasBestiesMedia;
	int mediaCount;
	bool hasPrideMedia;
	FeedUserStoryResponseReel();
	factory FeedUserStoryResponseReel.fromJson(Map<String, dynamic> json) => _$FeedUserStoryResponseReelFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserStoryResponseReelToJson(this);
}
