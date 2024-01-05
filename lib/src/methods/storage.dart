import 'package:vkdart/src/api.dart';

/// Методы для работы с переменными в приложении.
class Storage {
  /// Конструктор.
  Storage(this._api);
  final Api _api;

  /// Returns a value of variable with the name set by key parameter.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('storage.get', params);

  /// Returns the names of all variables.
  Future<Map<String, dynamic>> getKeys(Map<String, Object> params) =>
      _api.request('storage.getKeys', params);

  /// Saves a value of variable with the name set by 'key' parameter.
  Future<Map<String, dynamic>> set(Map<String, Object> params) =>
      _api.request('storage.set', params);
}
