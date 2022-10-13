import '../api.dart';

class Likes {
  final Api _api;

  Likes(this._api);

  /// Adds the specified object to the 'Likes' list of the current user.
  Future<Map<String, dynamic>> add(Map<String, Object> params) {
    return _api.request('likes.add', params);
  }

  /// Deletes the specified object from the 'Likes' list of the current user.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('likes.delete', params);
  }

  /// Returns a list of IDs of users who added the specified object to their 'Likes' list.
  Future<Map<String, dynamic>> getList(Map<String, Object> params) {
    return _api.request('likes.getList', params);
  }

  /// Checks for the object in the 'Likes' list of the specified user.
  Future<Map<String, dynamic>> isLiked(Map<String, Object> params) {
    return _api.request('likes.isLiked', params);
  }
}
