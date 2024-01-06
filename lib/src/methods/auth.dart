part of '../../methods.dart';

/// Методы для работы с авторизацией.
class Auth {
  /// Конструктор.
  Auth(this._api);
  final Api _api;

  /// Проверяет правильность введённого номера (возможность его использования для регистрации или авторизации).
  Future<ApiResponse<T>> checkPhone<T>(MethodTypeParams params) =>
      _api.request<T>('auth.checkPhone', params);

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [Direct authorization](vk.com/dev/auth_direct) access. "
  Future<ApiResponse<T>> restore<T>(MethodTypeParams params) =>
      _api.request<T>('auth.restore', params);
}
