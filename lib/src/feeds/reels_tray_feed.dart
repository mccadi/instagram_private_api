import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_feed.dart';
import 'package:instagram_private_api/src/enums/request_reason.dart';
import 'package:instagram_private_api/src/responses/feed/reels_tray_response.dart';
import 'package:instagram_private_api/src/utilities/case_convert.dart';

class ReelsTrayFeed
    extends InstaFeed<FeedReelsTrayResponse, FeedReelsTrayResponseTrayItem> {
  RequestReason _reason;

  // TODO: add broadcasts
  ReelsTrayFeed(InstaClient client, this._reason) : super(client);

  @override
  Future<FeedReelsTrayResponse> request() async =>
      FeedReelsTrayResponse.fromJson(
          await client.request.post('/api/v1/feed/reels_tray/', form: {
        'supported_capabilities_new': client.state.supportedCapabilities,
        'reason': CaseConvert.snakeCase(_reason.toString()),
        '_csrftoken': client.state.cookieCsrfToken,
        '_uuid': client.state.device.uuid,
      }));

  @override
  void setState(FeedReelsTrayResponse state) {
    // no pagination, but it's a feed
  }

  @override
  List<FeedReelsTrayResponseTrayItem> transform(FeedReelsTrayResponse state) =>
      state.tray;
}
