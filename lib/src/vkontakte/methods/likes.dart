part of '../api.dart';

/// Методы для работы с отметками «Мне нравится».
class Likes {
  /// Конструктор.
  Likes(this._api);
  final Api _api;

  /// Adds the specified object to the 'Likes' list of the current user.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('likes.add', params);

  /// Deletes the specified object from the 'Likes' list of the current user.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('likes.delete', params);

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  Future<ApiResponse<T>> getList<T>(Map<String, Object> params) =>
      _api.request<T>('likes.getList', params);

  /// Checks for the object in the 'Likes' list of the specified user.
  Future<ApiResponse<T>> isLiked<T>(Map<String, Object> params) =>
      _api.request<T>('likes.isLiked', params);
}
