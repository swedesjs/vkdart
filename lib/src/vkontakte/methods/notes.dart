import 'package:vkdart/vkontakte.dart';

/// Methods for working with notes.
///
/// See https://dev.vk.com/ru/method/notes
class Notes {
  // ignore: public_member_api_docs
  Notes(this._api);
  final Api _api;

  /// Creates a new note for the current user.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('notes.add', params);

  /// Adds a new comment on a note.
  Future<ApiResponse<T>> createComment<T>(Map<String, Object> params) =>
      _api.request<T>('notes.createComment', params);

  /// Deletes a note of the current user.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('notes.delete', params);

  /// Deletes a comment on a note.
  Future<ApiResponse<T>> deleteComment<T>(Map<String, Object> params) =>
      _api.request<T>('notes.deleteComment', params);

  /// Edits a note of the current user.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('notes.edit', params);

  /// Edits a comment on a note.
  Future<ApiResponse<T>> editComment<T>(Map<String, Object> params) =>
      _api.request<T>('notes.editComment', params);

  /// Returns a list of notes created by a user.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('notes.get', params);

  /// Returns a note by its ID.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('notes.getById', params);

  /// Returns a list of comments on a note.
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('notes.getComments', params);

  /// Returns a list of the user's friends' notes.
  Future<ApiResponse<T>> getFriendsNotes<T>(Map<String, Object> params) =>
      _api.request<T>('notes.getFriendsNotes', params);

  /// Restores a deleted comment on a note.
  Future<ApiResponse<T>> restoreComment<T>(Map<String, Object> params) =>
      _api.request<T>('notes.restoreComment', params);
}
