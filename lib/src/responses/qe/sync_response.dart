import 'package:json_annotation/json_annotation.dart';
part 'sync_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class QeSyncResponse {
	List<QeSyncResponseExperimentsItem> experiments;
	String status;
	QeSyncResponse();
	factory QeSyncResponse.fromJson(Map<String, dynamic> json) => _$QeSyncResponseFromJson(json);
	Map<String, dynamic> toJson() => _$QeSyncResponseToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class QeSyncResponseExperimentsItemParamsItem {
	String name;
	String value;
	QeSyncResponseExperimentsItemParamsItem();
	factory QeSyncResponseExperimentsItemParamsItem.fromJson(Map<String, dynamic> json) => _$QeSyncResponseExperimentsItemParamsItemFromJson(json);
	Map<String, dynamic> toJson() => _$QeSyncResponseExperimentsItemParamsItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class QeSyncResponseExperimentsItem {
	String name;
	String group;
	List additionalParams;
	List<QeSyncResponseExperimentsItemParamsItem> params;
	String loggingId;
	QeSyncResponseExperimentsItem();
	factory QeSyncResponseExperimentsItem.fromJson(Map<String, dynamic> json) => _$QeSyncResponseExperimentsItemFromJson(json);
	Map<String, dynamic> toJson() => _$QeSyncResponseExperimentsItemToJson(this);
}
