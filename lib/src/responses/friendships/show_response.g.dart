// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipsShowResponse _$FriendshipsShowResponseFromJson(
    Map<String, dynamic> json) {
  return FriendshipsShowResponse()
    ..following = json['following'] as bool
    ..followedBy = json['followed_by'] as bool
    ..blocking = json['blocking'] as bool
    ..muting = json['muting'] as bool
    ..isPrivate = json['is_private'] as bool
    ..incomingRequest = json['incoming_request'] as bool
    ..outgoingRequest = json['outgoing_request'] as bool
    ..isBlockingReel = json['is_blocking_reel'] as bool
    ..isMutingReel = json['is_muting_reel'] as bool
    ..isBestie = json['is_bestie'] as bool
    ..isRestricted = json['is_restricted'] as bool
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FriendshipsShowResponseToJson(
        FriendshipsShowResponse instance) =>
    <String, dynamic>{
      'following': instance.following,
      'followed_by': instance.followedBy,
      'blocking': instance.blocking,
      'muting': instance.muting,
      'is_private': instance.isPrivate,
      'incoming_request': instance.incomingRequest,
      'outgoing_request': instance.outgoingRequest,
      'is_blocking_reel': instance.isBlockingReel,
      'is_muting_reel': instance.isMutingReel,
      'is_bestie': instance.isBestie,
      'is_restricted': instance.isRestricted,
      'status': instance.status,
    };
