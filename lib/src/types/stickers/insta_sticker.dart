import 'dart:convert';

import 'package:instagram_private_api/src/types/stickers/chat_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/countdown_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/hashtag_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/location_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/mention_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/poll_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/question_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/quiz_sticker.dart';
import 'package:instagram_private_api/src/types/stickers/slider_sticker.dart';

abstract class InstaSticker {
  double x = 0;
  double y = 0;

  /// index
  int z = 0;
  double width;
  double height;
  double rotation = 0;

  bool isSticker;

  InstaSticker(this.width, this.height, [this.isSticker = true]);

  void center() => this
    ..x = 0.5
    ..y = 0.5;

  void rotateDeg(double deg) => rotation = deg / 360.0;

  void moveFront([int layers = 1]) => z += layers;

  void moveBack([int layers = 1]) => z -= layers;

  void scale(double factor) => this
    ..width *= factor
    ..height *= factor;

  void right() => x = 1.0 - width;

  void left() => x = 0;

  void top() => y = 0;

  void bottom() => y = 1.0 - height;

  Map<String, dynamic> toJson() => {
        'x': x,
        'y': y,
        'z': z,
        'width': width,
        'height': height,
        'rotation': rotation,
        'is_sticker': true,
      };

  Map<String, dynamic> place();
}

class InstaStickerConfiguration {
  List<HashtagSticker> hashtags;
  List<MentionSticker> mentions;
  List<LocationSticker> locations;
  CountdownSticker countdownSticker;
  ChatSticker chatSticker;
  PollSticker pollSticker;
  QuestionSticker questionSticker;
  QuizSicker quizSicker;
  SliderSticker sliderSticker;

  InstaStickerConfiguration({
    this.hashtags,
    this.mentions,
    this.locations,
    this.countdownSticker,
    this.chatSticker,
    this.pollSticker,
    this.questionSticker,
    this.quizSicker,
    this.sliderSticker,
  });

  Map<String, dynamic> build() {
    final List<String> ids = [];
    final Map<String, dynamic> map = {};
    void addSingleSticker(String id, String key, InstaSticker sticker) {
      ids.add(id);
      map[key] = jsonEncode([sticker.place()]);
    }

    void addMultipleStickers(String id, String key, dynamic stickers) {
      ids.add(id);
      map[key] = jsonEncode(stickers);
    }

    if (hashtags != null && hashtags.isNotEmpty) {
      addMultipleStickers('hashtag_sticker_vibrant', 'story_hashtags',
          hashtags.map((x) => x.place()).toList());
    }
    if (mentions != null && mentions.isNotEmpty) {
      addMultipleStickers('mention_sticker_vibrant', 'reel_mentions',
          mentions.map((x) => x.place()).toList());
    }
    if (locations != null && locations.isNotEmpty) {
      addMultipleStickers('location_sticker_vibrant', 'story_locations',
          locations.map((x) => x.place()).toList());
    }
    if (countdownSticker != null) {
      addSingleSticker(
          'countdown_sticker_time', 'story_countdowns', countdownSticker);
    }
    if (chatSticker != null) {
      addSingleSticker('chat_sticker_id', 'story_chats', chatSticker);
    }
    if (pollSticker != null) {
      addSingleSticker('polling_sticker_vibrant', 'story_polls', pollSticker);
    }
    if (questionSticker != null) {
      addSingleSticker(
          'question_sticker_ama', 'story_questions', questionSticker);
    }
    if (quizSicker != null) {
      addSingleSticker('quiz_story_sticker_default', 'story_quizs', quizSicker);
    }
    if (sliderSticker != null) {
      addSingleSticker('emoji_slider_${sliderSticker.emoji}', 'story_sliders',
          sliderSticker);
    }

    map['story_sticker_ids'] = ids.join(',');
    return map;
  }
}
