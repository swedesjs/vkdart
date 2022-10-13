import '../api.dart';

class Auth {
  final Api _api;

  Auth(this._api);

  /// Allows to restore account access using a code received via SMS. " This method is only available for apps with [vk.com/dev/auth_direct|Direct authorization] access. "
  Future<Map<String, dynamic>> restore(Map<String, Object> params) {
    return _api.request('auth.restore', params);
  }
}
