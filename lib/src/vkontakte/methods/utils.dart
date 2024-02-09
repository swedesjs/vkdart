import 'package:vkdart/vkontakte.dart';

/// Service methods.
///
/// See https://dev.vk.com/ru/method/utils
class Utils {
  // ignore: public_member_api_docs
  Utils(this._api);
  final Api _api;

  /// Checks whether a link is blocked in VK.
  Future<Object> checkLink(Map<String, dynamic> params) =>
      _api.request('utils.checkLink', params);

  /// Deletes shortened link from user's list.
  Future<Object> deleteFromLastShortened(Map<String, dynamic> params) =>
      _api.request('utils.deleteFromLastShortened', params);

  /// Returns a list of user's shortened links.
  Future<Object> getLastShortenedLinks(Map<String, dynamic> params) =>
      _api.request('utils.getLastShortenedLinks', params);

  /// Returns stats data for shortened link.
  Future<Object> getLinkStats(Map<String, dynamic> params) =>
      _api.request('utils.getLinkStats', params);

  /// Returns the current time of the VK server.
  Future<Object> getServerTime(Map<String, dynamic> params) =>
      _api.request('utils.getServerTime', params);

  /// Allows to receive a link shortened via vk.cc.
  Future<Object> getShortLink(Map<String, dynamic> params) =>
      _api.request('utils.getShortLink', params);

  /// Detects a type of object (e.g., user, community, application) and its ID
  /// by screen name.
  Future<Object> resolveScreenName(Map<String, dynamic> params) =>
      _api.request('utils.resolveScreenName', params);
}
