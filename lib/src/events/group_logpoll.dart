import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/events/longpoll.dart';

/// Класс для работы с событиями сообщества VK
class GroupLogpoll implements Longpoll {
  /// Конструктор.
  /// В параметр [_groupId] числовой идентинтификатор сообщества.
  /// В параметр [_api] экземляр класса [Api]
  GroupLogpoll(this._groupId, this._api);

  final _dio = Dio();
  final Api _api;
  final int _groupId;
  late String? _ts, _server, _key;
  bool _isStart = false;

  final _updatesController = StreamController<Map<String, dynamic>>();

  @override
  Stream<Map<String, dynamic>> onEvent() => _updatesController.stream;

  @override
  Future<void> start() async {
    _isStart = true;

    final getServer =
        await _api.groups.getLongPollServer({'group_id': _groupId});
    final response = getServer['response'] as Map;

    _server = response['server'] as String;
    _key = response['key'] as String;

    _ts = response['ts'] as String;

    await _start();
  }

  Future<void> _start() async {
    final updates = await _dio.get<Map<String, dynamic>>(
      _server!,
      queryParameters: {'act': 'a_check', 'key': _key, 'ts': _ts, 'wait': 25},
    );

    _ts = updates.data!['ts'] as String;

    for (final update in updates.data!['updates'] as List) {
      _updatesController.add((update as Map).cast<String, dynamic>());
    }

    if (_isStart) {
      await _start();
    }
  }

  @override
  void stop() => _isStart = false;

  @override
  bool get isStart => _isStart;
}
