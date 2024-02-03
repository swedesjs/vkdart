import 'package:vkdart/vkontakte.dart';

/// Methods for working with calls.
///
/// See https://dev.vk.com/ru/method/calls
class Calls {
  // ignore: public_member_api_docs
  Calls(this._api);
  final Api _api;

  /// Forcibly end the call
  Future<ApiResponse<T>> forceFinish<T>(Map<String, Object> params) =>
      _api.request<T>('calls.forceFinish', params);

  /// Create a new call on behalf of a user or community
  Future<ApiResponse<T>> start<T>(Map<String, Object> params) =>
      _api.request<T>('calls.start', params);
}
