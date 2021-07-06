import 'package:json_annotation/json_annotation.dart';
part 'photo_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class UploadPhotoResponse {
	String uploadId;
	UploadPhotoResponseXsharingNonces xsharingNonces;
	String status;
	UploadPhotoResponse();
	factory UploadPhotoResponse.fromJson(Map<String, dynamic> json) => _$UploadPhotoResponseFromJson(json);
	Map<String, dynamic> toJson() => _$UploadPhotoResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class UploadPhotoResponseXsharingNonces {
	UploadPhotoResponseXsharingNonces();
	factory UploadPhotoResponseXsharingNonces.fromJson(Map<String, dynamic> json) => _$UploadPhotoResponseXsharingNoncesFromJson(json);
	Map<String, dynamic> toJson() => _$UploadPhotoResponseXsharingNoncesToJson(this);
}
