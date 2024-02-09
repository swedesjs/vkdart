import 'package:vkdart/vkontakte.dart';

/// Methods for working with "I like" marks.
///
/// See https://dev.vk.com/ru/method/likes
class Likes {
  // ignore: public_member_api_docs
  Likes(this._api);
  final Api _api;

  /// Adds the specified object to the 'Likes' list of the current user.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('likes.add', params);

  /// Deletes the specified object from the 'Likes' list of the current user.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('likes.delete', params);

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  Future<Object> getList(Map<String, dynamic> params) =>
      _api.request('likes.getList', params);

  /// Checks for the object in the 'Likes' list of the specified user.
  Future<Object> isLiked(Map<String, dynamic> params) =>
      _api.request('likes.isLiked', params);
}
