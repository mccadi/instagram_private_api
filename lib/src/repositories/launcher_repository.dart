import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';

class LauncherRepository extends InstaRepository {
  LauncherRepository(InstaClient client) : super(client);

  Future<dynamic> preLoginSync() => client.request.post('/api/v1/launcher/sync/',
    form: client.request.sign({
      'id': client.state.device.uuid,
      'configs': 'ig_fbns_blocked,ig_android_felix_release_players,ig_user_mismatch_soft_error,ig_android_carrier_signals_killswitch,ig_android_killswitch_perm_direct_ssim,fizz_ig_android,ig_mi_block_expired_events,ig_android_os_version_blocking_config',
    }));
}