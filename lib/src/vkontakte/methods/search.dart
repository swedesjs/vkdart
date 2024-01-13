part of '../../methods.dart';

/// Методы для работы с поиском.
class Search {
  /// Конструктор.
  Search(this._api);
  final Api _api;

  /// Allows the programmer to do a quick search for any substring.
  Future<ApiResponse<T>> getHints<T>(MethodTypeParams params) =>
      _api.request<T>('search.getHints', params);
}
