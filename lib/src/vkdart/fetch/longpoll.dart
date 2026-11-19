// ignore_for_file: avoid_annotating_with_dynamic

import 'dart:async';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

/// HTTP request callback used by [Longpoll].
typedef LongpollRequest = Future<dynamic> Function(
  String url, {
  Map<String, dynamic>? body,
});

/// Получатель обновлений Longpoll.
class Longpoll extends AbstractUpdateFetcher {
  late final Vkontakte _vkontakte;

  set vkontakte(Vkontakte value) {
    _vkontakte = value;
  }

  /// ID сообщества.
  final int groupId;

  /// Номер последнего события.
  int lastEventNumber = 0;

  final LongpollRequest _request;
  final int _maxRetries;
  final Duration _retryDelay;

  bool _isStart = false;
  bool _isDisposed = false;
  int _generation = 0;
  late String _serverUrl;
  late String _secretKey;
  Future<void>? _disposeFuture;

  /// Создаёт новый получатель обновлений Longpoll.
  ///
  /// Сетевые ошибки повторяются до [maxRetries] раз с интервалом [retryDelay].
  /// [request] можно задать для собственного HTTP-транспорта.
  Longpoll(
    this.groupId, {
    LongpollRequest? request,
    int maxRetries = 5,
    Duration retryDelay = const Duration(seconds: 1),
  })  : _request = request ?? _defaultRequest,
        _maxRetries = maxRetries,
        _retryDelay = retryDelay {
    if (maxRetries < 0) {
      throw ArgumentError.value(maxRetries, 'maxRetries', 'Must be >= 0');
    }
    if (retryDelay.isNegative) {
      throw ArgumentError.value(
          retryDelay, 'retryDelay', 'Must not be negative');
    }
  }

  static Future<dynamic> _defaultRequest(
    String url, {
    Map<String, dynamic>? body,
  }) =>
      HttpClient.httpPost(url, body: body);

  @override
  Future<void> start() async {
    if (_isDisposed) {
      throw StateError('Longpoll has been disposed');
    }
    if (isStart) {
      throw LongpollException('Longpoll is running already!');
    }

    final generation = ++_generation;
    _isStart = true;

    try {
      final connected = await _requestServerWithRetries(generation);
      if (!connected || !_isCurrent(generation)) return;

      unawaited(_fetchUpdates(generation));
    } on Object catch (_) {
      if (_isCurrent(generation)) _isStart = false;
      rethrow;
    }
  }

  Future<bool> _requestServerWithRetries(int generation) async {
    var retries = 0;
    while (_isCurrent(generation)) {
      try {
        final data = await _vkontakte.request(
          'groups.getLongPollServer',
          {'group_id': groupId},
        );
        if (!_isCurrent(generation)) return false;
        _applyServerData(data);
        return true;
      } on Object catch (error, stackTrace) {
        if (!_isCurrent(generation)) return false;
        if (_isTerminal(error)) {
          Error.throwWithStackTrace(error, stackTrace);
        }
        if (retries >= _maxRetries) {
          _throwRetryFailure(
            'Unable to get Long Poll server',
            error,
            stackTrace,
          );
        }

        retries++;
        await Future<void>.delayed(_retryDelay);
      }
    }
    return false;
  }

