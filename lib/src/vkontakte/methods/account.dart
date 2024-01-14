part of '../api.dart';

/// Методы для работы с аккаунтом.
class Account {
  /// Конструктор.
  Account(this._api);
  final Api _api;

  /// Добавляет пользователя или группу в черный список.
  Future<ApiResponse<T>> ban<T>(Map<String, Object> params) =>
      _api.request<T>('account.ban', params);

  /// Changes a user password after access is successfully restored with the
  /// [Auth.restore] method.
  Future<ApiResponse<T>> changePassword<T>(Map<String, Object> params) =>
      _api.request<T>('account.changePassword', params);

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  Future<ApiResponse<T>> getActiveOffers<T>(Map<String, Object> params) =>
      _api.request<T>('account.getActiveOffers', params);

  /// Gets settings of the user in this application.
  Future<ApiResponse<T>> getAppPermissions<T>(Map<String, Object> params) =>
      _api.request<T>('account.getAppPermissions', params);

  /// Returns a user's blacklist.
  Future<ApiResponse<T>> getBanned<T>(Map<String, Object> params) =>
      _api.request<T>('account.getBanned', params);

  /// Returns non-null values of user counters.
  Future<ApiResponse<T>> getCounters<T>(Map<String, Object> params) =>
      _api.request<T>('account.getCounters', params);

  /// Returns current account info.
  Future<ApiResponse<T>> getInfo<T>(Map<String, Object> params) =>
      _api.request<T>('account.getInfo', params);

  /// Returns the current account info.
  Future<ApiResponse<T>> getProfileInfo<T>(Map<String, Object> params) =>
      _api.request<T>('account.getProfileInfo', params);

  /// Gets settings of push notifications.
  Future<ApiResponse<T>> getPushSettings<T>(Map<String, Object> params) =>
      _api.request<T>('account.getPushSettings', params);

  /// Позволяет искать пользователей ВКонтакте, используя телефонные номера,
  /// email-адреса, и идентификаторы пользователей в других сервисах.
  /// Найденные пользователи могут быть также в дальнейшем получены методом friends.getSuggestions.
  Future<ApiResponse<T>> lookupContacts<T>(Map<String, Object> params) =>
      _api.request<T>('account.lookupContacts', params);

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  Future<ApiResponse<T>> registerDevice<T>(Map<String, Object> params) =>
      _api.request<T>('account.registerDevice', params);

  /// Edits current profile info.
  Future<ApiResponse<T>> saveProfileInfo<T>(Map<String, Object> params) =>
      _api.request<T>('account.saveProfileInfo', params);

  /// Allows to edit the current account info.
  Future<ApiResponse<T>> setInfo<T>(Map<String, Object> params) =>
      _api.request<T>('account.setInfo', params);

  /// Устанавливает короткое название приложения (до 17 символов),
  /// которое выводится пользователю в левом меню.
  Future<ApiResponse<T>> setNameInMenu<T>(Map<String, Object> params) =>
      _api.request<T>('account.setNameInMenu', params);

  /// Marks a current user as offline.
  Future<ApiResponse<T>> setOffline<T>(Map<String, Object> params) =>
      _api.request<T>('account.setOffline', params);

  /// Marks the current user as online for 15 minutes.
  Future<ApiResponse<T>> setOnline<T>(Map<String, Object> params) =>
      _api.request<T>('account.setOnline', params);

  /// Change push settings.
  Future<ApiResponse<T>> setPushSettings<T>(Map<String, Object> params) =>
      _api.request<T>('account.setPushSettings', params);

  /// Mutes push notifications for the set period of time.
  Future<ApiResponse<T>> setSilenceMode<T>(Map<String, Object> params) =>
      _api.request<T>('account.setSilenceMode', params);

  /// Удаляет пользователя или группу из черного списка.
  Future<ApiResponse<T>> unban<T>(Map<String, Object> params) =>
      _api.request<T>('account.unban', params);

  /// Unsubscribes a device from push notifications.
  Future<ApiResponse<T>> unregisterDevice<T>(Map<String, Object> params) =>
      _api.request<T>('account.unregisterDevice', params);
}