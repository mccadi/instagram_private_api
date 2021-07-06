import 'package:json_annotation/json_annotation.dart';
part 'blocked_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaBlockedResponse {
	List mediaIds;
	String status;
	MediaBlockedResponse();
	factory MediaBlockedResponse.fromJson(Map<String, dynamic> json) => _$MediaBlockedResponseFromJson(json);
	Map<String, dynamic> toJson() => _$MediaBlockedResponseToJson(this);
}

