part of '../../methods.dart';

/// Методы для работы со Streaming API.
class Streaming {
  /// Конструктор.
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  Future<ApiResponse<T>> getServerUrl<T>(MethodTypeParams params) =>
      _api.request<T>('streaming.getServerUrl', params);

  /// Позволяет получить значение порога для Streaming API.
  Future<ApiResponse<T>> getSettings<T>(MethodTypeParams params) =>
      _api.request<T>('streaming.getSettings', params);

  /// Позволяет получить статистику для подготовленных и доставленных событий Streaming API.
  Future<ApiResponse<T>> getStats<T>(MethodTypeParams params) =>
      _api.request<T>('streaming.getStats', params);

  /// Позволяет получить основу слова.
  Future<ApiResponse<T>> getStem<T>(MethodTypeParams params) =>
      _api.request<T>('streaming.getStem', params);

  /// Позволяет задать значение порога для Streaming API.
  Future<ApiResponse<T>> setSettings<T>(MethodTypeParams params) =>
      _api.request<T>('streaming.setSettings', params);
}
