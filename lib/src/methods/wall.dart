import '../api.dart';

class Wall {
  final Api _api;

  Wall(this._api);

  Future<Map<String, dynamic>> checkCopyrightLink(Map<String, Object> params) {
    return _api.request('wall.checkCopyrightLink', params);
  }

  Future<Map<String, dynamic>> closeComments(Map<String, Object> params) {
    return _api.request('wall.closeComments', params);
  }

  /// Adds a comment to a post on a user wall or community wall.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) {
    return _api.request('wall.createComment', params);
  }

  /// Deletes a post from a user wall or community wall.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('wall.delete', params);
  }

  /// Deletes a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) {
    return _api.request('wall.deleteComment', params);
  }

  /// Edits a post on a user wall or community wall.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('wall.edit', params);
  }

  /// Allows to edit hidden post.
  Future<Map<String, dynamic>> editAdsStealth(Map<String, Object> params) {
    return _api.request('wall.editAdsStealth', params);
  }

  /// Edits a comment on a user wall or community wall.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) {
    return _api.request('wall.editComment', params);
  }

  /// Returns a list of posts on a user wall or community wall.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('wall.get', params);
  }

  /// Returns a list of posts from user or community walls by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('wall.getById', params);
  }

  /// Returns a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> getComment(Map<String, Object> params) {
    return _api.request('wall.getComment', params);
  }

  /// Returns a list of comments on a post on a user wall or community wall.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('wall.getComments', params);
  }

  /// Returns information about reposts of a post on user wall or community wall.
  Future<Map<String, dynamic>> getReposts(Map<String, Object> params) {
    return _api.request('wall.getReposts', params);
  }

  Future<Map<String, dynamic>> openComments(Map<String, Object> params) {
    return _api.request('wall.openComments', params);
  }

  /// Pins the post on wall.
  Future<Map<String, dynamic>> pin(Map<String, Object> params) {
    return _api.request('wall.pin', params);
  }

  /// Adds a new post on a user wall or community wall. Can also be used to publish suggested or scheduled posts.
  Future<Map<String, dynamic>> post(Map<String, Object> params) {
    return _api.request('wall.post', params);
  }

  /// Allows to create hidden post which will not be shown on the community's wall and can be used for creating an ad with type "Community post".
  Future<Map<String, dynamic>> postAdsStealth(Map<String, Object> params) {
    return _api.request('wall.postAdsStealth', params);
  }

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  Future<Map<String, dynamic>> reportComment(Map<String, Object> params) {
    return _api.request('wall.reportComment', params);
  }

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  Future<Map<String, dynamic>> reportPost(Map<String, Object> params) {
    return _api.request('wall.reportPost', params);
  }

  /// Reposts (copies) an object to a user wall or community wall.
  Future<Map<String, dynamic>> repost(Map<String, Object> params) {
    return _api.request('wall.repost', params);
  }

  /// Restores a post deleted from a user wall or community wall.
  Future<Map<String, dynamic>> restore(Map<String, Object> params) {
    return _api.request('wall.restore', params);
  }

  /// Restores a comment deleted from a user wall or community wall.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) {
    return _api.request('wall.restoreComment', params);
  }

  /// Allows to search posts on user or community walls.
  Future<Map<String, dynamic>> search(Map<String, Object> params) {
    return _api.request('wall.search', params);
  }

  /// Unpins the post on wall.
  Future<Map<String, dynamic>> unpin(Map<String, Object> params) {
    return _api.request('wall.unpin', params);
  }
}
