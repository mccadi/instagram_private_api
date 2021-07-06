import 'package:json_annotation/json_annotation.dart';
part 'configure_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponse {
	MediaConfigureResponseMedia media;
	String uploadId;
	String status;
	MediaConfigureResponse();
	factory MediaConfigureResponse.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponseMediaImageVersions2CandidatesItem {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	MediaConfigureResponseMediaImageVersions2CandidatesItem();
	factory MediaConfigureResponseMediaImageVersions2CandidatesItem.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseMediaImageVersions2CandidatesItemFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseMediaImageVersions2CandidatesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponseMediaImageVersions2 {
	List<MediaConfigureResponseMediaImageVersions2CandidatesItem> candidates;
	MediaConfigureResponseMediaImageVersions2();
	factory MediaConfigureResponseMediaImageVersions2.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseMediaImageVersions2FromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseMediaImageVersions2ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponseMediaUser {
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
	MediaConfigureResponseMediaUser();
	factory MediaConfigureResponseMediaUser.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseMediaUserFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseMediaUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponseMediaFbUserTags {
	List IN;
	MediaConfigureResponseMediaFbUserTags();
	factory MediaConfigureResponseMediaFbUserTags.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseMediaFbUserTagsFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseMediaFbUserTagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MediaConfigureResponseMedia {
	int takenAt;
	int pk;
	String id;
	int deviceTimestamp;
	int mediaType;
	String code;
	String clientCacheKey;
	int filterType;
	MediaConfigureResponseMediaImageVersions2 imageVersions2;
	int originalWidth;
	int originalHeight;
	MediaConfigureResponseMediaUser user;
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
	dynamic caption;
	MediaConfigureResponseMediaFbUserTags fbUserTags;
	bool canViewerSave;
	String organicTrackingToken;
	MediaConfigureResponseMedia();
	factory MediaConfigureResponseMedia.fromJson(Map<String, dynamic> json) => _$MediaConfigureResponseMediaFromJson(json);
	Map<String, dynamic> toJson() => _$MediaConfigureResponseMediaToJson(this);
}
