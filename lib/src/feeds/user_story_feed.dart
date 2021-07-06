import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_feed.dart';
import 'package:instagram_private_api/src/responses/feed/user_story_response.dart';

class UserStoryFeed extends InstaFeed<FeedUserStoryResponse,
    FeedUserStoryResponseReelItemsItem> {
  dynamic userId;

  UserStoryFeed(InstaClient client, this.userId) : super(client);

  @override
  Future<FeedUserStoryResponse> request() async =>
      FeedUserStoryResponse.fromJson(await client.request
          .get('/api/v1/feed/user/$userId/story/', query: {
        'supported_capabilities_new': client.state.supportedCapabilities
      }));

  @override
  void setState(FeedUserStoryResponse state) {
    // no state-change
  }

  @override
  List<FeedUserStoryResponseReelItemsItem> transform(
          FeedUserStoryResponse state) =>
      state.reel.items ?? [];
}
