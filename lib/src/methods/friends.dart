import 'package:vkdart/src/api.dart';

/// Методы для работы с друзьями.
class Friends {
  /// Конструктор.
  Friends(this._api);
  final Api _api;

  /// Approves or creates a friend request.
  Future<Map<String, dynamic>> add(Map<String, Object> params) =>
      _api.request('friends.add', params);

  /// Creates a new friend list for the current user.
  Future<Map<String, dynamic>> addList(Map<String, Object> params) =>
      _api.request('friends.addList', params);

  /// Checks the current user's friendship status with other specified users.
  Future<Map<String, dynamic>> areFriends(Map<String, Object> params) =>
      _api.request('friends.areFriends', params);

  // ignore: lines_longer_than_80_chars
  /// Declines a friend request or deletes a user from the current user's friend list.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('friends.delete', params);

  /// Marks all incoming friend requests as viewed.
  Future<Map<String, dynamic>> deleteAllRequests(Map<String, Object> params) =>
      _api.request('friends.deleteAllRequests', params);

  /// Deletes a friend list of the current user.
  Future<Map<String, dynamic>> deleteList(Map<String, Object> params) =>
      _api.request('friends.deleteList', params);

  /// Edits the friend lists of the selected user.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) =>
      _api.request('friends.edit', params);

  /// Edits a friend list of the current user.
  Future<Map<String, dynamic>> editList(Map<String, Object> params) =>
      _api.request('friends.editList', params);

  /// Returns a list of user IDs or detailed information about a user's friends.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('friends.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of IDs of the current user's friends who installed the application.
  Future<Map<String, dynamic>> getAppUsers(Map<String, Object> params) =>
      _api.request('friends.getAppUsers', params);

  /// Returns a list of the current user's friends whose phone numbers,
  /// validated or specified in a profile, are in a given list.
  Future<Map<String, dynamic>> getByPhones(Map<String, Object> params) =>
      _api.request('friends.getByPhones', params);

  /// Returns a list of the user's friend lists.
  Future<Map<String, dynamic>> getLists(Map<String, Object> params) =>
      _api.request('friends.getLists', params);

  /// Returns a list of user IDs of the mutual friends of two users.
  Future<Map<String, dynamic>> getMutual(Map<String, Object> params) =>
      _api.request('friends.getMutual', params);

  /// Returns a list of user IDs of a user's friends who are online.
  Future<Map<String, dynamic>> getOnline(Map<String, Object> params) =>
      _api.request('friends.getOnline', params);

  /// Returns a list of user IDs of the current user's recently added friends.
  Future<Map<String, dynamic>> getRecent(Map<String, Object> params) =>
      _api.request('friends.getRecent', params);

  // ignore: lines_longer_than_80_chars
  /// Returns information about the current user's incoming and outgoing friend requests.
  Future<Map<String, dynamic>> getRequests(Map<String, Object> params) =>
      _api.request('friends.getRequests', params);

  /// Returns a list of profiles of users whom the current user may know.
  Future<Map<String, dynamic>> getSuggestions(Map<String, Object> params) =>
      _api.request('friends.getSuggestions', params);

  /// Returns a list of friends matching the search criteria.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('friends.search', params);
}
