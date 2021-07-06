import 'package:instagram_private_api/src/types/stickers/insta_sticker.dart';
import 'package:meta/meta.dart';

class CountdownSticker extends InstaSticker {

  DateTime end;
  String text;
  String textColor;
  String startBackgroundColor;
  String endBackgroundColor;
  String digitColor;
  String digitCardColor;

  CountdownSticker({
    @required this.text,
    @required this.end,
    this.textColor = '#ffffff',
    this.startBackgroundColor = '#ca2ee1',
    this.endBackgroundColor = '#5eb1ff',
    this.digitColor = '#7e0091',
    this.digitCardColor = '#ffffffcc',
}) : super(0.703125, 0.26013514);

  @override
  Map<String, dynamic> place() => {
    ...toJson(),
    'text': text,
    'text_color': textColor,
    'start_background_color': startBackgroundColor,
    'end_background_color': endBackgroundColor,
    'digit_color': digitColor,
    'digit_card_color': digitCardColor,
    'end_ts': (end.toUtc().millisecondsSinceEpoch / 1000.0).floor(),
    'following_enabled': true,
  };

}