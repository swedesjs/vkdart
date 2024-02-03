import 'package:vkdart/vkontakte.dart';

/// Methods for working with applications.
///
/// See https://dev.vk.com/ru/method/apps
class Apps {
  // ignore: public_member_api_docs
  Apps(this._api);
  final Api _api;

  /// The method adds a new snippet to the snippet collection of a mini-app or game.
  Future<ApiResponse<T>> addSnippet<T>(Map<String, Object> params) =>
      _api.request<T>('apps.addSnippet', params);

  /// This adds the specified users to the group of testers of the mini-application.
  Future<ApiResponse<T>> addUsersToTestingGroup<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('apps.addUsersToTestingGroup', params);

  /// Deletes all request notifications from the current app.
  Future<ApiResponse<T>> deleteAppRequests<T>(Map<String, Object> params) =>
      _api.request<T>('apps.deleteAppRequests', params);

  /// The method deletes the snippet of the mini-application or game.
  Future<ApiResponse<T>> deleteSnippet<T>(Map<String, Object> params) =>
      _api.request<T>('apps.deleteSnippet', params);

  /// Returns applications data.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('apps.get', params);

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<ApiResponse<T>> getCatalog<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getCatalog', params);

  /// Creates friends list for requests and invites in current app.
  Future<ApiResponse<T>> getFriendsList<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getFriendsList', params);

  /// Returns players rating in the game.
  Future<ApiResponse<T>> getLeaderboard<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getLeaderboard', params);

  /// Returns policies and terms given to a mini app.
  Future<ApiResponse<T>> getMiniAppPolicies<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getMiniAppPolicies', params);

  /// Returns scopes for auth
  Future<ApiResponse<T>> getScopes<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getScopes', params);

  /// Returns user score in app
  Future<ApiResponse<T>> getScore<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getScore', params);

  /// The method returns information about snippets of a mini-application or game created using [addSnippet].
  Future<ApiResponse<T>> getSnippets<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getSnippets', params);

  /// The method returns groups of testers of the mini-application.
  Future<ApiResponse<T>> getTestingGroups<T>(Map<String, Object> params) =>
      _api.request<T>('apps.getTestingGroups', params);

  /// The method checks whether the user has allowed notifications to be sent to him in the mini-application.
  Future<ApiResponse<T>> isNotificationsAllowed<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('apps.isNotificationsAllowed', params);

  /// Check if the user has a gift in the game.
  Future<ApiResponse<T>> promoHasActiveGift<T>(Map<String, Object> params) =>
      _api.request<T>('apps.promoHasActiveGift', params);

  /// The method marks the gift received by the user in the promotion as used.
  Future<ApiResponse<T>> promoUseGift<T>(Map<String, Object> params) =>
      _api.request<T>('apps.promoUseGift', params);

  /// The method deletes the specified group of testers of the mini-application.
  Future<ApiResponse<T>> removeTestingGroup<T>(Map<String, Object> params) =>
      _api.request<T>('apps.removeTestingGroup', params);

  /// The method removes the specified users from the groups of testers of the mini-application.
  Future<ApiResponse<T>> removeUsersFromTestingGroups<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('apps.removeUsersFromTestingGroups', params);

  /// Sends a request to another user in an app that uses VK authorization.
  Future<ApiResponse<T>> sendRequest<T>(Map<String, Object> params) =>
      _api.request<T>('apps.sendRequest', params);

  /// The method creates a new or updates an existing group of mini-application testers.
  Future<ApiResponse<T>> updateMetaForTestingGroup<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('apps.updateMetaForTestingGroup', params);
}
