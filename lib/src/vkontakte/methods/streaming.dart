import 'package:vkdart/vkontakte.dart';

/// Methods for working with the Streaming API.
///
/// See https://dev.vk.com/ru/method/streaming
class Streaming {
  // ignore: public_member_api_docs
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  Future<ApiResponse<T>> getServerUrl<T>(Map<String, Object> params) =>
      _api.request<T>('streaming.getServerUrl', params);

  /// Allows you to get the threshold value for the Streaming API.
  Future<ApiResponse<T>> getSettings<T>(Map<String, Object> params) =>
      _api.request<T>('streaming.getSettings', params);

  /// Allows you to get statistics for prepared and delivered Streaming API events.
  Future<ApiResponse<T>> getStats<T>(Map<String, Object> params) =>
      _api.request<T>('streaming.getStats', params);

  /// Allows you to get the base of the word.
  Future<ApiResponse<T>> getStem<T>(Map<String, Object> params) =>
      _api.request<T>('streaming.getStem', params);

  /// Allows you to set the threshold value for the Streaming API.
  Future<ApiResponse<T>> setSettings<T>(Map<String, Object> params) =>
      _api.request<T>('streaming.setSettings', params);
}
