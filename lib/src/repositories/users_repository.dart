import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/users/arlink_download_info_response.dart';
import 'package:instagram_private_api/src/responses/users/info_response.dart';
import 'package:instagram_private_api/src/responses/users/search_response.dart';

class UsersRepository extends InstaRepository {
  UsersRepository(InstaClient client) : super(client);

  Future<UsersArlinkDownloadInfoResponse> arlinkDownloadInfo() async =>
      UsersArlinkDownloadInfoResponse.fromJson(await client.request.get(
          '/api/v1/users/arlink_download_info/',
          query: {'version_override': '2.2.1'}));

  Future<UsersInfoResponseUser> info(dynamic id) async =>
      UsersInfoResponse.fromJson(
              await client.request.get('/api/v1/users/$id/info/'))
          .user;

  /// this isn't used anymore; use /fbsearch/ instead
  Future<UsersSearchResponse> search(String username, [int count = 30]) async =>
      UsersSearchResponse.fromJson(
          await client.request.get('/api/v1/users/search/', query: {
        'timezone_offset': client.state.timezoneOffset,
        'q': username,
        'count': count.toString()
      }));

  Future<UsersSearchResponseUsersItem> searchExact(String username) async {
    final result = await search(username, username.length > 10 ? 5 : 10);
    return result.users
        .firstWhere((x) => x.username == username, orElse: () => null);
  }

  Future<int> idFromUsername(String username) async =>
      (await searchExact(username)).pk;
}
