import 'package:vkdart/src/api.dart';

/// Методы для работы со статусом.
class Status {
  /// Конструктор.
  Status(this._api);
  final Api _api;

  /// Returns data required to show the status of a user or community.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('status.get', params);

  /// Sets a new status for the current user.
  Future<Map<String, dynamic>> set(Map<String, Object> params) =>
      _api.request('status.set', params);
}
