// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaConfigureResponse _$MediaConfigureResponseFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureResponse()
    ..media = json['media'] == null
        ? null
        : MediaConfigureResponseMedia.fromJson(
            json['media'] as Map<String, dynamic>)
    ..uploadId = json['upload_id'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$MediaConfigureResponseToJson(
        MediaConfigureResponse instance) =>
    <String, dynamic>{
      'media': instance.media,
      'upload_id': instance.uploadId,
      'status': instance.status,
    };

MediaConfigureResponseMediaImageVersions2CandidatesItem
    _$MediaConfigureResponseMediaImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureResponseMediaImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$MediaConfigureResponseMediaImageVersions2CandidatesItemToJson(
            MediaConfigureResponseMediaImageVersions2CandidatesItem instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

MediaConfigureResponseMediaImageVersions2
    _$MediaConfigureResponseMediaImageVersions2FromJson(
        Map<String, dynamic> json) {
  return MediaConfigureResponseMediaImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : MediaConfigureResponseMediaImageVersions2CandidatesItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MediaConfigureResponseMediaImageVersions2ToJson(
        MediaConfigureResponseMediaImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

MediaConfigureResponseMediaUser _$MediaConfigureResponseMediaUserFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureResponseMediaUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..canBoostPost = json['can_boost_post'] as bool
    ..canSeeOrganicInsights = json['can_see_organic_insights'] as bool
    ..showInsightsTerms = json['show_insights_terms'] as bool
    ..reelAutoArchive = json['reel_auto_archive'] as String
    ..isUnpublished = json['is_unpublished'] as bool
    ..allowedCommenterType = json['allowed_commenter_type'] as String;
}

Map<String, dynamic> _$MediaConfigureResponseMediaUserToJson(
        MediaConfigureResponseMediaUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'can_boost_post': instance.canBoostPost,
      'can_see_organic_insights': instance.canSeeOrganicInsights,
      'show_insights_terms': instance.showInsightsTerms,
      'reel_auto_archive': instance.reelAutoArchive,
      'is_unpublished': instance.isUnpublished,
      'allowed_commenter_type': instance.allowedCommenterType,
    };

MediaConfigureResponseMediaFbUserTags
    _$MediaConfigureResponseMediaFbUserTagsFromJson(Map<String, dynamic> json) {
  return MediaConfigureResponseMediaFbUserTags()..IN = json['i_n'] as List;
}

Map<String, dynamic> _$MediaConfigureResponseMediaFbUserTagsToJson(
        MediaConfigureResponseMediaFbUserTags instance) =>
    <String, dynamic>{
      'i_n': instance.IN,
    };

MediaConfigureResponseMedia _$MediaConfigureResponseMediaFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureResponseMedia()
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
        : MediaConfigureResponseMediaImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..user = json['user'] == null
        ? null
        : MediaConfigureResponseMediaUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..canViewerReshare = json['can_viewer_reshare'] as bool
    ..captionIsEdited = json['caption_is_edited'] as bool
    ..commentLikesEnabled = json['comment_likes_enabled'] as bool
    ..commentThreadingEnabled = json['comment_threading_enabled'] as bool
    ..hasMoreComments = json['has_more_comments'] as bool
    ..maxNumVisiblePreviewComments =
        json['max_num_visible_preview_comments'] as int
    ..previewComments = json['preview_comments'] as List
    ..canViewMorePreviewComments =
        json['can_view_more_preview_comments'] as bool
    ..commentCount = json['comment_count'] as int
    ..photoOfYou = json['photo_of_you'] as bool
    ..caption = json['caption']
    ..fbUserTags = json['fb_user_tags'] == null
        ? null
        : MediaConfigureResponseMediaFbUserTags.fromJson(
            json['fb_user_tags'] as Map<String, dynamic>)
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String;
}

Map<String, dynamic> _$MediaConfigureResponseMediaToJson(
        MediaConfigureResponseMedia instance) =>
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
      'comment_likes_enabled': instance.commentLikesEnabled,
      'comment_threading_enabled': instance.commentThreadingEnabled,
      'has_more_comments': instance.hasMoreComments,
      'max_num_visible_preview_comments': instance.maxNumVisiblePreviewComments,
      'preview_comments': instance.previewComments,
      'can_view_more_preview_comments': instance.canViewMorePreviewComments,
      'comment_count': instance.commentCount,
      'photo_of_you': instance.photoOfYou,
      'caption': instance.caption,
      'fb_user_tags': instance.fbUserTags,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
    };
