import 'dart:async';
import 'dart:io';

import 'package:instagram_private_api/src/utilities/case_convert.dart';

import 'json_to_class.dart';

Future<Map<String, dynamic>> createResponse(
    FutureOr<Map<String, dynamic>> futureOr, String repository, String name,
    [String path = './lib/src/responses', String rootDir = './']) async {
  final json = await futureOr;
  final resName = '${CaseConvert.pascalCase(repository)}'
      '${CaseConvert.pascalCase(name)}Response';
  final String filename = CaseConvert.snakeCase('${name}Response');
  final String createdClass =
      JsonToClass(json, resName).convert(head: 'part \'$filename.g.dart\';');

  final resFile =
      File('$path/${CaseConvert.snakeCase(repository)}/$filename.dart');
  // ignore: avoid_slow_async_io
  if (!await resFile.exists()) {
    await resFile.create(recursive: true);
  }
  await resFile.writeAsString(createdClass);

  final result = await Process.run('pub run build_runner build', [],
      workingDirectory: rootDir);
  if (result.exitCode != 0) {
    throw Exception('Failed running pub: ${result.exitCode}');
  }
  return json;
}
