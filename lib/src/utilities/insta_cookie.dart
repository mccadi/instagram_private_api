import 'dart:io';

class InstaCookie implements Cookie {
  // using this implementation, because Instagram
  // sets a cookie with a backslash, that is not supported by http.dart
  @override
  String domain;

  @override
  DateTime expires;

  @override
  bool httpOnly;

  @override
  int maxAge;

  @override
  String name;

  @override
  String path;

  @override
  bool secure;

  @override
  String value;

  InstaCookie.fromSetCookieValue(String value) {
    // Parse the 'set-cookie' header value.
    _parseSetCookieValue(value);
  }

  // Parse a 'set-cookie' header value according to the rules in RFC 6265.
  void _parseSetCookieValue(String s) {
    int index = 0;

    bool done() => index == s.length;

    String parseName() {
      final int start = index;
      while (!done()) {
        if (s[index] == '=') break;
        index++;
      }
      return s.substring(start, index).trim();
    }

    String parseValue() {
      final int start = index;
      while (!done()) {
        if (s[index] == ';') break;
        index++;
      }
      return s.substring(start, index).trim();
    }

    void parseAttributes() {
      String parseAttributeName() {
        final int start = index;
        while (!done()) {
          if (s[index] == '=' || s[index] == ';') break;
          index++;
        }
        return s.substring(start, index).trim().toLowerCase();
      }

      String parseAttributeValue() {
        final int start = index;
        while (!done()) {
          if (s[index] == ';') break;
          index++;
        }
        return s.substring(start, index).trim().toLowerCase();
      }

      while (!done()) {
        final String name = parseAttributeName();
        String value = '';
        if (!done() && s[index] == '=') {
          index++; // Skip the = character.
          value = parseAttributeValue();
        }
        if (name == 'expires') {
          expires = parseCookieDate(value);
        } else if (name == 'max-age') {
          maxAge = int.parse(value);
        } else if (name == 'domain') {
          domain = value;
        } else if (name == 'path') {
          path = value;
        } else if (name == 'httponly') {
          httpOnly = true;
        } else if (name == 'secure') {
          secure = true;
        }
        if (!done()) {
          index++;
        } // Skip the ; character
      }
    }

    name = parseName();
    if (done() || name.isEmpty) {
      throw HttpException('Failed to parse header value [$s]');
    }
    index++; // Skip the = character.
    value = parseValue();
    _validate();
    if (done()) {
      return;
    }
    index++; // Skip the ; character.
    parseAttributes();
  }

  @override
  String toString() {
    final sb = StringBuffer()..write(name)..write('=')..write(value);
    if (expires != null) {
      sb..write('; Expires=')..write(HttpDate.format(expires));
    }
    if (maxAge != null) {
      sb..write('; Max-Age=')..write(maxAge);
    }
    if (domain != null) {
      sb..write('; Domain=')..write(domain);
    }
    if (path != null) {
      sb..write('; Path=')..write(path);
    }

    if (secure ?? false) {
      sb.write('; Secure');
    }

    if (httpOnly ?? false) {
      sb.write('; HttpOnly');
    }

    return sb.toString();
  }

  void _validate() {
    const separators = [
      '(',
      ')',
      '<',
      '>',
      '@',
      ',',
      ';',
      ':',
      '\\',
      '"',
      '/',
      '[',
      ']',
      '?',
      '=',
      '{',
      '}'
    ];
    for (var i = 0; i < name.length; i++) {
      final codeUnit = name.codeUnits[i];
      if (codeUnit <= 32 || codeUnit >= 127 || separators.contains(name[i])) {
        throw FormatException(
            'Invalid character in cookie name, code unit: \'$codeUnit\'',
            name,
            i);
      }
    }

    // Per RFC 6265, consider surrounding '' as part of the value, but otherwise
    // double quotes are not allowed.
    var start = 0;
    var end = value.length;
    if (2 <= value.length &&
        value.codeUnits[start] == 0x22 &&
        value.codeUnits[end - 1] == 0x22) {
      start++;
      end--;
    }

    for (var i = start; i < end; i++) {
      final codeUnit = value.codeUnits[i];
      if (!((codeUnit >= 0x20 && codeUnit <= 0x2B) ||
          (codeUnit >= 0x2D && codeUnit <= 0x3A) ||
          (codeUnit >= 0x3C && codeUnit <= 0x7E))) {
        throw FormatException(
            'Invalid character in cookie value, code unit: \'$codeUnit\'',
            value,
            i);
      }
    }
  }

