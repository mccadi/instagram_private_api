import 'package:instagram_private_api/src/types/timeline_media_types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LocationSearchResponse {
  List<LocationSearchResponseVenuesItem> venues;
  String requestId;
  String rankToken;
  String status;

  LocationSearchResponse();

  factory LocationSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LocationSearchResponseVenuesItem {
  String name;
  String externalId;
  String externalIdSource;
  double lat;
  double lng;
  String address;
  int minimumAge;

  LocationSearchResponseVenuesItem();

  factory LocationSearchResponseVenuesItem.fromJson(
          Map<String, dynamic> json) =>
      _$LocationSearchResponseVenuesItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LocationSearchResponseVenuesItemToJson(this);

  MediaLocation toMediaLocation() => MediaLocation.fromSearch(this);
}
