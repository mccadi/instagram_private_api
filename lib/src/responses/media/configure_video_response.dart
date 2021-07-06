import 'package:json_annotation/json_annotation.dart';
part 'configure_video_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponse {
	MediaConfigureVideoResponseMedia media;
	String uploadId;
	String status;
	MediaConfigureVideoResponse();
	factory MediaConfigureVideoResponse.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	MediaConfigureVideoResponseMediaImageVersions2CandidatesItem();
	factory MediaConfigureVideoResponseMediaImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaImageVersions2 {
	List<MediaConfigureVideoResponseMediaImageVersions2CandidatesItem> candidates;
	MediaConfigureVideoResponseMediaImageVersions2();
	factory MediaConfigureVideoResponseMediaImageVersions2.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaVideoVersionsItem {
	int type;
	int width;
	int height;
	String url;
	String id;
	MediaConfigureVideoResponseMediaVideoVersionsItem();
	factory MediaConfigureVideoResponseMediaVideoVersionsItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaVideoVersionsItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaVideoVersionsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool hasAnonymousProfilePicture;
	bool canBoostPost;
	bool canSeeOrganicInsights;
	bool showInsightsTerms;
	String reelAutoArchive;
	bool isUnpublished;
	String allowedCommenterType;
	MediaConfigureVideoResponseMediaUser();
	factory MediaConfigureVideoResponseMediaUser.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaUserFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaCaptionUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool hasAnonymousProfilePicture;
	bool canBoostPost;
	bool canSeeOrganicInsights;
	bool showInsightsTerms;
	String reelAutoArchive;
	bool isUnpublished;
	String allowedCommenterType;
	MediaConfigureVideoResponseMediaCaptionUser();
	factory MediaConfigureVideoResponseMediaCaptionUser.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaCaptionUserFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaCaptionUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMediaCaption {
	int pk;
	int userId;
	String text;
	int type;
	int createdAt;
	int createdAtUtc;
	String contentType;
	String status;
	int bitFlags;
	MediaConfigureVideoResponseMediaCaptionUser user;
	bool didReportAsSpam;
	bool shareEnabled;
	int mediaId;
	bool hasTranslation;
	MediaConfigureVideoResponseMediaCaption();
	factory MediaConfigureVideoResponseMediaCaption.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaCaptionFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaCaptionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureVideoResponseMedia {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	MediaConfigureVideoResponseMediaImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	int isDashEligible;
	String videoDashManifest;
	String videoCodec;
	int numberOfQualities;
	List<MediaConfigureVideoResponseMediaVideoVersionsItem> videoVersions;
	bool hasAudio;
	double videoDuration;
	MediaConfigureVideoResponseMediaUser user;
	bool canViewerReshare;
	bool captionIsEdited;
	bool commentLikesEnabled;
	bool commentThreadingEnabled;
	bool hasMoreComments;
	int maxNumVisiblePreviewComments;
	List previewComments;
	bool canViewMorePreviewComments;
	int commentCount;
	bool photoOfYou;
	MediaConfigureVideoResponseMediaCaption caption;
	bool canViewerSave;
	String organicTrackingToken;
	MediaConfigureVideoResponseMedia();
	factory MediaConfigureVideoResponseMedia.fromJson(Map<String, dynamic> json) => _$MediaConfigureVideoResponseMediaFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureVideoResponseMediaToJson(this);
}
