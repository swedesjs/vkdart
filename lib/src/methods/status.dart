part of '../../methods.dart';

/// Методы для работы со статусом.
class Status {
  /// Конструктор.
  Status(this._api);
  final Api _api;

  /// Returns data required to show the status of a user or community.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('status.get', params);

  /// Sets a new status for the current user.
  MethodTypeReturn set(MethodTypeParams params) =>
      _api.request('status.set', params);
}
