import 'package:json_annotation/json_annotation.dart';

part 'story_charities_nullstate_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FundraiserStoryCharitiesNullstateResponse {
  List followedCharities;
  List<FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem>
      suggestedCharities;
  List<FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem>
      searchedCharities;
  String maxId;
  bool moreAvailable;
  String status;

  FundraiserStoryCharitiesNullstateResponse();

  factory FundraiserStoryCharitiesNullstateResponse.fromJson(
          Map<String, dynamic> json) =>
      _$FundraiserStoryCharitiesNullstateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$FundraiserStoryCharitiesNullstateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem {
  int pk;
  String username;
  String fullName;
  bool isPrivate;
  String profilePicUrl;
  String profilePicId;
  bool isVerified;
  bool hasAnonymousProfilePicture;
  int mutualFollowersCount;

  FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem();

  factory FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItem.fromJson(
          Map<String, dynamic> json) =>
      _$FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItemFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$FundraiserStoryCharitiesNullstateResponseSuggestedCharitiesItemToJson(
          this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem {
  int pk;
  String username;
  String fullName;
  bool isPrivate;
  String profilePicUrl;
  bool isVerified;
  bool hasAnonymousProfilePicture;
  int mutualFollowersCount;
  String profilePicId;

  FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem();

  factory FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItem.fromJson(
          Map<String, dynamic> json) =>
      _$FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItemFromJson(
          json);

  Map<String, dynamic> toJson() =>
      _$FundraiserStoryCharitiesNullstateResponseSearchedCharitiesItemToJson(
          this);
}
