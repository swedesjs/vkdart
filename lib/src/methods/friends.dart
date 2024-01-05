import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с друзьями.
class Friends {
  /// Конструктор.
  Friends(this._api);
  final Api _api;

  /// Approves or creates a friend request.
  MethodTypeReturn add(MethodTypeParams params) =>
      _api.request('friends.add', params);

  /// Creates a new friend list for the current user.
  MethodTypeReturn addList(MethodTypeParams params) =>
      _api.request('friends.addList', params);

  /// Checks the current user's friendship status with other specified users.
  MethodTypeReturn areFriends(MethodTypeParams params) =>
      _api.request('friends.areFriends', params);

  // ignore: lines_longer_than_80_chars
  /// Declines a friend request or deletes a user from the current user's friend list.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('friends.delete', params);

  /// Marks all incoming friend requests as viewed.
  MethodTypeReturn deleteAllRequests(MethodTypeParams params) =>
      _api.request('friends.deleteAllRequests', params);

  /// Deletes a friend list of the current user.
  MethodTypeReturn deleteList(MethodTypeParams params) =>
      _api.request('friends.deleteList', params);

  /// Edits the friend lists of the selected user.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('friends.edit', params);

  /// Edits a friend list of the current user.
  MethodTypeReturn editList(MethodTypeParams params) =>
      _api.request('friends.editList', params);

  /// Returns a list of user IDs or detailed information about a user's friends.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('friends.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of IDs of the current user's friends who installed the application.
  MethodTypeReturn getAppUsers(MethodTypeParams params) =>
      _api.request('friends.getAppUsers', params);

  // ignore: lines_longer_than_80_chars
  /// Позволяет получить список идентификаторов пользователей, доступных для вызова из приложения.
  MethodTypeReturn getAvailableForCall(MethodTypeParams params) =>
      _api.request('friends.getAvailableForCall', params);

  /// Returns a list of the current user's friends whose phone numbers,
  /// validated or specified in a profile, are in a given list.
  MethodTypeReturn getByPhones(MethodTypeParams params) =>
      _api.request('friends.getByPhones', params);

  /// Returns a list of the user's friend lists.
  MethodTypeReturn getLists(MethodTypeParams params) =>
      _api.request('friends.getLists', params);

  /// Returns a list of user IDs of the mutual friends of two users.
  MethodTypeReturn getMutual(MethodTypeParams params) =>
      _api.request('friends.getMutual', params);

  /// Returns a list of user IDs of a user's friends who are online.
  MethodTypeReturn getOnline(MethodTypeParams params) =>
      _api.request('friends.getOnline', params);

  /// Returns a list of user IDs of the current user's recently added friends.
  MethodTypeReturn getRecent(MethodTypeParams params) =>
      _api.request('friends.getRecent', params);

  // ignore: lines_longer_than_80_chars
  /// Returns information about the current user's incoming and outgoing friend requests.
  MethodTypeReturn getRequests(MethodTypeParams params) =>
      _api.request('friends.getRequests', params);

  /// Returns a list of profiles of users whom the current user may know.
  MethodTypeReturn getSuggestions(MethodTypeParams params) =>
      _api.request('friends.getSuggestions', params);

  /// Returns a list of friends matching the search criteria.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('friends.search', params);
}
