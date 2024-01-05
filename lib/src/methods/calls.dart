import 'package:vkdart/src/api.dart';

/// Методы для работы со звонками.
class Calls {
  /// Конструктор.
  Calls(this._api);
  final Api _api;

  /// Принудительно завершить звонок
  Future<Map<String, dynamic>> forceFinish(Map<String, Object> params) =>
      _api.request('calls.forceFinish', params);

  /// Создать новый звонок от имени пользователя или сообщества
  Future<Map<String, dynamic>> start(Map<String, Object> params) =>
      _api.request('calls.start', params);
}
