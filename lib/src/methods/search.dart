import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с поиском.
class Search {
  /// Конструктор.
  Search(this._api);
  final Api _api;

  /// Allows the programmer to do a quick search for any substring.
  MethodTypeReturn getHints(MethodTypeParams params) =>
      _api.request('search.getHints', params);
}
