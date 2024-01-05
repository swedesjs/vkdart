import 'package:vkdart/src/api.dart';

/// Методы для работы со Streaming API.
class Streaming {
  /// Конструктор.
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  Future<Map<String, dynamic>> getServerUrl(Map<String, Object> params) =>
      _api.request('streaming.getServerUrl', params);

  /// Позволяет задать значение порога для Streaming API.
  Future<Map<String, dynamic>> setSettings(Map<String, Object> params) =>
      _api.request('streaming.setSettings', params);
}
