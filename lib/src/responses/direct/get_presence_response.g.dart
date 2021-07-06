// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_presence_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DirectGetPresenceResponse _$DirectGetPresenceResponseFromJson(
    Map<String, dynamic> json) {
  return DirectGetPresenceResponse()
    ..userPresence = (json['user_presence'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DirectGetPresenceResponseUserPresenceMapItem.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..status = json['status'] as String;
}

Map<String, dynamic> _$DirectGetPresenceResponseToJson(
        DirectGetPresenceResponse instance) =>
    <String, dynamic>{
      'user_presence': instance.userPresence,
      'status': instance.status,
    };

DirectGetPresenceResponseUserPresenceMapItem
    _$DirectGetPresenceResponseUserPresenceMapItemFromJson(
        Map<String, dynamic> json) {
  return DirectGetPresenceResponseUserPresenceMapItem()
    ..isActive = json['is_active'] as bool
    ..lastActivityAtMs = json['last_activity_at_ms'] as int;
}

Map<String, dynamic> _$DirectGetPresenceResponseUserPresenceMapItemToJson(
        DirectGetPresenceResponseUserPresenceMapItem instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'last_activity_at_ms': instance.lastActivityAtMs,
    };
