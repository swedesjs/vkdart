part of '../../events.dart';

class _ContextWithBody extends Context with ParsedBody {
  _ContextWithBody(HttpRequest request) : super(request);
}

/// The [Callback] class is used to handle asynchronous events in VkDart.
///
/// It provides methods to start and stop the processing of incoming requests.
/// An instance of [Callback] is obtained through the [VkDart.getApi] method.
///
/// Example usage:
///
/// ```dart
/// var api = VkDart(...).getApi();
/// var callback = Callback(api);
/// callback.start();  // start processing incoming requests
/// ...
/// callback.stop();  // stop processing incoming requests
/// ```
class Callback {
  /// Creates an instance of [Callback] with the specified [api].
  Callback(Api api) : _api = api;

  final Api _api;
  bool _isStart = false;

  final _app = App(_ContextWithBody.new);

  final _updatesController = StreamController<Update>();

  /// Stream of [Update] events.
  ///
  /// This Stream provides a sequence of updates representing the events
  /// occurring in the VkDart application. Subscribers can listen to this stream
  /// to receive and handle these update events as they occur.
  Stream<Update> get updates => _updatesController.stream;

  /// Starts the Callback API.
  /// After calling this function, the Callback API will process incoming requests.
  /// If the Callback API is already running, an exception will be thrown.
  ///
  Future<void> start({
    String address = 'localhost',
    int? port,
    SecurityContext? securityContext,
  }) async {
    if (isStart) {
      throw CallbackException('Callback API is running');
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
          return;
        } else {
          ctx
            ..body = 'ok'
            ..statusCode = 200;
        }

        _updatesController.add(Update(ctx.parsed));
      });

    await _app.listen(address, portResult, securityContext: securityContext);
  }

  /// Stops the Callback API if it's running.
  /// After calling this function, the Callback API will no longer process incoming requests.
  void stop() {
    _app.close();
    _isStart = false;
  }

  /// Returns the state of the Callback API.
  /// If the Callback API has started, it will return true.
  /// Otherwise, it will return false.
  bool get isStart => _isStart;
}
