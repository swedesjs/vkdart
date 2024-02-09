import 'package:vkdart/vkontakte.dart';

/// Methods for working with the search.
///
/// See https://dev.vk.com/ru/method/search
class Search {
  // ignore: public_member_api_docs
  Search(this._api);
  final Api _api;

  /// Allows the programmer to do a quick search for any substring.
  Future<Object> getHints(Map<String, dynamic> params) =>
      _api.request('search.getHints', params);
}
