part of '../api.dart';

/// Методы для работы с новостной лентой пользователя.
class Newsfeed {
  /// Конструктор.
  Newsfeed(this._api);
  final Api _api;

  /// Prevents news from specified users and communities from appearing
  /// in the current user's newsfeed.
  Future<ApiResponse<T>> addBan<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.addBan', params);

  /// Allows news from previously banned users and communities
  /// to be shown in the current user's newsfeed.
  Future<ApiResponse<T>> deleteBan<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.deleteBan', params);

  /// Метод позволяет удалить пользовательский список новостей.
  Future<ApiResponse<T>> deleteList<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.deleteList', params);

  /// Returns data required to show newsfeed for the current user.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.get', params);

  /// Returns a list of users and communities banned from the current user's newsfeed.
  Future<ApiResponse<T>> getBanned<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getBanned', params);

  /// Returns a list of comments in the current user's newsfeed.
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getComments', params);

  /// Returns a list of newsfeeds followed by the current user.
  Future<ApiResponse<T>> getLists<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getLists', params);

  /// Returns a list of posts on user walls in which the current user is mentioned.
  Future<ApiResponse<T>> getMentions<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getMentions', params);

  /// , Returns a list of newsfeeds recommended to the current user.
  Future<ApiResponse<T>> getRecommended<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getRecommended', params);

  /// Returns communities and users that current user is suggested to follow.
  Future<ApiResponse<T>> getSuggestedSources<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.getSuggestedSources', params);

  /// Hides an item from the newsfeed.
  Future<ApiResponse<T>> ignoreItem<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.ignoreItem', params);

  /// Creates and edits user newsfeed lists
  Future<ApiResponse<T>> saveList<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.saveList', params);

  /// Returns search results by statuses.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.search', params);

  /// Returns a hidden item to the newsfeed.
  Future<ApiResponse<T>> unignoreItem<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.unignoreItem', params);

  /// Unsubscribes the current user from specified newsfeeds.
  Future<ApiResponse<T>> unsubscribe<T>(Map<String, Object> params) =>
      _api.request<T>('newsfeed.unsubscribe', params);
}
