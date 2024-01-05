import 'package:vkdart/src/api.dart';

/// Методы для работы с подарками.
class Gifts {
  /// Конструктор.
  Gifts(this._api);
  final Api _api;

  /// Returns a list of user gifts.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('gifts.get', params);
}
