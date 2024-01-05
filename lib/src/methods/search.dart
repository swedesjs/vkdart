import 'package:vkdart/src/api.dart';

/// Методы для работы с поиском.
class Search {
  /// Конструктор.
  Search(this._api);
  final Api _api;

  /// Allows the programmer to do a quick search for any substring.
  Future<Map<String, dynamic>> getHints(Map<String, Object> params) =>
      _api.request('search.getHints', params);
}
