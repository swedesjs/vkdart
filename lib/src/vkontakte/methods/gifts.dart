part of '../api.dart';

/// Методы для работы с подарками.
class Gifts {
  /// Конструктор.
  Gifts(this._api);
  final Api _api;

  /// Returns a list of user gifts.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('gifts.get', params);
}
