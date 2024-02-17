// ignore_for_file: avoid_annotating_with_dynamic

import 'dart:async';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

/// Longpoll fetcher.
class Longpoll extends AbstractUpdateFetcher {
  late final Vkontakte _vkontakte;

  set vkontakte(Vkontakte value) {
    _vkontakte = value;
  }

  /// Group id
  final int groupId;

  /// Last event number.
  int lastEventNumber = 0;

  bool _isStart = false;
  String? _serverUrl, _secretKey;

  /// Create a new longpoll fetcher.
  Longpoll(this.groupId);

  @override
  Future<void> start() {
    if (isStart) {
      throw LongpollException('Longpoll is running already!');
    }

    _isStart = true;

    final body = {'group_id': groupId};

    _vkontakte.request('groups.getLongPollServer', body).then((data) {
      final lastEventNumber = (data as Map)['ts'];

      _serverUrl ??= data['server'] as String;
      _secretKey = data['key'] as String;

      if (this.lastEventNumber == 0) _applyLastEventNumber(lastEventNumber);

      _recursiveFetchUpdates();
    });

    return Future.value();
  }

  Future<void> _recursiveFetchUpdates() {
    if (isStart) {
      final body = {
        'act': 'a_check',
        'key': _secretKey,
        'ts': lastEventNumber,
        'wait': '25',
        'version': '10'
      };

      HttpClient.httpPost(_serverUrl!, body: body).then((data) {
        final errorCode = data['failed'] as int?;
        final lastEventNumber = data['ts'];

        if (errorCode != null) return _errorHandler(errorCode, lastEventNumber);

        final updates = data['updates'] as List<dynamic>;

        _applyLastEventNumber(lastEventNumber);

        if (updates.isNotEmpty) {
          for (Map<String, dynamic> event in updates) {
            emitUpdate(VkDartUpdate(event));
          }
        }

        _recursiveFetchUpdates();
      });
    }

    return Future.value();
  }

  @override
  Future<void> stop() {
    _isStart = false;

    return Future.value();
  }

  /// Started or not longpoll
  bool get isStart => _isStart;

  int _eventNumberParse(dynamic ts) => ts is int ? ts : int.parse(ts);

  void _applyLastEventNumber(dynamic lastEventNumber) =>
      this.lastEventNumber = _eventNumberParse(lastEventNumber);

  void _errorHandler(int errorCode, dynamic lastEventNumber) async {
    switch (errorCode) {
      case 1:
        _applyLastEventNumber(lastEventNumber);
        unawaited(_recursiveFetchUpdates());
      errorCode_2:
      case 2:
        await stop();
        await start();
      case 3:
        _applyLastEventNumber(0);
        continue errorCode_2;
    }
  }
}

// ignore: public_member_api_docs
class LongpollException implements Exception {
  /// Message of the exception.
  final String message;

  // ignore: public_member_api_docs
  LongpollException(this.message);

  @override
  String toString() => 'LongpollException: $message';
}
