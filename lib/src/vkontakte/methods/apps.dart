import 'package:vkdart/vkontakte.dart';

/// Methods for working with applications.
///
/// See https://dev.vk.com/ru/method/apps
class Apps {
  // ignore: public_member_api_docs
  Apps(this._api);
  final Api _api;

  /// The method adds a new snippet to the snippet collection of a mini-app or game.
  Future<Object> addSnippet(Map<String, dynamic> params) =>
      _api.request('apps.addSnippet', params);

  /// This adds the specified users to the group of testers of the mini-application.
  Future<Object> addUsersToTestingGroup(Map<String, dynamic> params) =>
      _api.request('apps.addUsersToTestingGroup', params);

  /// Deletes all request notifications from the current app.
  Future<Object> deleteAppRequests(Map<String, dynamic> params) =>
      _api.request('apps.deleteAppRequests', params);

  /// The method deletes the snippet of the mini-application or game.
  Future<Object> deleteSnippet(Map<String, dynamic> params) =>
      _api.request('apps.deleteSnippet', params);

  /// Returns applications data.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('apps.get', params);

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<Object> getCatalog(Map<String, dynamic> params) =>
      _api.request('apps.getCatalog', params);

  /// Creates friends list for requests and invites in current app.
  Future<Object> getFriendsList(Map<String, dynamic> params) =>
      _api.request('apps.getFriendsList', params);

  /// Returns players rating in the game.
  Future<Object> getLeaderboard(Map<String, dynamic> params) =>
      _api.request('apps.getLeaderboard', params);

  /// Returns policies and terms given to a mini app.
  Future<Object> getMiniAppPolicies(Map<String, dynamic> params) =>
      _api.request('apps.getMiniAppPolicies', params);

  /// Returns scopes for auth
  Future<Object> getScopes(Map<String, dynamic> params) =>
      _api.request('apps.getScopes', params);

  /// Returns user score in app
  Future<Object> getScore(Map<String, dynamic> params) =>
      _api.request('apps.getScore', params);

  /// The method returns information about snippets of a mini-application or game created using [addSnippet].
  Future<Object> getSnippets(Map<String, dynamic> params) =>
      _api.request('apps.getSnippets', params);

  /// The method returns groups of testers of the mini-application.
  Future<Object> getTestingGroups(Map<String, dynamic> params) =>
      _api.request('apps.getTestingGroups', params);

  /// The method checks whether the user has allowed notifications to be sent to him in the mini-application.
  Future<Object> isNotificationsAllowed(Map<String, dynamic> params) =>
      _api.request('apps.isNotificationsAllowed', params);

  /// Check if the user has a gift in the game.
  Future<Object> promoHasActiveGift(Map<String, dynamic> params) =>
      _api.request('apps.promoHasActiveGift', params);

  /// The method marks the gift received by the user in the promotion as used.
  Future<Object> promoUseGift(Map<String, dynamic> params) =>
      _api.request('apps.promoUseGift', params);

  /// The method deletes the specified group of testers of the mini-application.
  Future<Object> removeTestingGroup(Map<String, dynamic> params) =>
      _api.request('apps.removeTestingGroup', params);

  /// The method removes the specified users from the groups of testers of the mini-application.
  Future<Object> removeUsersFromTestingGroups(Map<String, dynamic> params) =>
      _api.request('apps.removeUsersFromTestingGroups', params);

  /// Sends a request to another user in an app that uses VK authorization.
  Future<Object> sendRequest(Map<String, dynamic> params) =>
      _api.request('apps.sendRequest', params);

  /// The method creates a new or updates an existing group of mini-application testers.
  Future<Object> updateMetaForTestingGroup(Map<String, dynamic> params) =>
      _api.request('apps.updateMetaForTestingGroup', params);
}
