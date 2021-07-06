// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FriendshipsChangeResponse _$FriendshipsChangeResponseFromJson(
    Map<String, dynamic> json) {
  return FriendshipsChangeResponse()
    ..friendshipStatus = json['friendship_status'] == null
        ? null
        : FriendshipsChangeResponseFriendshipStatus.fromJson(
            json['friendship_status'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FriendshipsChangeResponseToJson(
        FriendshipsChangeResponse instance) =>
    <String, dynamic>{
      'friendship_status': instance.friendshipStatus,
      'status': instance.status,
    };

FriendshipsChangeResponseFriendshipStatus
    _$FriendshipsChangeResponseFriendshipStatusFromJson(
        Map<String, dynamic> json) {
  return FriendshipsChangeResponseFriendshipStatus()
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

Map<String, dynamic> _$FriendshipsChangeResponseFriendshipStatusToJson(
        FriendshipsChangeResponseFriendshipStatus instance) =>
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
