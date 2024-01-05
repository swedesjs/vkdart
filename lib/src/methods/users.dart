import 'package:vkdart/src/api.dart';

/// Методы для работы с данными пользователей.
class Users {
  /// Конструктор.
  Users(this._api);
  final Api _api;

  /// Returns detailed information on users.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('users.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of IDs of followers of the user in question, sorted by date added,
  /// most recent first.
  Future<Map<String, dynamic>> getFollowers(Map<String, Object> params) =>
      _api.request('users.getFollowers', params);

  /// Returns a list of IDs of users and communities followed by the user.
  Future<Map<String, dynamic>> getSubscriptions(Map<String, Object> params) =>
      _api.request('users.getSubscriptions', params);

  /// Reports (submits a complain about) a user.
  Future<Map<String, dynamic>> report(Map<String, Object> params) =>
      _api.request('users.report', params);

  /// Returns a list of users matching the search criteria.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('users.search', params);
}
