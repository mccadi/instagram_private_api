import 'package:instagram_private_api/src/utilities/case_convert.dart';

class JsonToClass {
  static Type listDynamicType = <dynamic>[].runtimeType;

  // ignore: prefer_const_constructors
  static Type mapEntryType = MapEntry<dynamic, dynamic>(0, 0).runtimeType;
  static Type mapType = <dynamic, dynamic>{}.runtimeType;
  static Type mapJsonType = <String, dynamic>{}.runtimeType;

  static RegExp numericRegexp = RegExp('([0-9])');

  static List<String> protectedKeywords =
      // ignore: lines_longer_than_80_chars
      'abstract dynamic implements show as else import static assert enum in super async export interface switch await extends is sync break external library this case factory mixin throw catch false new true class final null try const finally on typedef continue for operator var covariant part void default get rethrow while deferred hide return with do if set yield'
          .split(' ')
          .toList();

  Map<String, dynamic> _json;
  List<JsonObject> _objects;
  String name;

  JsonToClass(this._json, this.name) {
    _objects = [];
  }

  String convert({String head = ''}) {
    final sb = StringBuffer()
      ..writeln('import \'package:json_annotation/json_annotation.dart\';')
      ..writeln(head)
      ..writeln(_convertObjectToClass(_mapRoot()));
    for (final obj in _objects) {
      sb.write('\n${_convertObjectToClass(obj)}');
    }
    return sb.toString();
  }

  String _convertObjectToClass(JsonObject object) {
    final sb = StringBuffer()
      ..writeln('@JsonSerializable(fieldRename: FieldRename.snake)')
      ..writeln('class ${object.name} {')
      ..writeAll(
          object.keys.map((key) => '\t${key.value} ${_assertKey(key.key)};\n'))
      ..writeln('\t${object.name}();')
      ..writeln(
          '\tfactory ${object.name}.fromJson(Map<String, dynamic> json) => _\$${object.name}FromJson(json);')
      ..writeln(
          '\tMap<String, dynamic> toJson() => _\$${object.name}ToJson(this);')
      ..writeln('}');
    return sb.toString();
  }

  String _assertKey(String key) {
    if (protectedKeywords.contains(key)) {
      return CaseConvert.constantCase(key);
    }
    return key;
  }

  JsonObject _mapRoot() {
    final JsonObject object = JsonObject(name);
    _json.forEach((key, value) {
      object.keys.add(JsonKey(CaseConvert.camelCase(key),
          _mapItem(value, '$name${CaseConvert.pascalCase(key)}')));
    });
    return object;
  }

  String _mapItem(item, String level) {
    if (item == null || item.runtimeType == null) {
      return 'dynamic';
    }
    final Type runtimeType = item.runtimeType;
    if (runtimeType == String) {
      return 'String';
    }
    if (runtimeType == int) {
      return 'int';
    }
    if (runtimeType == double) {
      return 'double';
    }
    if (runtimeType == bool) {
      return 'bool';
    }
    if (runtimeType == listDynamicType) {
      if (item.length > 0) {
        if (footType(item[0])) {
          final listType = item[0].runtimeType;
          for (final element in item) {
            if (element.runtimeType != listType) {
              return 'List';
            }
          }
          return 'List<${_mapItem(item[0], level)}>';
        } else if (item[0].runtimeType == List) {
          return 'List<List>';
        } else {
          final name = '${level}Item';
          final JsonObject object = JsonObject(name);
          final List<String> keys = [];
          for (final element in item) {
            element.keys.forEach((key) {
              if (!keys.contains(key)) {
                keys.add(key);
              }
            });
          }
          outer:
          for (final key in keys) {
            final List elements =
                item.where((x) => x.containsKey(key)).toList();
            final elementType = elements[0].runtimeType;
            for (final element in elements) {
              if (elementType != element.runtimeType) {
                object.keys.add(JsonKey(CaseConvert.camelCase(key), 'dynamic'));
                continue outer;
              }
            }
            object.keys.add(JsonKey(
                CaseConvert.camelCase(key),
                _mapItem(
                    elements[0][key], '$name${CaseConvert.pascalCase(key)}')));
          }
          _objects.add(object);
          return 'List<$name>';
        }
      }
      return 'List';
    }
    if (runtimeType == mapEntryType) {
      throw Exception('Invalid Type: $level');
    }
    if (runtimeType == mapType || runtimeType == mapJsonType) {
      /// check invalid keys
      if(item.keys.any((x) => numericRegexp.hasMatch(x))){
        String mappedKey = _mapItem(item.values.toList(), '${level}Map');
        if(mappedKey.contains('<')){
          mappedKey = mappedKey.substring(5, mappedKey.length - 1);
        }
        return 'Map<String, $mappedKey>';
      } else {
        /// all keys are fine
        final JsonObject object = JsonObject(level);
        item.forEach((key, value) {
          object.keys.add(JsonKey(CaseConvert.camelCase(key),
              _mapItem(value, '$level${CaseConvert.pascalCase(key)}')));
        });
        _objects.add(object);
      }
      return level;
    }
    throw Exception('Unknown type: ${item.runtimeType}');
  }

  static bool footType(dynamic item) =>
      item == null ||
      item.runtimeType == null ||
      item.runtimeType == String ||
      item.runtimeType == int ||
      item.runtimeType == double;
}

class JsonObject {
  String name;
  List<JsonKey> keys;

  JsonObject(this.name, [this.keys]) {
    keys ??= [];
  }
}

class JsonKey {
  String key;
  String value;

  JsonKey(this.key, this.value);
}
