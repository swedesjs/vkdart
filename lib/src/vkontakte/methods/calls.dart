import 'package:vkdart/vkontakte.dart';

/// Methods for working with calls.
///
/// See https://dev.vk.com/ru/method/calls
class Calls {
  // ignore: public_member_api_docs
  Calls(this._api);
  final Api _api;

  /// Forcibly end the call
  Future<Object> forceFinish(Map<String, dynamic> params) =>
      _api.request('calls.forceFinish', params);

  /// Create a new call on behalf of a user or community
  Future<Object> start(Map<String, dynamic> params) =>
      _api.request('calls.start', params);
}
