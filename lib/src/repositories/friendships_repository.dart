import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/responses/friendships/change_response.dart';
import 'package:instagram_private_api/src/responses/friendships/show_response.dart';

import 'insta_repository.dart';

class FriendshipsRepository extends InstaRepository {
  FriendshipsRepository(InstaClient client) : super(client);

  Future<FriendshipsShowResponse> show(dynamic id) async =>
      FriendshipsShowResponse.fromJson(
          await client.request.get('/api/v1/friendships/show/$id/'));

  Future<FriendshipsChangeResponse> create(dynamic userId,
          {String mediaIdAttribution}) =>
      _change(userId, 'create', mediaIdAttribution);

  Future<FriendshipsChangeResponse> destroy(dynamic userId,
          {String mediaIdAttribution}) =>
      _change(userId, 'destroy', mediaIdAttribution);

  Future<FriendshipsChangeResponse> approve(dynamic userId,
          {String mediaIdAttribution}) =>
      _change(userId, 'approve', mediaIdAttribution);

  Future<FriendshipsChangeResponse> deny(dynamic userId,
          {String mediaIdAttribution}) =>
      _change(userId, 'deny', mediaIdAttribution);

  Future<FriendshipsChangeResponse> removeFollower(dynamic userId,
          {String mediaIdAttribution}) =>
      _change(userId, 'remove_follower', mediaIdAttribution);

  Future<FriendshipsChangeResponse> _change(dynamic userId, String action,
          [String mediaIdAttribution]) async =>
      FriendshipsChangeResponse.fromJson(
          await client.request.post('/api/v1/friendships/$action/$userId/',
              form: client.request.sign({
                '_csrftoken': client.state.cookieCsrfToken,
                'user_id': userId.toString(),
                'radio_type': client.state.radioType,
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                '_uuid': client.state.device.uuid,
                if (mediaIdAttribution != null)
                  'media_id_attribution': mediaIdAttribution,
              })));
}
