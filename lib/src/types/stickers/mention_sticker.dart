import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class MentionSticker extends InstaSticker {
  String userId;

  MentionSticker(
      {@required this.userId, double width = 0.64, double height = 0.125})
      : super(width, height);

  @override
  Map<String, dynamic> place() => {
        ...toJson(),
        'display_type': 'mention_username',
        'user_id': userId,
      };
}
