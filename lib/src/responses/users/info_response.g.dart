// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersInfoResponse _$UsersInfoResponseFromJson(Map<String, dynamic> json) {
  return UsersInfoResponse()
    ..user = json['user'] == null
        ? null
        : UsersInfoResponseUser.fromJson(json['user'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$UsersInfoResponseToJson(UsersInfoResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'status': instance.status,
    };

UsersInfoResponseUserBiographyWithEntities
    _$UsersInfoResponseUserBiographyWithEntitiesFromJson(
        Map<String, dynamic> json) {
  return UsersInfoResponseUserBiographyWithEntities()
    ..rawText = json['raw_text'] as String
    ..entities = json['entities'] as List;
}

Map<String, dynamic> _$UsersInfoResponseUserBiographyWithEntitiesToJson(
        UsersInfoResponseUserBiographyWithEntities instance) =>
    <String, dynamic>{
      'raw_text': instance.rawText,
      'entities': instance.entities,
    };

UsersInfoResponseUserHdProfilePicUrlInfo
    _$UsersInfoResponseUserHdProfilePicUrlInfoFromJson(
        Map<String, dynamic> json) {
  return UsersInfoResponseUserHdProfilePicUrlInfo()
    ..url = json['url'] as String
    ..width = json['width'] as int
    ..height = json['height'] as int;
}

Map<String, dynamic> _$UsersInfoResponseUserHdProfilePicUrlInfoToJson(
        UsersInfoResponseUserHdProfilePicUrlInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

UsersInfoResponseUserLinkedFbInfo _$UsersInfoResponseUserLinkedFbInfoFromJson(
    Map<String, dynamic> json) {
  return UsersInfoResponseUserLinkedFbInfo();
}

Map<String, dynamic> _$UsersInfoResponseUserLinkedFbInfoToJson(
        UsersInfoResponseUserLinkedFbInfo instance) =>
    <String, dynamic>{};

UsersInfoResponseUserNametag _$UsersInfoResponseUserNametagFromJson(
    Map<String, dynamic> json) {
  return UsersInfoResponseUserNametag()
    ..mode = json['mode'] as int
    ..gradient = json['gradient'] as int
    ..emoji = json['emoji'] as String
    ..selfieSticker = json['selfie_sticker'] as int;
}

Map<String, dynamic> _$UsersInfoResponseUserNametagToJson(
        UsersInfoResponseUserNametag instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'gradient': instance.gradient,
      'emoji': instance.emoji,
      'selfie_sticker': instance.selfieSticker,
    };

UsersInfoResponseUser _$UsersInfoResponseUserFromJson(
    Map<String, dynamic> json) {
  return UsersInfoResponseUser()
    ..pk = json['pk'] as int
    ..username = json['username'] as String
    ..fullName = json['full_name'] as String
    ..isPrivate = json['is_private'] as bool
    ..profilePicUrl = json['profile_pic_url'] as String
    ..profilePicId = json['profile_pic_id'] as String
    ..isVerified = json['is_verified'] as bool
    ..hasAnonymousProfilePicture = json['has_anonymous_profile_picture'] as bool
    ..mediaCount = json['media_count'] as int
    ..followerCount = json['follower_count'] as int
    ..followingCount = json['following_count'] as int
    ..followingTagCount = json['following_tag_count'] as int
    ..biography = json['biography'] as String
    ..canLinkEntitiesInBio = json['can_link_entities_in_bio'] as bool
    ..biographyWithEntities = json['biography_with_entities'] == null
        ? null
        : UsersInfoResponseUserBiographyWithEntities.fromJson(
            json['biography_with_entities'] as Map<String, dynamic>)
    ..externalUrl = json['external_url'] as String
    ..externalLynxUrl = json['external_lynx_url'] as String
    ..hasBiographyTranslation = json['has_biography_translation'] as bool
    ..canBoostPost = json['can_boost_post'] as bool
    ..canSeeOrganicInsights = json['can_see_organic_insights'] as bool
    ..showInsightsTerms = json['show_insights_terms'] as bool
    ..canConvertToBusiness = json['can_convert_to_business'] as bool
    ..canCreateSponsorTags = json['can_create_sponsor_tags'] as bool
    ..canBeTaggedAsSponsor = json['can_be_tagged_as_sponsor'] as bool
    ..totalIgtvVideos = json['total_igtv_videos'] as int
    ..totalArEffects = json['total_ar_effects'] as int
    ..reelAutoArchive = json['reel_auto_archive'] as String
    ..isProfileActionNeeded = json['is_profile_action_needed'] as bool
    ..usertagsCount = json['usertags_count'] as int
    ..usertagReviewEnabled = json['usertag_review_enabled'] as bool
    ..isNeedy = json['is_needy'] as bool
    ..isInterestAccount = json['is_interest_account'] as bool
    ..hasRecommendAccounts = json['has_recommend_accounts'] as bool
    ..hasChaining = json['has_chaining'] as bool
    ..hdProfilePicUrlInfo = json['hd_profile_pic_url_info'] == null
        ? null
        : UsersInfoResponseUserHdProfilePicUrlInfo.fromJson(
            json['hd_profile_pic_url_info'] as Map<String, dynamic>)
    ..hasPlacedOrders = json['has_placed_orders'] as bool
    ..canTagProductsFromMerchants =
        json['can_tag_products_from_merchants'] as bool
    ..showConversionEditEntry = json['show_conversion_edit_entry'] as bool
    ..aggregatePromoteEngagement = json['aggregate_promote_engagement'] as bool
    ..allowedCommenterType = json['allowed_commenter_type'] as String
    ..isVideoCreator = json['is_video_creator'] as bool
    ..hasProfileVideoFeed = json['has_profile_video_feed'] as bool
    ..hasHighlightReels = json['has_highlight_reels'] as bool
    ..isEligibleToShowFbCrossSharingNux =
        json['is_eligible_to_show_fb_cross_sharing_nux'] as bool
    ..pageIdForNewSumaBizAccount = json['page_id_for_new_suma_biz_account']
    ..eligibleShoppingSignupEntrypoints =
        json['eligible_shopping_signup_entrypoints'] as List
    ..canBeReportedAsFraud = json['can_be_reported_as_fraud'] as bool
    ..isBusiness = json['is_business'] as bool
    ..accountType = json['account_type'] as int
    ..isCallToActionEnabled = json['is_call_to_action_enabled']
    ..linkedFbInfo = json['linked_fb_info'] == null
        ? null
        : UsersInfoResponseUserLinkedFbInfo.fromJson(
            json['linked_fb_info'] as Map<String, dynamic>)
    ..includeDirectBlacklistStatus =
        json['include_direct_blacklist_status'] as bool
    ..canFollowHashtag = json['can_follow_hashtag'] as bool
    ..isPotentialBusiness = json['is_potential_business'] as bool
    ..feedPostReshareDisabled = json['feed_post_reshare_disabled'] as bool
    ..bestiesCount = json['besties_count'] as int
    ..showBestiesBadge = json['show_besties_badge'] as bool
    ..recentlyBestiedByCount = json['recently_bestied_by_count'] as int
    ..nametag = json['nametag'] == null
        ? null
        : UsersInfoResponseUserNametag.fromJson(
            json['nametag'] as Map<String, dynamic>)
    ..autoExpandChaining = json['auto_expand_chaining'] as bool
    ..highlightReshareDisabled = json['highlight_reshare_disabled'] as bool
    ..showPostInsightsEntryPoint =
        json['show_post_insights_entry_point'] as bool
    ..showPostInsightsSettingsEntryPoint =
        json['show_post_insights_settings_entry_point'] as bool;
}

Map<String, dynamic> _$UsersInfoResponseUserToJson(
        UsersInfoResponseUser instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'username': instance.username,
      'full_name': instance.fullName,
      'is_private': instance.isPrivate,
      'profile_pic_url': instance.profilePicUrl,
      'profile_pic_id': instance.profilePicId,
      'is_verified': instance.isVerified,
      'has_anonymous_profile_picture': instance.hasAnonymousProfilePicture,
      'media_count': instance.mediaCount,
      'follower_count': instance.followerCount,
      'following_count': instance.followingCount,
      'following_tag_count': instance.followingTagCount,
      'biography': instance.biography,
      'can_link_entities_in_bio': instance.canLinkEntitiesInBio,
      'biography_with_entities': instance.biographyWithEntities,
      'external_url': instance.externalUrl,
      'external_lynx_url': instance.externalLynxUrl,
      'has_biography_translation': instance.hasBiographyTranslation,
      'can_boost_post': instance.canBoostPost,
      'can_see_organic_insights': instance.canSeeOrganicInsights,
      'show_insights_terms': instance.showInsightsTerms,
      'can_convert_to_business': instance.canConvertToBusiness,
      'can_create_sponsor_tags': instance.canCreateSponsorTags,
      'can_be_tagged_as_sponsor': instance.canBeTaggedAsSponsor,
      'total_igtv_videos': instance.totalIgtvVideos,
      'total_ar_effects': instance.totalArEffects,
      'reel_auto_archive': instance.reelAutoArchive,
      'is_profile_action_needed': instance.isProfileActionNeeded,
      'usertags_count': instance.usertagsCount,
      'usertag_review_enabled': instance.usertagReviewEnabled,
      'is_needy': instance.isNeedy,
      'is_interest_account': instance.isInterestAccount,
      'has_recommend_accounts': instance.hasRecommendAccounts,
      'has_chaining': instance.hasChaining,
      'hd_profile_pic_url_info': instance.hdProfilePicUrlInfo,
      'has_placed_orders': instance.hasPlacedOrders,
      'can_tag_products_from_merchants': instance.canTagProductsFromMerchants,
      'show_conversion_edit_entry': instance.showConversionEditEntry,
      'aggregate_promote_engagement': instance.aggregatePromoteEngagement,
      'allowed_commenter_type': instance.allowedCommenterType,
      'is_video_creator': instance.isVideoCreator,
      'has_profile_video_feed': instance.hasProfileVideoFeed,
      'has_highlight_reels': instance.hasHighlightReels,
      'is_eligible_to_show_fb_cross_sharing_nux':
          instance.isEligibleToShowFbCrossSharingNux,
      'page_id_for_new_suma_biz_account': instance.pageIdForNewSumaBizAccount,
      'eligible_shopping_signup_entrypoints':
          instance.eligibleShoppingSignupEntrypoints,
      'can_be_reported_as_fraud': instance.canBeReportedAsFraud,
      'is_business': instance.isBusiness,
      'account_type': instance.accountType,
      'is_call_to_action_enabled': instance.isCallToActionEnabled,
      'linked_fb_info': instance.linkedFbInfo,
      'include_direct_blacklist_status': instance.includeDirectBlacklistStatus,
      'can_follow_hashtag': instance.canFollowHashtag,
      'is_potential_business': instance.isPotentialBusiness,
      'feed_post_reshare_disabled': instance.feedPostReshareDisabled,
      'besties_count': instance.bestiesCount,
      'show_besties_badge': instance.showBestiesBadge,
      'recently_bestied_by_count': instance.recentlyBestiedByCount,
      'nametag': instance.nametag,
      'auto_expand_chaining': instance.autoExpandChaining,
      'highlight_reshare_disabled': instance.highlightReshareDisabled,
      'show_post_insights_entry_point': instance.showPostInsightsEntryPoint,
      'show_post_insights_settings_entry_point':
          instance.showPostInsightsSettingsEntryPoint,
    };
