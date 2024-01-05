part of vkdart.methods;

/// Методы для работы с обсуждениями.
class Board {
  /// Конструктор.
  Board(this._api);
  final Api _api;

  /// Creates a new topic on a community's discussion board.
  MethodTypeReturn addTopic(MethodTypeParams params) =>
      _api.request('board.addTopic', params);

  // ignore: lines_longer_than_80_chars
  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  MethodTypeReturn closeTopic(MethodTypeParams params) =>
      _api.request('board.closeTopic', params);

  /// Adds a comment on a topic on a community's discussion board.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('board.createComment', params);

  /// Deletes a comment on a topic on a community's discussion board.
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('board.deleteComment', params);

  /// Deletes a topic from a community's discussion board.
  MethodTypeReturn deleteTopic(MethodTypeParams params) =>
      _api.request('board.deleteTopic', params);

  /// Edits a comment on a topic on a community's discussion board.
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('board.editComment', params);

  /// Edits the title of a topic on a community's discussion board.
  MethodTypeReturn editTopic(MethodTypeParams params) =>
      _api.request('board.editTopic', params);

  // ignore: lines_longer_than_80_chars
  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  MethodTypeReturn fixTopic(MethodTypeParams params) =>
      _api.request('board.fixTopic', params);

  /// Returns a list of comments on a topic on a community's discussion board.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('board.getComments', params);

  /// Returns a list of topics on a community's discussion board.
  MethodTypeReturn getTopics(MethodTypeParams params) =>
      _api.request('board.getTopics', params);

  /// Re-opens a previously closed topic on a community's discussion board.
  MethodTypeReturn openTopic(MethodTypeParams params) =>
      _api.request('board.openTopic', params);

  /// Restores a comment deleted from a topic on a community's discussion board.
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('board.restoreComment', params);

  /// Unpins a pinned topic from the top of a community's discussion board.
  MethodTypeReturn unfixTopic(MethodTypeParams params) =>
      _api.request('board.unfixTopic', params);
}
