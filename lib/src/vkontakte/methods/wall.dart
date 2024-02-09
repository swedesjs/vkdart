import 'package:vkdart/vkontakte.dart';

/// Methods for working with wall posts.
///
/// See https://dev.vk.com/ru/method/wall
class Wall {
  // ignore: public_member_api_docs
  Wall(this._api);
  final Api _api;

  /// Add a like to the record.
  Future<Object> addLike(Map<String, dynamic> params) =>
      _api.request('wall.addLike', params);

  // ignore: public_member_api_docs
  Future<Object> checkCopyrightLink(Map<String, dynamic> params) =>
      _api.request('wall.checkCopyrightLink', params);

  /// Close comments on the post.
  Future<Object> closeComments(Map<String, dynamic> params) =>
      _api.request('wall.closeComments', params);

  /// Adds a comment to a post on a user wall or community wall.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('wall.createComment', params);

  /// Deletes a post from a user wall or community wall.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('wall.delete', params);

  /// Deletes a comment on a post on a user wall or community wall.
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('wall.deleteComment', params);

  /// Edits a post on a user wall or community wall.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('wall.edit', params);

  /// Allows to edit hidden post.
  Future<Object> editAdsStealth(Map<String, dynamic> params) =>
      _api.request('wall.editAdsStealth', params);

  /// Edits a comment on a user wall or community wall.
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('wall.editComment', params);

  /// Returns a list of posts on a user wall or community wall.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('wall.get', params);

  /// Returns a list of posts from user or community walls by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('wall.getById', params);

  /// Returns a comment on a post on a user wall or community wall.
  Future<Object> getComment(Map<String, dynamic> params) =>
      _api.request('wall.getComment', params);

  /// Returns a list of comments on a post on a user wall or community wall.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('wall.getComments', params);

  /// Returns information about reposts of a post on user wall or community wall.
  Future<Object> getReposts(Map<String, dynamic> params) =>
      _api.request('wall.getReposts', params);

  /// Open the comments to the post.
  Future<Object> openComments(Map<String, dynamic> params) =>
      _api.request('wall.openComments', params);

  /// Accepts links as input and returns additional information that can be used
  /// to create snippets when posting links on the user's wall and other resources.
  Future<Object> parseAttachedLink(Map<String, dynamic> params) =>
      _api.request('wall.parseAttachedLink', params);

  /// Pins the post on wall.
  Future<Object> pin(Map<String, dynamic> params) =>
      _api.request('wall.pin', params);

  /// Adds a new post on a user wall or community wall. Can also be used to
  /// publish suggested or scheduled posts.
  Future<Object> post(Map<String, dynamic> params) =>
      _api.request('wall.post', params);

  /// Allows to create hidden post which will not be shown on the community's wall
  /// and can be used for creating an ad with type "Community post".
  Future<Object> postAdsStealth(Map<String, dynamic> params) =>
      _api.request('wall.postAdsStealth', params);

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  Future<Object> reportComment(Map<String, dynamic> params) =>
      _api.request('wall.reportComment', params);

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  Future<Object> reportPost(Map<String, dynamic> params) =>
      _api.request('wall.reportPost', params);

  /// Reposts (copies) an object to a user wall or community wall.
  Future<Object> repost(Map<String, dynamic> params) =>
      _api.request('wall.repost', params);

  /// Restores a post deleted from a user wall or community wall.
  Future<Object> restore(Map<String, dynamic> params) =>
      _api.request('wall.restore', params);

  /// Restores a comment deleted from a user wall or community wall.
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('wall.restoreComment', params);

  /// Allows to search posts on user or community walls.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('wall.search', params);

  /// Unpins the post on wall.
  Future<Object> unpin(Map<String, dynamic> params) =>
      _api.request('wall.unpin', params);
}
