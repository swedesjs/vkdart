part of vkdart.methods;

/// Методы для работы со звонками.
class Calls {
  /// Конструктор.
  Calls(this._api);
  final Api _api;

  /// Принудительно завершить звонок
  MethodTypeReturn forceFinish(MethodTypeParams params) =>
      _api.request('calls.forceFinish', params);

  /// Создать новый звонок от имени пользователя или сообщества
  MethodTypeReturn start(MethodTypeParams params) =>
      _api.request('calls.start', params);
}
