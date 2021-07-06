# instagram_private_api

*there's currently no pub-package, so you'll have to build it yourself*
**Current version: 0.0.1 (somewhat early alpha)**

This library is heavily influenced by dilame's [instagram-private-api](https://github.com/dilame/instagram-private-api).
The basic structure is very similar to it.

# Usage
 ```dart
 Future<void> main() async {
  /// get username and password from the environment-variables
  final env = Platform.environment;
  final username = env['IG_USERNAME'];
  final password = env['IG_PASSWORD'];

  final StateStorage storage = /* create the storage */;
  final InstaClient ig = InstaClient();
  /// this will ensure, the state is saved after each request
  ig.request.httpClient.interceptors.add(
      ResponseInterceptor(ig, (json) => storage.saveState(jsonEncode(json))));

  if (!await storage.exists()) {
    /// generate default values for the state
    ig.state.init();
    await storage.createState();
    await ig.account.login(username, password);
  } else {
    /// load the state, and you're good to go
    ig.state = InstaState.fromJson(jsonDecode(await storage.loadState()));
  }

  print('logged in!');
}

/// An example state-storage
mixin StateStorage {
  FutureOr<bool> exists();

  FutureOr<void> createState();

  FutureOr<String> loadState();

  FutureOr<void> saveState(String encodedState);
}
```
