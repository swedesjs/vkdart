import '../api.dart';

class Board {
  final Api _api;

  Board(this._api);

  /// Creates a new topic on a community's discussion board.
  Future<Map<String, dynamic>> addTopic(Map<String, Object> params) {
    return _api.request('board.addTopic', params);
  }

  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  Future<Map<String, dynamic>> closeTopic(Map<String, Object> params) {
    return _api.request('board.closeTopic', params);
  }

  /// Adds a comment on a topic on a community's discussion board.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) {
    return _api.request('board.createComment', params);
  }

  /// Deletes a comment on a topic on a community's discussion board.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) {
    return _api.request('board.deleteComment', params);
  }

  /// Deletes a topic from a community's discussion board.
  Future<Map<String, dynamic>> deleteTopic(Map<String, Object> params) {
    return _api.request('board.deleteTopic', params);
  }

  /// Edits a comment on a topic on a community's discussion board.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) {
    return _api.request('board.editComment', params);
  }

  /// Edits the title of a topic on a community's discussion board.
  Future<Map<String, dynamic>> editTopic(Map<String, Object> params) {
    return _api.request('board.editTopic', params);
  }

  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  Future<Map<String, dynamic>> fixTopic(Map<String, Object> params) {
    return _api.request('board.fixTopic', params);
  }

  /// Returns a list of comments on a topic on a community's discussion board.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('board.getComments', params);
  }

  /// Returns a list of topics on a community's discussion board.
  Future<Map<String, dynamic>> getTopics(Map<String, Object> params) {
    return _api.request('board.getTopics', params);
  }

  /// Re-opens a previously closed topic on a community's discussion board.
  Future<Map<String, dynamic>> openTopic(Map<String, Object> params) {
    return _api.request('board.openTopic', params);
  }

  /// Restores a comment deleted from a topic on a community's discussion board.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) {
    return _api.request('board.restoreComment', params);
  }

  /// Unpins a pinned topic from the top of a community's discussion board.
  Future<Map<String, dynamic>> unfixTopic(Map<String, Object> params) {
    return _api.request('board.unfixTopic', params);
  }
}
