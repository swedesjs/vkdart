part of '../../../vkdart.dart';

/// Longpoll fetcher.
class Longpoll extends AbstractUpdateFetcher {
  /// Create a new longpoll fetcher.
  ///
  /// [api] - instance [Api]
  /// [groupId] - group ID
  /// [lastEventNumber] - last event number (optional).
  Longpoll(
    Api api, {
    required this.groupId,
    this.lastEventNumber = 0,
  }) : _api = api;

  final _dio = Dio();
  final Api _api;
  bool _isStart = false;

  /// Group id
  final int groupId;

  String? _server, _key;

  /// Last event number.
  int lastEventNumber;

  @override
  Future<void> start() async {
    if (isStart) {
      throw LongpollException('Longpoll is running already!');
    }

    _isStart = true;

    final ApiResponse(
      data: {
        'server': String server,
        'key': String key,
        'ts': ts,
      }
    ) = await _api.groups
        .getLongPollServer<Map<String, dynamic>>({'group_id': groupId});

    _server ??= server;
    _key = key;

    if (lastEventNumber == 0) {
      lastEventNumber = _eventNumberParse(ts);
    }

    unawaited(_recursiveFetchUpdates());
  }

  Future<void> _recursiveFetchUpdates() {
    if (isStart) {
      final queryParameters = {
        'act': 'a_check',
        'key': _key,
        'ts': lastEventNumber,
        'wait': '25',
        'version': '10',
      };

      _dio
          .get<Map<String, dynamic>>(_server!, queryParameters: queryParameters)
          .then((response) async {
        final failed = response.data!['failed'] as int?;
        final ts = response.data!['ts'];

        if (failed != null) {
          _errorHandler(failed, ts);
        } else {
          final {'updates': List<dynamic> updates} = response.data!;

          lastEventNumber = _eventNumberParse(ts);

          if (updates.isNotEmpty) {
            for (Map<String, dynamic> event in updates) {
              emitUpdate(Update(event));
            }
          }

          unawaited(_recursiveFetchUpdates());
        }
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

  int _eventNumberParse(ts) => ts is int ? ts : int.parse(ts);

  void _errorHandler(int failed, ts) async {
    switch (failed) {
      case 1:
        lastEventNumber = _eventNumberParse(ts);
        unawaited(_recursiveFetchUpdates());
      N2:
      case 2:
        await stop();
        await start();
      case 3:
        lastEventNumber = 0;
        continue N2;
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
