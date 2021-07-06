// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configure_video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaConfigureVideoResponse _$MediaConfigureVideoResponseFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureVideoResponse()
    ..media = json['media'] == null
        ? null
        : MediaConfigureVideoResponseMedia.fromJson(
            json['media'] as Map<String, dynamic>)
    ..uploadId = json['upload_id'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$MediaConfigureVideoResponseToJson(
        MediaConfigureVideoResponse instance) =>
    <String, dynamic>{
      'media': instance.media,
      'upload_id': instance.uploadId,
      'status': instance.status,
    };

MediaConfigureVideoResponseMediaImageVersions2CandidatesItem
    _$MediaConfigureVideoResponseMediaImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$MediaConfigureVideoResponseMediaImageVersions2CandidatesItemToJson(
            MediaConfigureVideoResponseMediaImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

MediaConfigureVideoResponseMediaImageVersions2
    _$MediaConfigureVideoResponseMediaImageVersions2FromJson(
        Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : MediaConfigureVideoResponseMediaImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MediaConfigureVideoResponseMediaImageVersions2ToJson(
        MediaConfigureVideoResponseMediaImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

MediaConfigureVideoResponseMediaVideoVersionsItem
    _$MediaConfigureVideoResponseMediaVideoVersionsItemFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaVideoVersionsItem()
    ..type = json['type'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$MediaConfigureVideoResponseMediaVideoVersionsItemToJson(
        MediaConfigureVideoResponseMediaVideoVersionsItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'id': instance.id,
    };

MediaConfigureVideoResponseMediaUser
    _$MediaConfigureVideoResponseMediaUserFromJson(Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaUser()
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

Map<String, dynamic> _$MediaConfigureVideoResponseMediaUserToJson(
        MediaConfigureVideoResponseMediaUser instance) =>
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

MediaConfigureVideoResponseMediaCaptionUser
    _$MediaConfigureVideoResponseMediaCaptionUserFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaCaptionUser()
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

Map<String, dynamic> _$MediaConfigureVideoResponseMediaCaptionUserToJson(
        MediaConfigureVideoResponseMediaCaptionUser instance) =>
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

MediaConfigureVideoResponseMediaCaption
    _$MediaConfigureVideoResponseMediaCaptionFromJson(
        Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMediaCaption()
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
        : MediaConfigureVideoResponseMediaCaptionUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..didReportAsSpam = json['did_report_as_spam'] as bool
    ..shareEnabled = json['share_enabled'] as bool
    ..mediaId = json['media_id'] as int
    ..hasTranslation = json['has_translation'] as bool;
}

Map<String, dynamic> _$MediaConfigureVideoResponseMediaCaptionToJson(
        MediaConfigureVideoResponseMediaCaption instance) =>
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
      'has_translation': instance.hasTranslation,
    };

MediaConfigureVideoResponseMedia _$MediaConfigureVideoResponseMediaFromJson(
    Map<String, dynamic> json) {
  return MediaConfigureVideoResponseMedia()
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
        : MediaConfigureVideoResponseMediaImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..isDashEligible = json['is_dash_eligible'] as int
    ..videoDashManifest = json['video_dash_manifest'] as String
    ..videoCodec = json['video_codec'] as String
    ..numberOfQualities = json['number_of_qualities'] as int
    ..videoVersions = (json['video_versions'] as List)
        ?.map((e) => e == null
            ? null
            : MediaConfigureVideoResponseMediaVideoVersionsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hasAudio = json['has_audio'] as bool
    ..videoDuration = (json['video_duration'] as num)?.toDouble()
    ..user = json['user'] == null
        ? null
        : MediaConfigureVideoResponseMediaUser.fromJson(
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
    ..caption = json['caption'] == null
        ? null
        : MediaConfigureVideoResponseMediaCaption.fromJson(
            json['caption'] as Map<String, dynamic>)
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String;
}

Map<String, dynamic> _$MediaConfigureVideoResponseMediaToJson(
        MediaConfigureVideoResponseMedia instance) =>
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
      'is_dash_eligible': instance.isDashEligible,
      'video_dash_manifest': instance.videoDashManifest,
      'video_codec': instance.videoCodec,
      'number_of_qualities': instance.numberOfQualities,
      'video_versions': instance.videoVersions,
      'has_audio': instance.hasAudio,
      'video_duration': instance.videoDuration,
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
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
    };
