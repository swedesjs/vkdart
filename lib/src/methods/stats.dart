part of vkdart.methods;

/// Методы для работы со статистикой.
class Stats {
  /// Конструктор.
  Stats(this._api);
  final Api _api;

  /// Returns statistics of a community or an application.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('stats.get', params);

  /// Returns stats for a wall post.
  MethodTypeReturn getPostReach(MethodTypeParams params) =>
      _api.request('stats.getPostReach', params);

  /// Добавляет данные о текущем сеансе в статистику посещаемости приложения.
  MethodTypeReturn trackVisitor(MethodTypeParams params) =>
      _api.request('stats.trackVisitor', params);
}
