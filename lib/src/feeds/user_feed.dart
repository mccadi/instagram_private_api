import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_feed.dart';
import 'package:instagram_private_api/src/responses/feed/user_response.dart';

class UserFeed extends InstaFeed<FeedUserResponse, FeedUserResponseItemsItem> {
  dynamic userId;
  bool excludeComment;
  bool onlyFetchFirstCarouselMedia;

  String _nextMaxId;

  UserFeed(InstaClient client, this.userId, this.excludeComment,
      this.onlyFetchFirstCarouselMedia)
      : super(client);

  @override
  Future<FeedUserResponse> request() async => FeedUserResponse.fromJson(
          await client.request.get('/api/v1/feed/user/$userId/', query: {
        'exclude_comment': excludeComment.toString(),
        'only_fetch_first_carousel_media':
            onlyFetchFirstCarouselMedia.toString(),
        if (_nextMaxId != null) 'max_id': _nextMaxId
      }));

  @override
  void setState(FeedUserResponse state) {
    moreAvailable = state.moreAvailable;
    _nextMaxId = state.nextMaxId;
  }

  @override
  List<FeedUserResponseItemsItem> transform(FeedUserResponse state) =>
      state.items;
}
