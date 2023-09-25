import 'dart:async';
import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';
import 'package:vkdart/vkdart.dart';

class _ContextWithBody extends Context with ParsedBody {
  _ContextWithBody(HttpRequest request) : super(request);
}

/// Вспомогающий класс для ловли событий Callback API
class Callback {
  final Api _api;
  bool _isStart = false;

  final _app = App((req) => _ContextWithBody(req));

  final _updatesController = StreamController<Map<String, dynamic>>();

  /// Конструктор класса Callback
  /// В параметр [api] указывать экземпляр полученный методом [VkDart.getApi]
  Callback(Api api) : _api = api;

  /// Возвращает события Callback API экзепляром класса [Stream]
  /// ```dart
  /// .onEvent().listen((event) {
  ///   print(event)
  /// })
  /// ```
  Stream<Map<String, dynamic>> onEvent() => _updatesController.stream;

  /// Запускает Callback API
  /// Для запуска необходимо указать [address], по умолчанию равен localhost.
  ///
  /// [port] по умолчанию при наличии SSL-сертификата равен 443, в ином случае 80.
  ///
  /// В [securityContext] необходимо указать SSL сертификат при наличии, воспользуйтесь классом [SecurityContext], принадлежащий библиотеке Dia
  ///
  /// ВАЖНО: Библиотека сама вернет необходимый ключ серверу (если это требуется), ничего указывать не надо :)
  Future<void> start(
      {String address = "localhost",
      int? port,
      SecurityContext? securityContext}) async {
    if (isStart) {
      throw Exception('Callback API уже в работе');
    }

    _isStart = true;

    final resultPort = port ?? (securityContext != null ? 443 : 80);

    _app.use(body());

    _app.use((ctx, next) async {
      final data = ctx.parsed;

      if (data['type'] == 'confirmation') {
        final code = await _api.groups.getCallbackConfirmationCode({
          'group_id': data['group_id'],
        });

        ctx.body = code['response']['code'];
      } else {
        ctx.body = "ok";
        ctx.statusCode = 200;
      }

      _updatesController.add(ctx.parsed);
    });

    await _app.listen(address, resultPort, securityContext: securityContext);
  }

  /// Останавливает Callback Api
  void stop() {
    _app.close();
    _isStart = false;
  }

  /// Геттер сообщающий о том, запущен ли Callback API, или же нет
  bool get isStart => _isStart;
}
