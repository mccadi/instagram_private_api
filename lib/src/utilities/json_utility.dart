import 'package:instagram_private_api/instagram_private_api.dart';

class JsonUtility {
  /// no instance pls
  const JsonUtility._();

  static Map<String, dynamic> makeDefaults(InstaClient client,
          {bool csrfToken, bool uuid, bool uid}) =>
      {
        if (csrfToken != null && csrfToken)
          '_csrftoken': client.state.cookieCsrfToken,
        if (uuid != null && uuid) '_uuid': client.state.device.uuid,
        if (uid != null && uid) '_uid': client.state.cookieUserId,
      };
}
