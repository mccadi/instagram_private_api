// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadPhotoResponse _$UploadPhotoResponseFromJson(Map<String, dynamic> json) {
  return UploadPhotoResponse()
    ..uploadId = json['upload_id'] as String
    ..xsharingNonces = json['xsharing_nonces'] == null
        ? null
        : UploadPhotoResponseXsharingNonces.fromJson(
            json['xsharing_nonces'] as Map<String, dynamic>)
    ..status = json['status'] as String;
}

Map<String, dynamic> _$UploadPhotoResponseToJson(
        UploadPhotoResponse instance) =>
    <String, dynamic>{
      'upload_id': instance.uploadId,
      'xsharing_nonces': instance.xsharingNonces,
      'status': instance.status,
    };

UploadPhotoResponseXsharingNonces _$UploadPhotoResponseXsharingNoncesFromJson(
    Map<String, dynamic> json) {
  return UploadPhotoResponseXsharingNonces();
}

Map<String, dynamic> _$UploadPhotoResponseXsharingNoncesToJson(
        UploadPhotoResponseXsharingNonces instance) =>
    <String, dynamic>{};
