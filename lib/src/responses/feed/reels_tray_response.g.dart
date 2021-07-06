// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reels_tray_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedReelsTrayResponse _$FeedReelsTrayResponseFromJson(
    Map<String, dynamic> json) {
  return FeedReelsTrayResponse()
    ..tray = (json['tray'] as List)
        ?.map((e) => e == null
            ? null
            : FeedReelsTrayResponseTrayItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..storyRankingToken = json['story_ranking_token'] as String
    ..broadcasts = json['broadcasts'] as List
    ..faceFilterNuxVersion = json['face_filter_nux_version'] as int
    ..storiesViewerGesturesNuxEligible =
        json['stories_viewer_gestures_nux_eligible'] as bool
    ..hasNewNuxStory = json['has_new_nux_story'] as bool
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FeedReelsTrayResponseToJson(
        FeedReelsTrayResponse instance) =>
    <String, dynamic>{
      'tray': instance.tray,
      'story_ranking_token': instance.storyRankingToken,
      'broadcasts': instance.broadcasts,
      'face_filter_nux_version': instance.faceFilterNuxVersion,
      'stories_viewer_gestures_nux_eligible':
          instance.storiesViewerGesturesNuxEligible,
      'has_new_nux_story': instance.hasNewNuxStory,
      'status': instance.status,
    };

FeedReelsTrayResponseTrayItemUserFriendshipStatus
    _$FeedReelsTrayResponseTrayItemUserFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemUserFriendshipStatus()
    ..muting = json['muting'] as bool
    ..isMutingReel = json['is_muting_reel'] as bool
    ..following = json['following'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool;
}

Map<String, dynamic> _$FeedReelsTrayResponseTrayItemUserFriendshipStatusToJson(
        FeedReelsTrayResponseTrayItemUserFriendshipStatus instance) =>
    <String, dynamic>{
      'muting': instance.muting,
      'is_muting_reel': instance.isMutingReel,
      'following': instance.following,
      'outgoing_request': instance.outgoingRequest,
    };

FeedReelsTrayResponseTrayItemUser _$FeedReelsTrayResponseTrayItemUserFromJson(
    Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : FeedReelsTrayResponseTrayItemUserFriendshipStatus.fromJson(
            json['friendship_status'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeedReelsTrayResponseTrayItemUserToJson(
        FeedReelsTrayResponseTrayItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'friendship_status': instance.friendshipStatus,
    };

FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem
    _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItemToJson(
            FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedReelsTrayResponseTrayItemItemsItemImageVersions2
    _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2FromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : FeedReelsTrayResponseTrayItemItemsItemImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$FeedReelsTrayResponseTrayItemItemsItemImageVersions2ToJson(
            FeedReelsTrayResponseTrayItemItemsItemImageVersions2 instance) =>
        <String, dynamic>{
          'candidates': instance.candidates,
        };

FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem
    _$FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItemFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem()
    ..type = json['type'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItemToJson(
            FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem instance) =>
        <String, dynamic>{
          'type': instance.type,
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'id': instance.id,
        };

FeedReelsTrayResponseTrayItemItemsItemUser
    _$FeedReelsTrayResponseTrayItemItemsItemUserFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemUser()..pk = json['pk'] as int;
}

Map<String, dynamic> _$FeedReelsTrayResponseTrayItemItemsItemUserToJson(
        FeedReelsTrayResponseTrayItemItemsItemUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
    };

FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo
    _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfoFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..subtitle = json['subtitle'] as String
    ..displayArtist = json['display_artist'] as String
    ..coverArtworkUri = json['cover_artwork_uri'] as String
    ..coverArtworkThumbnailUri = json['cover_artwork_thumbnail_uri'] as String
    ..progressiveDownloadUrl = json['progressive_download_url'] as String
    ..highlightStartTimesInMs = (json['highlight_start_times_in_ms'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..isExplicit = json['is_explicit'] as bool
    ..dashManifest = json['dash_manifest'] as String
    ..hasLyrics = json['has_lyrics'] as bool
    ..audioAssetId = json['audio_asset_id'] as String
    ..igArtist = json['ig_artist']
    ..placeholderProfilePicUrl = json['placeholder_profile_pic_url'] as String
    ..shouldMuteAudio = json['should_mute_audio'] as bool
    ..shouldMuteAudioReason = json['should_mute_audio_reason'] as String
    ..overlapDurationInMs = json['overlap_duration_in_ms'] as int
    ..audioAssetStartTimeInMs = json['audio_asset_start_time_in_ms'] as int;
}

Map<String, dynamic>
    _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfoToJson(
            FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'subtitle': instance.subtitle,
          'display_artist': instance.displayArtist,
          'cover_artwork_uri': instance.coverArtworkUri,
          'cover_artwork_thumbnail_uri': instance.coverArtworkThumbnailUri,
          'progressive_download_url': instance.progressiveDownloadUrl,
          'highlight_start_times_in_ms': instance.highlightStartTimesInMs,
          'is_explicit': instance.isExplicit,
          'dash_manifest': instance.dashManifest,
          'has_lyrics': instance.hasLyrics,
          'audio_asset_id': instance.audioAssetId,
          'ig_artist': instance.igArtist,
          'placeholder_profile_pic_url': instance.placeholderProfilePicUrl,
          'should_mute_audio': instance.shouldMuteAudio,
          'should_mute_audio_reason': instance.shouldMuteAudioReason,
          'overlap_duration_in_ms': instance.overlapDurationInMs,
          'audio_asset_start_time_in_ms': instance.audioAssetStartTimeInMs,
        };

FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem
    _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem()
    ..x = (json['x'] as num)?.toDouble()
    ..y = (json['y'] as num)?.toDouble()
    ..z = json['z'] as int
    ..width = (json['width'] as num)?.toDouble()
    ..height = (json['height'] as num)?.toDouble()
    ..rotation = (json['rotation'] as num)?.toDouble()
    ..attribution = json['attribution'] as String
    ..isPinned = json['is_pinned'] as int
    ..isHidden = json['is_hidden'] as int
    ..displayType = json['display_type'] as String
    ..isSticker = json['is_sticker'] as int
    ..musicAssetInfo = json['music_asset_info'] == null
        ? null
        : FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemMusicAssetInfo
            .fromJson(json['music_asset_info'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItemToJson(
            FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem
                instance) =>
        <String, dynamic>{
          'x': instance.x,
          'y': instance.y,
          'z': instance.z,
          'width': instance.width,
          'height': instance.height,
          'rotation': instance.rotation,
          'attribution': instance.attribution,
          'is_pinned': instance.isPinned,
          'is_hidden': instance.isHidden,
          'display_type': instance.displayType,
          'is_sticker': instance.isSticker,
          'music_asset_info': instance.musicAssetInfo,
        };

FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem
    _$FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItemFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem()
    ..x = (json['x'] as num)?.toDouble()
    ..y = (json['y'] as num)?.toDouble()
    ..z = json['z'] as int
    ..width = (json['width'] as num)?.toDouble()
    ..height = (json['height'] as num)?.toDouble()
    ..rotation = (json['rotation'] as num)?.toDouble()
    ..isPinned = json['is_pinned'] as int
    ..isHidden = json['is_hidden'] as int
    ..isSticker = json['is_sticker'] as int
    ..mediaId = json['media_id'] as String
    ..productType = json['product_type'] as String;
}

Map<String,
    dynamic> _$FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItemToJson(
        FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
      'width': instance.width,
      'height': instance.height,
      'rotation': instance.rotation,
      'is_pinned': instance.isPinned,
      'is_hidden': instance.isHidden,
      'is_sticker': instance.isSticker,
      'media_id': instance.mediaId,
      'product_type': instance.productType,
    };

FeedReelsTrayResponseTrayItemItemsItem
    _$FeedReelsTrayResponseTrayItemItemsItemFromJson(
        Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItemItemsItem()
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
        : FeedReelsTrayResponseTrayItemItemsItemImageVersions2.fromJson(
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
            : FeedReelsTrayResponseTrayItemItemsItemVideoVersionsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hasAudio = json['has_audio'] as bool
    ..videoDuration = (json['video_duration'] as num)?.toDouble()
    ..user = json['user'] == null
        ? null
        : FeedReelsTrayResponseTrayItemItemsItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..captionIsEdited = json['caption_is_edited'] as bool
    ..captionPosition = (json['caption_position'] as num)?.toDouble()
    ..isReelMedia = json['is_reel_media'] as bool
    ..photoOfYou = json['photo_of_you'] as bool
    ..caption = json['caption']
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String
    ..expiringAt = json['expiring_at'] as int
    ..canReshare = json['can_reshare'] as bool
    ..canReply = json['can_reply'] as bool
    ..isPrideMedia = json['is_pride_media'] as bool
    ..storyMusicStickers = (json['story_music_stickers'] as List)
        ?.map((e) => e == null
            ? null
            : FeedReelsTrayResponseTrayItemItemsItemStoryMusicStickersItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..supportsReelReactions = json['supports_reel_reactions'] as bool
    ..showOneTapFbShareTooltip = json['show_one_tap_fb_share_tooltip'] as bool
    ..hasSharedToFb = json['has_shared_to_fb'] as int
    ..storyFeedMedia = (json['story_feed_media'] as List)
        ?.map((e) => e == null ? null : FeedReelsTrayResponseTrayItemItemsItemStoryFeedMediaItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedReelsTrayResponseTrayItemItemsItemToJson(
        FeedReelsTrayResponseTrayItemItemsItem instance) =>
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
      'caption_is_edited': instance.captionIsEdited,
      'caption_position': instance.captionPosition,
      'is_reel_media': instance.isReelMedia,
      'photo_of_you': instance.photoOfYou,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'expiring_at': instance.expiringAt,
      'can_reshare': instance.canReshare,
      'can_reply': instance.canReply,
      'is_pride_media': instance.isPrideMedia,
      'story_music_stickers': instance.storyMusicStickers,
      'supports_reel_reactions': instance.supportsReelReactions,
      'show_one_tap_fb_share_tooltip': instance.showOneTapFbShareTooltip,
      'has_shared_to_fb': instance.hasSharedToFb,
      'story_feed_media': instance.storyFeedMedia,
    };

FeedReelsTrayResponseTrayItem _$FeedReelsTrayResponseTrayItemFromJson(
    Map<String, dynamic> json) {
  return FeedReelsTrayResponseTrayItem()
    ..id = json['id'] as int
    ..latestReelMedia = json['latest_reel_media'] as int
    ..expiringAt = json['expiring_at'] as int
    ..seen = json['seen'] as int
    ..canReply = json['can_reply'] as bool
    ..canReshare = json['can_reshare'] as bool
    ..reelType = json['reel_type'] as String
    ..user = json['user'] == null
        ? null
        : FeedReelsTrayResponseTrayItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..rankedPosition = json['ranked_position'] as int
    ..seenRankedPosition = json['seen_ranked_position'] as int
    ..muted = json['muted'] as bool
    ..prefetchCount = json['prefetch_count'] as int
    ..hasBestiesMedia = json['has_besties_media'] as bool
    ..mediaCount = json['media_count'] as int
    ..mediaIds = (json['media_ids'] as List)?.map((e) => e as int)?.toList()
    ..hasPrideMedia = json['has_pride_media'] as bool
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : FeedReelsTrayResponseTrayItemItemsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedReelsTrayResponseTrayItemToJson(
        FeedReelsTrayResponseTrayItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latest_reel_media': instance.latestReelMedia,
      'expiring_at': instance.expiringAt,
      'seen': instance.seen,
      'can_reply': instance.canReply,
      'can_reshare': instance.canReshare,
      'reel_type': instance.reelType,
      'user': instance.user,
      'ranked_position': instance.rankedPosition,
      'seen_ranked_position': instance.seenRankedPosition,
      'muted': instance.muted,
      'prefetch_count': instance.prefetchCount,
      'has_besties_media': instance.hasBestiesMedia,
      'media_count': instance.mediaCount,
      'media_ids': instance.mediaIds,
      'has_pride_media': instance.hasPrideMedia,
      'items': instance.items,
    };
