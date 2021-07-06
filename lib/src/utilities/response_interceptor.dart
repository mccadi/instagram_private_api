import 'dart:async';

import 'package:dio/dio.dart';
import 'package:instagram_private_api/instagram_private_api.dart';

/// This Interceptor intercepts all requests
/// and attempts to save the cookies and state
class ResponseInterceptor extends Interceptor {
  InstaClient _client;
  FutureOr Function(Map<String, dynamic>) _saveCallback;
  ResponseInterceptor(this._client, this._saveCallback);

  @override
  Future onResponse(Response response) async {
    await _saveCallback(_client.state.toJson());
    return response;
  }
}
