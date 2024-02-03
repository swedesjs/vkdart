import 'package:vkdart/vkontakte.dart';

/// Methods for working with the status.
///
/// See https://dev.vk.com/ru/method/status
class Status {
  // ignore: public_member_api_docs
  Status(this._api);
  final Api _api;

  /// Returns data required to show the status of a user or community.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('status.get', params);

  /// Sets a new status for the current user.
  Future<ApiResponse<T>> set<T>(Map<String, Object> params) =>
      _api.request<T>('status.set', params);
}
