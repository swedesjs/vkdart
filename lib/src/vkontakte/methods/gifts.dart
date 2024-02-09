import 'package:vkdart/vkontakte.dart';

/// Methods for working with gifts.
///
/// See https://dev.vk.com/ru/method/gifts
class Gifts {
  // ignore: public_member_api_docs
  Gifts(this._api);
  final Api _api;

  /// Returns a list of user gifts.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('gifts.get', params);
}
