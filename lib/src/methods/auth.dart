part of vkdart.methods;

/// Методы для работы с авторизацией.
class Auth {
  /// Конструктор.
  Auth(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Проверяет правильность введённого номера (возможность его использования для регистрации или авторизации).
  MethodTypeReturn checkPhone(MethodTypeParams params) =>
      _api.request('auth.checkPhone', params);

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [Direct authorization](vk.com/dev/auth_direct) access. "
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('auth.restore', params);
}
