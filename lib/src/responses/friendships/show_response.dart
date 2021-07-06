import 'package:json_annotation/json_annotation.dart';
part 'show_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FriendshipsShowResponse {
	bool following;
	bool followedBy;
	bool blocking;
	bool muting;
	bool isPrivate;
	bool incomingRequest;
	bool outgoingRequest;
	bool isBlockingReel;
	bool isMutingReel;
	bool isBestie;
	bool isRestricted;
	String status;
	FriendshipsShowResponse();
	factory FriendshipsShowResponse.fromJson(Map<String, dynamic> json) => _$FriendshipsShowResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FriendshipsShowResponseToJson(this);
}

