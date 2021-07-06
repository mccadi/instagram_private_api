import 'package:instagram_private_api/src/core/insta_request.dart';
import 'package:instagram_private_api/src/repositories/account_repository.dart';
import 'package:instagram_private_api/src/repositories/direct_repository.dart';
import 'package:instagram_private_api/src/repositories/friendships_repository.dart';
import 'package:instagram_private_api/src/repositories/fundraiser_repository.dart';
import 'package:instagram_private_api/src/repositories/highlights_repository.dart';
import 'package:instagram_private_api/src/repositories/launcher_repository.dart';
import 'package:instagram_private_api/src/repositories/location_repository.dart';
import 'package:instagram_private_api/src/repositories/media_repository.dart';
import 'package:instagram_private_api/src/repositories/news_repository.dart';
import 'package:instagram_private_api/src/repositories/qe_repository.dart';
import 'package:instagram_private_api/src/repositories/upload_repository.dart';
import 'package:instagram_private_api/src/repositories/users_repository.dart';
import 'package:instagram_private_api/src/services/publish_service.dart';

import 'insta_feed_factory.dart';
import 'insta_state.dart';

class InstaClient {
  InstaState state;
  InstaRequest request;

  InstaFeedFactory feed;

  /// repositories - endpoint-collections
  AccountRepository account;
  LauncherRepository launcher;
  QeRepository qe;
  MediaRepository media;
  NewsRepository news;
  UsersRepository users;
  FriendshipsRepository friendships;
  HighlightsRepository highlights;
  UploadRepository upload;
  LocationRepository location;
  FundraiserRepository fundraiser;
  DirectRepository direct;

  /// services
  PublishService publish;

  InstaClient({this.state}){
    state ??= InstaState();
    request = InstaRequest(this);

    feed = InstaFeedFactory(this);
    account = AccountRepository(this);
    launcher = LauncherRepository(this);
    qe = QeRepository(this);
    media = MediaRepository(this);
    news = NewsRepository(this);
    users = UsersRepository(this);
    friendships = FriendshipsRepository(this);
    highlights = HighlightsRepository(this);
    upload = UploadRepository(this);
    location = LocationRepository(this);
    fundraiser = FundraiserRepository(this);
    direct = DirectRepository(this);

    publish = PublishService(this);
  }

}