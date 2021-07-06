import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:hex/hex.dart';
import 'package:instagram_private_api/instagram_private_api.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie_manager.dart';
import 'package:instagram_private_api/src/utilities/time.dart';

class InstaRequest {
  Dio _httpClient;

  Dio get httpClient => _httpClient;

  InstaClient _client;

  InstaRequest(this._client) {
    _httpClient = Dio(BaseOptions(baseUrl: _client.state.igBaseUrl));
    _httpClient.interceptors.add(InstaCookieManager(_client.state.cookies));
  }

  Future<dynamic> get(String path, {Map<String, String> query, Map<String, dynamic> headers}) async {
    final response = await httpClient.get(path,
        queryParameters: query,
        options: Options(
          headers: headers ?? getDefaultHeaders(),
          responseType: ResponseType.json,
        ));
    return response.data;
  }

  Future<dynamic> post(String path,
      {Map<String, String> query, Map<String, dynamic> form, Map<String, dynamic> headers}) async {
    final response = await httpClient.post(path,
        queryParameters: query,
        data: form,
        options: Options(
            contentType: ContentType('application', 'x-www-form-urlencoded', charset: 'UTF-8').value,
            headers: headers ?? getDefaultHeaders(),
            responseType: ResponseType.json));
    return response.data;
  }

  Future<dynamic> postData(String path,
      {Map<String, String> query, Stream<List<int>> data, Map<String, dynamic> headers}) async {
    final response = await httpClient.post(path,
        queryParameters: query,
        data: data,
        options: Options(
          contentType: ContentType.binary.value,
          responseType: ResponseType.json,
          headers: headers ?? getDefaultHeaders(),
        ));
    return jsonDecode(response.data);
  }

  Map<String, dynamic> sign(Map<String, dynamic> payload) {
    final json = jsonEncode(payload);
    final hmac = Hmac(sha256, utf8.encode(_client.state.signatureKey));
    final signed = HEX.encode(hmac.convert(utf8.encode(json)).bytes);
    return {
      'signed_body': '$signed.$json',
      'ig_sig_key_version': _client.state.signatureVersion,
    };
  }

  Map<String, dynamic> getDefaultHeaders() => {
        'User-Agent': _client.state.appUserAgent,
        'X-Pigeon-Session-Id': _client.state.pigeonSessionId,
        'X-Pigeon-Rawclienttime': utcNow().toString(),
        'X-IG-Connection-Speed': '${Random().nextInt(2700) + 1000}kbps',
        'X-IG-Bandwidth-Speed-KBPS': '-1.000',
        'X-IG-Bandwidth-TotalBytes-B': '0',
        'X-IG-Bandwidth-TotalTime-MS': '0',
        'X-IG-Connection-Type': _client.state.connectionType,
        'X-IG-Capabilities': _client.state.capabilities,
        'X-IG-App-ID': _client.state.facebookAnalyticsAppId,
        'X-FB-HTTP-Engine': 'Liger',
        'Accept-Language': _client.state.language.replaceFirst('_', '-'),
        'Host': 'i.instagram.com',
        'Accept-Encoding': 'gzip',
        'Connection': 'Keep-Alive',
      };
}
