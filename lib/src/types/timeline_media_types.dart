import 'package:instagram_private_api/src/responses/location/search_response.dart';

class Usertag {
  int userId;
  double posX, posY;

  Usertag(this.userId, this.posX, this.posY);

  factory Usertag.fromJson(Map<String, dynamic> json) =>
      Usertag(json['user_id'], json['position'][0], json['position'][1]);

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'position': [posX, posY],
      };
}

class Usertags {
  List<Usertag> usertagsIn;
  List<Usertag> usertagsOut;

  Usertags();

  factory Usertags.fromJson(Map<String, dynamic> json) {
    final tags = Usertags();
    if (json.containsKey('in')) {
      tags.usertagsIn = json['in'].map((tag) => Usertag.fromJson(json['in']));
    }
    if (json.containsKey('out')) {
      tags.usertagsOut =
          json['out'].map((tag) => Usertag.fromJson(json['out']));
    }
    return tags;
  }

  Map<String, dynamic> toJson() => {
        'in': usertagsIn,
        'out': usertagsOut,
      };
}

class MediaLocation {
  String name;
  double lat;
  double lng;
  String address;
  String externalSource;
  String id;

  MediaLocation(this.name, this.lat, this.lng, this.address,
      this.externalSource, this.id);

  factory MediaLocation.fromJson(Map<String, dynamic> json) => MediaLocation(
      json['name'],
      json['lat'],
      json['lng'],
      json['address'],
      json['external_source'],
      json.entries.firstWhere((entry) => entry.key.endsWith('id')).value);

  factory MediaLocation.fromSearch(LocationSearchResponseVenuesItem venue) =>
      MediaLocation(venue.name, venue.lat, venue.lng, venue.address,
          venue.externalIdSource, venue.externalId);

  Map<String, dynamic> toJson() => {
        'name': name,
        'lat': lat,
        'lng': lng,
        'address': address,
        'external_source': externalSource,
        '${externalSource}_id': id,
      };
}
