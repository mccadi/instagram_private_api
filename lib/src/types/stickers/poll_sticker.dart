import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class PollSticker extends InstaSticker {
  String leftOption;
  double leftFontSize;
  String rightOption;
  double rightFontSize;

  String question;

  PollSticker(
      {@required this.question,
      @required this.leftOption,
      @required this.rightOption,
      this.leftFontSize = 28.0,
      this.rightFontSize = 28.0})
      : super(0.49934897, 0.1266892);

  @override
  Map<String, dynamic> place() => {
        ...toJson(),
        'question': question,
        'viewer_vote': 0,
        'viewer_can_vote': true,
        'tallies': [
          {
            'text': leftOption,
            'count': 0,
            'font_size': leftFontSize,
          },
          {
            'text': rightOption,
            'count': 0,
            'font_size': rightFontSize,
          }
        ],
        'is_shared_result': false,
        'finished': false,
      };
}
