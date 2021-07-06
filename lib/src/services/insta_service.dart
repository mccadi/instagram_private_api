import 'package:instagram_private_api/instagram_private_api.dart';

abstract class InstaService {
  InstaClient client;
  InstaService(this.client);
}