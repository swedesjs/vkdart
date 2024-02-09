import 'package:vkdart/vkontakte.dart';

/// This section presents administrative methods designed to be invoked on behalf of an application using a third-party server.
/// To use these methods, you must apply the service key from the application settings.
class Secure {
  // ignore: public_member_api_docs
  Secure(this._api);
  final Api _api;

  /// Adds user activity information to an application
  Future<Object> addAppEvent(Map<String, dynamic> params) =>
      _api.request('secure.addAppEvent', params);

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  Future<Object> checkToken(Map<String, dynamic> params) =>
      _api.request('secure.checkToken', params);

  /// Returns payment balance of the application in hundredth of a vote.
  Future<Object> getAppBalance(Map<String, dynamic> params) =>
      _api.request('secure.getAppBalance', params);

  /// Shows a list of SMS notifications sent by the application using
  /// [sendSMSNotification] method.
  Future<Object> getSMSHistory(Map<String, dynamic> params) =>
      _api.request('secure.getSMSHistory', params);

  /// Shows history of votes transaction between users and the application.
  Future<Object> getTransactionsHistory(Map<String, dynamic> params) =>
      _api.request('secure.getTransactionsHistory', params);

  /// Returns one of the previously set game levels of one or more users in the application.
  Future<Object> getUserLevel(Map<String, dynamic> params) =>
      _api.request('secure.getUserLevel', params);

  /// Opens the game achievement and gives the user a sticker
  Future<Object> giveEventSticker(Map<String, dynamic> params) =>
      _api.request('secure.giveEventSticker', params);

  /// Sends notification to the user.
  Future<Object> sendNotification(Map<String, dynamic> params) =>
      _api.request('secure.sendNotification', params);

  /// Sends 'SMS' notification to a user's mobile device.
  Future<Object> sendSMSNotification(Map<String, dynamic> params) =>
      _api.request('secure.sendSMSNotification', params);

  /// Sets a counter which is shown to the user in bold in the left menu.
  Future<Object> setCounter(Map<String, dynamic> params) =>
      _api.request('secure.setCounter', params);

  /// Sets the user's game level in the app that his friends can see.
  Future<Object> setUserLevel(Map<String, dynamic> params) =>
      _api.request('secure.setUserLevel', params);
}
