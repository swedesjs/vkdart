import 'package:vkdart/vkontakte.dart';

/// Methods for working with variables in the application.
///
/// See https://dev.vk.com/ru/method/storage
class Storage {
  // ignore: public_member_api_docs
  Storage(this._api);
  final Api _api;

  /// Returns a value of variable with the name set by key parameter.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('storage.get', params);

  /// Returns the names of all variables.
  Future<Object> getKeys(Map<String, dynamic> params) =>
      _api.request('storage.getKeys', params);

  /// Saves a value of variable with the name set by 'key' parameter.
  Future<Object> set(Map<String, dynamic> params) =>
      _api.request('storage.set', params);
}
