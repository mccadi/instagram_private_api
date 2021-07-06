// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedTimelineResponse _$FeedTimelineResponseFromJson(Map<String, dynamic> json) {
  return FeedTimelineResponse()
    ..numResults = json['num_results'] as int
    ..moreAvailable = json['more_available'] as bool
    ..autoLoadMoreEnabled = json['auto_load_more_enabled'] as bool
    ..feedItems = (json['feed_items'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseFeedItemsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..isDirectV2Enabled = json['is_direct_v2_enabled'] as bool
    ..nextMaxId = json['next_max_id'] as String
    ..paginationInfo = json['pagination_info'] == null
        ? null
        : FeedTimelineResponsePaginationInfo.fromJson(
            json['pagination_info'] as Map<String, dynamic>)
    ..viewStateVersion = json['view_state_version'] as String
    ..clientFeedChangelistApplied =
        json['client_feed_changelist_applied'] as bool
    ..clientSessionId = json['client_session_id'] as String
    ..clientGapEnforcerMatrix = (json['client_gap_enforcer_matrix'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseClientGapEnforcerMatrixItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FeedTimelineResponseToJson(
        FeedTimelineResponse instance) =>
    <String, dynamic>{
      'num_results': instance.numResults,
      'more_available': instance.moreAvailable,
      'auto_load_more_enabled': instance.autoLoadMoreEnabled,
      'feed_items': instance.feedItems,
      'is_direct_v2_enabled': instance.isDirectV2Enabled,
      'next_max_id': instance.nextMaxId,
      'pagination_info': instance.paginationInfo,
      'view_state_version': instance.viewStateVersion,
      'client_feed_changelist_applied': instance.clientFeedChangelistApplied,
      'client_session_id': instance.clientSessionId,
      'client_gap_enforcer_matrix': instance.clientGapEnforcerMatrix,
      'status': instance.status,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem()
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..url = json['url'] as String
    ..estimatedScansSizes =
        (json['estimated_scans_sizes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItemToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
                instance) =>
        <String, dynamic>{
          'width': instance.width,
          'height': instance.height,
          'url': instance.url,
          'estimated_scans_sizes': instance.estimatedScansSizes,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2
    _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2FromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2()
    ..candidates = (json['candidates'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2CandidatesItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String,
    dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2ToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2 instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus()
    ..following = json['following'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool
    ..isMutingReel = json['is_muting_reel'] as bool
    ..isBestie = json['is_bestie'] as bool
    ..isRestricted = json['is_restricted'] as bool;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatusToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
                instance) =>
        <String, dynamic>{
          'following': instance.following,
          'outgoing_request': instance.outgoingRequest,
          'is_muting_reel': instance.isMutingReel,
          'is_bestie': instance.isBestie,
          'is_restricted': instance.isRestricted,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUserFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAdUserFriendshipStatus
            .fromJson(json['friendship_status'] as Map<String, dynamic>)
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..isUnpublished = json['is_unpublished'] as bool
    ..isFavorite = json['is_favorite'] as bool
    ..latestReelMedia = json['latest_reel_media'] as int;
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUserToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUser instance) =>
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
      'is_unpublished': instance.isUnpublished,
      'is_favorite': instance.isFavorite,
      'latest_reel_media': instance.latestReelMedia,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItemToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
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

FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUserToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser
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

FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem()
    ..user = json['user'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..position =
        (json['position'] as List)?.map((e) => (e as num)?.toDouble())?.toList()
    ..startTimeInVideoInSec = json['start_time_in_video_in_sec']
    ..durationInVideoInSec = json['duration_in_video_in_sec'];
}

Map<String,
    dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItemToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem instance) =>
    <String, dynamic>{
      'user': instance.user,
      'position': instance.position,
      'start_time_in_video_in_sec': instance.startTimeInVideoInSec,
      'duration_in_video_in_sec': instance.durationInVideoInSec,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdUsertags
    _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdUsertags()
    ..IN = (json['i_n'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsInItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdUsertagsToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdUsertags instance) =>
    <String, dynamic>{
      'i_n': instance.IN,
    };

FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus()
    ..following = json['following'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool
    ..isMutingReel = json['is_muting_reel'] as bool
    ..isBestie = json['is_bestie'] as bool
    ..isRestricted = json['is_restricted'] as bool;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatusToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
                instance) =>
        <String, dynamic>{
          'following': instance.following,
          'outgoing_request': instance.outgoingRequest,
          'is_muting_reel': instance.isMutingReel,
          'is_bestie': instance.isBestie,
          'is_restricted': instance.isRestricted,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserFriendshipStatus
            .fromJson(json['friendship_status'] as Map<String, dynamic>)
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..isUnpublished = json['is_unpublished'] as bool
    ..isFavorite = json['is_favorite'] as bool
    ..latestReelMedia = json['latest_reel_media'] as int;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUserToJson(
            FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser instance) =>
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
          'is_unpublished': instance.isUnpublished,
          'is_favorite': instance.isFavorite,
          'latest_reel_media': instance.latestReelMedia,
        };

FeedTimelineResponseFeedItemsItemMediaOrAdCaption
    _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAdCaption()
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
        : FeedTimelineResponseFeedItemsItemMediaOrAdCaptionUser.fromJson(
            json['user'] as Map<String, dynamic>)
    ..didReportAsSpam = json['did_report_as_spam'] as bool
    ..shareEnabled = json['share_enabled'] as bool
    ..mediaId = json['media_id'] as int;
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdCaptionToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAdCaption instance) =>
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

FeedTimelineResponseFeedItemsItemMediaOrAd
    _$FeedTimelineResponseFeedItemsItemMediaOrAdFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemMediaOrAd()
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
        : FeedTimelineResponseFeedItemsItemMediaOrAdImageVersions2.fromJson(
            json['image_versions2'] as Map<String, dynamic>)
    ..originalWidth = json['original_width'] as int
    ..originalHeight = json['original_height'] as int
    ..user = json['user'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAdUser.fromJson(
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
    ..previewComments = json['preview_comments'] as List
    ..canViewMorePreviewComments =
        json['can_view_more_preview_comments'] as bool
    ..commentCount = json['comment_count'] as int
    ..inlineComposerDisplayCondition =
        json['inline_composer_display_condition'] as String
    ..inlineComposerImpTriggerTime =
        json['inline_composer_imp_trigger_time'] as int
    ..likeCount = json['like_count'] as int
    ..hasLiked = json['has_liked'] as bool
    ..topLikers =
        (json['top_likers'] as List)?.map((e) => e as String)?.toList()
    ..facepileTopLikers = (json['facepile_top_likers'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseFeedItemsItemMediaOrAdFacepileTopLikersItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..photoOfYou = json['photo_of_you'] as bool
    ..usertags = json['usertags'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAdUsertags.fromJson(json['usertags'] as Map<String, dynamic>)
    ..caption = json['caption'] == null ? null : FeedTimelineResponseFeedItemsItemMediaOrAdCaption.fromJson(json['caption'] as Map<String, dynamic>)
    ..canViewerSave = json['can_viewer_save'] as bool
    ..organicTrackingToken = json['organic_tracking_token'] as String
    ..preview = json['preview'] as String
    ..inventorySource = json['inventory_source'] as String
    ..isSeen = json['is_seen'] as bool
    ..isEof = json['is_eof'] as bool;
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemMediaOrAdToJson(
        FeedTimelineResponseFeedItemsItemMediaOrAd instance) =>
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
      'preview_comments': instance.previewComments,
      'can_view_more_preview_comments': instance.canViewMorePreviewComments,
      'comment_count': instance.commentCount,
      'inline_composer_display_condition':
          instance.inlineComposerDisplayCondition,
      'inline_composer_imp_trigger_time': instance.inlineComposerImpTriggerTime,
      'like_count': instance.likeCount,
      'has_liked': instance.hasLiked,
      'top_likers': instance.topLikers,
      'facepile_top_likers': instance.facepileTopLikers,
      'photo_of_you': instance.photoOfYou,
      'usertags': instance.usertags,
      'caption': instance.caption,
      'can_viewer_save': instance.canViewerSave,
      'organic_tracking_token': instance.organicTrackingToken,
      'preview': instance.preview,
      'inventory_source': instance.inventorySource,
      'is_seen': instance.isSeen,
      'is_eof': instance.isEof,
    };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser()
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

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUserToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
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
        };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard()
    ..user = json['user'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardUser
            .fromJson(json['user'] as Map<String, dynamic>)
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

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCardToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
                instance) =>
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

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard()
    ..title = json['title'] as String
    ..subtitle = json['subtitle'] as String
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..primaryButtonText = json['primary_button_text'] as String;
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCardToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
                instance) =>
        <String, dynamic>{
          'title': instance.title,
          'subtitle': instance.subtitle,
          'id': instance.id,
          'type': instance.type,
          'primary_button_text': instance.primaryButtonText,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem()
    ..userCard = json['user_card'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUserCard
            .fromJson(json['user_card'] as Map<String, dynamic>)
    ..upsellCiCard = json['upsell_ci_card'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemUpsellCiCard
            .fromJson(json['upsell_ci_card'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItemToJson(
            FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
                instance) =>
        <String, dynamic>{
          'user_card': instance.userCard,
          'upsell_ci_card': instance.upsellCiCard,
        };

FeedTimelineResponseFeedItemsItemSuggestedUsers
    _$FeedTimelineResponseFeedItemsItemSuggestedUsersFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemSuggestedUsers()
    ..type = json['type'] as int
    ..suggestionCards = (json['suggestion_cards'] as List)
        ?.map((e) => e == null
            ? null
            : FeedTimelineResponseFeedItemsItemSuggestedUsersSuggestionCardsItem
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..landingSiteType = json['landing_site_type'] as String
    ..title = json['title'] as String
    ..viewAllText = json['view_all_text'] as String
    ..landingSiteTitle = json['landing_site_title'] as String
    ..netegoType = json['netego_type'] as String
    ..isUnitDismissable = json['is_unit_dismissable'] as bool
    ..rankingAlgorithm = json['ranking_algorithm'] as String
    ..upsellFbPos = json['upsell_fb_pos'] as String
    ..autoDvance = json['auto_dvance'] as String
    ..id = json['id'] as String
    ..trackingToken = json['tracking_token'] as String;
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemSuggestedUsersToJson(
        FeedTimelineResponseFeedItemsItemSuggestedUsers instance) =>
    <String, dynamic>{
      'type': instance.type,
      'suggestion_cards': instance.suggestionCards,
      'landing_site_type': instance.landingSiteType,
      'title': instance.title,
      'view_all_text': instance.viewAllText,
      'landing_site_title': instance.landingSiteTitle,
      'netego_type': instance.netegoType,
      'is_unit_dismissable': instance.isUnitDismissable,
      'ranking_algorithm': instance.rankingAlgorithm,
      'upsell_fb_pos': instance.upsellFbPos,
      'auto_dvance': instance.autoDvance,
      'id': instance.id,
      'tracking_token': instance.trackingToken,
    };

FeedTimelineResponseFeedItemsItemStoriesNetego
    _$FeedTimelineResponseFeedItemsItemStoriesNetegoFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItemStoriesNetego()
    ..trackingToken = json['tracking_token'] as String
    ..hideUnitIfSeen = json['hide_unit_if_seen'] as String
    ..id = json['id'] as int;
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemStoriesNetegoToJson(
        FeedTimelineResponseFeedItemsItemStoriesNetego instance) =>
    <String, dynamic>{
      'tracking_token': instance.trackingToken,
      'hide_unit_if_seen': instance.hideUnitIfSeen,
      'id': instance.id,
    };

FeedTimelineResponseFeedItemsItem _$FeedTimelineResponseFeedItemsItemFromJson(
    Map<String, dynamic> json) {
  return FeedTimelineResponseFeedItemsItem()
    ..mediaOrAd = json['media_or_ad'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemMediaOrAd.fromJson(
            json['media_or_ad'] as Map<String, dynamic>)
    ..suggestedUsers = json['suggested_users'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemSuggestedUsers.fromJson(
            json['suggested_users'] as Map<String, dynamic>)
    ..storiesNetego = json['stories_netego'] == null
        ? null
        : FeedTimelineResponseFeedItemsItemStoriesNetego.fromJson(
            json['stories_netego'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeedTimelineResponseFeedItemsItemToJson(
        FeedTimelineResponseFeedItemsItem instance) =>
    <String, dynamic>{
      'media_or_ad': instance.mediaOrAd,
      'suggested_users': instance.suggestedUsers,
      'stories_netego': instance.storiesNetego,
    };

FeedTimelineResponsePaginationInfo _$FeedTimelineResponsePaginationInfoFromJson(
    Map<String, dynamic> json) {
  return FeedTimelineResponsePaginationInfo()
    ..source = json['source']
    ..groupId = json['group_id'];
}

Map<String, dynamic> _$FeedTimelineResponsePaginationInfoToJson(
        FeedTimelineResponsePaginationInfo instance) =>
    <String, dynamic>{
      'source': instance.source,
      'group_id': instance.groupId,
    };

FeedTimelineResponseClientGapEnforcerMatrixItem
    _$FeedTimelineResponseClientGapEnforcerMatrixItemFromJson(
        Map<String, dynamic> json) {
  return FeedTimelineResponseClientGapEnforcerMatrixItem()
    ..list = (json['list'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$FeedTimelineResponseClientGapEnforcerMatrixItemToJson(
        FeedTimelineResponseClientGapEnforcerMatrixItem instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
