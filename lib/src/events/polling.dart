part of '../../events.dart';

/// Тип
typedef Handler<T> = dynamic Function(T event);

final _dio = Dio();

// ignore: avoid_annotating_with_dynamic
int _parsingEventNumber(dynamic ts) {
  assert(ts is int || ts is String, 'ts должен быть равен типу String, int');

  return ts is int ? ts : int.parse(ts as String);
}

/// Класс для работы с событиями Longpoll API.
class Longpoll {
  /// Конструктор.
  /// Для получения событий GroupLongpoll укажите параметр [groupId].
  /// Для UserLongpoll оставьте поле пустым.
  Longpoll(Api api, {int? groupId})
      : _api = api,
        _groupId = groupId;

  /// 2 — получать вложения.
  ///
  /// 8 — возвращать расширенный набор событий.
  ///
  /// 64 — в событии с кодом 8 возвращать дополнительные данные в поле $extra.
  ///
  /// 128 — возвращать поле random_id
  static const mode = 2 | 8 | 64 | 128;

  final Api _api;

  final int? _groupId;

  Handler<dynamic>? _pollingHandler;

  bool _isStart = false;
  int _ts = 0;

  /// Запускает прослушку. Все полученные данные будут приходить в функцию,
  /// отправленной функции [subscribe]
  Future<void> start() async {
    if (isStart) {
      throw Exception('Longpoll API ранее был запущен!');
    }

    _isStart = true;

    final isGroup = _groupId != null;

    final ApiResponse(:data) = isGroup
        ? await _api.groups
            .getLongPollServer<ClassicMap>({'group_id': _groupId!})
        : await _api.messages.getLongPollServer<ClassicMap>({'lp_version': 10});

    final {
      'server': String server,
      'key': String key,
      'ts': ts,
    } = data;

    if (ts == 0) {
      _ts = _parsingEventNumber(ts);
    }

    final pollingUrl = isGroup ? server : 'https://$server';

    await fetchUpdates(pollingUrl, key);
  }

  // recoursive function
  /// Отправляет запрос к серверу VK для получения обновлений
  /// [server] и [key] - параметры полученные методом groups.getLongPollServer
  /// или messages.getLongPollServer
  Future<void> fetchUpdates(String server, String key) async {
    if (_pollingHandler == null) {
      throw Exception('Подпишитесь на обновления! Запустите subscribe.');
    }

    final Response(data: data) = await _dio.get<ClassicMap>(
      server,
      queryParameters: {
        'act': 'a_check',
        'key': key,
        'ts': _ts,
        'wait': 25,
        'mode': mode,
        'version': 10,
      },
    );

    final failed = data!['failed'] as int?;
    final ts = data['ts'];

    if (failed != null) {
      switch (failed) {
        case 1:
          _ts = _parsingEventNumber(ts);
          await fetchUpdates(server, key);
        N2:
        case 2:
          await stop();
          await start();
        case 3:
          _ts = 0;
          continue N2;
        case 4:
          throw Exception(
            'An invalid version number was passed in the version parameter.',
          );
      }
    } else {
      final {'updates': List<dynamic> updates} = data;

      _ts = _parsingEventNumber(ts);

      for (var event in updates) {
        _pollingHandler!(event);
      }

      if (isStart) {
        await fetchUpdates(server, key);
      }
    }
  }

  /// Останавливает процесс получения обновлений.
  Future<void> stop() {
    _isStart = false;

    return Future.value();
  }

  /// Начать прослужку Longpoll API
  void subscribe(Handler<dynamic> handler) {
    _pollingHandler = handler;
  }

  /// Геттер сообщающий о том, запущен ли Longpoll API, или же нет
  bool get isStart => _isStart;
}
