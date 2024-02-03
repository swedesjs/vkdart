import 'package:vkdart/vkontakte.dart';

/// Methods for working with user data.
///
/// See https://dev.vk.com/ru/method/users
class Users {
  // ignore: public_member_api_docs
  Users(this._api);
  final Api _api;

  /// Returns detailed information on users.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('users.get', params);

  /// Returns a list of IDs of followers of the user in question, sorted by date added,
  /// most recent first.
  Future<ApiResponse<T>> getFollowers<T>(Map<String, Object> params) =>
      _api.request<T>('users.getFollowers', params);

  /// Returns a list of IDs of users and communities followed by the user.
  Future<ApiResponse<T>> getSubscriptions<T>(Map<String, Object> params) =>
      _api.request<T>('users.getSubscriptions', params);

  /// Reports (submits a complain about) a user.
  Future<ApiResponse<T>> report<T>(Map<String, Object> params) =>
      _api.request<T>('users.report', params);

  /// Returns a list of users matching the search criteria.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('users.search', params);
}
