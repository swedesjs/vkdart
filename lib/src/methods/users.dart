import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с данными пользователей.
class Users {
  /// Конструктор.
  Users(this._api);
  final Api _api;

  /// Returns detailed information on users.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('users.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of IDs of followers of the user in question, sorted by date added,
  /// most recent first.
  MethodTypeReturn getFollowers(MethodTypeParams params) =>
      _api.request('users.getFollowers', params);

  /// Returns a list of IDs of users and communities followed by the user.
  MethodTypeReturn getSubscriptions(MethodTypeParams params) =>
      _api.request('users.getSubscriptions', params);

  /// Reports (submits a complain about) a user.
  MethodTypeReturn report(MethodTypeParams params) =>
      _api.request('users.report', params);

  /// Returns a list of users matching the search criteria.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('users.search', params);
}
