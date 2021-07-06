import 'dart:convert';

import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/direct/get_presence_response.dart';

class DirectRepository extends InstaRepository {
  DirectThreadsRepository threads;

  DirectRepository(InstaClient client) : super(client) {
    threads = DirectThreadsRepository(client);
  }

  Future<DirectGetPresenceResponse> getPresence() async =>
      DirectGetPresenceResponse.fromJson(
          await client.request.get('/api/v1/direct_v2/get_presence/'));
}

class DirectThreadsRepository extends InstaRepository {
  DirectThreadsRepository(InstaClient client) : super(client);

  Future<Map<String, dynamic>> getItems(
          String threadId, List<String> itemIds) async =>
      await client.request
          .get('/api/v1/direct_v2/$threadId/get_items/', query: {
        'visual_message_return_type': 'unseen',
        'item_ids': jsonEncode(itemIds),
      });

  Future<Map<String, dynamic>> itemSeen(String threadId, String itemId) async =>
      await client.request
          .get('/api/v1/direct_v2/threads/$threadId/items/$itemId/seen/');
}
