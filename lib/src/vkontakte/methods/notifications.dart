import 'package:vkdart/vkontakte.dart';

/// Methods for working with alerts.
///
/// See https://dev.vk.com/ru/method/notifications
class Notifications {
  // ignore: public_member_api_docs
  Notifications(this._api);
  final Api _api;

  /// Returns a list of notifications about other users' feedback
  /// to the current user's wall posts.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('notifications.get', params);

  /// Resets the counter of new notifications about other users' feedback to the
  /// current user's wall posts.
  Future<Object> markAsViewed(Map<String, dynamic> params) =>
      _api.request('notifications.markAsViewed', params);

  /// The method sends a notification to the user of the mini-application.
  Future<Object> sendMessage(Map<String, dynamic> params) =>
      _api.request('notifications.sendMessage', params);
}
