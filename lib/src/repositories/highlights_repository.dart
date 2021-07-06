import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/highlights/highlights_tray_response.dart';

class HighlightsRepository extends InstaRepository {
  HighlightsRepository(InstaClient client) : super(client);

  Future<HighlightsHighlightsTrayResponse> highlightsTray(dynamic userId) async => HighlightsHighlightsTrayResponse.fromJson(await client.request.get('/api/v1/highlights/$userId/highlights_tray/', query: {
    'supported_capabilities_new': client.state.supportedCapabilities,
    'phone_id': client.state.device.phoneId,
    // TODO: global battery
    'battery_level': 100.toString(),
    'is_charging': '1',
    'will_sound_on': '0'
  }));

  // TODO: createReel & editReel & deleteReel
}