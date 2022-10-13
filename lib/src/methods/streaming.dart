import '../api.dart';

class Streaming {
  final Api _api;

  Streaming(this._api);

  /// Allows to receive data for the connection to Streaming API.
  Future<Map<String, dynamic>> getServerUrl(Map<String, Object> params) {
    return _api.request('streaming.getServerUrl', params);
  }

  Future<Map<String, dynamic>> setSettings(Map<String, Object> params) {
    return _api.request('streaming.setSettings', params);
  }
}
