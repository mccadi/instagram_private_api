import 'package:json_annotation/json_annotation.dart';
part 'direct_thread_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FeedDirectThreadResponse {
	Map<String, List> thread;
	String status;
	FeedDirectThreadResponse();
	factory FeedDirectThreadResponse.fromJson(Map<String, dynamic> json) => _$FeedDirectThreadResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FeedDirectThreadResponseToJson(this);
}

