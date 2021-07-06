import 'package:instagram_private_api/instagram_private_api.dart';
import 'package:instagram_private_api/src/enums/request_reason.dart';
import 'package:instagram_private_api/src/feeds/direct_inbox_feed.dart';
import 'package:instagram_private_api/src/feeds/direct_thread_feed.dart';
import 'package:instagram_private_api/src/feeds/reels_tray_feed.dart';
import 'package:instagram_private_api/src/feeds/timeline_feed.dart';
import 'package:instagram_private_api/src/feeds/user_feed.dart';
import 'package:instagram_private_api/src/feeds/user_story_feed.dart';
import 'package:instagram_private_api/src/responses/feed/direct_inbox_response.dart';
import 'package:meta/meta.dart';

class InstaFeedFactory {
  InstaClient _client;

  InstaFeedFactory(this._client);

  TimelineFeed timeline(
          [RequestReason reason = RequestReason.coldStartFetch]) =>
      TimelineFeed(_client, reason);

  ReelsTrayFeed reelsTray(
          [RequestReason reason = RequestReason.coldStartFetch]) =>
      ReelsTrayFeed(_client, reason);

  UserFeed user(dynamic userId,
          {bool excludeComments = true,
          bool onlyFetchFirstCarouselMedia = false}) =>
      UserFeed(_client, userId, excludeComments, onlyFetchFirstCarouselMedia);

  UserStoryFeed userStory(dynamic userId) => UserStoryFeed(_client, userId);

  DirectInboxFeed directInbox() => DirectInboxFeed(_client);

  DirectInboxFeed directPendingInbox() =>
      DirectInboxFeed(_client, path: '/api/v1/direct_v2/pending_inbox/');

  DirectThreadFeed directThread(
          {@required String id, String cursor, int seqId}) =>
      DirectThreadFeed(_client, id, cursor, seqId);

  DirectThreadFeed directThreadFromInbox(
          DirectInboxFeedResponseThreadsItem thread,
          [int seqId]) =>
      directThread(
          id: thread.threadId, cursor: thread.oldestCursor, seqId: seqId);
}
