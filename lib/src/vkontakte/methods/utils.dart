import 'package:vkdart/vkontakte.dart';

/// Служебные методы.
class Utils {
  /// Конструктор.
  Utils(this._api);
  final Api _api;

  /// Checks whether a link is blocked in VK.
  Future<ApiResponse<T>> checkLink<T>(Map<String, Object> params) =>
      _api.request<T>('utils.checkLink', params);

  /// Deletes shortened link from user's list.
  Future<ApiResponse<T>> deleteFromLastShortened<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('utils.deleteFromLastShortened', params);

  /// Returns a list of user's shortened links.
  Future<ApiResponse<T>> getLastShortenedLinks<T>(Map<String, Object> params) =>
      _api.request<T>('utils.getLastShortenedLinks', params);

  /// Returns stats data for shortened link.
  Future<ApiResponse<T>> getLinkStats<T>(Map<String, Object> params) =>
      _api.request<T>('utils.getLinkStats', params);

  /// Returns the current time of the VK server.
  Future<ApiResponse<T>> getServerTime<T>(Map<String, Object> params) =>
      _api.request<T>('utils.getServerTime', params);

  /// Allows to receive a link shortened via vk.cc.
  Future<ApiResponse<T>> getShortLink<T>(Map<String, Object> params) =>
      _api.request<T>('utils.getShortLink', params);

  /// Detects a type of object (e.g., user, community, application) and its ID
  /// by screen name.
  Future<ApiResponse<T>> resolveScreenName<T>(Map<String, Object> params) =>
      _api.request<T>('utils.resolveScreenName', params);
}
