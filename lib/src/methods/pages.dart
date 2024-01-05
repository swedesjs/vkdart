import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с вики-страницами.
class Pages {
  /// Конструктор.
  Pages(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  MethodTypeReturn clearCache(MethodTypeParams params) =>
      _api.request('pages.clearCache', params);

  /// Returns information about a wiki page.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('pages.get', params);

  /// Returns a list of all previous versions of a wiki page.
  MethodTypeReturn getHistory(MethodTypeParams params) =>
      _api.request('pages.getHistory', params);

  /// Returns a list of wiki pages in a group.
  MethodTypeReturn getTitles(MethodTypeParams params) =>
      _api.request('pages.getTitles', params);

  /// Returns the text of one of the previous versions of a wiki page.
  MethodTypeReturn getVersion(MethodTypeParams params) =>
      _api.request('pages.getVersion', params);

  /// Returns HTML representation of the wiki markup.
  MethodTypeReturn parseWiki(MethodTypeParams params) =>
      _api.request('pages.parseWiki', params);

  /// Saves the text of a wiki page.
  MethodTypeReturn save(MethodTypeParams params) =>
      _api.request('pages.save', params);

  /// Saves modified read and edit access settings for a wiki page.
  MethodTypeReturn saveAccess(MethodTypeParams params) =>
      _api.request('pages.saveAccess', params);
}
