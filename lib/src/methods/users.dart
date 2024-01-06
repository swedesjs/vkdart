part of '../../methods.dart';

/// Методы для работы с данными пользователей.
class Users {
  /// Конструктор.
  Users(this._api);
  final Api _api;

  /// Returns detailed information on users.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('users.get', params);

  /// Returns a list of IDs of followers of the user in question, sorted by date added,
  /// most recent first.
  Future<ApiResponse<T>> getFollowers<T>(MethodTypeParams params) =>
      _api.request<T>('users.getFollowers', params);

  /// Returns a list of IDs of users and communities followed by the user.
  Future<ApiResponse<T>> getSubscriptions<T>(MethodTypeParams params) =>
      _api.request<T>('users.getSubscriptions', params);

  /// Reports (submits a complain about) a user.
  Future<ApiResponse<T>> report<T>(MethodTypeParams params) =>
      _api.request<T>('users.report', params);

  /// Returns a list of users matching the search criteria.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('users.search', params);
}
