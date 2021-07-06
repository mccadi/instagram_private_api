// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arlink_download_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersArlinkDownloadInfoResponse _$UsersArlinkDownloadInfoResponseFromJson(
    Map<String, dynamic> json) {
  return UsersArlinkDownloadInfoResponse()
    ..checksum = json['checksum'] as String
    ..downloadUrl = json['download_url'] as String
    ..fileSize = json['file_size'] as int
    ..version = json['version'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$UsersArlinkDownloadInfoResponseToJson(
        UsersArlinkDownloadInfoResponse instance) =>
    <String, dynamic>{
      'checksum': instance.checksum,
      'download_url': instance.downloadUrl,
      'file_size': instance.fileSize,
      'version': instance.version,
      'status': instance.status,
    };
