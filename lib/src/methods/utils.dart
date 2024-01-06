part of '../../methods.dart';

/// Служебные методы.
class Utils {
  /// Конструктор.
  Utils(this._api);
  final Api _api;

  /// Checks whether a link is blocked in VK.
  MethodTypeReturn checkLink(MethodTypeParams params) =>
      _api.request('utils.checkLink', params);

  /// Deletes shortened link from user's list.
  MethodTypeReturn deleteFromLastShortened(MethodTypeParams params) =>
      _api.request('utils.deleteFromLastShortened', params);

  /// Returns a list of user's shortened links.
  MethodTypeReturn getLastShortenedLinks(MethodTypeParams params) =>
      _api.request('utils.getLastShortenedLinks', params);

  /// Returns stats data for shortened link.
  MethodTypeReturn getLinkStats(MethodTypeParams params) =>
      _api.request('utils.getLinkStats', params);

  /// Returns the current time of the VK server.
  MethodTypeReturn getServerTime(MethodTypeParams params) =>
      _api.request('utils.getServerTime', params);

  /// Allows to receive a link shortened via vk.cc.
  MethodTypeReturn getShortLink(MethodTypeParams params) =>
      _api.request('utils.getShortLink', params);

  /// Detects a type of object (e.g., user, community, application) and its ID
  /// by screen name.
  MethodTypeReturn resolveScreenName(MethodTypeParams params) =>
      _api.request('utils.resolveScreenName', params);
}
