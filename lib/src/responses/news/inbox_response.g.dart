// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inbox_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsInboxResponse _$NewsInboxResponseFromJson(Map<String, dynamic> json) {
  return NewsInboxResponse()
    ..aymf = json['aymf'] == null
        ? null
        : NewsInboxResponseAymf.fromJson(json['aymf'] as Map<String, dynamic>)
    ..counts = json['counts'] == null
        ? null
        : NewsInboxResponseCounts.fromJson(
            json['counts'] as Map<String, dynamic>)
    ..friendRequestStories = (json['friend_request_stories'] as List)
        ?.map((e) => e == null
            ? null
            : NewsInboxResponseFriendRequestStoriesItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..newStories = json['new_stories'] as List
    ..oldStories = (json['old_stories'] as List)
        ?.map((e) => e == null
            ? null
            : NewsInboxResponseOldStoriesItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..continuationToken = json['continuation_token'] as int
    ..subscription = json['subscription']
    ..partition = json['partition'] == null
        ? null
        : NewsInboxResponsePartition.fromJson(
            json['partition'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$NewsInboxResponseToJson(NewsInboxResponse instance) =>
    <String, dynamic>{
      'aymf': instance.aymf,
      'counts': instance.counts,
      'friend_request_stories': instance.friendRequestStories,
      'new_stories': instance.newStories,
      'old_stories': instance.oldStories,
      'continuation_token': instance.continuationToken,
      'subscription': instance.subscription,
      'partition': instance.partition,
      'status': instance.status,
    };

NewsInboxResponseAymfItemsItemUser _$NewsInboxResponseAymfItemsItemUserFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponseAymfItemsItemUser()
    ..pk = json['pk'] as String
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture =
        json['has_anonymous_profile_picture'] as bool;
}

Map<String, dynamic> _$NewsInboxResponseAymfItemsItemUserToJson(
        NewsInboxResponseAymfItemsItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
    };

NewsInboxResponseAymfItemsItem _$NewsInboxResponseAymfItemsItemFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponseAymfItemsItem()
    ..user = json['user'] == null
        ? null
        : NewsInboxResponseAymfItemsItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..algorithm = json['algorithm'] as String
    ..socialContext = json['social_context'] as String
    ..icon = json['icon'] as String
    ..caption = json['caption'] as String
    ..mediaIds = json['media_ids'] as List
    ..thumbnailUrls = json['thumbnail_urls'] as List
    ..largeUrls = json['large_urls'] as List
    ..mediaInfos = json['media_infos'] as List
    ..value = (json['value'] as num)?.toDouble()
    ..followedBy = json['followed_by'] as bool
    ..isNewSuggestion = json['is_new_suggestion'] as bool
    ..uuid = json['uuid'] as String;
}

Map<String, dynamic> _$NewsInboxResponseAymfItemsItemToJson(
        NewsInboxResponseAymfItemsItem instance) =>
    <String, dynamic>{
      'user': instance.user,
      'algorithm': instance.algorithm,
      'social_context': instance.socialContext,
      'icon': instance.icon,
      'caption': instance.caption,
      'media_ids': instance.mediaIds,
      'thumbnail_urls': instance.thumbnailUrls,
      'large_urls': instance.largeUrls,
      'media_infos': instance.mediaInfos,
      'value': instance.value,
      'followed_by': instance.followedBy,
      'is_new_suggestion': instance.isNewSuggestion,
      'uuid': instance.uuid,
    };

NewsInboxResponseAymf _$NewsInboxResponseAymfFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponseAymf()
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : NewsInboxResponseAymfItemsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..moreAvailable = json['more_available'] as bool;
}

Map<String, dynamic> _$NewsInboxResponseAymfToJson(
        NewsInboxResponseAymf instance) =>
    <String, dynamic>{
      'items': instance.items,
      'more_available': instance.moreAvailable,
    };

NewsInboxResponseCounts _$NewsInboxResponseCountsFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponseCounts()
    ..campaignNotification = json['campaign_notification'] as int
    ..usertags = json['usertags'] as int
    ..commentLikes = json['comment_likes'] as int
    ..likes = json['likes'] as int
    ..comments = json['comments'] as int
    ..relationships = json['relationships'] as int
    ..photosOfYou = json['photos_of_you'] as int
    ..requests = json['requests'] as int;
}

Map<String, dynamic> _$NewsInboxResponseCountsToJson(
        NewsInboxResponseCounts instance) =>
    <String, dynamic>{
      'campaign_notification': instance.campaignNotification,
      'usertags': instance.usertags,
      'comment_likes': instance.commentLikes,
      'likes': instance.likes,
      'comments': instance.comments,
      'relationships': instance.relationships,
      'photos_of_you': instance.photosOfYou,
      'requests': instance.requests,
    };

NewsInboxResponseFriendRequestStoriesItemArgs
    _$NewsInboxResponseFriendRequestStoriesItemArgsFromJson(
        Map<String, dynamic> json) {
  return NewsInboxResponseFriendRequestStoriesItemArgs()
    ..requestCount = json['request_count'] as int
    ..clicked = json['clicked'] as bool;
}

Map<String, dynamic> _$NewsInboxResponseFriendRequestStoriesItemArgsToJson(
        NewsInboxResponseFriendRequestStoriesItemArgs instance) =>
    <String, dynamic>{
      'request_count': instance.requestCount,
      'clicked': instance.clicked,
    };

