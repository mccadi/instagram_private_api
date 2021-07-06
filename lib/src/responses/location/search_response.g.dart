// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationSearchResponse _$LocationSearchResponseFromJson(
    Map<String, dynamic> json) {
  return LocationSearchResponse()
    ..venues = (json['venues'] as List)
        ?.map((e) => e == null
            ? null
            : LocationSearchResponseVenuesItem.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..requestId = json['request_id'] as String
    ..rankToken = json['rank_token'] as String
    ..status = json['status'] as String;
}

Map<String, dynamic> _$LocationSearchResponseToJson(
        LocationSearchResponse instance) =>
    <String, dynamic>{
      'venues': instance.venues,
      'request_id': instance.requestId,
      'rank_token': instance.rankToken,
      'status': instance.status,
    };

LocationSearchResponseVenuesItem _$LocationSearchResponseVenuesItemFromJson(
    Map<String, dynamic> json) {
  return LocationSearchResponseVenuesItem()
    ..name = json['name'] as String
    ..externalId = json['external_id'] as String
    ..externalIdSource = json['external_id_source'] as String
    ..lat = (json['lat'] as num)?.toDouble()
    ..lng = (json['lng'] as num)?.toDouble()
    ..address = json['address'] as String
    ..minimumAge = json['minimum_age'] as int;
}

Map<String, dynamic> _$LocationSearchResponseVenuesItemToJson(
        LocationSearchResponseVenuesItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'external_id': instance.externalId,
      'external_id_source': instance.externalIdSource,
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'minimum_age': instance.minimumAge,
    };
