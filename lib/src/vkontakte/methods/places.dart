import 'package:vkdart/vkontakte.dart';

/// Methods for working with places.
///
/// See https://dev.vk.com/ru/method/places
class Places {
  // ignore: public_member_api_docs
  Places(this._api);
  final Api _api;

  /// Returns a list of user marks in places according to the specified parameters.
  Future<Object> getCheckins(Map<String, dynamic> params) =>
      _api.request('places.getCheckins', params);
}
