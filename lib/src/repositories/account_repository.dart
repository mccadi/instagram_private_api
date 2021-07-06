import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';

class AccountRepository extends InstaRepository {
  AccountRepository(InstaClient client) : super(client);

  Future<dynamic> login(String user, String password) =>
      client.request.post('/api/v1/accounts/login/',
          form: client.request.sign({
            'username': user,
            'password': password,
            'guid': client.state.device.uuid,
            'phone_id': client.state.device.phoneId,
            'device_id': client.state.device.deviceId,
            'adid': client.state.device.adid,
            '_csrftoken': client.state.cookieCsrfToken,
            'google_tokens': '[]',
            'login_attempt_count': 0,
            'country_codes':
              '[{\"country_code\":\"1\",\"source\":[\"default\"]}]',
          }));

  Future<dynamic> readMsisdnHeader({String usage = 'default'}) =>
      client.request.post('/api/v1/accounts/read_msisdn_header/',
          form: client.request.sign({
            'mobile_subno_usage': usage,
            'device_id': client.state.device.deviceId,
          }),
          headers: {
            'X-DEVICE-ID': client.state.device.deviceId,
          });
}
