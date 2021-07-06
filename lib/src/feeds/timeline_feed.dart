import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_feed.dart';
import 'package:instagram_private_api/src/enums/request_reason.dart';
import 'package:instagram_private_api/src/responses/feed/timeline_response.dart';
import 'package:instagram_private_api/src/utilities/case_convert.dart';
import 'package:instagram_private_api/src/utilities/general_utility.dart';

class TimelineFeed
    extends InstaFeed<FeedTimelineResponse, FeedTimelineResponseFeedItemsItem> {
  RequestReason reason;
  String _nextMaxId;

  TimelineFeed(InstaClient client, [this.reason = RequestReason.warmStartFetch])
      : super(client);

  @override
  Future<FeedTimelineResponse> request() async => FeedTimelineResponse.fromJson(
          await client.request.post('/api/v1/feed/timeline/', form: {
        'is_prefetch': '0',
        'feed_view_info': '',
        'seen_posts': '',
        'phone_id': client.state.device.phoneId,
        'is_pull_to_refresh': reason == RequestReason.pullToRefresh ? '1' : '0',
        'battery_level': 100, //TODO: global battery
        'timesone_offset': client.state.timezoneOffset,
        '_csrftoken': client.state.cookieCsrfToken,
        'client_session_id': client.state.clientSessionId,
        'device_id': client.state.device.deviceId,
        '_uuid': client.state.device.uuid,
        'is_charging': '1', //TODO: global battery
        'is_asnc_ads_in_headload_enabled': 0,
        'rti_delivery_bckend': 0,
        'is_async_ads_double_request': 0,
        'will_sound_on': 0,
        'is_async_ads_rti': 0,
        'reason': CaseConvert.snakeCase(enumToString(reason)),
        if (reason == RequestReason.pagination)
          'max_id': _nextMaxId
      }, headers: {
        ...client.request.getDefaultHeaders(),
        'X-Ads-Opt-Out': 0,
        'X-DEVICE-ID': client.state.device.deviceId,
        'X-CM-Bandwidth-KBPS': '-1.000',
        'X-CM-Latency': '-1.000'
      }));

  @override
  List<FeedTimelineResponseFeedItemsItem> transform(
          FeedTimelineResponse state) =>
      state.feedItems;

  @override
  void setState(FeedTimelineResponse state) {
    moreAvailable = state.moreAvailable;
    _nextMaxId = state.nextMaxId;
    reason = RequestReason.pagination;
  }
}
