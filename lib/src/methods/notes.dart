import '../api.dart';

class Notes {
  final Api _api;

  Notes(this._api);

  /// Creates a new note for the current user.
  Future<Map<String, dynamic>> add(Map<String, Object> params) {
    return _api.request('notes.add', params);
  }

  /// Adds a new comment on a note.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) {
    return _api.request('notes.createComment', params);
  }

  /// Deletes a note of the current user.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('notes.delete', params);
  }

  /// Deletes a comment on a note.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) {
    return _api.request('notes.deleteComment', params);
  }

  /// Edits a note of the current user.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('notes.edit', params);
  }

  /// Edits a comment on a note.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) {
    return _api.request('notes.editComment', params);
  }

  /// Returns a list of notes created by a user.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('notes.get', params);
  }

  /// Returns a note by its ID.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('notes.getById', params);
  }

  /// Returns a list of comments on a note.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('notes.getComments', params);
  }

  /// Restores a deleted comment on a note.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) {
    return _api.request('notes.restoreComment', params);
  }
}
