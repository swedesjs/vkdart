import 'dart:async';

import 'package:dio/dio.dart';
import 'package:vkdart/src/events/longpoll.dart';
import 'package:vkdart/vkdart.dart';

class UserLongpoll implements Longpoll {
  final Api _api;
  final _dio = Dio();
  String? _ts;
  String? _server;
  String? _key;

  bool _isStart = false;

  final StreamController<List> _updatesController = StreamController();

  UserLongpoll(this._api);

  @override
  get isStart => _isStart;

  @override
  Stream<List> onEvent() => _updatesController.stream;

  @override
  Future<void> start() async {
    _isStart = true;
    final getServer = await _api.messages.getLongPollServer({'lp_version': 3});
    final response = getServer['response'];

    _server = response['server'];
    _key = response['key'];

    _ts = response['ts'].toString();

    _start();
  }

  Future<void> _start() async {
    final updates = await _dio.get("https://$_server", queryParameters: {
      'act': 'a_check',
      'key': _key,
      'ts': _ts!,
      'wait': 25,
      'mode': 2 | 8 | 64 | 128,
      'version': 3
    });

    _ts = updates.data['ts'].toString();

    for (final update in updates.data['updates']) {
      _updatesController.add(update);
    }

    if (_isStart) _start();
  }

  @override
  void stop() => _isStart = false;
}
