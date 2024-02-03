import 'package:vkdart/vkontakte.dart';

/// Methods for working with variables in the application.
///
/// See https://dev.vk.com/ru/method/storage
class Storage {
  // ignore: public_member_api_docs
  Storage(this._api);
  final Api _api;

  /// Returns a value of variable with the name set by key parameter.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('storage.get', params);

  /// Returns the names of all variables.
  Future<ApiResponse<T>> getKeys<T>(Map<String, Object> params) =>
      _api.request<T>('storage.getKeys', params);

  /// Saves a value of variable with the name set by 'key' parameter.
  Future<ApiResponse<T>> set<T>(Map<String, Object> params) =>
      _api.request<T>('storage.set', params);
}
