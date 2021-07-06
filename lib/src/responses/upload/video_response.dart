import 'package:json_annotation/json_annotation.dart';
part 'video_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class UploadVideoResponse {
	UploadVideoResponseXsharingNonces xsharingNonces;
	String status;
	UploadVideoResponse();
	factory UploadVideoResponse.fromJson(Map<String, dynamic> json) => _$UploadVideoResponseFromJson(json);
	Map<String, dynamic> toJson() => _$UploadVideoResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class UploadVideoResponseXsharingNonces {
	UploadVideoResponseXsharingNonces();
	factory UploadVideoResponseXsharingNonces.fromJson(Map<String, dynamic> json) => _$UploadVideoResponseXsharingNoncesFromJson(json);
	Map<String, dynamic> toJson() => _$UploadVideoResponseXsharingNoncesToJson(this);
}
