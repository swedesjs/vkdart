import 'package:vkdart/vkontakte.dart';

/// Methods for working with gifts.
///
/// See https://dev.vk.com/ru/method/gifts
class Gifts {
  // ignore: public_member_api_docs
  Gifts(this._api);
  final Api _api;

  /// Returns a list of user gifts.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('gifts.get', params);
}
