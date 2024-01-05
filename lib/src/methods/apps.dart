import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с приложениями.
class Apps {
  /// Конструктор.
  Apps(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Метод добавляет новый сниппет в коллекцию сниппетов мини-приложения или игры.
  MethodTypeReturn addSnippet(MethodTypeParams params) =>
      _api.request('apps.addSnippet', params);

  // ignore: lines_longer_than_80_chars
  /// Метод добавляет указанных пользователей в группу тестировщиков мини-приложения.
  MethodTypeReturn addUsersToTestingGroup(MethodTypeParams params) =>
      _api.request('apps.addUsersToTestingGroup', params);

  /// Deletes all request notifications from the current app.
  MethodTypeReturn deleteAppRequests(MethodTypeParams params) =>
      _api.request('apps.deleteAppRequests', params);

  /// Метод удаляет сниппет мини-приложения или игры.
  MethodTypeReturn deleteSnippet(MethodTypeParams params) =>
      _api.request('apps.deleteSnippet', params);

  /// Returns applications data.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('apps.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of applications (apps) available to users in the App Catalog.
  MethodTypeReturn getCatalog(MethodTypeParams params) =>
      _api.request('apps.getCatalog', params);

  /// Creates friends list for requests and invites in current app.
  MethodTypeReturn getFriendsList(MethodTypeParams params) =>
      _api.request('apps.getFriendsList', params);

  /// Returns players rating in the game.
  MethodTypeReturn getLeaderboard(MethodTypeParams params) =>
      _api.request('apps.getLeaderboard', params);

  /// Returns policies and terms given to a mini app.
  MethodTypeReturn getMiniAppPolicies(MethodTypeParams params) =>
      _api.request('apps.getMiniAppPolicies', params);

  /// Returns scopes for auth
  MethodTypeReturn getScopes(MethodTypeParams params) =>
      _api.request('apps.getScopes', params);

  /// Returns user score in app
  MethodTypeReturn getScore(MethodTypeParams params) =>
      _api.request('apps.getScore', params);

  // ignore: lines_longer_than_80_chars
  /// Метод возвращает информацию о сниппетах мини-приложения или игры, созданных с помощью [addSnippet].
  MethodTypeReturn getSnippets(MethodTypeParams params) =>
      _api.request('apps.getSnippets', params);

  /// Метод возвращает группы тестировщиков мини-приложения.
  MethodTypeReturn getTestingGroups(MethodTypeParams params) =>
      _api.request('apps.getTestingGroups', params);

  // ignore: lines_longer_than_80_chars
  /// Метод проверяет, разрешил ли пользователь присылать ему уведомления в мини-приложении.
  MethodTypeReturn isNotificationsAllowed(MethodTypeParams params) =>
      _api.request('apps.isNotificationsAllowed', params);

  /// Проверить есть ли у пользователя подарок в игре.
  MethodTypeReturn promoHasActiveGift(MethodTypeParams params) =>
      _api.request('apps.promoHasActiveGift', params);

  // ignore: lines_longer_than_80_chars
  /// Метод отмечает подарок, полученный пользователем в промоакции, как использованный.
  MethodTypeReturn promoUseGift(MethodTypeParams params) =>
      _api.request('apps.promoUseGift', params);

  /// Метод удаляет указанную группу тестировщиков мини-приложения.
  MethodTypeReturn removeTestingGroup(MethodTypeParams params) =>
      _api.request('apps.removeTestingGroup', params);

  // ignore: lines_longer_than_80_chars
  /// Метод удаляет указанных пользователей из групп тестировщиков мини-приложения.
  MethodTypeReturn removeUsersFromTestingGroups(MethodTypeParams params) =>
      _api.request('apps.removeUsersFromTestingGroups', params);

  /// Sends a request to another user in an app that uses VK authorization.
  MethodTypeReturn sendRequest(MethodTypeParams params) =>
      _api.request('apps.sendRequest', params);

  // ignore: lines_longer_than_80_chars
  /// Метод создает новую или обновляет существующую группу тестировщиков мини-приложения.
  MethodTypeReturn updateMetaForTestingGroup(MethodTypeParams params) =>
      _api.request('apps.updateMetaForTestingGroup', params);
}
