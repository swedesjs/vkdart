part of '../../methods.dart';

/// Методы для работы со звонками.
class Calls {
  /// Конструктор.
  Calls(this._api);
  final Api _api;

  /// Принудительно завершить звонок
  Future<ApiResponse<T>> forceFinish<T>(MethodTypeParams params) =>
      _api.request<T>('calls.forceFinish', params);

  /// Создать новый звонок от имени пользователя или сообщества
  Future<ApiResponse<T>> start<T>(MethodTypeParams params) =>
      _api.request<T>('calls.start', params);
}
