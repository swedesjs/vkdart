import '../api.dart';

class Utils {
  final Api _api;

  Utils(this._api);

  /// Checks whether a link is blocked in VK.
  Future<Map<String, dynamic>> checkLink(Map<String, Object> params) {
    return _api.request('utils.checkLink', params);
  }

  /// Deletes shortened link from user's list.
  Future<Map<String, dynamic>> deleteFromLastShortened(Map<String, Object> params) {
    return _api.request('utils.deleteFromLastShortened', params);
  }

  /// Returns a list of user's shortened links.
  Future<Map<String, dynamic>> getLastShortenedLinks(Map<String, Object> params) {
    return _api.request('utils.getLastShortenedLinks', params);
  }

  /// Returns stats data for shortened link.
  Future<Map<String, dynamic>> getLinkStats(Map<String, Object> params) {
    return _api.request('utils.getLinkStats', params);
  }

  /// Returns the current time of the VK server.
  Future<Map<String, dynamic>> getServerTime(Map<String, Object> params) {
    return _api.request('utils.getServerTime', params);
  }

  /// Allows to receive a link shortened via vk.cc.
  Future<Map<String, dynamic>> getShortLink(Map<String, Object> params) {
    return _api.request('utils.getShortLink', params);
  }

  /// Detects a type of object (e.g., user, community, application) and its ID by screen name.
  Future<Map<String, dynamic>> resolveScreenName(Map<String, Object> params) {
    return _api.request('utils.resolveScreenName', params);
  }
}
