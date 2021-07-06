// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadVideoResponse _$UploadVideoResponseFromJson(Map<String, dynamic> json) {
  return UploadVideoResponse()
    ..xsharingNonces = json['xsharing_nonces'] == null
        ? null
        : UploadVideoResponseXsharingNonces.fromJson(
            json['xsharing_nonces'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$UploadVideoResponseToJson(
        UploadVideoResponse instance) =>
    <String, dynamic>{
      'xsharing_nonces': instance.xsharingNonces,
      'status': instance.status,
    };

UploadVideoResponseXsharingNonces _$UploadVideoResponseXsharingNoncesFromJson(
    Map<String, dynamic> json) {
  return UploadVideoResponseXsharingNonces();
}

Map<String, dynamic> _$UploadVideoResponseXsharingNoncesToJson(
        UploadVideoResponseXsharingNonces instance) =>
    <String, dynamic>{};
