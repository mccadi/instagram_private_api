// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlights_tray_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighlightsHighlightsTrayResponse _$HighlightsHighlightsTrayResponseFromJson(
    Map<String, dynamic> json) {
  return HighlightsHighlightsTrayResponse()
    ..tray = (json['tray'] as List)
        ?.map((e) => e == null
            ? null
            : HighlightsHighlightsTrayResponseTrayItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..showEmptyState = json['show_empty_state'] as bool
    ..status = json['status'] as String;
}

Map<String, dynamic> _$HighlightsHighlightsTrayResponseToJson(
        HighlightsHighlightsTrayResponse instance) =>
    <String, dynamic>{
      'tray': instance.tray,
      'show_empty_state': instance.showEmptyState,
      'status': instance.status,
    };

HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion
    _$HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersionFromJson(
        Map<String, dynamic> json) {
  return HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersionToJson(
            HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

HighlightsHighlightsTrayResponseTrayItemCoverMedia
    _$HighlightsHighlightsTrayResponseTrayItemCoverMediaFromJson(
        Map<String, dynamic> json) {
  return HighlightsHighlightsTrayResponseTrayItemCoverMedia()
    ..croppedImageVersion = json['cropped_image_version'] == null
        ? null
        : HighlightsHighlightsTrayResponseTrayItemCoverMediaCroppedImageVersion
            .fromJson(json['cropped_image_version'] as Map<String, dynamic>)
    ..cropRect = json['crop_rect'] as List
    ..mediaId = json['media_id'] as String;
}

Map<String, dynamic> _$HighlightsHighlightsTrayResponseTrayItemCoverMediaToJson(
        HighlightsHighlightsTrayResponseTrayItemCoverMedia instance) =>
    <String, dynamic>{
      'cropped_image_version': instance.croppedImageVersion,
      'crop_rect': instance.cropRect,
      'media_id': instance.mediaId,
    };

HighlightsHighlightsTrayResponseTrayItemUser
    _$HighlightsHighlightsTrayResponseTrayItemUserFromJson(
        Map<String, dynamic> json) {
  return HighlightsHighlightsTrayResponseTrayItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic> _$HighlightsHighlightsTrayResponseTrayItemUserToJson(
        HighlightsHighlightsTrayResponseTrayItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
    };

HighlightsHighlightsTrayResponseTrayItem
    _$HighlightsHighlightsTrayResponseTrayItemFromJson(
        Map<String, dynamic> json) {
  return HighlightsHighlightsTrayResponseTrayItem()
    ..id = json['id'] as String
    ..latestReelMedia = json['latest_reel_media'] as int
    ..seen = json['seen']
    ..canReply = json['can_reply'] as bool
    ..canReshare = json['can_reshare']
    ..reelType = json['reel_type'] as String
    ..coverMedia = json['cover_media'] == null
        ? null
        : HighlightsHighlightsTrayResponseTrayItemCoverMedia.fromJson(
            json['cover_media'] as Map<String, dynamic>)
    ..user = json['user'] == null
        ? null
        : HighlightsHighlightsTrayResponseTrayItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..rankedPosition = json['ranked_position'] as int
    ..title = json['title'] as String
    ..seenRankedPosition = json['seen_ranked_position'] as int
    ..prefetchCount = json['prefetch_count'] as int
    ..mediaCount = json['media_count'] as int
    ..hasPrideMedia = json['has_pride_media'] as bool;
}

Map<String, dynamic> _$HighlightsHighlightsTrayResponseTrayItemToJson(
        HighlightsHighlightsTrayResponseTrayItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latest_reel_media': instance.latestReelMedia,
      'seen': instance.seen,
      'can_reply': instance.canReply,
      'can_reshare': instance.canReshare,
      'reel_type': instance.reelType,
      'cover_media': instance.coverMedia,
      'user': instance.user,
      'ranked_position': instance.rankedPosition,
      'title': instance.title,
      'seen_ranked_position': instance.seenRankedPosition,
      'prefetch_count': instance.prefetchCount,
      'media_count': instance.mediaCount,
      'has_pride_media': instance.hasPrideMedia,
    };
