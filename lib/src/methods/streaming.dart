import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы со Streaming API.
class Streaming {
  /// Конструктор.
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  MethodTypeReturn getServerUrl(MethodTypeParams params) =>
      _api.request('streaming.getServerUrl', params);

  /// Позволяет получить значение порога для Streaming API.
  MethodTypeReturn getSettings(MethodTypeParams params) =>
      _api.request('streaming.getSettings', params);

  // ignore: lines_longer_than_80_chars
  /// Позволяет получить статистику для подготовленных и доставленных событий Streaming API.
  MethodTypeReturn getStats(MethodTypeParams params) =>
      _api.request('streaming.getStats', params);

  /// Позволяет получить основу слова.
  MethodTypeReturn getStem(MethodTypeParams params) =>
      _api.request('streaming.getStem', params);

  /// Позволяет задать значение порога для Streaming API.
  MethodTypeReturn setSettings(MethodTypeParams params) =>
      _api.request('streaming.setSettings', params);
}
