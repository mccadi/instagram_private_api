import 'package:json_annotation/json_annotation.dart';
part 'change_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class FriendshipsChangeResponse {
	FriendshipsChangeResponseFriendshipStatus friendshipStatus;
	String status;
	FriendshipsChangeResponse();
	factory FriendshipsChangeResponse.fromJson(Map<String, dynamic> json) => _$FriendshipsChangeResponseFromJson(json);
	Map<String, dynamic> toJson() => _$FriendshipsChangeResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class FriendshipsChangeResponseFriendshipStatus {
	bool following;
	bool followedBy;
	bool blocking;
	bool muting;
	bool isPrivate;
	bool incomingRequest;
	bool outgoingRequest;
	bool isBestie;
	bool isRestricted;
	FriendshipsChangeResponseFriendshipStatus();
	factory FriendshipsChangeResponseFriendshipStatus.fromJson(Map<String, dynamic> json) => _$FriendshipsChangeResponseFriendshipStatusFromJson(json);
	Map<String, dynamic> toJson() => _$FriendshipsChangeResponseFriendshipStatusToJson(this);
}
