import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:instagram_private_api/src/utilities/insta_cookie.dart';

class InstaCookieJar implements CookieJar {
  /// using this to avoid the validation

  /// [ignoreExpires]: save/load even cookies that have expired.
  InstaCookieJar({
    this.ignoreExpires = false,
    initialCookies,
  }) {
    _domains = initialCookies ??
        <Map<String, Map<String, Map<String, SerializableInstaCookie>>>>[
          <String, Map<String, Map<String, SerializableInstaCookie>>>{},
          <String, Map<String, Map<String, SerializableInstaCookie>>>{}
        ];
  }

  /// A array to save cookies.
  ///
  /// [domains[0]] save the cookies with "domain" attribute.
  /// These cookie usually need to be shared among multiple domains.
  ///
  /// [domains[1]] save the cookies without "domain" attribute.
  /// These cookies are private for each host name.
  ///
  List<
      Map<
          String, //domain
          Map<
              String, //path
              Map<
                  String, //cookie name
                  SerializableInstaCookie //cookie
              >>>> _domains =
  <Map<String, Map<String, Map<String, SerializableInstaCookie>>>>[
    <String, Map<String, Map<String, SerializableInstaCookie>>>{},
    <String, Map<String, Map<String, SerializableInstaCookie>>>{}
  ];

  factory InstaCookieJar.fromJson(Map<String, dynamic> json) =>
      InstaCookieJar(
          ignoreExpires: json['ignoreExpires'] ?? false,
          initialCookies: json['domains'].map((
              domain) =>
              domain.map(
                      (key1, map1) =>
                      MapEntry(
                          key1,
                          map1.map(
                                  (key2, map2) =>
                                  MapEntry(key2,
                                      map2.map(
                                              (key3, value) =>
                                              MapEntry(
                                                  key3, SerializableInstaCookie
                                                  .fromJson(
                                                  value))).cast<String, SerializableInstaCookie>())).cast<String, Map<String, SerializableInstaCookie>>())).cast<String, Map<String, Map<String, SerializableInstaCookie>>>()).toList().cast<Map<String, Map<String, Map<String, SerializableInstaCookie>>>>()); // ignore: lines_longer_than_80_chars

  Map<String, dynamic> toJson() =>
      {
        'ignoreExpires': ignoreExpires,
        'domains': _domains,
      };

  List<Map<String, Map<String, Map<String, SerializableInstaCookie>>>>
  get domains => _domains;

  @override
  List<Cookie> loadForRequest(Uri uri) {
    final List<Cookie> list = <Cookie>[];
    final String urlPath = uri.path.isEmpty ? '/' : uri.path;
    // Load cookies without "domain" attribute, include port.
    final String hostname = uri.host;
    for (final String domain in domains[1].keys) {
      if (hostname == domain) {
        final Map<String, Map<String, dynamic>> cookies =
        domains[1][domain].cast<String, Map<String, dynamic>>();
        final keys = cookies.keys.toList()
          ..sort((a, b) => b.length.compareTo(a.length));
        for (final String path in keys) {
          if (urlPath.toLowerCase().contains(path)) {
            final Map<String, dynamic> values = cookies[path];
            for (final String key in values.keys) {
              final SerializableInstaCookie cookie = values[key];
              if (_check(uri.scheme, cookie)) {
                if (list.indexWhere((e) => e.name == cookie.cookie.name) ==
                    -1) {
                  list.add(cookie.cookie);
                }
              }
            }
          }
        }
      }
    }
    // Load cookies with "domain" attribute, Ignore port.
    domains[0].forEach((domain, cookies) {
      if (uri.host.contains(domain)) {
        cookies.forEach((path, values) {
          if (urlPath.toLowerCase().contains(path)) {
            values.forEach((key, v) {
              if (_check(uri.scheme, v)) {
                list.add(v.cookie);
              }
            });
          }
        });
      }
    });
    return list;
  }

  @override
  void saveFromResponse(Uri uri, List<Cookie> cookies) {
    for (final Cookie cookie in cookies) {
      String domain = cookie.domain;
      String path;
      int index = 0;
      // Save cookies with "domain" attribute
      if (domain != null) {
        if (domain.startsWith('.')) {
          domain = domain.substring(1);
        }
        path = cookie.path ?? '/';
      } else {
        index = 1;
        // Save cookies without "domain" attribute
        path = cookie.path ?? (uri.path.isEmpty ? '/' : uri.path);
        domain = uri.host;
      }
      Map<String, Map<String, dynamic>> mapDomain =
          domains[index][domain] ?? <String, Map<String, dynamic>>{};
      mapDomain = mapDomain.cast<String, Map<String, dynamic>>();

      final Map<String, dynamic> map = mapDomain[path] ?? <String, dynamic>{};
      map[cookie.name] = SerializableInstaCookie(cookie);
      if (_isExpired(map[cookie.name])) {
        map.remove(cookie.name);
      }
      mapDomain[path] = map.cast<String, SerializableInstaCookie>();
      domains[index][domain] =
          mapDomain.cast<String, Map<String, SerializableInstaCookie>>();
    }
  }

  /// Delete cookies for specified [uri].
  /// This API will delete all cookies
  /// for the `uri.host`, it will ignored the `uri.path`.
  ///
  /// [withDomainSharedCookie] `true` will delete the domain-shared cookies.
  void delete(Uri uri, [bool withDomainSharedCookie = false]) {
    final String host = uri.host;
    domains[1].remove(host);
    if (withDomainSharedCookie) {
      domains[0].removeWhere((domain, v) => uri.host.contains(domain));
    }
  }

  /// Delete all cookies in RAM
  void deleteAll() {
    domains[0].clear();
    domains[1].clear();
  }

  bool _isExpired(SerializableInstaCookie cookie) =>
      ignoreExpires ? false : cookie.isExpired();

  bool _check(String scheme, SerializableInstaCookie cookie) =>
      cookie.cookie.secure && scheme == 'https' || !_isExpired(cookie);

  @override
  final bool ignoreExpires;
}
