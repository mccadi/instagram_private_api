import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/news/inbox_response.dart';

class NewsRepository extends InstaRepository {
  NewsRepository(InstaClient client) : super(client);

  Future<NewsInboxResponse> inbox() async => NewsInboxResponse.fromJson(await client.request.get('/api/v1/news/inbox/'));
}