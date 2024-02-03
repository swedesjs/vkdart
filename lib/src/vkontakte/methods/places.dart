import 'package:vkdart/vkontakte.dart';

/// Методы для работы с местами.
class Places {
  /// Конструктор.
  Places(this._api);
  final Api _api;

  /// Возвращает список отметок пользователей в местах согласно заданным параметрам.
  Future<ApiResponse<T>> getCheckins<T>(Map<String, Object> params) =>
      _api.request<T>('places.getCheckins', params);
}
