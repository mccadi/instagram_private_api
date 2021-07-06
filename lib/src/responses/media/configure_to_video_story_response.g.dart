// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configure_to_video_story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaConfigureToVideoStoryResponse _$MediaConfigureToVideoStoryResponseFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponse()
    ..media = json['media'] == null
        ? null
        : MediaConfigureToVideoStoryResponseMedia.fromJson(
            json['media'] as Map<String, dynamic>)
    ..uploadId = json['upload_id'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$MediaConfigureToVideoStoryResponseToJson(
        MediaConfigureToVideoStoryResponse instance) =>
    <String, dynamic>{
      'media': instance.media,
      'upload_id': instance.uploadId,
      'status': instance.status,
    };

MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem
    _$MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItemToJson(
            MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

MediaConfigureToVideoStoryResponseMediaImageVersions2
    _$MediaConfigureToVideoStoryResponseMediaImageVersions2FromJson(
        Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponseMediaImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : MediaConfigureToVideoStoryResponseMediaImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$MediaConfigureToVideoStoryResponseMediaImageVersions2ToJson(
            MediaConfigureToVideoStoryResponseMediaImageVersions2 instance) =>
        <String, dynamic>{
          'candidates': instance.candidates,
        };

MediaConfigureToVideoStoryResponseMediaVideoVersionsItem
    _$MediaConfigureToVideoStoryResponseMediaVideoVersionsItemFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponseMediaVideoVersionsItem()
    ..type = json['type'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..id = json['id'] as String;
}

Map<String,
    dynamic> _$MediaConfigureToVideoStoryResponseMediaVideoVersionsItemToJson(
        MediaConfigureToVideoStoryResponseMediaVideoVersionsItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'id': instance.id,
    };

MediaConfigureToVideoStoryResponseMediaUser
    _$MediaConfigureToVideoStoryResponseMediaUserFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponseMediaUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..canBoostPost = json['can_boost_post'] as bool
    ..canSeeOrganicInsights = json['can_see_organic_insights'] as bool
    ..showInsightsTerms = json['show_insights_terms'] as bool
    ..reelAutoArchive = json['reel_auto_archive'] as String
    ..isUnpublished = json['is_unpublished'] as bool
    ..allowedCommenterType = json['allowed_commenter_type'] as String;
}

Map<String, dynamic> _$MediaConfigureToVideoStoryResponseMediaUserToJson(
        MediaConfigureToVideoStoryResponseMediaUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'can_boost_post': instance.canBoostPost,
      'can_see_organic_insights': instance.canSeeOrganicInsights,
      'show_insights_terms': instance.showInsightsTerms,
      'reel_auto_archive': instance.reelAutoArchive,
      'is_unpublished': instance.isUnpublished,
      'allowed_commenter_type': instance.allowedCommenterType,
    };

MediaConfigureToVideoStoryResponseMedia
    _$MediaConfigureToVideoStoryResponseMediaFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureToVideoStoryResponseMedia()
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
        : MediaConfigureToVideoStoryResponseMediaImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..videoVersions = (json['video_versions'] as List)
        ?.map((e) => e == null
            ? null
            : MediaConfigureToVideoStoryResponseMediaVideoVersionsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hasAudio = json['has_audio'] as bool
    ..videoDuration = (json['video_duration'] as num)?.toDouble()
    ..user = json['user'] == null
        ? null
        : MediaConfigureToVideoStoryResponseMediaUser.fromJson(
            json['user'] as Map<String, dynamic>)
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
    ..captionPosition = (json['caption_position'] as num)?.toDouble()
    ..isReelMedia = json['is_reel_media'] as bool
    ..timezoneOffset = json['timezone_offset'] as int
    ..likeCount = json['like_count'] as int
    ..hasLiked = json['has_liked'] as bool
    ..likers = json['likers'] as List
    ..photoOfYou = json['photo_of_you'] as bool
    ..caption = json['caption']
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String
    ..expiringAt = json['expiring_at'] as int
    ..canReshare = json['can_reshare'] as bool
    ..canReply = json['can_reply'] as bool
    ..isPrideMedia = json['is_pride_media'] as bool
    ..storyIsSavedToArchive = json['story_is_saved_to_archive'] as bool
    ..viewers = json['viewers'] as List
    ..viewerCount = json['viewer_count'] as int
    ..viewerCursor = json['viewer_cursor']
    ..totalViewerCount = json['total_viewer_count'] as int
    ..multiAuthorReelNames = json['multi_author_reel_names'] as List
    ..supportsReelReactions = json['supports_reel_reactions'] as bool
    ..showOneTapFbShareTooltip = json['show_one_tap_fb_share_tooltip'] as bool
    ..hasSharedToFb = json['has_shared_to_fb'] as int;
}

Map<String, dynamic> _$MediaConfigureToVideoStoryResponseMediaToJson(
        MediaConfigureToVideoStoryResponseMedia instance) =>
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
      'video_versions': instance.videoVersions,
      'has_audio': instance.hasAudio,
      'video_duration': instance.videoDuration,
      'user': instance.user,
      'caption_is_edited': instance.captionIsEdited,
      'comment_likes_enabled': instance.commentLikesEnabled,
      'comment_threading_enabled': instance.commentThreadingEnabled,
      'has_more_comments': instance.hasMoreComments,
      'max_num_visible_preview_comments': instance.maxNumVisiblePreviewComments,
      'preview_comments': instance.previewComments,
      'can_view_more_preview_comments': instance.canViewMorePreviewComments,
      'comment_count': instance.commentCount,
      'caption_position': instance.captionPosition,
      'is_reel_media': instance.isReelMedia,
      'timezone_offset': instance.timezoneOffset,
      'like_count': instance.likeCount,
      'has_liked': instance.hasLiked,
      'likers': instance.likers,
      'photo_of_you': instance.photoOfYou,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'expiring_at': instance.expiringAt,
      'can_reshare': instance.canReshare,
      'can_reply': instance.canReply,
      'is_pride_media': instance.isPrideMedia,
      'story_is_saved_to_archive': instance.storyIsSavedToArchive,
      'viewers': instance.viewers,
      'viewer_count': instance.viewerCount,
      'viewer_cursor': instance.viewerCursor,
      'total_viewer_count': instance.totalViewerCount,
      'multi_author_reel_names': instance.multiAuthorReelNames,
      'supports_reel_reactions': instance.supportsReelReactions,
      'show_one_tap_fb_share_tooltip': instance.showOneTapFbShareTooltip,
      'has_shared_to_fb': instance.hasSharedToFb,
    };
