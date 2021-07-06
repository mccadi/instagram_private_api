import 'package:json_annotation/json_annotation.dart';
part 'get_presence_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class DirectGetPresenceResponse {
	Map<String, DirectGetPresenceResponseUserPresenceMapItem> userPresence;
	String status;
	DirectGetPresenceResponse();
	factory DirectGetPresenceResponse.fromJson(Map<String, dynamic> json) => _$DirectGetPresenceResponseFromJson(json);
	Map<String, dynamic> toJson() => _$DirectGetPresenceResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class DirectGetPresenceResponseUserPresenceMapItem {
	bool isActive;
	int lastActivityAtMs;
	DirectGetPresenceResponseUserPresenceMapItem();
	factory DirectGetPresenceResponseUserPresenceMapItem.fromJson(Map<String, dynamic> json) => _$DirectGetPresenceResponseUserPresenceMapItemFromJson(json);
	Map<String, dynamic> toJson() => _$DirectGetPresenceResponseUserPresenceMapItemToJson(this);
}
