import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class QuizSicker extends InstaSticker {
  String question;
  List<String> options;
  int correctAnswer;
  String textColor;
  String startBackgroundColor;
  String endBackgroundColor;

  QuizSicker(
      {@required this.question,
      @required this.options,
      @required this.correctAnswer,
      this.textColor = '#ffffff',
      this.startBackgroundColor = '#262626',
      this.endBackgroundColor = '#262626'})
      : assert(options.length >= 2 && options.length <= 4,
            'Options.length has to be 2..4'),
        super(0.7291667, 0.11824318 + (options.length * 0.10304056));

  @override
  Map<String, dynamic> place() => {
        ...toJson(),
        'question': question,
        'options': options.map((x) => {'text': x, 'count': 0}).toList(),
        'correct_answer': correctAnswer,
        'viewer_can_answer': false,
        'viewer_answer': -1,
        'text_color': textColor,
        'start_background_color': startBackgroundColor,
        'end_background_color': endBackgroundColor,
      };
}
