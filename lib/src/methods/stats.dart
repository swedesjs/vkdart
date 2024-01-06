part of '../../methods.dart';

/// Методы для работы со статистикой.
class Stats {
  /// Конструктор.
  Stats(this._api);
  final Api _api;

  /// Returns statistics of a community or an application.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('stats.get', params);

  /// Returns stats for a wall post.
  Future<ApiResponse<T>> getPostReach<T>(MethodTypeParams params) =>
      _api.request<T>('stats.getPostReach', params);

  /// Добавляет данные о текущем сеансе в статистику посещаемости приложения.
  Future<ApiResponse<T>> trackVisitor<T>(MethodTypeParams params) =>
      _api.request<T>('stats.trackVisitor', params);
}
