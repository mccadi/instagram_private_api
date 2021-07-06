import 'package:json_annotation/json_annotation.dart';
part 'inbox_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponse {
	NewsInboxResponseAymf aymf;
	NewsInboxResponseCounts counts;
	List<NewsInboxResponseFriendRequestStoriesItem> friendRequestStories;
	List newStories;
	List<NewsInboxResponseOldStoriesItem> oldStories;
	int continuationToken;
	dynamic subscription;
	NewsInboxResponsePartition partition;
	String status;
	NewsInboxResponse();
	factory NewsInboxResponse.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseAymfItemsItemUser {
	String pk;
	String username;
	String fullName;
	bool isPrivate;
	String profilePicUrl;
	String profilePicId;
	bool isVerified;
	bool hasAnonymousProfilePicture;
	NewsInboxResponseAymfItemsItemUser();
	factory NewsInboxResponseAymfItemsItemUser.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseAymfItemsItemUserFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseAymfItemsItemUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseAymfItemsItem {
	NewsInboxResponseAymfItemsItemUser user;
	String algorithm;
	String socialContext;
	String icon;
	String caption;
	List mediaIds;
	List thumbnailUrls;
	List largeUrls;
	List mediaInfos;
	double value;
	bool followedBy;
	bool isNewSuggestion;
	String uuid;
	NewsInboxResponseAymfItemsItem();
	factory NewsInboxResponseAymfItemsItem.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseAymfItemsItemFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseAymfItemsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseAymf {
	List<NewsInboxResponseAymfItemsItem> items;
	bool moreAvailable;
	NewsInboxResponseAymf();
	factory NewsInboxResponseAymf.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseAymfFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseAymfToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseCounts {
	int campaignNotification;
	int usertags;
	int commentLikes;
	int likes;
	int comments;
	int relationships;
	int photosOfYou;
	int requests;
	NewsInboxResponseCounts();
	factory NewsInboxResponseCounts.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseCountsFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseCountsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseFriendRequestStoriesItemArgs {
	int requestCount;
	bool clicked;
	NewsInboxResponseFriendRequestStoriesItemArgs();
	factory NewsInboxResponseFriendRequestStoriesItemArgs.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseFriendRequestStoriesItemArgsFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseFriendRequestStoriesItemArgsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseFriendRequestStoriesItemCounts {
	NewsInboxResponseFriendRequestStoriesItemCounts();
	factory NewsInboxResponseFriendRequestStoriesItemCounts.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseFriendRequestStoriesItemCountsFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseFriendRequestStoriesItemCountsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseFriendRequestStoriesItem {
	int type;
	NewsInboxResponseFriendRequestStoriesItemArgs args;
	NewsInboxResponseFriendRequestStoriesItemCounts counts;
	NewsInboxResponseFriendRequestStoriesItem();
	factory NewsInboxResponseFriendRequestStoriesItem.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseFriendRequestStoriesItemFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseFriendRequestStoriesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseOldStoriesItemArgsLinksItem {
	int start;
	int end;
	String type;
	String id;
	NewsInboxResponseOldStoriesItemArgsLinksItem();
	factory NewsInboxResponseOldStoriesItemArgsLinksItem.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseOldStoriesItemArgsLinksItemFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseOldStoriesItemArgsLinksItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseOldStoriesItemArgs {
	String text;
	List<NewsInboxResponseOldStoriesItemArgsLinksItem> links;
	int profileId;
	String profileImage;
	List<String> actions;
	String destination;
	double timestamp;
	String tuuid;
	bool clicked;
	String profileName;
	NewsInboxResponseOldStoriesItemArgs();
	factory NewsInboxResponseOldStoriesItemArgs.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseOldStoriesItemArgsFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseOldStoriesItemArgsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseOldStoriesItemCounts {
	NewsInboxResponseOldStoriesItemCounts();
	factory NewsInboxResponseOldStoriesItemCounts.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseOldStoriesItemCountsFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseOldStoriesItemCountsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponseOldStoriesItem {
	int type;
	int storyType;
	NewsInboxResponseOldStoriesItemArgs args;
	NewsInboxResponseOldStoriesItemCounts counts;
	String pk;
	NewsInboxResponseOldStoriesItem();
	factory NewsInboxResponseOldStoriesItem.fromJson(Map<String, dynamic> json) => _$NewsInboxResponseOldStoriesItemFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponseOldStoriesItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponsePartitionTimeBucket {
	List<String> headers;
	List<int> indices;
	NewsInboxResponsePartitionTimeBucket();
	factory NewsInboxResponsePartitionTimeBucket.fromJson(Map<String, dynamic> json) => _$NewsInboxResponsePartitionTimeBucketFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponsePartitionTimeBucketToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsInboxResponsePartition {
	NewsInboxResponsePartitionTimeBucket timeBucket;
	NewsInboxResponsePartition();
	factory NewsInboxResponsePartition.fromJson(Map<String, dynamic> json) => _$NewsInboxResponsePartitionFromJson(json);
	Map<String, dynamic> toJson() => _$NewsInboxResponsePartitionToJson(this);
}
