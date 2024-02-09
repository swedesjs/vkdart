import 'package:vkdart/vkontakte.dart';

/// Methods for working with user data.
///
/// See https://dev.vk.com/ru/method/users
class Users {
  // ignore: public_member_api_docs
  Users(this._api);
  final Api _api;

  /// Returns detailed information on users.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('users.get', params);

  /// Returns a list of IDs of followers of the user in question, sorted by date added,
  /// most recent first.
  Future<Object> getFollowers(Map<String, dynamic> params) =>
      _api.request('users.getFollowers', params);

  /// Returns a list of IDs of users and communities followed by the user.
  Future<Object> getSubscriptions(Map<String, dynamic> params) =>
      _api.request('users.getSubscriptions', params);

  /// Reports (submits a complain about) a user.
  Future<Object> report(Map<String, dynamic> params) =>
      _api.request('users.report', params);

  /// Returns a list of users matching the search criteria.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('users.search', params);
}
