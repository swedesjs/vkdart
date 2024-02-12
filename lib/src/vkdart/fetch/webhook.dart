import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';

/// Webhook (Callback API) fetcher.
class Webhook extends AbstractUpdateFetcher {
  final io.HttpServer _server;
  final String? _secretKey;
  final String? _confirmationToken;

  bool _isStart = false;

  // ignore: public_member_api_docs
  Webhook(this._server, [this._confirmationToken, this._secretKey]);

  /// Create a Https server.
  static Future<Webhook> createHttpsServer(
      {required io.File privateKey,
      required io.File certificate,
      int port = 443,
      String? secretKey,
      String? confirimationToken}) async {
    final server = await io.HttpServer.bindSecure(
        io.InternetAddress.anyIPv4.address,
        port,
        io.SecurityContext()
          ..useCertificateChainBytes(certificate.readAsBytesSync())
          ..usePrivateKeyBytes(privateKey.readAsBytesSync()));

    return Webhook(server, confirimationToken, secretKey);
  }

  /// Create a Http server.
  static Future<Webhook> createHttpServer(
      {int port = 80, String? secretKey, String? confirimationToken}) async {
    final server =
        await io.HttpServer.bind(io.InternetAddress.anyIPv4.address, port);

    return Webhook(server, confirimationToken, secretKey);
  }

  @override
  Future<void> start() async {
    if (isStart) {
      throw WebhookException('Webhook is running');
    }

    _isStart = true;

    _server.listen((request) {
      void failed() => request.response
        ..statusCode = io.HttpStatus.internalServerError
        ..close();

      if (request.method != 'POST') return failed();

      request.cast<List<int>>().transform(utf8.decoder).join().then((value) {
        final data = jsonDecode(value) as Map<String, dynamic>;

        // Checking for similarity of secret keys
        if (_secretKey != null && _secretKey != data['secret']) return failed();

        final isConfirmation = data['type'] == 'confirmation';

        if (isConfirmation) {
          if (_confirmationToken == null) {
            throw WebhookException(
                'The vk server requested confirimation token, specify this parameter!');
          }
        } else {
          emitUpdate(VkDartUpdate(data));
        }

        request.response
          ..write(isConfirmation ? _confirmationToken : 'ok')
          ..close();
      });
    });
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
class WebhookException implements Exception {
  /// The message of the exception.
  final String message;

  // ignore: public_member_api_docs
  WebhookException(this.message);

  @override
  String toString() => 'CallbackException: $message';
}
