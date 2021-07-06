import 'package:json_annotation/json_annotation.dart';
part 'search_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class UsersSearchResponse {
	int numResults;
	List<UsersSearchResponseUsersItem> users;
	bool hasMore;
	String rankToken;
	String status;
	UsersSearchResponse();
	factory UsersSearchResponse.fromJson(Map<String, dynamic> json) => _$UsersSearchResponseFromJson(json);
	Map<String, dynamic> toJson() => _$UsersSearchResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class UsersSearchResponseUsersItemFriendshipStatus {
	bool following;
	bool isPrivate;
	bool incomingRequest;
	bool outgoingRequest;
	bool isBestie;
	bool isRestricted;
	UsersSearchResponseUsersItemFriendshipStatus();
	factory UsersSearchResponseUsersItemFriendshipStatus.fromJson(Map<String, dynamic> json) => _$UsersSearchResponseUsersItemFriendshipStatusFromJson(json);
	Map<String, dynamic> toJson() => _$UsersSearchResponseUsersItemFriendshipStatusToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UsersSearchResponseUsersItem {
	int pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	UsersSearchResponseUsersItemFriendshipStatus friendshipStatus;
	bool isVerified;
	bool hasAnonymousProfilePicture;
	int followerCount;
	String byline;
	String socialContext;
	String searchSocialContext;
	int mutualFollowersCount;
	int latestReelMedia;
	int unseenCount;
	UsersSearchResponseUsersItem();
	factory UsersSearchResponseUsersItem.fromJson(Map<String, dynamic> json) => _$UsersSearchResponseUsersItemFromJson(json);
	Map<String, dynamic> toJson() => _$UsersSearchResponseUsersItemToJson(this);
}
