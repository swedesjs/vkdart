// ignore_for_file: do_not_use_environment

import 'dart:io';

import 'package:vkdart/vkontakte.dart';

Future<void> main() async {
  final api = Vkontakte(
    token: _requiredEnvironment('VK_TOKEN'),
    language: LangApi.ru,
    version: '5.131',
  );

  try {
    final response = await api.request(
      'users.get',
      {'user_ids': 'durov'},
    );
    stdout.writeln(response);
  } on ApiException catch (error) {
    stderr.writeln('VK API ${error.code}: ${error.message}');
    exitCode = 1;
  }
}

String _requiredEnvironment(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) {
    throw StateError('Set the $name environment variable before running.');
  }
  return value;
}
