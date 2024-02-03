import 'package:vkdart/vkontakte.dart';

/// Methods for working with authorization.
///
/// See https://dev.vk.com/ru/method/auth
class Auth {
  // ignore: public_member_api_docs
  Auth(this._api);
  final Api _api;

  /// Checks the correctness of the entered number (the possibility of using it for registration or authorization).
  Future<ApiResponse<T>> checkPhone<T>(Map<String, Object> params) =>
      _api.request<T>('auth.checkPhone', params);

  /// Allows to restore account access using a code received via SMS.
  /// This method is only available for apps with [Direct authorization](vk.com/dev/auth_direct) access.
  Future<ApiResponse<T>> restore<T>(Map<String, Object> params) =>
      _api.request<T>('auth.restore', params);
}