  Future<void> _fetchUpdates(int generation) async {
    var retries = 0;
    var refreshServer = false;

    while (_isCurrent(generation)) {
      try {
        if (refreshServer) {
          final connected = await _requestServerWithRetries(generation);
          if (!connected || !_isCurrent(generation)) return;
          refreshServer = false;
        }

        final data = _asMap(
          await _request(
            _serverUrl,
            body: {
              'act': 'a_check',
              'key': _secretKey,
              'ts': lastEventNumber,
              'wait': '25',
              'version': '10',
            },
          ),
        );
        if (!_isCurrent(generation)) return;

        final errorCode = data['failed'];
        if (errorCode != null) {
          final code = _asInt(errorCode, 'failed');
          if (code == 1) {
            _applyLastEventNumber(data['ts']);
            retries = 0;
            continue;
          }
          if (code == 2 || code == 3) {
            if (code == 3) _applyLastEventNumber(0);
            if (retries >= _maxRetries) {
              _fail(
                LongpollException(
                  'Long Poll server recovery failed after ${retries + 1} attempts (failed=$code)',
                ),
                StackTrace.current,
                generation,
              );
              return;
            }
            retries++;
            refreshServer = true;
            await Future<void>.delayed(_retryDelay);
            continue;
          }

          _fail(
            LongpollException('Unsupported Long Poll error code: $code'),
            StackTrace.current,
            generation,
          );
          return;
        }

        final updates = data['updates'];
        if (updates is! List) {
          throw LongpollException('Long Poll response has no updates list');
        }

        _applyLastEventNumber(data['ts']);
        for (final event in updates) {
          if (event is! Map) {
            throw LongpollException(
                'Long Poll response contains an invalid update');
          }
          emitUpdate(VkDartUpdate(Map<String, dynamic>.from(event)));
        }
        retries = 0;
      } on Object catch (error, stackTrace) {
        if (!_isCurrent(generation)) return;
        if (_isTerminal(error)) {
          _fail(error, stackTrace, generation);
          return;
        }
        if (retries >= _maxRetries) {
          _fail(
            _retryFailure('Long Poll requests failed', error),
            stackTrace,
            generation,
          );
          return;
        }

        retries++;
        refreshServer = true;
        await Future<void>.delayed(_retryDelay);
      }
    }
  }

  Map<String, dynamic> _asMap(dynamic data) {
    if (data is! Map) {
      throw LongpollException('Long Poll response is not an object');
    }
    return Map<String, dynamic>.from(data);
  }

  void _applyServerData(Object data) {
    final serverData = _asMap(data);
    final server = serverData['server'];
    final key = serverData['key'];
    if (server is! String || key is! String) {
      throw LongpollException(
          'Long Poll server response is missing server or key');
    }

    _serverUrl = server;
    _secretKey = key;
    if (lastEventNumber == 0) {
      _applyLastEventNumber(serverData['ts']);
    }
  }

  int _asInt(dynamic value, String field) {
    if (value is int) return value;
    if (value is String) {
      final parsed = int.tryParse(value);
      if (parsed != null) return parsed;
    }
    throw LongpollException('Long Poll response has an invalid $field value');
  }

  void _applyLastEventNumber(dynamic value) {
    lastEventNumber = _asInt(value, 'ts');
  }

  bool _isCurrent(int generation) => _isStart && _generation == generation;

  bool _isTerminal(Object error) =>
      error is ApiException ||
      error is LongpollException ||
      error is TypeError ||
      error is StateError;

  LongpollException _retryFailure(String message, Object error) =>
      LongpollException('$message after ${_maxRetries + 1} attempts: $error');

  Never _throwRetryFailure(
    String message,
    Object error,
    StackTrace stackTrace,
  ) {
    Error.throwWithStackTrace(
      _retryFailure(message, error),
      stackTrace,
    );
  }

  void _fail(Object error, StackTrace stackTrace, int generation) {
    if (!_isCurrent(generation)) return;
    _isStart = false;
    emitError(error, stackTrace);
  }

  @override
  Future<void> stop() async {
    _isStart = false;
    _generation++;
  }

  @override
  Future<void> dispose() => _disposeFuture ??= _dispose();

  Future<void> _dispose() async {
    _isDisposed = true;
    await stop();
    await super.dispose();
  }

  /// Запущен ли Longpoll.
  bool get isStart => _isStart;
}

// ignore: public_member_api_docs
class LongpollException implements Exception {
  /// Сообщение исключения.
  final String message;

  // ignore: public_member_api_docs
  LongpollException(this.message);

  @override
  String toString() => 'LongpollException: $message';
}
