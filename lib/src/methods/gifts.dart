part of '../../methods.dart';

/// Методы для работы с подарками.
class Gifts {
  /// Конструктор.
  Gifts(this._api);
  final Api _api;

  /// Returns a list of user gifts.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('gifts.get', params);
}
