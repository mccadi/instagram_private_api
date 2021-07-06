import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class LocationSticker extends InstaSticker {
  String locationId;

  LocationSticker(
      {@required this.locationId, double width = 0.47, double height = 0.111})
      : super(width, height);

  @override
  Map<String, dynamic> place() => {...toJson(), 'location_id': locationId};
}
