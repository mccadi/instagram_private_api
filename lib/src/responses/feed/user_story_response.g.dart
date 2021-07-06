// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedUserStoryResponse _$FeedUserStoryResponseFromJson(
    Map<String, dynamic> json) {
  return FeedUserStoryResponse()
    ..broadcast = json['broadcast']
    ..reel = json['reel'] == null
        ? null
        : FeedUserStoryResponseReel.fromJson(
            json['reel'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FeedUserStoryResponseToJson(
        FeedUserStoryResponse instance) =>
    <String, dynamic>{
      'broadcast': instance.broadcast,
      'reel': instance.reel,
      'status': instance.status,
    };

FeedUserStoryResponseReelUserFriendshipStatus
    _$FeedUserStoryResponseReelUserFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelUserFriendshipStatus()
    ..following = json['following'] as bool
    ..followedBy = json['followed_by'] as bool
    ..blocking = json['blocking'] as bool
    ..muting = json['muting'] as bool
    ..isPrivate = json['is_private'] as bool
    ..incomingRequest = json['incoming_request'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool
    ..isBestie = json['is_bestie'] as bool
    ..isRestricted = json['is_restricted'] as bool;
}

Map<String, dynamic> _$FeedUserStoryResponseReelUserFriendshipStatusToJson(
        FeedUserStoryResponseReelUserFriendshipStatus instance) =>
    <String, dynamic>{
      'following': instance.following,
      'followed_by': instance.followedBy,
      'blocking': instance.blocking,
      'muting': instance.muting,
      'is_private': instance.isPrivate,
      'incoming_request': instance.incomingRequest,
      'outgoing_request': instance.outgoingRequest,
      'is_bestie': instance.isBestie,
      'is_restricted': instance.isRestricted,
    };

FeedUserStoryResponseReelUser _$FeedUserStoryResponseReelUserFromJson(
    Map<String, dynamic> json) {
  return FeedUserStoryResponseReelUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : FeedUserStoryResponseReelUserFriendshipStatus.fromJson(
            json['friendship_status'] as Map<String, dynamic>)
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic> _$FeedUserStoryResponseReelUserToJson(
        FeedUserStoryResponseReelUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'friendship_status': instance.friendshipStatus,
      'is_verified': instance.isVerified,
    };

FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem
    _$FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItemToJson(
            FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedUserStoryResponseReelItemsItemImageVersions2
    _$FeedUserStoryResponseReelItemsItemImageVersions2FromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserStoryResponseReelItemsItemImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedUserStoryResponseReelItemsItemImageVersions2ToJson(
        FeedUserStoryResponseReelItemsItemImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

FeedUserStoryResponseReelItemsItemUser
    _$FeedUserStoryResponseReelItemsItemUserFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..isUnpublished = json['is_unpublished'] as bool
    ..isFavorite = json['is_favorite'] as bool;
}

Map<String, dynamic> _$FeedUserStoryResponseReelItemsItemUserToJson(
        FeedUserStoryResponseReelItemsItemUser instance) =>
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
    };

FeedUserStoryResponseReelItemsItemReelMentionsItemUser
    _$FeedUserStoryResponseReelItemsItemReelMentionsItemUserFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemReelMentionsItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemReelMentionsItemUserToJson(
            FeedUserStoryResponseReelItemsItemReelMentionsItemUser instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
        };

FeedUserStoryResponseReelItemsItemReelMentionsItem
    _$FeedUserStoryResponseReelItemsItemReelMentionsItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemReelMentionsItem()
    ..x = (json['x'] as num)?.toDouble()
    ..y = (json['y'] as num)?.toDouble()
    ..z = json['z'] as int
    ..width = (json['width'] as num)?.toDouble()
    ..height = (json['height'] as num)?.toDouble()
    ..rotation = (json['rotation'] as num)?.toDouble()
    ..isPinned = json['is_pinned'] as int
    ..isHidden = json['is_hidden'] as int
    ..displayType = json['display_type'] as String
    ..isSticker = json['is_sticker'] as int
    ..user = json['user'] == null
        ? null
        : FeedUserStoryResponseReelItemsItemReelMentionsItemUser.fromJson(
            json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeedUserStoryResponseReelItemsItemReelMentionsItemToJson(
        FeedUserStoryResponseReelItemsItemReelMentionsItem instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
      'width': instance.width,
      'height': instance.height,
      'rotation': instance.rotation,
      'is_pinned': instance.isPinned,
      'is_hidden': instance.isHidden,
      'display_type': instance.displayType,
      'is_sticker': instance.isSticker,
      'user': instance.user,
    };

FeedUserStoryResponseReelItemsItemVideoVersionsItem
    _$FeedUserStoryResponseReelItemsItemVideoVersionsItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemVideoVersionsItem()
    ..type = json['type'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemVideoVersionsItemToJson(
            FeedUserStoryResponseReelItemsItemVideoVersionsItem instance) =>
        <String, dynamic>{
          'type': instance.type,
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'id': instance.id,
        };

FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem
    _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem()
    ..text = json['text'] as String
    ..count = json['count'] as int;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItemToJson(
            FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem
                instance) =>
        <String, dynamic>{
          'text': instance.text,
          'count': instance.count,
        };

FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker
    _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker()
    ..id = json['id'] as String
    ..quizId = json['quiz_id'] as int
    ..question = json['question'] as String
    ..tallies = (json['tallies'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerTalliesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..correctAnswer = json['correct_answer'] as int
    ..viewerCanAnswer = json['viewer_can_answer'] as bool
    ..finished = json['finished'] as bool
    ..textColor = json['text_color'] as String
    ..startBackgroundColor = json['start_background_color'] as String
    ..endBackgroundColor = json['end_background_color'] as String;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizStickerToJson(
            FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'quiz_id': instance.quizId,
          'question': instance.question,
          'tallies': instance.tallies,
          'correct_answer': instance.correctAnswer,
          'viewer_can_answer': instance.viewerCanAnswer,
          'finished': instance.finished,
          'text_color': instance.textColor,
          'start_background_color': instance.startBackgroundColor,
          'end_background_color': instance.endBackgroundColor,
        };

FeedUserStoryResponseReelItemsItemStoryQuizsItem
    _$FeedUserStoryResponseReelItemsItemStoryQuizsItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryQuizsItem()
    ..x = (json['x'] as num)?.toDouble()
    ..y = (json['y'] as num)?.toDouble()
    ..z = json['z'] as int
    ..width = (json['width'] as num)?.toDouble()
    ..height = (json['height'] as num)?.toDouble()
    ..rotation = (json['rotation'] as num)?.toDouble()
    ..isPinned = json['is_pinned'] as int
    ..isHidden = json['is_hidden'] as int
    ..isSticker = json['is_sticker'] as int
    ..quizSticker = json['quiz_sticker'] == null
        ? null
        : FeedUserStoryResponseReelItemsItemStoryQuizsItemQuizSticker.fromJson(
            json['quiz_sticker'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeedUserStoryResponseReelItemsItemStoryQuizsItemToJson(
        FeedUserStoryResponseReelItemsItemStoryQuizsItem instance) =>
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
      'quiz_sticker': instance.quizSticker,
    };

FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist
    _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtistFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtistToJson(
            FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist
                instance) =>
        <String, dynamic>{
          'pk': instance.pk,
          'username': instance.username,
          'full_name': instance.fullName,
          'is_private': instance.isPrivate,
          'profile_pic_url': instance.profilePicUrl,
          'profile_pic_id': instance.profilePicId,
          'is_verified': instance.isVerified,
        };

FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo
    _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo()
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
    ..igArtist = json['ig_artist'] == null
        ? null
        : FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoIgArtist
            .fromJson(json['ig_artist'] as Map<String, dynamic>)
    ..placeholderProfilePicUrl = json['placeholder_profile_pic_url'] as String
    ..shouldMuteAudio = json['should_mute_audio'] as bool
    ..shouldMuteAudioReason = json['should_mute_audio_reason'] as String
    ..overlapDurationInMs = json['overlap_duration_in_ms'] as int
    ..audioAssetStartTimeInMs = json['audio_asset_start_time_in_ms'] as int;
}

Map<String, dynamic>
    _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfoToJson(
            FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo
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

FeedUserStoryResponseReelItemsItemStoryMusicStickersItem
    _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemFromJson(
        Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItemStoryMusicStickersItem()
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
        : FeedUserStoryResponseReelItemsItemStoryMusicStickersItemMusicAssetInfo
            .fromJson(json['music_asset_info'] as Map<String, dynamic>);
}

Map<String,
    dynamic> _$FeedUserStoryResponseReelItemsItemStoryMusicStickersItemToJson(
        FeedUserStoryResponseReelItemsItemStoryMusicStickersItem instance) =>
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

FeedUserStoryResponseReelItemsItem _$FeedUserStoryResponseReelItemsItemFromJson(
    Map<String, dynamic> json) {
  return FeedUserStoryResponseReelItemsItem()
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
        : FeedUserStoryResponseReelItemsItemImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..user = json['user'] == null
        ? null
        : FeedUserStoryResponseReelItemsItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..captionIsEdited = json['caption_is_edited'] as bool
    ..captionPosition = (json['caption_position'] as num)?.toDouble()
    ..isReelMedia = json['is_reel_media'] as bool
    ..photoOfYou = json['photo_of_you'] as bool
    ..caption = json['caption']
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String
    ..expiringAt = json['expiring_at'] as int
    ..importedTakenAt = json['imported_taken_at'] as int
    ..canReshare = json['can_reshare'] as bool
    ..canReply = json['can_reply'] as bool
    ..isPrideMedia = json['is_pride_media'] as bool
    ..reelMentions = (json['reel_mentions'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserStoryResponseReelItemsItemReelMentionsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..supportsReelReactions = json['supports_reel_reactions'] as bool
    ..showOneTapFbShareTooltip = json['show_one_tap_fb_share_tooltip'] as bool
    ..hasSharedToFb = json['has_shared_to_fb'] as int
    ..isDashEligible = json['is_dash_eligible'] as int
    ..videoDashManifest = json['video_dash_manifest'] as String
    ..videoCodec = json['video_codec'] as String
    ..numberOfQualities = json['number_of_qualities'] as int
    ..videoVersions = (json['video_versions'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserStoryResponseReelItemsItemVideoVersionsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..hasAudio = json['has_audio'] as bool
    ..videoDuration = (json['video_duration'] as num)?.toDouble()
    ..storyQuizs = (json['story_quizs'] as List)
        ?.map((e) => e == null ? null : FeedUserStoryResponseReelItemsItemStoryQuizsItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..storyMusicStickers = (json['story_music_stickers'] as List)?.map((e) => e == null ? null : FeedUserStoryResponseReelItemsItemStoryMusicStickersItem.fromJson(e as Map<String, dynamic>))?.toList();
}

Map<String, dynamic> _$FeedUserStoryResponseReelItemsItemToJson(
        FeedUserStoryResponseReelItemsItem instance) =>
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
      'caption_is_edited': instance.captionIsEdited,
      'caption_position': instance.captionPosition,
      'is_reel_media': instance.isReelMedia,
      'photo_of_you': instance.photoOfYou,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'expiring_at': instance.expiringAt,
      'imported_taken_at': instance.importedTakenAt,
      'can_reshare': instance.canReshare,
      'can_reply': instance.canReply,
      'is_pride_media': instance.isPrideMedia,
      'reel_mentions': instance.reelMentions,
      'supports_reel_reactions': instance.supportsReelReactions,
      'show_one_tap_fb_share_tooltip': instance.showOneTapFbShareTooltip,
      'has_shared_to_fb': instance.hasSharedToFb,
      'is_dash_eligible': instance.isDashEligible,
      'video_dash_manifest': instance.videoDashManifest,
      'video_codec': instance.videoCodec,
      'number_of_qualities': instance.numberOfQualities,
      'video_versions': instance.videoVersions,
      'has_audio': instance.hasAudio,
      'video_duration': instance.videoDuration,
      'story_quizs': instance.storyQuizs,
      'story_music_stickers': instance.storyMusicStickers,
    };

FeedUserStoryResponseReel _$FeedUserStoryResponseReelFromJson(
    Map<String, dynamic> json) {
  return FeedUserStoryResponseReel()
    ..id = json['id'] as int
    ..latestReelMedia = json['latest_reel_media'] as int
    ..expiringAt = json['expiring_at'] as int
    ..seen = json['seen'] as int
    ..canReply = json['can_reply'] as bool
    ..canReshare = json['can_reshare'] as bool
    ..reelType = json['reel_type'] as String
    ..user = json['user'] == null
        ? null
        : FeedUserStoryResponseReelUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : FeedUserStoryResponseReelItemsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..prefetchCount = json['prefetch_count'] as int
    ..hasBestiesMedia = json['has_besties_media'] as bool
    ..mediaCount = json['media_count'] as int
    ..hasPrideMedia = json['has_pride_media'] as bool;
}

Map<String, dynamic> _$FeedUserStoryResponseReelToJson(
        FeedUserStoryResponseReel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latest_reel_media': instance.latestReelMedia,
      'expiring_at': instance.expiringAt,
      'seen': instance.seen,
      'can_reply': instance.canReply,
      'can_reshare': instance.canReshare,
      'reel_type': instance.reelType,
      'user': instance.user,
      'items': instance.items,
      'prefetch_count': instance.prefetchCount,
      'has_besties_media': instance.hasBestiesMedia,
      'media_count': instance.mediaCount,
      'has_pride_media': instance.hasPrideMedia,
    };
