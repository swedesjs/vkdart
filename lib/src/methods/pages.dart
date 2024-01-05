import 'package:vkdart/src/api.dart';

/// Методы для работы с вики-страницами.
class Pages {
  /// Конструктор.
  Pages(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  Future<Map<String, dynamic>> clearCache(Map<String, Object> params) =>
      _api.request('pages.clearCache', params);

  /// Returns information about a wiki page.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('pages.get', params);

  /// Returns a list of all previous versions of a wiki page.
  Future<Map<String, dynamic>> getHistory(Map<String, Object> params) =>
      _api.request('pages.getHistory', params);

  /// Returns a list of wiki pages in a group.
  Future<Map<String, dynamic>> getTitles(Map<String, Object> params) =>
      _api.request('pages.getTitles', params);

  /// Returns the text of one of the previous versions of a wiki page.
  Future<Map<String, dynamic>> getVersion(Map<String, Object> params) =>
      _api.request('pages.getVersion', params);

  /// Returns HTML representation of the wiki markup.
  Future<Map<String, dynamic>> parseWiki(Map<String, Object> params) =>
      _api.request('pages.parseWiki', params);

  /// Saves the text of a wiki page.
  Future<Map<String, dynamic>> save(Map<String, Object> params) =>
      _api.request('pages.save', params);

  /// Saves modified read and edit access settings for a wiki page.
  Future<Map<String, dynamic>> saveAccess(Map<String, Object> params) =>
      _api.request('pages.saveAccess', params);
}
