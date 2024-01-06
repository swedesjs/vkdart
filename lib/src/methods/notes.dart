part of '../../methods.dart';

/// Методы для работы с заметками.
class Notes {
  /// Конструктор.
  Notes(this._api);
  final Api _api;

  /// Creates a new note for the current user.
  Future<ApiResponse<T>> add<T>(MethodTypeParams params) =>
      _api.request<T>('notes.add', params);

  /// Adds a new comment on a note.
  Future<ApiResponse<T>> createComment<T>(MethodTypeParams params) =>
      _api.request<T>('notes.createComment', params);

  /// Deletes a note of the current user.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('notes.delete', params);

  /// Deletes a comment on a note.
  Future<ApiResponse<T>> deleteComment<T>(MethodTypeParams params) =>
      _api.request<T>('notes.deleteComment', params);

  /// Edits a note of the current user.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('notes.edit', params);

  /// Edits a comment on a note.
  Future<ApiResponse<T>> editComment<T>(MethodTypeParams params) =>
      _api.request<T>('notes.editComment', params);

  /// Returns a list of notes created by a user.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('notes.get', params);

  /// Returns a note by its ID.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('notes.getById', params);

  /// Returns a list of comments on a note.
  Future<ApiResponse<T>> getComments<T>(MethodTypeParams params) =>
      _api.request<T>('notes.getComments', params);

  /// Возвращает список заметок друзей пользователя.
  Future<ApiResponse<T>> getFriendsNotes<T>(MethodTypeParams params) =>
      _api.request<T>('notes.getFriendsNotes', params);

  /// Restores a deleted comment on a note.
  Future<ApiResponse<T>> restoreComment<T>(MethodTypeParams params) =>
      _api.request<T>('notes.restoreComment', params);
}
