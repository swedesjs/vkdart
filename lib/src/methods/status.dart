part of '../../methods.dart';

/// Методы для работы со статусом.
class Status {
  /// Конструктор.
  Status(this._api);
  final Api _api;

  /// Returns data required to show the status of a user or community.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('status.get', params);

  /// Sets a new status for the current user.
  Future<ApiResponse<T>> set<T>(MethodTypeParams params) =>
      _api.request<T>('status.set', params);
}
