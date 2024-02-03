import 'package:vkdart/vkontakte.dart';

/// Methods for working with VK Donut.
///
/// See https://dev.vk.com/ru/method/donut
class Donut {
  // ignore: public_member_api_docs
  Donut(this._api);
  final Api _api;

  /// Returns a list of dons who are subscribed to certain communities from among the user's friends.
  Future<ApiResponse<T>> getFriends<T>(Map<String, Object> params) =>
      _api.request<T>('donut.getFriends', params);

  /// Returns information about VK Donut subscription.
  Future<ApiResponse<T>> getSubscription<T>(Map<String, Object> params) =>
      _api.request<T>('donut.getSubscription', params);

  /// Returns a list of user's VK Donut subscriptions.
  Future<ApiResponse<T>> getSubscriptions<T>(Map<String, Object> params) =>
      _api.request<T>('donut.getSubscriptions', params);

  /// Returns information about whether the user is subscribed to paid content (is a don).
  Future<ApiResponse<T>> isDon<T>(Map<String, Object> params) =>
      _api.request<T>('donut.isDon', params);
}
