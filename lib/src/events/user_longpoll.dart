import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vkdart/src/events/longpoll.dart';
import 'package:vkdart/vkdart.dart';

/// Класс для работы с событиями пользователя VK
class UserLongpoll implements Longpoll {
  /// Конструктор класса UserLongpoll
  /// В [api] экземпляр [Api]
  UserLongpoll(Api api) : _api = api;

  final Api _api;
  final _dio = Dio();
  String? _ts;
  String? _server;
  String? _key;

  bool _isStart = false;

  final _updatesController = StreamController<List<dynamic>>();

  @override
  bool get isStart => _isStart;

  @override
  Stream<List<dynamic>> onEvent() => _updatesController.stream;

  @override
  Future<void> start() async {
    _isStart = true;
    final getServer = await _api.messages.getLongPollServer({'lp_version': 3});
    final response = getServer['response'] as Map;

    _server = response['server'] as String;
    _key = response['key'] as String;

    _ts = (response['ts'] as int).toString();

    await _start();
  }

  Future<void> _start() async {
    final updates = await _dio.get<Map<String, dynamic>>(
      'https://$_server',
      queryParameters: {
        'act': 'a_check',
        'key': _key,
        'ts': _ts,
        'wait': 25,
        'mode': 2 | 8 | 64 | 128,
        'version': 3,
      },
    );

    _ts = updates.data!['ts'].toString();

    for (final update in updates.data!['updates'] as List) {
      _updatesController.add(update as List);
    }

    if (_isStart) {
      await _start();
    }
  }

  @override
  void stop() => _isStart = false;
}
