// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QeSyncResponse _$QeSyncResponseFromJson(Map<String, dynamic> json) {
  return QeSyncResponse()
    ..experiments = (json['experiments'] as List)
        ?.map((e) => e == null
            ? null
            : QeSyncResponseExperimentsItem.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..status = json['status'] as String;
}

Map<String, dynamic> _$QeSyncResponseToJson(QeSyncResponse instance) =>
    <String, dynamic>{
      'experiments': instance.experiments,
      'status': instance.status,
    };

QeSyncResponseExperimentsItemParamsItem
    _$QeSyncResponseExperimentsItemParamsItemFromJson(
        Map<String, dynamic> json) {
  return QeSyncResponseExperimentsItemParamsItem()
    ..name = json['name'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$QeSyncResponseExperimentsItemParamsItemToJson(
        QeSyncResponseExperimentsItemParamsItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

QeSyncResponseExperimentsItem _$QeSyncResponseExperimentsItemFromJson(
    Map<String, dynamic> json) {
  return QeSyncResponseExperimentsItem()
    ..name = json['name'] as String
    ..group = json['group'] as String
    ..additionalParams = json['additional_params'] as List
    ..params = (json['params'] as List)
        ?.map((e) => e == null
            ? null
            : QeSyncResponseExperimentsItemParamsItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..loggingId = json['logging_id'] as String;
}

Map<String, dynamic> _$QeSyncResponseExperimentsItemToJson(
        QeSyncResponseExperimentsItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'group': instance.group,
      'additional_params': instance.additionalParams,
      'params': instance.params,
      'logging_id': instance.loggingId,
    };
