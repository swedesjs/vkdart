import 'package:vkdart/vkontakte.dart';

/// Methods for working with friends.
///
/// See https://dev.vk.com/ru/method/friends
class Friends {
  // ignore: public_member_api_docs
  Friends(this._api);
  final Api _api;

  /// Approves or creates a friend request.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('friends.add', params);

  /// Creates a new friend list for the current user.
  Future<Object> addList(Map<String, dynamic> params) =>
      _api.request('friends.addList', params);

  /// Checks the current user's friendship status with other specified users.
  Future<Object> areFriends(Map<String, dynamic> params) =>
      _api.request('friends.areFriends', params);

  /// Declines a friend request or deletes a user from the current user's friend list.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('friends.delete', params);

  /// Marks all incoming friend requests as viewed.
  Future<Object> deleteAllRequests(Map<String, dynamic> params) =>
      _api.request('friends.deleteAllRequests', params);

  /// Deletes a friend list of the current user.
  Future<Object> deleteList(Map<String, dynamic> params) =>
      _api.request('friends.deleteList', params);

  /// Edits the friend lists of the selected user.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('friends.edit', params);

  /// Edits a friend list of the current user.
  Future<Object> editList(Map<String, dynamic> params) =>
      _api.request('friends.editList', params);

  /// Returns a list of user IDs or detailed information about a user's friends.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('friends.get', params);

  /// Returns a list of IDs of the current user's friends who installed the application.
  Future<Object> getAppUsers(Map<String, dynamic> params) =>
      _api.request('friends.getAppUsers', params);

  /// Allows you to get a list of user IDs available for calling from the application.
  Future<Object> getAvailableForCall(Map<String, dynamic> params) =>
      _api.request('friends.getAvailableForCall', params);

  /// Returns a list of the current user's friends whose phone numbers,
  /// validated or specified in a profile, are in a given list.
  Future<Object> getByPhones(Map<String, dynamic> params) =>
      _api.request('friends.getByPhones', params);

  /// Returns a list of the user's friend lists.
  Future<Object> getLists(Map<String, dynamic> params) =>
      _api.request('friends.getLists', params);

  /// Returns a list of user IDs of the mutual friends of two users.
  Future<Object> getMutual(Map<String, dynamic> params) =>
      _api.request('friends.getMutual', params);

  /// Returns a list of user IDs of a user's friends who are online.
  Future<Object> getOnline(Map<String, dynamic> params) =>
      _api.request('friends.getOnline', params);

  /// Returns a list of user IDs of the current user's recently added friends.
  Future<Object> getRecent(Map<String, dynamic> params) =>
      _api.request('friends.getRecent', params);

  /// Returns information about the current user's incoming and outgoing friend requests.
  Future<Object> getRequests(Map<String, dynamic> params) =>
      _api.request('friends.getRequests', params);

  /// Returns a list of profiles of users whom the current user may know.
  Future<Object> getSuggestions(Map<String, dynamic> params) =>
      _api.request('friends.getSuggestions', params);

  /// Returns a list of friends matching the search criteria.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('friends.search', params);
}
