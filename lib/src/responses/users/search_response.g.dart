// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersSearchResponse _$UsersSearchResponseFromJson(Map<String, dynamic> json) {
  return UsersSearchResponse()
    ..numResults = json['num_results'] as int
    ..users = (json['users'] as List)
        ?.map((e) => e == null
            ? null
            : UsersSearchResponseUsersItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..hasMore = json['has_more'] as bool
    ..rankToken = json['rank_token'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$UsersSearchResponseToJson(
        UsersSearchResponse instance) =>
    <String, dynamic>{
      'num_results': instance.numResults,
      'users': instance.users,
      'has_more': instance.hasMore,
      'rank_token': instance.rankToken,
      'status': instance.status,
    };

UsersSearchResponseUsersItemFriendshipStatus
    _$UsersSearchResponseUsersItemFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return UsersSearchResponseUsersItemFriendshipStatus()
    ..following = json['following'] as bool
    ..isPrivate = json['is_private'] as bool
    ..incomingRequest = json['incoming_request'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool
    ..isBestie = json['is_bestie'] as bool
    ..isRestricted = json['is_restricted'] as bool;
}

Map<String, dynamic> _$UsersSearchResponseUsersItemFriendshipStatusToJson(
        UsersSearchResponseUsersItemFriendshipStatus instance) =>
    <String, dynamic>{
      'following': instance.following,
      'is_private': instance.isPrivate,
      'incoming_request': instance.incomingRequest,
      'outgoing_request': instance.outgoingRequest,
      'is_bestie': instance.isBestie,
      'is_restricted': instance.isRestricted,
    };

UsersSearchResponseUsersItem _$UsersSearchResponseUsersItemFromJson(
    Map<String, dynamic> json) {
  return UsersSearchResponseUsersItem()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : UsersSearchResponseUsersItemFriendshipStatus.fromJson(
            json['friendship_status'] as Map<String, dynamic>)
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..followerCount = json['follower_count'] as int
    ..byline = json['byline'] as String
    ..socialContext = json['social_context'] as String
    ..searchSocialContext = json['search_social_context'] as String
    ..mutualFollowersCount = json['mutual_followers_count'] as int
    ..latestReelMedia = json['latest_reel_media'] as int
    ..unseenCount = json['unseen_count'] as int;
}

Map<String, dynamic> _$UsersSearchResponseUsersItemToJson(
        UsersSearchResponseUsersItem instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'friendship_status': instance.friendshipStatus,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'follower_count': instance.followerCount,
      'byline': instance.byline,
      'social_context': instance.socialContext,
      'search_social_context': instance.searchSocialContext,
      'mutual_followers_count': instance.mutualFollowersCount,
      'latest_reel_media': instance.latestReelMedia,
      'unseen_count': instance.unseenCount,
    };
