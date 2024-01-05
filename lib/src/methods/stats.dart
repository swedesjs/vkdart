import 'package:vkdart/src/api.dart';

/// Методы для работы со статистикой.
class Stats {
  /// Конструктор.
  Stats(this._api);
  final Api _api;

  /// Returns statistics of a community or an application.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('stats.get', params);

  /// Returns stats for a wall post.
  Future<Map<String, dynamic>> getPostReach(Map<String, Object> params) =>
      _api.request('stats.getPostReach', params);

  /// Добавляет данные о текущем сеансе в статистику посещаемости приложения.
  Future<Map<String, dynamic>> trackVisitor(Map<String, Object> params) =>
      _api.request('stats.trackVisitor', params);
}
