import 'package:json_annotation/json_annotation.dart';
part 'highlights_tray_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightsHighlightsTrayResponse {
	List<HighlightsHighlightsTrayResponseTrayItem> tray;
	bool showEmptyState;
	String status;
	HighlightsHighlightsTrayResponse();
	factory HighlightsHighlightsTrayResponse.fromJson(Map<String, dynamic> json) => _$HighlightsHighlightsTrayResponseFromJson(json);
	Map<String, dynamic> toJson() => _$HighlightsHighlightsTrayResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion {
	int width;
	int height;
	String url;
	List<int> estimatedScansSizes;
	HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion();
	factory HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion.fromJson(Map<String, dynamic> json) => _$HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersionFromJson(json);
	Map<String, dynamic> toJson() => _$HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightsHighlightsTrayResponseTrayItemCoverMedia {
	HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion croppedImageVersion;
	List cropRect;
	String mediaId;
	HighlightsHighlightsTrayResponseTrayItemCoverMedia();
	factory HighlightsHighlightsTrayResponseTrayItemCoverMedia.fromJson(Map<String, dynamic> json) => _$HighlightsHighlightsTrayResponseTrayItemCoverMediaFromJson(json);
	Map<String, dynamic> toJson() => _$HighlightsHighlightsTrayResponseTrayItemCoverMediaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightsHighlightsTrayResponseTrayItemUser {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	HighlightsHighlightsTrayResponseTrayItemUser();
	factory HighlightsHighlightsTrayResponseTrayItemUser.fromJson(Map<String, dynamic> json) => _$HighlightsHighlightsTrayResponseTrayItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$HighlightsHighlightsTrayResponseTrayItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HighlightsHighlightsTrayResponseTrayItem {
	String id;
	int latestReelMedia;
	dynamic seen;
	bool canReply;
	dynamic canReshare;
	String reelType;
	HighlightsHighlightsTrayResponseTrayItemCoverMedia coverMedia;
	HighlightsHighlightsTrayResponseTrayItemUser user;
	int rankedPosition;
	String title;
	int seenRankedPosition;
	int prefetchCount;
	int mediaCount;
	bool hasPrideMedia;
	HighlightsHighlightsTrayResponseTrayItem();
	factory HighlightsHighlightsTrayResponseTrayItem.fromJson(Map<String, dynamic> json) => _$HighlightsHighlightsTrayResponseTrayItemFromJson(json);
	Map<String, dynamic> toJson() => _$HighlightsHighlightsTrayResponseTrayItemToJson(this);
}
