// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_charities_nullstate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FundraiserStoryCharitiesNullstateResponse
    _$FundraiserStoryCharitiesNullstateResponseFromJson(
        Map<String, dynamic> json) {
  return FundraiserStoryCharitiesNullstateResponse()
    ..followedCharities = json['followed_charities'] as List
    ..suggestedCharities = (json['suggested_charities'] as List)
        ?.map((e) => e == null
            ? null
            : FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..searchedCharities = (json['searched_charities'] as List)
        ?.map((e) => e == null
            ? null
            : FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..maxId = json['max_id'] as String
    ..moreAvailable = json['more_available'] as bool
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FundraiserStoryCharitiesNullstateResponseToJson(
        FundraiserStoryCharitiesNullstateResponse instance) =>
    <String, dynamic>{
      'followed_charities': instance.followedCharities,
      'suggested_charities': instance.suggestedCharities,
      'searched_charities': instance.searchedCharities,
      'max_id': instance.maxId,
      'more_available': instance.moreAvailable,
      'status': instance.status,
    };

FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem
    _$FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItemFromJson(
        Map<String, dynamic> json) {
  return FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..mutualFollowersCount = json['mutual_followers_count'] as int;
}

Map<String, dynamic>
    _$FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItemToJson(
            FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
          'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
          'mutual_followers_count': instance.mutualFollowersCount,
        };

FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem
    _$FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItemFromJson(
        Map<String, dynamic> json) {
  return FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..mutualFollowersCount = json['mutual_followers_count'] as int
    ..profilePicId = json['profile_pic_id'] as String;
}

Map<String, dynamic>
    _$FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItemToJson(
            FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'is_verified': instance.isVerified,
          'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
          'mutual_followers_count': instance.mutualFollowersCount,
          'profile_pic_id': instance.profilePicId,
        };
