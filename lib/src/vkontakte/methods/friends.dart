import 'package:vkdart/vkontakte.dart';

/// Methods for working with friends.
///
/// See https://dev.vk.com/ru/method/friends
class Friends {
  // ignore: public_member_api_docs
  Friends(this._api);
  final Api _api;

  /// Approves or creates a friend request.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('friends.add', params);

  /// Creates a new friend list for the current user.
  Future<ApiResponse<T>> addList<T>(Map<String, Object> params) =>
      _api.request<T>('friends.addList', params);

  /// Checks the current user's friendship status with other specified users.
  Future<ApiResponse<T>> areFriends<T>(Map<String, Object> params) =>
      _api.request<T>('friends.areFriends', params);

  /// Declines a friend request or deletes a user from the current user's friend list.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('friends.delete', params);

  /// Marks all incoming friend requests as viewed.
  Future<ApiResponse<T>> deleteAllRequests<T>(Map<String, Object> params) =>
      _api.request<T>('friends.deleteAllRequests', params);

  /// Deletes a friend list of the current user.
  Future<ApiResponse<T>> deleteList<T>(Map<String, Object> params) =>
      _api.request<T>('friends.deleteList', params);

  /// Edits the friend lists of the selected user.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('friends.edit', params);

  /// Edits a friend list of the current user.
  Future<ApiResponse<T>> editList<T>(Map<String, Object> params) =>
      _api.request<T>('friends.editList', params);

  /// Returns a list of user IDs or detailed information about a user's friends.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('friends.get', params);

  /// Returns a list of IDs of the current user's friends who installed the application.
  Future<ApiResponse<T>> getAppUsers<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getAppUsers', params);

  /// Allows you to get a list of user IDs available for calling from the application.
  Future<ApiResponse<T>> getAvailableForCall<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getAvailableForCall', params);

  /// Returns a list of the current user's friends whose phone numbers,
  /// validated or specified in a profile, are in a given list.
  Future<ApiResponse<T>> getByPhones<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getByPhones', params);

  /// Returns a list of the user's friend lists.
  Future<ApiResponse<T>> getLists<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getLists', params);

  /// Returns a list of user IDs of the mutual friends of two users.
  Future<ApiResponse<T>> getMutual<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getMutual', params);

  /// Returns a list of user IDs of a user's friends who are online.
  Future<ApiResponse<T>> getOnline<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getOnline', params);

  /// Returns a list of user IDs of the current user's recently added friends.
  Future<ApiResponse<T>> getRecent<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getRecent', params);

  /// Returns information about the current user's incoming and outgoing friend requests.
  Future<ApiResponse<T>> getRequests<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getRequests', params);

  /// Returns a list of profiles of users whom the current user may know.
  Future<ApiResponse<T>> getSuggestions<T>(Map<String, Object> params) =>
      _api.request<T>('friends.getSuggestions', params);

  /// Returns a list of friends matching the search criteria.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('friends.search', params);
}
