/// based on https://github.com/techniboogie-dart/recase/blob/master/lib/recase.dart
/// this is reduced to just the conversion, so no new classes are instantiated
class CaseConvert {
  static final _upperAlphaRegex = RegExp(r'[A-Z]');
  static final _lowerAlphaRegex = RegExp(r'[a-z]');
  static final _symbolRegex = RegExp(r'[ ./_\-]');

  CaseConvert._();

  static List<String> _groupIntoWords(String text) {
    final sb = StringBuffer();
    final List<String> words = [];
    final isAllCaps = !text.contains(RegExp('[a-z]'));

    for (int i = 0; i < text.length; i++) {
      final String char = String.fromCharCode(text.codeUnitAt(i));
      final String nextChar = i + 1 == text.length
          ? null
          : String.fromCharCode(text.codeUnitAt(i + 1));

      if (_symbolRegex.hasMatch(char)) {
        continue;
      }

      sb.write(char);

      final bool isEndOfWord = nextChar == null ||
          (_upperAlphaRegex.hasMatch(nextChar) && !isAllCaps) ||
          _symbolRegex.hasMatch(nextChar);

      if (isEndOfWord) {
        words.add(sb.toString());
        sb.clear();
      }
    }

    return words;
  }

  static String _upperCaseFirstLetter(String word) =>
      '${word.substring(0, 1).toUpperCase()}${word.substring(1).toLowerCase()}';

  static String camelCase(String text, {String separator = ''}) {
    final words = _groupIntoWords(text).map(_upperCaseFirstLetter).toList();
    words[0] = words[0].toLowerCase();

    return words.join(separator);
  }

  static String snakeCase(String text, {String separator = '_'}) {
    final words =
        _groupIntoWords(text).map((word) => word.toLowerCase()).toList();

    return words.join(separator);
  }

  static String pascalCase(String text, {String separator = ''}) {
    final words = _groupIntoWords(text).map(_upperCaseFirstLetter).toList();

    return words.join(separator);
  }

  static String constantCase(String text, {String separator = '_'}) {
    final words =
        _groupIntoWords(text).map((word) => word.toUpperCase()).toList();

    return words.join(separator);
  }
}
