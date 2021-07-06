import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:instagram_private_api/src/utilities/general_utility.dart';
import 'package:meta/meta.dart';

class QuestionSticker extends InstaSticker {

  String question;
  QuestionStickerType type;
  String backgroundColor;
  String textColor;
  String profilePicUrl;

  QuestionSticker({
    @required this.question,
    this.type = QuestionStickerType.text,
    this.backgroundColor = '#ffffff',
    this.textColor = '#000000',
    this.profilePicUrl = '',
}) : super(0.7291667, 0.28716215);

  @override
  Map<String, dynamic> place() => {
    ...toJson(),
    'viewer_can_interact': false,
    'background_color': backgroundColor,
    'profile_pic_url': profilePicUrl,
    'question_type': enumToString(type),
    'question': question,
    'text_color': textColor,
  };

}

enum QuestionStickerType {
  text,
  music
}