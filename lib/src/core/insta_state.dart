import 'dart:io';
import 'dart:math';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:hex/hex.dart';
import 'package:instagram_private_api/src/core/constants.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie_jar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

part 'insta_state.g.dart';

/// This class holds all information about the current user
class InstaState {
  Uuid _uuid;
  Uuid _seededUuid;
  Random _seededRandom;
  int _seed;
  InstaCookieJar cookies;
  String appVersion = Constants.appVersion;
  String appVersionCode = Constants.appVersionCode;
  String capabilities = Constants.capabilities;
  String signatureKey = Constants.signatureKey;
  String signatureVersion = Constants.signatureVersion;
  String breadcrumbKey = Constants.breadcrumbKey;
  String experiments = Constants.experiments;
  String loginExperiments = Constants.loginExperiments;
  String facebookAnalyticsAppId = Constants.facebookAnalyticsAppId;
  String facebookOtaFields = Constants.facebookOtaFields;
  String facebookOrcaAppId = Constants.facebookOrcaAppId;
  String supportedCapabilities = Constants.supportedCapabilities;
  List<String> devices = Constants.devices;
  List<String> builds = Constants.builds;
  String igBaseUrl = Constants.igBaseUrl;

  String language = 'en_US';
  String timezoneOffset = DateTime.now().timeZoneOffset.inSeconds.toString();
  String radioType = 'wifi-none';
  String connectionType = 'WIFI';
  InstaDevice device;

  /// generates a brand new instance
  InstaState({this.cookies, int seed = -1, this.device}) {
    cookies ??= InstaCookieJar();
    _uuid = Uuid();
    _seed = seed;
    _seededUuid = Uuid(options: {'grng': () => UuidUtil.mathRNG(seed: seed)});
    _seededRandom = _seed == -1 ? Random() : Random(_seed);
  }

  /// reads the cookies
  factory InstaState.fromJson(Map<String, dynamic> json) => InstaState(
      cookies: InstaCookieJar.fromJson(json['cookies']),
      seed: json['seed'] ?? -1,
      device: InstaDevice.fromJson(json['device']));

  Map<String, dynamic> toJson() => {
        'cookies': cookies.toJson(),
        'seed': _seed,
        'device': device.toJson(),
      };

  /// this should be called after all modifications to the instance
  void init() {
    device = _generateDevice();
  }

  String get appUserAgent =>
      'Instagram $appVersion Android (${device.deviceString}; '
      '$language; $appVersionCode)';

  String get pigeonSessionId =>
      generateUuidWithLifetime('pigeon'.hashCode, 1200000);

  String get clientSessionId =>
      generateUuidWithLifetime('client'.hashCode, 1200000);

  InstaDevice _generateDevice() => InstaDevice(
      devices[_seededRandom.nextInt(devices.length)],
      builds[_seededRandom.nextInt(builds.length)],
      generateSeededUuid(),
      generateSeededUuid(),
      generateSeededUuid(),
      // ignore: lines_longer_than_80_chars
      'android-${HEX.encode(Iterable.generate(8).map((_) => _seededRandom.nextInt(255)).toList())}');

  String get cookieCsrfToken => extractCookie('csrftoken', orElse: 'missing');
  String get cookieUserId => extractCookie('ds_user_id');

  String extractCookie(String name, {String orElse}) => cookies
      .loadForRequest(Uri.parse(igBaseUrl))
      .firstWhere((cookie) => cookie.name == name,
          orElse: () => Cookie('', orElse))
      .value;

  /// generates a uuid based on an given seed
  String generateSeededUuid() => _seededUuid.v4();

  String generateUuidWithSeed(int seed) =>
      _uuid.v4(options: {'rng': () => UuidUtil.mathRNG(seed: seed)});

  String generateUuidWithLifetime(int initialSeed, int lifetimeMs) =>
      generateUuidWithSeed(initialSeed +
          (DateTime.now().millisecondsSinceEpoch / lifetimeMs).round());

  /// generates a random uuid
  String generateRandomUuid() => _uuid.v4();
}

/// Holds all information about a device
@JsonSerializable()
class InstaDevice {
  String deviceString;
  String build;
  String uuid;
  String phoneId;
  String adid;
  String deviceId;

  /// generate instance
  InstaDevice(this.deviceString, this.build, this.uuid, this.phoneId, this.adid,
      this.deviceId);

  factory InstaDevice.fromJson(Map<String, dynamic> json) =>
      _$InstaDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$InstaDeviceToJson(this);

  Map<String, dynamic> get devicePayload {
    final deviceParts = deviceString.split(';');
    final android = deviceParts[0].split('/');
    final manufacturer = deviceParts[3].split('/')[0];
    final model = deviceParts[4];
    return {
      'android_version': android[0].trim(),
      'android_release': android[1].trim(),
      'manufacturer': manufacturer.trim(),
      'model': model.trim(),
    };
  }
}
