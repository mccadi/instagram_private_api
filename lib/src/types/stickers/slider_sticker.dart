import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class SliderSticker extends InstaSticker {
  String question;
  String backgroundColor;
  String textColor;
  String emoji;

  SliderSticker({
    @required this.question,
    @required this.emoji,
    this.textColor = '#000000',
    this.backgroundColor = '#ffffff',
  }) : super(0.7291667, 0.22212838);

  @override
  Map<String, dynamic> place() => {
        ...toJson(),
        'viewer_can_vote': false,
        'slider_vote_count': 0,
        'viewer_vote': -1.0,
        'slider_vote_average': 0.0,
        'background_color': backgroundColor,
        'emoji': emoji,
        'question': question,
        'text_color': textColor,
      };
}
