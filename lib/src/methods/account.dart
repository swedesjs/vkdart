part of '../../methods.dart';

/// Методы для работы с аккаунтом.
class Account {
  /// Конструктор.
  Account(this._api);
  final Api _api;

  /// Добавляет пользователя или группу в черный список.
  MethodTypeReturn ban(MethodTypeParams params) =>
      _api.request('account.ban', params);

  /// Changes a user password after access is successfully restored with the
  /// [Auth.restore] method.
  MethodTypeReturn changePassword(MethodTypeParams params) =>
      _api.request('account.changePassword', params);

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  MethodTypeReturn getActiveOffers(MethodTypeParams params) =>
      _api.request('account.getActiveOffers', params);

  /// Gets settings of the user in this application.
  MethodTypeReturn getAppPermissions(MethodTypeParams params) =>
      _api.request('account.getAppPermissions', params);

  /// Returns a user's blacklist.
  MethodTypeReturn getBanned(MethodTypeParams params) =>
      _api.request('account.getBanned', params);

  /// Returns non-null values of user counters.
  MethodTypeReturn getCounters(MethodTypeParams params) =>
      _api.request('account.getCounters', params);

  /// Returns current account info.
  MethodTypeReturn getInfo(MethodTypeParams params) =>
      _api.request('account.getInfo', params);

  /// Returns the current account info.
  MethodTypeReturn getProfileInfo(MethodTypeParams params) =>
      _api.request('account.getProfileInfo', params);

  /// Gets settings of push notifications.
  MethodTypeReturn getPushSettings(MethodTypeParams params) =>
      _api.request('account.getPushSettings', params);

  /// Позволяет искать пользователей ВКонтакте, используя телефонные номера,
  /// email-адреса, и идентификаторы пользователей в других сервисах.
  // ignore: lines_longer_than_80_chars
  /// Найденные пользователи могут быть также в дальнейшем получены методом friends.getSuggestions.
  MethodTypeReturn lookupContacts(MethodTypeParams params) =>
      _api.request('account.lookupContacts', params);

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  MethodTypeReturn registerDevice(MethodTypeParams params) =>
      _api.request('account.registerDevice', params);

  /// Edits current profile info.
  MethodTypeReturn saveProfileInfo(MethodTypeParams params) =>
      _api.request('account.saveProfileInfo', params);

  /// Allows to edit the current account info.
  MethodTypeReturn setInfo(MethodTypeParams params) =>
      _api.request('account.setInfo', params);

  /// Устанавливает короткое название приложения (до 17 символов),
  /// которое выводится пользователю в левом меню.
  MethodTypeReturn setNameInMenu(MethodTypeParams params) =>
      _api.request('account.setNameInMenu', params);

  /// Marks a current user as offline.
  MethodTypeReturn setOffline(MethodTypeParams params) =>
      _api.request('account.setOffline', params);

  /// Marks the current user as online for 15 minutes.
  MethodTypeReturn setOnline(MethodTypeParams params) =>
      _api.request('account.setOnline', params);

  /// Change push settings.
  MethodTypeReturn setPushSettings(MethodTypeParams params) =>
      _api.request('account.setPushSettings', params);

  /// Mutes push notifications for the set period of time.
  MethodTypeReturn setSilenceMode(MethodTypeParams params) =>
      _api.request('account.setSilenceMode', params);

  /// Удаляет пользователя или группу из черного списка.
  MethodTypeReturn unban(MethodTypeParams params) =>
      _api.request('account.unban', params);

  /// Unsubscribes a device from push notifications.
  MethodTypeReturn unregisterDevice(MethodTypeParams params) =>
      _api.request('account.unregisterDevice', params);
}
