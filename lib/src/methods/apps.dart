import 'package:vkdart/src/api.dart';

/// Методы для работы с приложениями.
class Apps {
  /// Конструктор.
  Apps(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Метод добавляет новый сниппет в коллекцию сниппетов мини-приложения или игры.
  Future<Map<String, dynamic>> addSnippet(Map<String, Object> params) =>
      _api.request('apps.addSnippet', params);

  // ignore: lines_longer_than_80_chars
  /// Метод добавляет указанных пользователей в группу тестировщиков мини-приложения.
  Future<Map<String, dynamic>> addUsersToTestingGroup(
    Map<String, Object> params,
  ) =>
      _api.request('apps.addUsersToTestingGroup', params);

  /// Deletes all request notifications from the current app.
  Future<Map<String, dynamic>> deleteAppRequests(Map<String, Object> params) =>
      _api.request('apps.deleteAppRequests', params);

  /// Метод удаляет сниппет мини-приложения или игры.
  Future<Map<String, dynamic>> deleteSnippet(
    Map<String, Object> params,
  ) =>
      _api.request('apps.deleteSnippet', params);

  /// Returns applications data.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('apps.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<Map<String, dynamic>> getCatalog(Map<String, Object> params) =>
      _api.request('apps.getCatalog', params);

  /// Creates friends list for requests and invites in current app.
  Future<Map<String, dynamic>> getFriendsList(Map<String, Object> params) =>
      _api.request('apps.getFriendsList', params);

  /// Returns players rating in the game.
  Future<Map<String, dynamic>> getLeaderboard(Map<String, Object> params) =>
      _api.request('apps.getLeaderboard', params);

  /// Returns policies and terms given to a mini app.
  Future<Map<String, dynamic>> getMiniAppPolicies(Map<String, Object> params) =>
      _api.request('apps.getMiniAppPolicies', params);

  /// Returns scopes for auth
  Future<Map<String, dynamic>> getScopes(Map<String, Object> params) =>
      _api.request('apps.getScopes', params);

  /// Returns user score in app
  Future<Map<String, dynamic>> getScore(Map<String, Object> params) =>
      _api.request('apps.getScore', params);

  // ignore: lines_longer_than_80_chars
  /// Метод возвращает информацию о сниппетах мини-приложения или игры, созданных с помощью [addSnippet].
  Future<Map<String, dynamic>> getSnippets(Map<String, Object> params) =>
      _api.request('apps.getSnippets', params);

  /// Метод возвращает группы тестировщиков мини-приложения.
  Future<Map<String, dynamic>> getTestingGroups(Map<String, Object> params) =>
      _api.request('apps.getTestingGroups', params);

  // ignore: lines_longer_than_80_chars
  /// Метод проверяет, разрешил ли пользователь присылать ему уведомления в мини-приложении.
  Future<Map<String, dynamic>> isNotificationsAllowed(
    Map<String, Object> params,
  ) =>
      _api.request('apps.isNotificationsAllowed', params);

  /// Проверить есть ли у пользователя подарок в игре.
  Future<Map<String, dynamic>> promoHasActiveGift(Map<String, Object> params) =>
      _api.request('apps.promoHasActiveGift', params);

  // ignore: lines_longer_than_80_chars
  /// Метод отмечает подарок, полученный пользователем в промоакции, как использованный.
  Future<Map<String, dynamic>> promoUseGift(Map<String, Object> params) =>
      _api.request('apps.promoUseGift', params);

  /// Метод удаляет указанную группу тестировщиков мини-приложения.
  Future<Map<String, dynamic>> removeTestingGroup(Map<String, Object> params) =>
      _api.request('apps.removeTestingGroup', params);

  // ignore: lines_longer_than_80_chars
  /// Метод удаляет указанных пользователей из групп тестировщиков мини-приложения.
  Future<Map<String, dynamic>> removeUsersFromTestingGroups(
    Map<String, Object> params,
  ) =>
      _api.request('apps.removeUsersFromTestingGroups', params);

  /// Sends a request to another user in an app that uses VK authorization.
  Future<Map<String, dynamic>> sendRequest(Map<String, Object> params) =>
      _api.request('apps.sendRequest', params);

  // ignore: lines_longer_than_80_chars
  /// Метод создает новую или обновляет существующую группу тестировщиков мини-приложения.
  Future<Map<String, dynamic>> updateMetaForTestingGroup(
    Map<String, Object> params,
  ) =>
      _api.request('apps.updateMetaForTestingGroup', params);
}
