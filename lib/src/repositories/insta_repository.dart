import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:meta/meta.dart';

abstract class InstaRepository {
  @protected
  InstaClient client;
  InstaRepository(this.client);
}