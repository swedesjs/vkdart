part of '../../events.dart';

class _ContextWithBody extends Context with ParsedBody {
  _ContextWithBody(HttpRequest request) : super(request);
}

/// Вспомогающий класс для ловли событий Callback API
class Callback {
  /// Конструктор класса Callback
  /// В параметр [api] указывать экземпляр полученный методом [VkDart.getApi]
  Callback(Api api) : _api = api;

  final Api _api;
  bool _isStart = false;

  Handler<ClassicMap>? _webhookHandler;

  final _app = App(_ContextWithBody.new);

  /// Запускает Callback API
  /// Для запуска необходимо указать [address], по умолчанию равен localhost.
  ///
  // ignore: lines_longer_than_80_chars
  /// [port] по умолчанию при наличии SSL-сертификата равен 443, в ином случае 80.
  ///
  /// В [securityContext] необходимо указать SSL сертификат при наличии,
  /// воспользуйтесь классом [SecurityContext], принадлежащий библиотеке Dia
  ///
  // ignore: lines_longer_than_80_chars
  /// ВАЖНО: Библиотека сама вернет необходимый ключ серверу (если это требуется),
  /// ничего указывать не надо :)
  Future<void> start({
    String address = 'localhost',
    int? port,
    SecurityContext? securityContext,
  }) async {
    if (isStart) {
      throw Exception('Callback API уже в работе');
    }

    if (_webhookHandler == null) {
      throw Exception('Подпишитесь на обновления! Запустите subscribe.');
    }

    _isStart = true;

    final portResult = port ?? (securityContext != null ? 443 : 80);

    _app
      ..use(body())
      ..use((ctx, next) async {
        final {'type': String type, 'group_id': int groupId} = ctx.parsed;

        if (type == 'confirmation') {
          final ApiResponse(:data) =
              await _api.groups.getCallbackConfirmationCode<ClassicMap>({
            'group_id': groupId,
          });

          ctx.body = data['code'];
        } else {
          ctx
            ..body = 'ok'
            ..statusCode = 200;
        }

        _webhookHandler!(ctx.parsed);
      });

    await _app.listen(address, portResult, securityContext: securityContext);
  }

  /// Останавливает Callback Api
  void stop() {
    _app.close();
    _isStart = false;
  }

  /// Подписаться на webhook обновления.
  void subscribe(Handler<ClassicMap> handler) {
    _webhookHandler = handler;
  }

  /// Геттер сообщающий о том, запущен ли Callback API, или же нет
  bool get isStart => _isStart;
}
