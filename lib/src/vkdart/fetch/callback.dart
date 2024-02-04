import 'dart:io';

import 'package:dia/dia.dart';
import 'package:dia_body/dia_body.dart';
import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';

class _ContextWithBody extends Context with ParsedBody {
  _ContextWithBody(HttpRequest request) : super(request);
}

/// Callback fetcher.
class Callback extends AbstractUpdateFetcher {
  /// Creates a new callback fetcher.
  ///
  /// [confirmationHandler] - handler for confirmation.
  /// [secretKey] - secret key.
  /// [address] - address. By default is `localhost`.
  /// [port] - port. By default is 80, if [securityContext] is not null is 443.
  /// [securityContext] - security context.
  Callback({
    required Future<String> Function(int groupId) confirmationHandler,
    String? secretKey,
    this.address = 'localhost',
    int? port,
    this.securityContext,
  })  : _confirmationHandler = confirmationHandler,
        _secretKey = secretKey,
        port = port ?? (securityContext == null ? 80 : 443);

  final _server = App(_ContextWithBody.new);

  bool _isStart = false;

  final Future<String> Function(int groupId) _confirmationHandler;
  final String? _secretKey;

  /// Address of the server.
  final String address;

  /// Port of the server.
  int? port;

  /// Security context.
  final SecurityContext? securityContext;

  @override
  Future<void> start() async {
    if (isStart) {
      throw CallbackException('Callback API is running');
    }

    _isStart = true;

    _server
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

          emitUpdate(Update(ctx.parsed));
        }
      });

    await _server.listen(address, port!, securityContext: securityContext);
  }

  @override
  Future<void> stop() {
    _server.close();
    _isStart = false;
    return Future.value();
  }

  /// Returns the state of the Callback API.
  /// If the Callback API has started, it will return true.
  /// Otherwise, it will return false.
  bool get isStart => _isStart;
}

// ignore: public_member_api_docs
class CallbackException implements Exception {
  // ignore: public_member_api_docs
  CallbackException(this.message);

  /// The message of the exception.
  final String message;

  @override
  String toString() => 'CallbackException: $message';
}
