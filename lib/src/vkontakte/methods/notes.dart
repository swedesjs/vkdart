import 'package:vkdart/vkontakte.dart';

/// Methods for working with notes.
///
/// See https://dev.vk.com/ru/method/notes
class Notes {
  // ignore: public_member_api_docs
  Notes(this._api);
  final Api _api;

  /// Creates a new note for the current user.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('notes.add', params);

  /// Adds a new comment on a note.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('notes.createComment', params);

  /// Deletes a note of the current user.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('notes.delete', params);

  /// Deletes a comment on a note.
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('notes.deleteComment', params);

  /// Edits a note of the current user.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('notes.edit', params);

  /// Edits a comment on a note.
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('notes.editComment', params);

  /// Returns a list of notes created by a user.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('notes.get', params);

  /// Returns a note by its ID.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('notes.getById', params);

  /// Returns a list of comments on a note.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('notes.getComments', params);

  /// Returns a list of the user's friends' notes.
  Future<Object> getFriendsNotes(Map<String, dynamic> params) =>
      _api.request('notes.getFriendsNotes', params);

  /// Restores a deleted comment on a note.
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('notes.restoreComment', params);
}
