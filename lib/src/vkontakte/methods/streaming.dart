import 'package:vkdart/vkontakte.dart';

/// Methods for working with the Streaming API.
///
/// See https://dev.vk.com/ru/method/streaming
class Streaming {
  // ignore: public_member_api_docs
  Streaming(this._api);
  final Api _api;

  /// Allows to receive data for the connection to Streaming API.
  Future<Object> getServerUrl(Map<String, dynamic> params) =>
      _api.request('streaming.getServerUrl', params);

  /// Allows you to get the threshold value for the Streaming API.
  Future<Object> getSettings(Map<String, dynamic> params) =>
      _api.request('streaming.getSettings', params);

  /// Allows you to get statistics for prepared and delivered Streaming API events.
  Future<Object> getStats(Map<String, dynamic> params) =>
      _api.request('streaming.getStats', params);

  /// Allows you to get the base of the word.
  Future<Object> getStem(Map<String, dynamic> params) =>
      _api.request('streaming.getStem', params);

  /// Allows you to set the threshold value for the Streaming API.
  Future<Object> setSettings(Map<String, dynamic> params) =>
      _api.request('streaming.setSettings', params);
}
