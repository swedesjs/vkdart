import 'package:vkdart/src/api.dart';

/// Методы для работы с авторизацией.
class Auth {
  /// Конструктор.
  Auth(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Проверяет правильность введённого номера (возможность его использования для регистрации или авторизации).
  Future<Map<String, dynamic>> checkPhone(Map<String, Object> params) =>
      _api.request('auth.checkPhone', params);

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [vk.com/dev/auth_direct|Direct authorization] access. "
  Future<Map<String, dynamic>> restore(Map<String, Object> params) =>
      _api.request('auth.restore', params);
}
