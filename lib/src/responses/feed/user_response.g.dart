// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedUserResponse _$FeedUserResponseFromJson(Map<String, dynamic> json) {
  return FeedUserResponse()
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserResponseItemsItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..numResults = json['num_results'] as int
    ..moreAvailable = json['more_available'] as bool
    ..nextMaxId = json['next_max_id'] as String
    ..autoLoadMoreEnabled = json['auto_load_more_enabled'] as bool
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FeedUserResponseToJson(FeedUserResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'num_results': instance.numResults,
      'more_available': instance.moreAvailable,
      'next_max_id': instance.nextMaxId,
      'auto_load_more_enabled': instance.autoLoadMoreEnabled,
      'status': instance.status,
    };

FeedUserResponseItemsItemImageVersions2CandidatesItem
    _$FeedUserResponseItemsItemImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$FeedUserResponseItemsItemImageVersions2CandidatesItemToJson(
            FeedUserResponseItemsItemImageVersions2CandidatesItem instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedUserResponseItemsItemImageVersions2
    _$FeedUserResponseItemsItemImageVersions2FromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserResponseItemsItemImageVersions2CandidatesItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedUserResponseItemsItemImageVersions2ToJson(
        FeedUserResponseItemsItemImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

FeedUserResponseItemsItemUser _$FeedUserResponseItemsItemUserFromJson(
    Map<String, dynamic> json) {
  return FeedUserResponseItemsItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..isUnpublished = json['is_unpublished'] as bool
    ..isFavorite = json['is_favorite'] as bool
    ..latestReelMedia = json['latest_reel_media'] as int;
}

Map<String, dynamic> _$FeedUserResponseItemsItemUserToJson(
        FeedUserResponseItemsItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'is_unpublished': instance.isUnpublished,
      'is_favorite': instance.isFavorite,
      'latest_reel_media': instance.latestReelMedia,
    };

FeedUserResponseItemsItemCaptionUser
    _$FeedUserResponseItemsItemCaptionUserFromJson(Map<String, dynamic> json) {
  return FeedUserResponseItemsItemCaptionUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..isUnpublished = json['is_unpublished'] as bool
    ..isFavorite = json['is_favorite'] as bool
    ..latestReelMedia = json['latest_reel_media'] as int;
}

Map<String, dynamic> _$FeedUserResponseItemsItemCaptionUserToJson(
        FeedUserResponseItemsItemCaptionUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'is_unpublished': instance.isUnpublished,
      'is_favorite': instance.isFavorite,
      'latest_reel_media': instance.latestReelMedia,
    };

FeedUserResponseItemsItemCaption _$FeedUserResponseItemsItemCaptionFromJson(
    Map<String, dynamic> json) {
  return FeedUserResponseItemsItemCaption()
    ..pk = json['pk'] as int
    ..userId = json['user_id'] as int
    ..text = json['text'] as String
    ..type = json['type'] as int
    ..createdAt = json['created_at'] as int
    ..createdAtUtc = json['created_at_utc'] as int
    ..contentType = json['content_type'] as String
    ..status = json['status'] as String
    ..bitFlags = json['bit_flags'] as int
    ..user = json['user'] == null
        ? null
        : FeedUserResponseItemsItemCaptionUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..didReportAsSpam = json['did_report_as_spam'] as bool
    ..shareEnabled = json['share_enabled'] as bool
    ..mediaId = json['media_id'] as int;
}

Map<String, dynamic> _$FeedUserResponseItemsItemCaptionToJson(
        FeedUserResponseItemsItemCaption instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'user_id': instance.userId,
      'text': instance.text,
      'type': instance.type,
      'created_at': instance.createdAt,
      'created_at_utc': instance.createdAtUtc,
      'content_type': instance.contentType,
      'status': instance.status,
      'bit_flags': instance.bitFlags,
      'user': instance.user,
      'did_report_as_spam': instance.didReportAsSpam,
      'share_enabled': instance.shareEnabled,
      'media_id': instance.mediaId,
    };

FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem
    _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItemToJson(
            FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedUserResponseItemsItemCarouselMediaItemImageVersions2
    _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2FromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemCarouselMediaItemImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserResponseItemsItemCarouselMediaItemImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String,
    dynamic> _$FeedUserResponseItemsItemCarouselMediaItemImageVersions2ToJson(
        FeedUserResponseItemsItemCarouselMediaItemImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

FeedUserResponseItemsItemCarouselMediaItem
    _$FeedUserResponseItemsItemCarouselMediaItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemCarouselMediaItem()
    ..id = json['id'] as String
    ..mediaType = json['media_type'] as int
    ..imageVersions2 = json['image_versions2'] == null
        ? null
        : FeedUserResponseItemsItemCarouselMediaItemImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..pk = json['pk'] as int
    ..carouselParentId = json['carousel_parent_id'] as String;
}

Map<String, dynamic> _$FeedUserResponseItemsItemCarouselMediaItemToJson(
        FeedUserResponseItemsItemCarouselMediaItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_type': instance.mediaType,
      'image_versions2': instance.imageVersions2,
      'original_width': instance.originalWidth,
      'original_height': instance.originalHeight,
      'pk': instance.pk,
      'carousel_parent_id': instance.carouselParentId,
    };

FeedUserResponseItemsItemLocation _$FeedUserResponseItemsItemLocationFromJson(
    Map<String, dynamic> json) {
  return FeedUserResponseItemsItemLocation()
    ..pk = json['pk'] as int
    ..name = json['name'] as String
    ..address = json['address'] as String
    ..city = json['city'] as String
    ..shortName = json['short_name'] as String
    ..lng = (json['lng'] as num)?.toDouble()
    ..lat = (json['lat'] as num)?.toDouble()
    ..externalSource = json['external_source'] as String
    ..facebookPlacesId = json['facebook_places_id'] as int;
}

Map<String, dynamic> _$FeedUserResponseItemsItemLocationToJson(
        FeedUserResponseItemsItemLocation instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'short_name': instance.shortName,
      'lng': instance.lng,
      'lat': instance.lat,
      'external_source': instance.externalSource,
      'facebook_places_id': instance.facebookPlacesId,
    };

FeedUserResponseItemsItemVideoVersionsItem
    _$FeedUserResponseItemsItemVideoVersionsItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemVideoVersionsItem()
    ..type = json['type'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$FeedUserResponseItemsItemVideoVersionsItemToJson(
        FeedUserResponseItemsItemVideoVersionsItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'id': instance.id,
    };

FeedUserResponseItemsItemFacepileTopLikersItem
    _$FeedUserResponseItemsItemFacepileTopLikersItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemFacepileTopLikersItem()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic> _$FeedUserResponseItemsItemFacepileTopLikersItemToJson(
        FeedUserResponseItemsItemFacepileTopLikersItem instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
    };

FeedUserResponseItemsItemUsertagsInItemUser
    _$FeedUserResponseItemsItemUsertagsInItemUserFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemUsertagsInItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic> _$FeedUserResponseItemsItemUsertagsInItemUserToJson(
        FeedUserResponseItemsItemUsertagsInItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
    };

FeedUserResponseItemsItemUsertagsInItem
    _$FeedUserResponseItemsItemUsertagsInItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserResponseItemsItemUsertagsInItem()
    ..user = json['user'] == null
        ? null
        : FeedUserResponseItemsItemUsertagsInItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..position =
        (json['position'] as List)?.map((e) => (e as num)?.toDouble())?.toList()
    ..startTimeInVideoInSec = json['start_time_in_video_in_sec']
    ..durationInVideoInSec = json['duration_in_video_in_sec'];
}

Map<String, dynamic> _$FeedUserResponseItemsItemUsertagsInItemToJson(
        FeedUserResponseItemsItemUsertagsInItem instance) =>
    <String, dynamic>{
      'user': instance.user,
      'position': instance.position,
      'start_time_in_video_in_sec': instance.startTimeInVideoInSec,
      'duration_in_video_in_sec': instance.durationInVideoInSec,
    };

FeedUserResponseItemsItemUsertags _$FeedUserResponseItemsItemUsertagsFromJson(
    Map<String, dynamic> json) {
  return FeedUserResponseItemsItemUsertags()
    ..IN = (json['i_n'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserResponseItemsItemUsertagsInItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedUserResponseItemsItemUsertagsToJson(
        FeedUserResponseItemsItemUsertags instance) =>
    <String, dynamic>{
      'i_n': instance.IN,
    };

FeedUserResponseItemsItem _$FeedUserResponseItemsItemFromJson(
    Map<String, dynamic> json) {
  return FeedUserResponseItemsItem()
    ..takenAt = json['taken_at'] as int
    ..pk = json['pk'] as int
    ..id = json['id'] as String
    ..deviceTimestamp = json['device_timestamp'] as int
    ..mediaType = json['media_type'] as int
    ..code = json['code'] as String
    ..clientCacheKey = json['client_cache_key'] as String
    ..filterType = json['filter_type'] as int
    ..imageVersions2 = json['image_versions2'] == null
        ? null
        : FeedUserResponseItemsItemImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..user = json['user'] == null
        ? null
        : FeedUserResponseItemsItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..canViewerReshare = json['can_viewer_reshare'] as bool
    ..captionIsEdited = json['caption_is_edited'] as bool
    ..directReplyToAuthorEnabled =
        json['direct_reply_to_author_enabled'] as bool
    ..commentLikesEnabled = json['comment_likes_enabled'] as bool
    ..commentThreadingEnabled = json['comment_threading_enabled'] as bool
    ..hasMoreComments = json['has_more_comments'] as bool
    ..maxNumVisiblePreviewComments =
        json['max_num_visible_preview_comments'] as int
    ..canViewMorePreviewComments =
        json['can_view_more_preview_comments'] as bool
    ..commentCount = json['comment_count'] as int
    ..inlineComposerDisplayCondition =
        json['inline_composer_display_condition'] as String
    ..inlineComposerImpTriggerTime =
        json['inline_composer_imp_trigger_time'] as int
    ..likeCount = json['like_count'] as int
    ..hasLiked = json['has_liked'] as bool
    ..topLikers = json['top_likers'] as List
    ..photoOfYou = json['photo_of_you'] as bool
    ..caption = json['caption'] == null
        ? null
        : FeedUserResponseItemsItemCaption.fromJson(
            json['caption'] as Map<String, dynamic>)
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String
    ..carouselMediaCount = json['carousel_media_count'] as int
    ..carouselMedia = (json['carousel_media'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserResponseItemsItemCarouselMediaItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..canSeeInsightsAsBrand = json['can_see_insights_as_brand'] as bool
    ..location = json['location'] == null
        ? null
        : FeedUserResponseItemsItemLocation.fromJson(
            json['location'] as Map<String, dynamic>)
    ..lat = (json['lat'] as num)?.toDouble()
    ..lng = (json['lng'] as num)?.toDouble()
    ..isDashEligible = json['is_dash_eligible'] as int
    ..videoDashManifest = json['video_dash_manifest'] as String
    ..videoCodec = json['video_codec'] as String
    ..numberOfQualities = json['number_of_qualities'] as int
    ..videoVersions = (json['video_versions'] as List)
        ?.map((e) => e == null ? null : FeedUserResponseItemsItemVideoVersionsItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..hasAudio = json['has_audio'] as bool
    ..videoDuration = (json['video_duration'] as num)?.toDouble()
    ..viewCount = (json['view_count'] as num)?.toDouble()
    ..facepileTopLikers = (json['facepile_top_likers'] as List)?.map((e) => e == null ? null : FeedUserResponseItemsItemFacepileTopLikersItem.fromJson(e as Map<String, dynamic>))?.toList()
    ..usertags = json['usertags'] == null ? null : FeedUserResponseItemsItemUsertags.fromJson(json['usertags'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeedUserResponseItemsItemToJson(
        FeedUserResponseItemsItem instance) =>
    <String, dynamic>{
      'taken_at': instance.takenAt,
      'pk': instance.pk,
      'id': instance.id,
      'device_timestamp': instance.deviceTimestamp,
      'media_type': instance.mediaType,
      'code': instance.code,
      'client_cache_key': instance.clientCacheKey,
      'filter_type': instance.filterType,
      'image_versions2': instance.imageVersions2,
      'original_width': instance.originalWidth,
      'original_height': instance.originalHeight,
      'user': instance.user,
      'can_viewer_reshare': instance.canViewerReshare,
      'caption_is_edited': instance.captionIsEdited,
      'direct_reply_to_author_enabled': instance.directReplyToAuthorEnabled,
      'comment_likes_enabled': instance.commentLikesEnabled,
      'comment_threading_enabled': instance.commentThreadingEnabled,
      'has_more_comments': instance.hasMoreComments,
      'max_num_visible_preview_comments': instance.maxNumVisiblePreviewComments,
      'can_view_more_preview_comments': instance.canViewMorePreviewComments,
      'comment_count': instance.commentCount,
      'inline_composer_display_condition':
          instance.inlineComposerDisplayCondition,
      'inline_composer_imp_trigger_time': instance.inlineComposerImpTriggerTime,
      'like_count': instance.likeCount,
      'has_liked': instance.hasLiked,
      'top_likers': instance.topLikers,
      'photo_of_you': instance.photoOfYou,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'carousel_media_count': instance.carouselMediaCount,
      'carousel_media': instance.carouselMedia,
      'can_see_insights_as_brand': instance.canSeeInsightsAsBrand,
      'location': instance.location,
      'lat': instance.lat,
      'lng': instance.lng,
      'is_dash_eligible': instance.isDashEligible,
      'video_dash_manifest': instance.videoDashManifest,
      'video_codec': instance.videoCodec,
      'number_of_qualities': instance.numberOfQualities,
      'video_versions': instance.videoVersions,
      'has_audio': instance.hasAudio,
      'video_duration': instance.videoDuration,
      'view_count': instance.viewCount,
      'facepile_top_likers': instance.facepileTopLikers,
      'usertags': instance.usertags,
    };
