import 'package:instagram_private_api/instagram_private_api.dart';

class MediaExample {
  /// 'ig' is the 'convention' fro the InstaClient
  InstaClient ig;

  MediaExample(this.ig);

  /// returns the  current unix-time
  static double utcNow() =>
      DateTime.now().toUtc().millisecondsSinceEpoch / 1000.0;

  Future seenExample() async {
    /// get the first reel
    final reels = (await ig.feed.reelsTray().stream().toList())[0];
    await ig.media.seen(
      /// map the items to Key-Value-Pairs
        reels: Map.fromEntries(reels.items.map((reel) => MapEntry(
          /// the key will contain the user-pk twice
            '${reel.id}_${reel.user.pk}',
            /// the value contains the time-info
            ['${reel.takenAt}_${(utcNow() - 40).floor()}']))));
  }
}
