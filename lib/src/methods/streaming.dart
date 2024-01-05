import 'package:vkdart/src/api.dart';

/// Методы для работы со Streaming API.
class Streaming {
  /// Конструктор.
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  Future<Map<String, dynamic>> getServerUrl(Map<String, Object> params) =>
      _api.request('streaming.getServerUrl', params);

  /// Позволяет получить значение порога для Streaming API.
  Future<Map<String, dynamic>> getSettings(Map<String, Object> params) =>
      _api.request('streaming.getSettings', params);

  // ignore: lines_longer_than_80_chars
  /// Позволяет получить статистику для подготовленных и доставленных событий Streaming API.
  Future<Map<String, dynamic>> getStats(Map<String, Object> params) =>
      _api.request('streaming.getStats', params);

  /// Позволяет получить основу слова.
  Future<Map<String, dynamic>> getStem(Map<String, Object> params) =>
      _api.request('streaming.getStem', params);

  /// Позволяет задать значение порога для Streaming API.
  Future<Map<String, dynamic>> setSettings(Map<String, Object> params) =>
      _api.request('streaming.setSettings', params);
}
