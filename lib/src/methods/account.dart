import 'package:vkdart/src/api.dart';

/// Методы для работы с аккаунтом.
class Account {
  /// Конструктор.
  Account(this._api);
  final Api _api;

  /// Добавляет пользователя или группу в черный список.
  Future<Map<String, dynamic>> ban(Map<String, Object> params) =>
      _api.request('account.ban', params);

  /// Changes a user password after access is successfully restored with the [vk.com/dev/auth.restore|auth.restore] method.
  Future<Map<String, dynamic>> changePassword(Map<String, Object> params) =>
      _api.request('account.changePassword', params);

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  Future<Map<String, dynamic>> getActiveOffers(Map<String, Object> params) =>
      _api.request('account.getActiveOffers', params);

  /// Gets settings of the user in this application.
  Future<Map<String, dynamic>> getAppPermissions(Map<String, Object> params) =>
      _api.request('account.getAppPermissions', params);

  /// Returns a user's blacklist.
  Future<Map<String, dynamic>> getBanned(Map<String, Object> params) =>
      _api.request('account.getBanned', params);

  /// Returns non-null values of user counters.
  Future<Map<String, dynamic>> getCounters(Map<String, Object> params) =>
      _api.request('account.getCounters', params);

  /// Returns current account info.
  Future<Map<String, dynamic>> getInfo(Map<String, Object> params) =>
      _api.request('account.getInfo', params);

  /// Returns the current account info.
  Future<Map<String, dynamic>> getProfileInfo(Map<String, Object> params) =>
      _api.request('account.getProfileInfo', params);

  /// Gets settings of push notifications.
  Future<Map<String, dynamic>> getPushSettings(Map<String, Object> params) =>
      _api.request('account.getPushSettings', params);

  /// Позволяет искать пользователей ВКонтакте, используя телефонные номера,
  /// email-адреса, и идентификаторы пользователей в других сервисах.
  // ignore: lines_longer_than_80_chars
  /// Найденные пользователи могут быть также в дальнейшем получены методом friends.getSuggestions.
  Future<Map<String, dynamic>> lookupContacts(Map<String, Object> params) =>
      _api.request('account.lookupContacts', params);

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  Future<Map<String, dynamic>> registerDevice(Map<String, Object> params) =>
      _api.request('account.registerDevice', params);

  /// Edits current profile info.
  Future<Map<String, dynamic>> saveProfileInfo(Map<String, Object> params) =>
      _api.request('account.saveProfileInfo', params);

  /// Allows to edit the current account info.
  Future<Map<String, dynamic>> setInfo(Map<String, Object> params) =>
      _api.request('account.setInfo', params);

  /// Устанавливает короткое название приложения (до 17 символов),
  /// которое выводится пользователю в левом меню.
  Future<Map<String, dynamic>> setNameInMenu(Map<String, Object> params) =>
      _api.request('account.setNameInMenu', params);

  /// Marks a current user as offline.
  Future<Map<String, dynamic>> setOffline(Map<String, Object> params) =>
      _api.request('account.setOffline', params);

  /// Marks the current user as online for 15 minutes.
  Future<Map<String, dynamic>> setOnline(Map<String, Object> params) =>
      _api.request('account.setOnline', params);

  /// Change push settings.
  Future<Map<String, dynamic>> setPushSettings(Map<String, Object> params) =>
      _api.request('account.setPushSettings', params);

  /// Mutes push notifications for the set period of time.
  Future<Map<String, dynamic>> setSilenceMode(Map<String, Object> params) =>
      _api.request('account.setSilenceMode', params);

  /// Удаляет пользователя или группу из черного списка.
  Future<Map<String, dynamic>> unban(Map<String, Object> params) =>
      _api.request('account.unban', params);

  /// Unsubscribes a device from push notifications.
  Future<Map<String, dynamic>> unregisterDevice(Map<String, Object> params) =>
      _api.request('account.unregisterDevice', params);
}
