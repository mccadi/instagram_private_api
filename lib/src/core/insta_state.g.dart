// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insta_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstaDevice _$InstaDeviceFromJson(Map<String, dynamic> json) {
  return InstaDevice(
    json['deviceString'] as String,
    json['build'] as String,
    json['uuid'] as String,
    json['phoneId'] as String,
    json['adid'] as String,
    json['deviceId'] as String,
  );
}

Map<String, dynamic> _$InstaDeviceToJson(InstaDevice instance) =>
    <String, dynamic>{
      'deviceString': instance.deviceString,
      'build': instance.build,
      'uuid': instance.uuid,
      'phoneId': instance.phoneId,
      'adid': instance.adid,
      'deviceId': instance.deviceId,
    };
