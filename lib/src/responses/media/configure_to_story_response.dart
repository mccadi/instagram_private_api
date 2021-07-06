import 'package:json_annotation/json_annotation.dart';
part 'configure_to_story_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToStoryResponse {
	MediaConfigureToStoryResponseMedia media;
	String uploadId;
	String status;
	MediaConfigureToStoryResponse();
	factory MediaConfigureToStoryResponse.fromJson(Map<String, dynamic> json) => _$MediaConfigureToStoryResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToStoryResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToStoryResponseMediaImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	MediaConfigureToStoryResponseMediaImageVersions2CandidatesItem();
	factory MediaConfigureToStoryResponseMediaImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureToStoryResponseMediaImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToStoryResponseMediaImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToStoryResponseMediaImageVersions2 {
	List<MediaConfigureToStoryResponseMediaImageVersions2CandidatesItem> candidates;
	MediaConfigureToStoryResponseMediaImageVersions2();
	factory MediaConfigureToStoryResponseMediaImageVersions2.fromJson(Map<String, dynamic> json) => _$MediaConfigureToStoryResponseMediaImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToStoryResponseMediaImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToStoryResponseMediaUser {
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
	MediaConfigureToStoryResponseMediaUser();
	factory MediaConfigureToStoryResponseMediaUser.fromJson(Map<String, dynamic> json) => _$MediaConfigureToStoryResponseMediaUserFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToStoryResponseMediaUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureToStoryResponseMedia {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	MediaConfigureToStoryResponseMediaImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	MediaConfigureToStoryResponseMediaUser user;
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
	MediaConfigureToStoryResponseMedia();
	factory MediaConfigureToStoryResponseMedia.fromJson(Map<String, dynamic> json) => _$MediaConfigureToStoryResponseMediaFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureToStoryResponseMediaToJson(this);
}
