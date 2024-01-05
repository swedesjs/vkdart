part of vkdart.methods;

/// Методы для работы с местами.
class Places {
  /// Конструктор.
  Places(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Возвращает список отметок пользователей в местах согласно заданным параметрам.
  MethodTypeReturn getCheckins(MethodTypeParams params) =>
      _api.request('places.getCheckins', params);
}
