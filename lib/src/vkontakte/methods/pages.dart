import 'package:vkdart/vkontakte.dart';

/// Methods for working with wiki pages.
///
/// See https://dev.vk.com/ru/method/pages
class Pages {
  // ignore: public_member_api_docs
  Pages(this._api);
  final Api _api;

  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  Future<Object> clearCache(Map<String, dynamic> params) =>
      _api.request('pages.clearCache', params);

  /// Returns information about a wiki page.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('pages.get', params);

  /// Returns a list of all previous versions of a wiki page.
  Future<Object> getHistory(Map<String, dynamic> params) =>
      _api.request('pages.getHistory', params);

  /// Returns a list of wiki pages in a group.
  Future<Object> getTitles(Map<String, dynamic> params) =>
      _api.request('pages.getTitles', params);

  /// Returns the text of one of the previous versions of a wiki page.
  Future<Object> getVersion(Map<String, dynamic> params) =>
      _api.request('pages.getVersion', params);

  /// Returns HTML representation of the wiki markup.
  Future<Object> parseWiki(Map<String, dynamic> params) =>
      _api.request('pages.parseWiki', params);

  /// Saves the text of a wiki page.
  Future<Object> save(Map<String, dynamic> params) =>
      _api.request('pages.save', params);

  /// Saves modified read and edit access settings for a wiki page.
  Future<Object> saveAccess(Map<String, dynamic> params) =>
      _api.request('pages.saveAccess', params);
}
