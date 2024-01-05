part of vkdart.methods;

/// Методы для работы с заметками.
class Notes {
  /// Конструктор.
  Notes(this._api);
  final Api _api;

  /// Creates a new note for the current user.
  MethodTypeReturn add(MethodTypeParams params) =>
      _api.request('notes.add', params);

  /// Adds a new comment on a note.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('notes.createComment', params);

  /// Deletes a note of the current user.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('notes.delete', params);

  /// Deletes a comment on a note.
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('notes.deleteComment', params);

  /// Edits a note of the current user.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('notes.edit', params);

  /// Edits a comment on a note.
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('notes.editComment', params);

  /// Returns a list of notes created by a user.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('notes.get', params);

  /// Returns a note by its ID.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('notes.getById', params);

  /// Returns a list of comments on a note.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('notes.getComments', params);

  /// Возвращает список заметок друзей пользователя.
  MethodTypeReturn getFriendsNotes(MethodTypeParams params) =>
      _api.request('notes.getFriendsNotes', params);

  /// Restores a deleted comment on a note.
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('notes.restoreComment', params);
}
