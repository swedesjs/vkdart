import 'package:vkdart/vkontakte.dart';

/// Methods for working with the account.
///
/// See https://dev.vk.com/ru/method/account
class Account {
  // ignore: public_member_api_docs
  Account(this._api);
  final Api _api;

  /// Adds a user or group to the blacklist.
  Future<Object> ban(Map<String, dynamic> params) =>
      _api.request('account.ban', params);

  /// Changes a user password after access is successfully restored with the
  /// [Auth.restore] method.
  Future<Object> changePassword(Map<String, dynamic> params) =>
      _api.request('account.changePassword', params);

  /// Returns a list of active ads (offers) which executed by the user will bring him/her respective number of votes to his balance in the application.
  Future<Object> getActiveOffers(Map<String, dynamic> params) =>
      _api.request('account.getActiveOffers', params);

  /// Gets settings of the user in this application.
  Future<Object> getAppPermissions(Map<String, dynamic> params) =>
      _api.request('account.getAppPermissions', params);

  /// Returns a user's blacklist.
  Future<Object> getBanned(Map<String, dynamic> params) =>
      _api.request('account.getBanned', params);

  /// Returns non-null values of user counters.
  Future<Object> getCounters(Map<String, dynamic> params) =>
      _api.request('account.getCounters', params);

  /// Returns current account info.
  Future<Object> getInfo(Map<String, dynamic> params) =>
      _api.request('account.getInfo', params);

  /// Returns the current account info.
  Future<Object> getProfileInfo(Map<String, dynamic> params) =>
      _api.request('account.getProfileInfo', params);

  /// Gets settings of push notifications.
  Future<Object> getPushSettings(Map<String, dynamic> params) =>
      _api.request('account.getPushSettings', params);

  /// Allows you to search for VKontakte users using phone numbers, email addresses,
  /// and user IDs in other services.
  /// The found users can also be further obtained using the friends.getSuggestions method.
  Future<Object> lookupContacts(Map<String, dynamic> params) =>
      _api.request('account.lookupContacts', params);

  /// Subscribes an iOS/Android/Windows Phone-based device to receive push notifications
  Future<Object> registerDevice(Map<String, dynamic> params) =>
      _api.request('account.registerDevice', params);

  /// Edits current profile info.
  Future<Object> saveProfileInfo(Map<String, dynamic> params) =>
      _api.request('account.saveProfileInfo', params);

  /// Allows to edit the current account info.
  Future<Object> setInfo(Map<String, dynamic> params) =>
      _api.request('account.setInfo', params);

  /// Sets the short name of the application (up to 17 characters),
  /// which is displayed to the user in the left menu.
  Future<Object> setNameInMenu(Map<String, dynamic> params) =>
      _api.request('account.setNameInMenu', params);

  /// Marks a current user as offline.
  Future<Object> setOffline(Map<String, dynamic> params) =>
      _api.request('account.setOffline', params);

  /// Marks the current user as online for 15 minutes.
  Future<Object> setOnline(Map<String, dynamic> params) =>
      _api.request('account.setOnline', params);

  /// Change push settings.
  Future<Object> setPushSettings(Map<String, dynamic> params) =>
      _api.request('account.setPushSettings', params);

  /// Mutes push notifications for the set period of time.
  Future<Object> setSilenceMode(Map<String, dynamic> params) =>
      _api.request('account.setSilenceMode', params);

  /// Removes a user or group from the blacklist.
  Future<Object> unban(Map<String, dynamic> params) =>
      _api.request('account.unban', params);

  /// Unsubscribes a device from push notifications.
  Future<Object> unregisterDevice(Map<String, dynamic> params) =>
      _api.request('account.unregisterDevice', params);
}