  static DateTime parseCookieDate(String date) {
    const List monthsLowerCase = [
      'jan',
      'feb',
      'mar',
      'apr',
      'may',
      'jun',
      'jul',
      'aug',
      'sep',
      'oct',
      'nov',
      'dec'
    ];

    int position = 0;

    void error() {
      throw HttpException('Invalid cookie date $date');
    }

    bool isEnd() => position == date.length;

    bool isDelimiter(String s) {
      final int char = s.codeUnitAt(0);
      if (char == 0x09) return true;
      if (char >= 0x20 && char <= 0x2F) return true;
      if (char >= 0x3B && char <= 0x40) return true;
      if (char >= 0x5B && char <= 0x60) return true;
      if (char >= 0x7B && char <= 0x7E) return true;
      return false;
    }

    bool isNonDelimiter(String s) {
      final int char = s.codeUnitAt(0);
      if (char >= 0x00 && char <= 0x08) return true;
      if (char >= 0x0A && char <= 0x1F) return true;
      if (char >= 0x30 && char <= 0x39) return true; // Digit
      if (char == 0x3A) return true; // ':'
      if (char >= 0x41 && char <= 0x5A) return true; // Alpha
      if (char >= 0x61 && char <= 0x7A) return true; // Alpha
      if (char >= 0x7F && char <= 0xFF) return true; // Alpha
      return false;
    }

    bool isDigit(String s) {
      final int char = s.codeUnitAt(0);
      if (char > 0x2F && char < 0x3A) return true;
      return false;
    }

    int getMonth(String month) {
      if (month.length < 3) return -1;
      return monthsLowerCase.indexOf(month.substring(0, 3));
    }

    int toInt(String s) {
      int index = 0;
      for (; index < s.length && isDigit(s[index]); index++) {}
      return int.parse(s.substring(0, index));
    }

    final tokens = [];
    while (!isEnd()) {
      while (!isEnd() && isDelimiter(date[position])) {
        position++;
      }
      final int start = position;
      while (!isEnd() && isNonDelimiter(date[position])) {
        position++;
      }
      tokens.add(date.substring(start, position).toLowerCase());
      while (!isEnd() && isDelimiter(date[position])) {
        position++;
      }
    }

    String timeStr;
    String dayOfMonthStr;
    String monthStr;
    String yearStr;

    for (int i = 0; i < tokens.length; i++) {
      final token = tokens[i];
      if (token.length < 1) continue;
      if (timeStr == null &&
          token.length >= 5 &&
          isDigit(token[0]) &&
          (token[1] == ':' || (isDigit(token[1]) && token[2] == ':'))) {
        timeStr = token;
      } else if (dayOfMonthStr == null && isDigit(token[0])) {
        dayOfMonthStr = token;
      } else if (monthStr == null && getMonth(token) >= 0) {
        monthStr = token;
      } else if (yearStr == null &&
          token.length >= 2 &&
          isDigit(token[0]) &&
          isDigit(token[1])) {
        yearStr = token;
      }
    }

    if (timeStr == null ||
        dayOfMonthStr == null ||
        monthStr == null ||
        yearStr == null) {
      error();
    }

    int year = toInt(yearStr);
    if (year >= 70 && year <= 99) {
      year += 1900;
    } else if (year >= 0 && year <= 69) {
      year += 2000;
    }
    if (year < 1601) {
      error();
    }

    final int dayOfMonth = toInt(dayOfMonthStr);
    if (dayOfMonth < 1 || dayOfMonth > 31) {
      error();
    }

    final int month = getMonth(monthStr) + 1;

    final timeList = timeStr.split(':');
    if (timeList.length != 3) {
      error();
    }
    final int hour = toInt(timeList[0]);
    final int minute = toInt(timeList[1]);
    final int second = toInt(timeList[2]);
    if (hour > 23) {
      error();
    }
    if (minute > 59) {
      error();
    }
    if (second > 59) {
      error();
    }

    return DateTime.utc(year, month, dayOfMonth, hour, minute, second, 0);
  }
}

class SerializableInstaCookie {
  SerializableInstaCookie(this.cookie) {
    createTimeStamp = (DateTime.now().millisecondsSinceEpoch ~/ 1000).toInt();
  }

  /// Create a instance form Json string.

  SerializableInstaCookie.fromJson(String value) {
    final List<String> t = value.split(';_crt=');
    cookie = InstaCookie.fromSetCookieValue(t[0]);
    createTimeStamp = int.parse(t[1]);
  }

  /// Test the  whether this cookie is expired.

  bool isExpired() {
    final DateTime t = DateTime.now();
    return (cookie.maxAge != null && cookie.maxAge < 1) ||
        (cookie.maxAge != null &&
            (t.millisecondsSinceEpoch ~/ 1000).toInt() - createTimeStamp >=
                cookie.maxAge) ||
        (cookie.expires != null && !cookie.expires.isAfter(t));
  }

  /// Serialize the Json string.

  String toJson()=> toString();

  Cookie cookie;
  int createTimeStamp = 0;

  @override
  String toString() => '${cookie.toString()};_crt=$createTimeStamp';
}
