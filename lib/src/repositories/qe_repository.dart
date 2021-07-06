import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/qe/sync_response.dart';
import 'package:instagram_private_api/src/utilities/json_utility.dart';

class QeRepository extends InstaRepository {
  QeRepository(InstaClient client) : super(client);

  Future<QeSyncResponse> _sync(String id, String experiments) async =>
      QeSyncResponse.fromJson(await client.request.post('/api/v1/qe/sync/', form: {
        ...JsonUtility.makeDefaults(client,
            csrfToken: true, uuid: true, uid: true),
        'id': id,
        'server_config_retrieval': '1',
        'experiments': experiments,
      }));

  Future<QeSyncResponse> syncLoginExperiments() =>
      _sync(client.state.device.uuid, client.state.loginExperiments);

  Future<QeSyncResponse> syncExperiments() =>
      _sync(client.state.cookieUserId, client.state.experiments);
}
