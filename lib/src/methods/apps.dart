part of '../../methods.dart';

/// Методы для работы с приложениями.
class Apps {
  /// Конструктор.
  Apps(this._api);
  final Api _api;

  /// Метод добавляет новый сниппет в коллекцию сниппетов мини-приложения или игры.
  Future<ApiResponse<T>> addSnippet<T>(MethodTypeParams params) =>
      _api.request<T>('apps.addSnippet', params);

  /// Метод добавляет указанных пользователей в группу тестировщиков мини-приложения.
  Future<ApiResponse<T>> addUsersToTestingGroup<T>(MethodTypeParams params) =>
      _api.request<T>('apps.addUsersToTestingGroup', params);

  /// Deletes all request notifications from the current app.
  Future<ApiResponse<T>> deleteAppRequests<T>(MethodTypeParams params) =>
      _api.request<T>('apps.deleteAppRequests', params);

  /// Метод удаляет сниппет мини-приложения или игры.
  Future<ApiResponse<T>> deleteSnippet<T>(MethodTypeParams params) =>
      _api.request<T>('apps.deleteSnippet', params);

  /// Returns applications data.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('apps.get', params);

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<ApiResponse<T>> getCatalog<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getCatalog', params);

  /// Creates friends list for requests and invites in current app.
  Future<ApiResponse<T>> getFriendsList<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getFriendsList', params);

  /// Returns players rating in the game.
  Future<ApiResponse<T>> getLeaderboard<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getLeaderboard', params);

  /// Returns policies and terms given to a mini app.
  Future<ApiResponse<T>> getMiniAppPolicies<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getMiniAppPolicies', params);

  /// Returns scopes for auth
  Future<ApiResponse<T>> getScopes<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getScopes', params);

  /// Returns user score in app
  Future<ApiResponse<T>> getScore<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getScore', params);

  /// Метод возвращает информацию о сниппетах мини-приложения или игры, созданных с помощью [addSnippet].
  Future<ApiResponse<T>> getSnippets<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getSnippets', params);

  /// Метод возвращает группы тестировщиков мини-приложения.
  Future<ApiResponse<T>> getTestingGroups<T>(MethodTypeParams params) =>
      _api.request<T>('apps.getTestingGroups', params);

  /// Метод проверяет, разрешил ли пользователь присылать ему уведомления в мини-приложении.
  Future<ApiResponse<T>> isNotificationsAllowed<T>(MethodTypeParams params) =>
      _api.request<T>('apps.isNotificationsAllowed', params);

  /// Проверить есть ли у пользователя подарок в игре.
  Future<ApiResponse<T>> promoHasActiveGift<T>(MethodTypeParams params) =>
      _api.request<T>('apps.promoHasActiveGift', params);

  /// Метод отмечает подарок, полученный пользователем в промоакции, как использованный.
  Future<ApiResponse<T>> promoUseGift<T>(MethodTypeParams params) =>
      _api.request<T>('apps.promoUseGift', params);

  /// Метод удаляет указанную группу тестировщиков мини-приложения.
  Future<ApiResponse<T>> removeTestingGroup<T>(MethodTypeParams params) =>
      _api.request<T>('apps.removeTestingGroup', params);

  /// Метод удаляет указанных пользователей из групп тестировщиков мини-приложения.
  Future<ApiResponse<T>> removeUsersFromTestingGroups<T>(
          MethodTypeParams params) =>
      _api.request<T>('apps.removeUsersFromTestingGroups', params);

  /// Sends a request to another user in an app that uses VK authorization.
  Future<ApiResponse<T>> sendRequest<T>(MethodTypeParams params) =>
      _api.request<T>('apps.sendRequest', params);

  /// Метод создает новую или обновляет существующую группу тестировщиков мини-приложения.
  Future<ApiResponse<T>> updateMetaForTestingGroup<T>(
          MethodTypeParams params) =>
      _api.request<T>('apps.updateMetaForTestingGroup', params);
}
