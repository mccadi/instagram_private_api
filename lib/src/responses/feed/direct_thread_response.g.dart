// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_thread_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDirectThreadResponse _$FeedDirectThreadResponseFromJson(
    Map<String, dynamic> json) {
  return FeedDirectThreadResponse()
    ..thread = (json['thread'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as List),
    )
    ..status = json['status'] as String;
}

Map<String, dynamic> _$FeedDirectThreadResponseToJson(
        FeedDirectThreadResponse instance) =>
    <String, dynamic>{
      'thread': instance.thread,
      'status': instance.status,
    };
