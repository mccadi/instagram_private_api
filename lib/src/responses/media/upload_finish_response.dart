import 'package:json_annotation/json_annotation.dart';
part 'upload_finish_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaUploadFinishResponse {
	String status;
	MediaUploadFinishResponse();
	factory MediaUploadFinishResponse.fromJson(Map<String, dynamic> json) => _$MediaUploadFinishResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaUploadFinishResponseToJson(this);
}

