import 'package:json_annotation/json_annotation.dart';

part 'reels_tray_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponse {
  List<FeedReelsTrayResponseTrayItem> tray;
  String storyRankingToken;
  List broadcasts;
  int faceFilterNuxVersion;
  bool storiesViewerGesturesNuxEligible;
  bool hasNewNuxStory;
  String status;

  FeedReelsTrayResponse();

  factory FeedReelsTrayResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FeedReelsTrayResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemUserFriendshipStatus {
  bool muting;
  bool isMutingReel;
  bool following;
  bool outgoingRequest;

  FeedReelsTrayResponseTrayItemUserFriendshipStatus();

  factory FeedReelsTrayResponseTrayItemUserFriendshipStatus.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemUserFriendshipStatusFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemUserFriendshipStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemUser {
  int pk;
  String username;
  String fullName;
  bool isPrivate;
  String profilePicUrl;
  String profilePicId;
  bool isVerified;
  FeedReelsTrayResponseTrayItemUserFriendshipStatus friendshipStatus;

  FeedReelsTrayResponseTrayItemUser();

  factory FeedReelsTrayResponseTrayItemUser.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemUserFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem {
  int width;
  int height;
  String url;
  List<int> estimatedScansSizes;

  FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem();

  factory FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItemFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItemToJson(
          this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemImageVersions2 {
  List<FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem>
      candidates;

  FeedReelsTrayResponseTrayItemItemsItemImageVersions2();

  factory FeedReelsTrayResponseTrayItemItemsItemImageVersions2.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2FromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem {
  int type;
  int width;
  int height;
  String url;
  String id;

  FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem();

  factory FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemUser {
  int pk;

  FeedReelsTrayResponseTrayItemItemsItemUser();

  factory FeedReelsTrayResponseTrayItemItemsItemUser.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemUserFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo {
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
  dynamic igArtist;
  String placeholderProfilePicUrl;
  bool shouldMuteAudio;
  String shouldMuteAudioReason;
  int overlapDurationInMs;
  int audioAssetStartTimeInMs;

  FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo();

  factory FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfoFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfoToJson(
          this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem {
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
  FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo
      musicAssetInfo;

  FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem();

  factory FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemToJson(
          this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem {
  double x;
  double y;
  int z;
  double width;
  double height;
  double rotation;
  int isPinned;
  int isHidden;
  int isSticker;
  String mediaId;
  String productType;

  FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem();

  factory FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItemItemsItem {
  int takenAt;
  int pk;
  String id;
  int deviceTimestamp;
  int mediaType;
  String code;
  String clientCacheKey;
  int filterType;
  FeedReelsTrayResponseTrayItemItemsItemImageVersions2 imageVersions2;
  int originalWidth;
  int originalHeight;
  int isDashEligible;
  String videoDashManifest;
  String videoCodec;
  int numberOfQualities;
  List<FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem> videoVersions;
  bool hasAudio;
  double videoDuration;
  FeedReelsTrayResponseTrayItemItemsItemUser user;
  bool captionIsEdited;
  double captionPosition;
  bool isReelMedia;
  bool photoOfYou;
  dynamic caption;
  bool canViewerSave;
  String organicTrackingToken;
  int expiringAt;
  bool canReshare;
  bool canReply;
  bool isPrideMedia;
  List<FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem>
      storyMusicStickers;
  bool supportsReelReactions;
  bool showOneTapFbShareTooltip;
  int hasSharedToFb;
  List<FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem> storyFeedMedia;

  FeedReelsTrayResponseTrayItemItemsItem();

  factory FeedReelsTrayResponseTrayItemItemsItem.fromJson(
          Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemItemsItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FeedReelsTrayResponseTrayItemItemsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedReelsTrayResponseTrayItem {
  int id;
  int latestReelMedia;
  int expiringAt;
  int seen;
  bool canReply;
  bool canReshare;
  String reelType;
  FeedReelsTrayResponseTrayItemUser user;
  int rankedPosition;
  int seenRankedPosition;
  bool muted;
  int prefetchCount;
  bool hasBestiesMedia;
  int mediaCount;
  List<int> mediaIds;
  bool hasPrideMedia;
  List<FeedReelsTrayResponseTrayItemItemsItem> items;

  FeedReelsTrayResponseTrayItem();

  factory FeedReelsTrayResponseTrayItem.fromJson(Map<String, dynamic> json) =>
      _$FeedReelsTrayResponseTrayItemFromJson(json);

  Map<String, dynamic> toJson() => _$FeedReelsTrayResponseTrayItemToJson(this);
}
