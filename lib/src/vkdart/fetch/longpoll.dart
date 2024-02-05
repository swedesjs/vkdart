// ignore_for_file: avoid_annotating_with_dynamic

import 'dart:async';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

/// Longpoll fetcher.
class Longpoll extends AbstractUpdateFetcher {
  /// Create a new longpoll fetcher.
  ///
  /// [api] - instance [Api]
  /// [groupId] - group ID
  /// [lastEventNumber] - The last number of the event to start wiretapping from.
  Longpoll(
    Api api, {
    required this.groupId,
    this.lastEventNumber = 0,
  }) : _api = api;

  final Api _api;

  /// Group id
  final int groupId;

  /// Last event number.
  int lastEventNumber;

  bool _isStart = false;
  String? _serverUrl, _secretKey;

  @override
  Future<void> start() async {
    if (isStart) {
      throw LongpollException('Longpoll is running already!');
    }

    _isStart = true;

    final ApiResponse(
      data: {
        'server': String serverUrl,
        'key': String secretKey,
        'ts': dynamic lastEventNumber,
      }
    ) = await _api.groups
        .getLongPollServer<Map<String, dynamic>>({'group_id': groupId});

    // ignore: unnecessary_this
    this._serverUrl ??= serverUrl;
    // ignore: unnecessary_this
    this._secretKey = secretKey;

    if (this.lastEventNumber == 0) {
      _applyLastEventNumber(lastEventNumber);
    }

    unawaited(_recursiveFetchUpdates());
  }

  Future<void> _recursiveFetchUpdates() async {
    if (isStart) {
      final Map<String, dynamic> response =
          await HttpClient.httpPost(_serverUrl!, body: {
        'act': 'a_check',
        'key': _secretKey,
        'ts': this.lastEventNumber,
        'wait': '25',
        'version': '10'
      });

      final errorCode = response['failed'] as int?;
      final lastEventNumber = response['ts'];

      if (errorCode != null) {
        _errorHandler(errorCode, lastEventNumber);
      } else {
        final {'updates': List<dynamic> updates} = response;

        _applyLastEventNumber(lastEventNumber);

        if (updates.isNotEmpty) {
          for (Map<String, dynamic> event in updates) {
            emitUpdate(Update(event));
          }
        }

        unawaited(_recursiveFetchUpdates());
      }
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
  // ignore: public_member_api_docs
  LongpollException(this.message);

  /// Message of the exception.
  final String message;

  @override
  String toString() => 'LongpollException: $message';
}
