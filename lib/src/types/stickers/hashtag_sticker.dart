import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class HashtagSticker extends InstaSticker {
  String tagName;

  HashtagSticker(
      {@required this.tagName, double width = 0.47, double height = 0.11})
      : super(width, height);

  @override
  Map<String, dynamic> place() => {...toJson(), 'tag_name': tagName};
}
