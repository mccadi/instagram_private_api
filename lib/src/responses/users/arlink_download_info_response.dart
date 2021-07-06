import 'package:json_annotation/json_annotation.dart';
part 'arlink_download_info_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class UsersArlinkDownloadInfoResponse {
	String checksum;
	String downloadUrl;
	int fileSize;
	String version;
	String status;
	UsersArlinkDownloadInfoResponse();
	factory UsersArlinkDownloadInfoResponse.fromJson(Map<String, dynamic> json) => _$UsersArlinkDownloadInfoResponseFromJson(json);
	Map<String, dynamic> toJson() => _$UsersArlinkDownloadInfoResponseToJson(this);
}

