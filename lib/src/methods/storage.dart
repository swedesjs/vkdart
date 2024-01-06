part of '../../methods.dart';

/// Методы для работы с переменными в приложении.
class Storage {
  /// Конструктор.
  Storage(this._api);
  final Api _api;

  /// Returns a value of variable with the name set by key parameter.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('storage.get', params);

  /// Returns the names of all variables.
  MethodTypeReturn getKeys(MethodTypeParams params) =>
      _api.request('storage.getKeys', params);

  /// Saves a value of variable with the name set by 'key' parameter.
  MethodTypeReturn set(MethodTypeParams params) =>
      _api.request('storage.set', params);
}
