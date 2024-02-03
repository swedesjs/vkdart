import 'package:vkdart/vkontakte.dart';

/// Methods for working with wiki pages.
///
/// See https://dev.vk.com/ru/method/pages
class Pages {
  // ignore: public_member_api_docs
  Pages(this._api);
  final Api _api;

  /// Allows to clear the cache of particular 'external' pages which may be attached to VK posts.
  Future<ApiResponse<T>> clearCache<T>(Map<String, Object> params) =>
      _api.request<T>('pages.clearCache', params);

  /// Returns information about a wiki page.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('pages.get', params);

  /// Returns a list of all previous versions of a wiki page.
  Future<ApiResponse<T>> getHistory<T>(Map<String, Object> params) =>
      _api.request<T>('pages.getHistory', params);

  /// Returns a list of wiki pages in a group.
  Future<ApiResponse<T>> getTitles<T>(Map<String, Object> params) =>
      _api.request<T>('pages.getTitles', params);

  /// Returns the text of one of the previous versions of a wiki page.
  Future<ApiResponse<T>> getVersion<T>(Map<String, Object> params) =>
      _api.request<T>('pages.getVersion', params);

  /// Returns HTML representation of the wiki markup.
  Future<ApiResponse<T>> parseWiki<T>(Map<String, Object> params) =>
      _api.request<T>('pages.parseWiki', params);

  /// Saves the text of a wiki page.
  Future<ApiResponse<T>> save<T>(Map<String, Object> params) =>
      _api.request<T>('pages.save', params);

  /// Saves modified read and edit access settings for a wiki page.
  Future<ApiResponse<T>> saveAccess<T>(Map<String, Object> params) =>
      _api.request<T>('pages.saveAccess', params);
}
