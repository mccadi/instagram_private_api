import 'package:meta/meta.dart';

import 'insta_sticker.dart';

class ChatSticker extends InstaSticker {
  String text;
  String startBackgroundColor;
  String endBackgroundColor;

  ChatSticker({
    @required this.text,
    this.startBackgroundColor = '#3897f0',
    this.endBackgroundColor = '#27c4f5',
  }) : super(0.453125, 0.1266892);

  @override
  Map<String, dynamic> place() => {
        ...toJson(),
        'text': text,
        'start_background_color': startBackgroundColor,
        'end_background_color': endBackgroundColor,
        'has_started_chat': false,
      };
}
