import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/events/longpoll.dart';

class GroupLogpoll implements Longpoll {
  final _dio = Dio();
  final Api _api;
  final int _groupId;
  String? _ts;
  String? _server;
  String? _key;
  bool _isStart = false;

  final StreamController<Map<String, dynamic>> _updatesController =
      StreamController();

  GroupLogpoll(this._groupId, this._api);

  @override
  Stream<Map<String, dynamic>> onEvent() => _updatesController.stream;

  @override
  Future<void> start() async {
    _isStart = true;

    final getServer =
        await _api.groups.getLongPollServer({'group_id': _groupId});
    final response = getServer['response'];
    _server = response['server'];
    _key = response['key'];

    _ts = response['ts'];
    _start();
  }

  Future<void> _start() async {
    final updates = await _dio.get(_server!, queryParameters: {
      'act': 'a_check',
      'key': _key,
      'ts': _ts!,
      'wait': 25
    });

    _ts = updates.data['ts'];

    for (final update in updates.data['updates']) {
      _updatesController.add(update);
    }

    if (_isStart) _start();
  }

  @override
  void stop() => _isStart = false;

  @override
  bool get isStart => _isStart;
}
