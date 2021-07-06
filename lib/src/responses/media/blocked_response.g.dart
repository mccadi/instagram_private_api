// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaBlockedResponse _$MediaBlockedResponseFromJson(Map<String, dynamic> json) {
  return MediaBlockedResponse()
    ..mediaIds = json['media_ids'] as List
    ..status = json['status'] as String;
}

Map<String, dynamic> _$MediaBlockedResponseToJson(
        MediaBlockedResponse instance) =>
    <String, dynamic>{
      'media_ids': instance.mediaIds,
      'status': instance.status,
    };