NewsInboxResponseFriendRequestStoriesItemCounts
    _$NewsInboxResponseFriendRequestStoriesItemCountsFromJson(
        Map<String, dynamic> json) {
  return NewsInboxResponseFriendRequestStoriesItemCounts();
}

Map<String, dynamic> _$NewsInboxResponseFriendRequestStoriesItemCountsToJson(
        NewsInboxResponseFriendRequestStoriesItemCounts instance) =>
    <String, dynamic>{};

NewsInboxResponseFriendRequestStoriesItem
    _$NewsInboxResponseFriendRequestStoriesItemFromJson(
        Map<String, dynamic> json) {
  return NewsInboxResponseFriendRequestStoriesItem()
    ..type = json['type'] as int
    ..args = json['args'] == null
        ? null
        : NewsInboxResponseFriendRequestStoriesItemArgs.fromJson(
            json['args'] as Map<String, dynamic>)
    ..counts = json['counts'] == null
        ? null
        : NewsInboxResponseFriendRequestStoriesItemCounts.fromJson(
            json['counts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NewsInboxResponseFriendRequestStoriesItemToJson(
        NewsInboxResponseFriendRequestStoriesItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'args': instance.args,
      'counts': instance.counts,
    };

NewsInboxResponseOldStoriesItemArgsLinksItem
    _$NewsInboxResponseOldStoriesItemArgsLinksItemFromJson(
        Map<String, dynamic> json) {
  return NewsInboxResponseOldStoriesItemArgsLinksItem()
    ..start = json['start'] as int
    ..end = json['end'] as int
    ..type = json['type'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$NewsInboxResponseOldStoriesItemArgsLinksItemToJson(
        NewsInboxResponseOldStoriesItemArgsLinksItem instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'type': instance.type,
      'id': instance.id,
    };

NewsInboxResponseOldStoriesItemArgs
    _$NewsInboxResponseOldStoriesItemArgsFromJson(Map<String, dynamic> json) {
  return NewsInboxResponseOldStoriesItemArgs()
    ..text = json['text'] as String
    ..links = (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : NewsInboxResponseOldStoriesItemArgsLinksItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..profileId = json['profile_id'] as int
    ..profileImage = json['profile_image'] as String
    ..actions = (json['actions'] as List)?.map((e) => e as String)?.toList()
    ..destination = json['destination'] as String
    ..timestamp = (json['timestamp'] as num)?.toDouble()
    ..tuuid = json['tuuid'] as String
    ..clicked = json['clicked'] as bool
    ..profileName = json['profile_name'] as String;
}

Map<String, dynamic> _$NewsInboxResponseOldStoriesItemArgsToJson(
        NewsInboxResponseOldStoriesItemArgs instance) =>
    <String, dynamic>{
      'text': instance.text,
      'links': instance.links,
      'profile_id': instance.profileId,
      'profile_image': instance.profileImage,
      'actions': instance.actions,
      'destination': instance.destination,
      'timestamp': instance.timestamp,
      'tuuid': instance.tuuid,
      'clicked': instance.clicked,
      'profile_name': instance.profileName,
    };

NewsInboxResponseOldStoriesItemCounts
    _$NewsInboxResponseOldStoriesItemCountsFromJson(Map<String, dynamic> json) {
  return NewsInboxResponseOldStoriesItemCounts();
}

Map<String, dynamic> _$NewsInboxResponseOldStoriesItemCountsToJson(
        NewsInboxResponseOldStoriesItemCounts instance) =>
    <String, dynamic>{};

NewsInboxResponseOldStoriesItem _$NewsInboxResponseOldStoriesItemFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponseOldStoriesItem()
    ..type = json['type'] as int
    ..storyType = json['story_type'] as int
    ..args = json['args'] == null
        ? null
        : NewsInboxResponseOldStoriesItemArgs.fromJson(
            json['args'] as Map<String, dynamic>)
    ..counts = json['counts'] == null
        ? null
        : NewsInboxResponseOldStoriesItemCounts.fromJson(
            json['counts'] as Map<String, dynamic>)
    ..pk = json['pk'] as String;
}

Map<String, dynamic> _$NewsInboxResponseOldStoriesItemToJson(
        NewsInboxResponseOldStoriesItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'story_type': instance.storyType,
      'args': instance.args,
      'counts': instance.counts,
      'pk': instance.pk,
    };

NewsInboxResponsePartitionTimeBucket
    _$NewsInboxResponsePartitionTimeBucketFromJson(Map<String, dynamic> json) {
  return NewsInboxResponsePartitionTimeBucket()
    ..headers = (json['headers'] as List)?.map((e) => e as String)?.toList()
    ..indices = (json['indices'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$NewsInboxResponsePartitionTimeBucketToJson(
        NewsInboxResponsePartitionTimeBucket instance) =>
    <String, dynamic>{
      'headers': instance.headers,
      'indices': instance.indices,
    };

NewsInboxResponsePartition _$NewsInboxResponsePartitionFromJson(
    Map<String, dynamic> json) {
  return NewsInboxResponsePartition()
    ..timeBucket = json['time_bucket'] == null
        ? null
        : NewsInboxResponsePartitionTimeBucket.fromJson(
            json['time_bucket'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NewsInboxResponsePartitionToJson(
        NewsInboxResponsePartition instance) =>
    <String, dynamic>{
      'time_bucket': instance.timeBucket,
    };
