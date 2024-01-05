import 'package:vkdart/src/api.dart';

/// Методы для работы с новостной лентой пользователя.
class Newsfeed {
  /// Конструктор.
  Newsfeed(this._api);
  final Api _api;

  /// Prevents news from specified users and communities from appearing
  /// in the current user's newsfeed.
  Future<Map<String, dynamic>> addBan(Map<String, Object> params) =>
      _api.request('newsfeed.addBan', params);

  /// Allows news from previously banned users and communities
  /// to be shown in the current user's newsfeed.
  Future<Map<String, dynamic>> deleteBan(Map<String, Object> params) =>
      _api.request('newsfeed.deleteBan', params);

  /// Метод позволяет удалить пользовательский список новостей.
  Future<Map<String, dynamic>> deleteList(Map<String, Object> params) =>
      _api.request('newsfeed.deleteList', params);

  /// Returns data required to show newsfeed for the current user.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('newsfeed.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of users and communities banned from the current user's newsfeed.
  Future<Map<String, dynamic>> getBanned(Map<String, Object> params) =>
      _api.request('newsfeed.getBanned', params);

  /// Returns a list of comments in the current user's newsfeed.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) =>
      _api.request('newsfeed.getComments', params);

  /// Returns a list of newsfeeds followed by the current user.
  Future<Map<String, dynamic>> getLists(Map<String, Object> params) =>
      _api.request('newsfeed.getLists', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of posts on user walls in which the current user is mentioned.
  Future<Map<String, dynamic>> getMentions(Map<String, Object> params) =>
      _api.request('newsfeed.getMentions', params);

  /// , Returns a list of newsfeeds recommended to the current user.
  Future<Map<String, dynamic>> getRecommended(Map<String, Object> params) =>
      _api.request('newsfeed.getRecommended', params);

  /// Returns communities and users that current user is suggested to follow.
  Future<Map<String, dynamic>> getSuggestedSources(
    Map<String, Object> params,
  ) =>
      _api.request('newsfeed.getSuggestedSources', params);

  /// Hides an item from the newsfeed.
  Future<Map<String, dynamic>> ignoreItem(Map<String, Object> params) =>
      _api.request('newsfeed.ignoreItem', params);

  /// Creates and edits user newsfeed lists
  Future<Map<String, dynamic>> saveList(Map<String, Object> params) =>
      _api.request('newsfeed.saveList', params);

  /// Returns search results by statuses.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('newsfeed.search', params);

  /// Returns a hidden item to the newsfeed.
  Future<Map<String, dynamic>> unignoreItem(Map<String, Object> params) =>
      _api.request('newsfeed.unignoreItem', params);

  /// Unsubscribes the current user from specified newsfeeds.
  Future<Map<String, dynamic>> unsubscribe(Map<String, Object> params) =>
      _api.request('newsfeed.unsubscribe', params);
}
