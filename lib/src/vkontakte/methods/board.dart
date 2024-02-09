import 'package:vkdart/vkontakte.dart';

/// Methods for working with discussions.
///
/// See https://dev.vk.com/ru/method/board
class Board {
  // ignore: public_member_api_docs
  Board(this._api);
  final Api _api;

  /// Creates a new topic on a community's discussion board.
  Future<Object> addTopic(Map<String, dynamic> params) =>
      _api.request('board.addTopic', params);

  /// Closes a topic on a community's discussion board so that comments cannot be posted.
  Future<Object> closeTopic(Map<String, dynamic> params) =>
      _api.request('board.closeTopic', params);

  /// Adds a comment on a topic on a community's discussion board.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('board.createComment', params);

  /// Deletes a comment on a topic on a community's discussion board.
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('board.deleteComment', params);

  /// Deletes a topic from a community's discussion board.
  Future<Object> deleteTopic(Map<String, dynamic> params) =>
      _api.request('board.deleteTopic', params);

  /// Edits a comment on a topic on a community's discussion board.
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('board.editComment', params);

  /// Edits the title of a topic on a community's discussion board.
  Future<Object> editTopic(Map<String, dynamic> params) =>
      _api.request('board.editTopic', params);

  /// Pins a topic (fixes its place) to the top of a community's discussion board.
  Future<Object> fixTopic(Map<String, dynamic> params) =>
      _api.request('board.fixTopic', params);

  /// Returns a list of comments on a topic on a community's discussion board.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('board.getComments', params);

  /// Returns a list of topics on a community's discussion board.
  Future<Object> getTopics(Map<String, dynamic> params) =>
      _api.request('board.getTopics', params);

  /// Re-opens a previously closed topic on a community's discussion board.
  Future<Object> openTopic(Map<String, dynamic> params) =>
      _api.request('board.openTopic', params);

  /// Restores a comment deleted from a topic on a community's discussion board.
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('board.restoreComment', params);

  /// Unpins a pinned topic from the top of a community's discussion board.
  Future<Object> unfixTopic(Map<String, dynamic> params) =>
      _api.request('board.unfixTopic', params);
}
