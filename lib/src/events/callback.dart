part of '../../events.dart';

class _ContextWithBody extends Context with ParsedBody {
  _ContextWithBody(HttpRequest request) : super(request);
}

/// [Callback] class is used to implement Callback API.
///
/// It provides methods to start and stop the Callback API.
/// The Callback API can process incoming requests when it is started.
///
/// An instance of [Callback] can be created by providing a function
/// that handles confirmation and an optional secret key for additional security.
///
/// Example:
/// ```dart
/// Callback(
///   confirmationHandler: (int groupId) async {
///     // Handle confirmation here
///   },
///   secretKey: 'mySecretKey',
/// )
/// ```
class Callback {
  /// Creates a new instance of the [Callback] class.
  ///
  /// The [confirmationHandler] function is required and it handles the confirmation process.
  /// The [secretKey] is optional and can be used for additional security.
  ///
  /// Example:
  /// ```dart
  /// Callback(
  ///   confirmationHandler: (int groupId) async {
  ///     // Handle confirmation here
  ///   },
  ///   secretKey: 'mySecretKey',
  /// )
  ///
  Callback({
    required Future<String> Function(int groupId) confirmationHandler,
    String? secretKey,
  })  : _confirmationHandler = confirmationHandler,
        _secretKey = secretKey;

  final _app = App(_ContextWithBody.new);
  final _updatesController = StreamController<Update>();
  bool _isStart = false;

  final Future<String> Function(int groupId) _confirmationHandler;
  final String? _secretKey;

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
        if (_secretKey == null || ctx.parsed['secret'] == _secretKey) {
          await next();
        }
      })
      ..use((ctx, next) async {
        final {'type': String type, 'group_id': int groupId} = ctx.parsed;

        if (type == 'confirmation') {
          ctx.body = await _confirmationHandler(groupId);
        } else {
          ctx
            ..body = 'ok'
            ..statusCode = 200;

          _updatesController.add(Update(ctx.parsed));
        }
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
