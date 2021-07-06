import 'dart:async';

import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/core/insta_feed.dart';

class DirectThreadFeed extends InstaFeed {
  String id;
  int seqId;

  String cursor;

  DirectThreadFeed(InstaClient client, this.id, this.cursor, this.seqId)
      : super(client);

  @override
  Future<Map<String, dynamic>> request() async =>
      await client.request.get('/api/v1/direct_v2/threads/$id/', query: {
        'visual_message_return_type': 'unseen',
        'direction': 'older',
        if (seqId != null) 'seq_id': seqId.toString(),
        'limit': 10.toString(),
        if (cursor != null) 'cursor': cursor,
      });

  @override
  void setState(state) {
    // TODO: implement setState
  }

  @override
  List transform(state) {
    // TODO: implement transform
    return null;
  }
}
