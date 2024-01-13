part of '../api.dart';

/// Методы для работы с обсуждениями.
class Board {
  /// Конструктор.
  Board(this._api);
  final Api _api;

  /// Creates a new topic on a community's discussion board.
  Future<ApiResponse<T>> addTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.addTopic', params);

  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  Future<ApiResponse<T>> closeTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.closeTopic', params);

  /// Adds a comment on a topic on a community's discussion board.
  Future<ApiResponse<T>> createComment<T>(Map<String, Object> params) =>
      _api.request<T>('board.createComment', params);

  /// Deletes a comment on a topic on a community's discussion board.
  Future<ApiResponse<T>> deleteComment<T>(Map<String, Object> params) =>
      _api.request<T>('board.deleteComment', params);

  /// Deletes a topic from a community's discussion board.
  Future<ApiResponse<T>> deleteTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.deleteTopic', params);

  /// Edits a comment on a topic on a community's discussion board.
  Future<ApiResponse<T>> editComment<T>(Map<String, Object> params) =>
      _api.request<T>('board.editComment', params);

  /// Edits the title of a topic on a community's discussion board.
  Future<ApiResponse<T>> editTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.editTopic', params);

  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  Future<ApiResponse<T>> fixTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.fixTopic', params);

  /// Returns a list of comments on a topic on a community's discussion board.
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('board.getComments', params);

  /// Returns a list of topics on a community's discussion board.
  Future<ApiResponse<T>> getTopics<T>(Map<String, Object> params) =>
      _api.request<T>('board.getTopics', params);

  /// Re-opens a previously closed topic on a community's discussion board.
  Future<ApiResponse<T>> openTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.openTopic', params);

  /// Restores a comment deleted from a topic on a community's discussion board.
  Future<ApiResponse<T>> restoreComment<T>(Map<String, Object> params) =>
      _api.request<T>('board.restoreComment', params);

  /// Unpins a pinned topic from the top of a community's discussion board.
  Future<ApiResponse<T>> unfixTopic<T>(Map<String, Object> params) =>
      _api.request<T>('board.unfixTopic', params);
}
