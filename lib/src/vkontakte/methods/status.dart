import 'package:vkdart/vkontakte.dart';

/// Methods for working with the status.
///
/// See https://dev.vk.com/ru/method/status
class Status {
  // ignore: public_member_api_docs
  Status(this._api);
  final Api _api;

  /// Returns data required to show the status of a user or community.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('status.get', params);

  /// Sets a new status for the current user.
  Future<Object> set(Map<String, dynamic> params) =>
      _api.request('status.set', params);
}
