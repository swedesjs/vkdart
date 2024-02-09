import 'package:vkdart/vkontakte.dart';

/// Methods for working with VK Donut.
///
/// See https://dev.vk.com/ru/method/donut
class Donut {
  // ignore: public_member_api_docs
  Donut(this._api);
  final Api _api;

  /// Returns a list of dons who are subscribed to certain communities from among the user's friends.
  Future<Object> getFriends(Map<String, dynamic> params) =>
      _api.request('donut.getFriends', params);

  /// Returns information about VK Donut subscription.
  Future<Object> getSubscription(Map<String, dynamic> params) =>
      _api.request('donut.getSubscription', params);

  /// Returns a list of user's VK Donut subscriptions.
  Future<Object> getSubscriptions(Map<String, dynamic> params) =>
      _api.request('donut.getSubscriptions', params);

  /// Returns information about whether the user is subscribed to paid content (is a don).
  Future<Object> isDon(Map<String, dynamic> params) =>
      _api.request('donut.isDon', params);
}
