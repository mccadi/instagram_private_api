import 'package:json_annotation/json_annotation.dart';
part 'user_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponse {
	List<FeedUserResponseItemsItem> items;
	int numResults;
	bool moreAvailable;
	String nextMaxId;
	bool autoLoadMoreEnabled;
	String status;
	FeedUserResponse();
	factory FeedUserResponse.fromJson(Map<String, dynamic> json) => _$FeedUserResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	FeedUserResponseItemsItemImageVersions2CandidatesItem();
	factory FeedUserResponseItemsItemImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemImageVersions2 {
	List<FeedUserResponseItemsItemImageVersions2CandidatesItem> candidates;
	FeedUserResponseItemsItemImageVersions2();
	factory FeedUserResponseItemsItemImageVersions2.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemUser {
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
	int latestReelMedia;
	FeedUserResponseItemsItemUser();
	factory FeedUserResponseItemsItemUser.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemCaptionUser {
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
	int latestReelMedia;
	FeedUserResponseItemsItemCaptionUser();
	factory FeedUserResponseItemsItemCaptionUser.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemCaptionUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemCaptionUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemCaption {
	int pk;
	int userId;
	String text;
	int type;
	int createdAt;
	int createdAtUtc;
	String contentType;
	String status;
	int bitFlags;
	FeedUserResponseItemsItemCaptionUser user;
	bool didReportAsSpam;
	bool shareEnabled;
	int mediaId;
	FeedUserResponseItemsItemCaption();
	factory FeedUserResponseItemsItemCaption.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemCaptionFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemCaptionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem();
	factory FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemCarouselMediaItemImageVersions2 {
	List<FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem> candidates;
	FeedUserResponseItemsItemCarouselMediaItemImageVersions2();
	factory FeedUserResponseItemsItemCarouselMediaItemImageVersions2.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemCarouselMediaItem {
	String id;
	int mediaType;
	FeedUserResponseItemsItemCarouselMediaItemImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	int pk;
	String carouselParentId;
	FeedUserResponseItemsItemCarouselMediaItem();
	factory FeedUserResponseItemsItemCarouselMediaItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemCarouselMediaItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemCarouselMediaItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemLocation {
	int pk;
	String name;
	String address;
	String city;
	String shortName;
	double lng;
	double lat;
	String externalSource;
	int facebookPlacesId;
	FeedUserResponseItemsItemLocation();
	factory FeedUserResponseItemsItemLocation.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemLocationFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemLocationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemVideoVersionsItem {
	int type;
	int width;
	int height;
	String url;
	String id;
	FeedUserResponseItemsItemVideoVersionsItem();
	factory FeedUserResponseItemsItemVideoVersionsItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemVideoVersionsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemVideoVersionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemFacepileTopLikersItem {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	FeedUserResponseItemsItemFacepileTopLikersItem();
	factory FeedUserResponseItemsItemFacepileTopLikersItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemFacepileTopLikersItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemFacepileTopLikersItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemUsertagsInItemUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	FeedUserResponseItemsItemUsertagsInItemUser();
	factory FeedUserResponseItemsItemUsertagsInItemUser.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemUsertagsInItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemUsertagsInItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemUsertagsInItem {
	FeedUserResponseItemsItemUsertagsInItemUser user;
	List<double> position;
	dynamic startTimeInVideoInSec;
	dynamic durationInVideoInSec;
	FeedUserResponseItemsItemUsertagsInItem();
	factory FeedUserResponseItemsItemUsertagsInItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemUsertagsInItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemUsertagsInItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItemUsertags {
	List<FeedUserResponseItemsItemUsertagsInItem> IN;
	FeedUserResponseItemsItemUsertags();
	factory FeedUserResponseItemsItemUsertags.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemUsertagsFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemUsertagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeedUserResponseItemsItem {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	FeedUserResponseItemsItemImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	FeedUserResponseItemsItemUser user;
	bool canViewerReshare;
	bool captionIsEdited;
	bool directReplyToAuthorEnabled;
	bool commentLikesEnabled;
	bool commentThreadingEnabled;
	bool hasMoreComments;
	int maxNumVisiblePreviewComments;
	bool canViewMorePreviewComments;
	int commentCount;
	String inlineComposerDisplayCondition;
	int inlineComposerImpTriggerTime;
	int likeCount;
	bool hasLiked;
	List topLikers;
	bool photoOfYou;
	FeedUserResponseItemsItemCaption caption;
	bool canViewerSave;
	String organicTrackingToken;
	int carouselMediaCount;
	List<FeedUserResponseItemsItemCarouselMediaItem> carouselMedia;
	bool canSeeInsightsAsBrand;
	FeedUserResponseItemsItemLocation location;
	double lat;
	double lng;
	int isDashEligible;
	String videoDashManifest;
	String videoCodec;
	int numberOfQualities;
	List<FeedUserResponseItemsItemVideoVersionsItem> videoVersions;
	bool hasAudio;
	double videoDuration;
	double viewCount;
	List<FeedUserResponseItemsItemFacepileTopLikersItem> facepileTopLikers;
	FeedUserResponseItemsItemUsertags usertags;
	FeedUserResponseItemsItem();
	factory FeedUserResponseItemsItem.fromJson(Map<String, dynamic> json) => _$FeedUserResponseItemsItemFromJson(json);
	Map<String, dynamic> toJson() => _$FeedUserResponseItemsItemToJson(this);
}
