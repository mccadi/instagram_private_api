import 'package:json_annotation/json_annotation.dart';
part 'configure_to_video_story_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponse {
	MediaConfigureToVideoStoryResponseMedia media;
	String uploadId;
	String status;
	MediaConfigureToVideoStoryResponse();
	factory MediaConfigureToVideoStoryResponse.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem();
	factory MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponseMediaImageVersions2 {
	List<MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem> candidates;
	MediaConfigureToVideoStoryResponseMediaImageVersions2();
	factory MediaConfigureToVideoStoryResponseMediaImageVersions2.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseMediaImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseMediaImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponseMediaVideoVersionsItem {
	int type;
	int width;
	int height;
	String url;
	String id;
	MediaConfigureToVideoStoryResponseMediaVideoVersionsItem();
	factory MediaConfigureToVideoStoryResponseMediaVideoVersionsItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseMediaVideoVersionsItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseMediaVideoVersionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponseMediaUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	bool hasAnonymousProfilePicture;
	bool canBoostPost;
	bool canSeeOrganicInsights;
	bool showInsightsTerms;
	String reelAutoArchive;
	bool isUnpublished;
	String allowedCommenterType;
	MediaConfigureToVideoStoryResponseMediaUser();
	factory MediaConfigureToVideoStoryResponseMediaUser.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseMediaUserFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseMediaUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToVideoStoryResponseMedia {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	MediaConfigureToVideoStoryResponseMediaImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	List<MediaConfigureToVideoStoryResponseMediaVideoVersionsItem> videoVersions;
	bool hasAudio;
	double videoDuration;
	MediaConfigureToVideoStoryResponseMediaUser user;
	bool captionIsEdited;
	bool commentLikesEnabled;
	bool commentThreadingEnabled;
	bool hasMoreComments;
	int maxNumVisiblePreviewComments;
	List previewComments;
	bool canViewMorePreviewComments;
	int commentCount;
	double captionPosition;
	bool isReelMedia;
	int timezoneOffset;
	int likeCount;
	bool hasLiked;
	List likers;
	bool photoOfYou;
	dynamic caption;
	bool canViewerSave;
	String organicTrackingToken;
	int expiringAt;
	bool canReshare;
	bool canReply;
	bool isPrideMedia;
	bool storyIsSavedToArchive;
	List viewers;
	int viewerCount;
	dynamic viewerCursor;
	int totalViewerCount;
	List multiAuthorReelNames;
	bool supportsReelReactions;
	bool showOneTapFbShareTooltip;
	int hasSharedToFb;
	MediaConfigureToVideoStoryResponseMedia();
	factory MediaConfigureToVideoStoryResponseMedia.fromJson(Map<String, dynamic> json) => _$MediaConfigureToVideoStoryResponseMediaFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToVideoStoryResponseMediaToJson(this);
}
