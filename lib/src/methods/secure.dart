import '../api.dart';

class Secure {
  final Api _api;

  Secure(this._api);

  /// Adds user activity information to an application
  Future<Map<String, dynamic>> addAppEvent(Map<String, Object> params) {
    return _api.request('secure.addAppEvent', params);
  }

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  Future<Map<String, dynamic>> checkToken(Map<String, Object> params) {
    return _api.request('secure.checkToken', params);
  }

  /// Returns payment balance of the application in hundredth of a vote.
  Future<Map<String, dynamic>> getAppBalance(Map<String, Object> params) {
    return _api.request('secure.getAppBalance', params);
  }

  /// Shows a list of SMS notifications sent by the application using [vk.com/dev/secure.sendSMSNotification|secure.sendSMSNotification] method.
  Future<Map<String, dynamic>> getSMSHistory(Map<String, Object> params) {
    return _api.request('secure.getSMSHistory', params);
  }

  /// Shows history of votes transaction between users and the application.
  Future<Map<String, dynamic>> getTransactionsHistory(Map<String, Object> params) {
    return _api.request('secure.getTransactionsHistory', params);
  }

  /// Returns one of the previously set game levels of one or more users in the application.
  Future<Map<String, dynamic>> getUserLevel(Map<String, Object> params) {
    return _api.request('secure.getUserLevel', params);
  }

  /// Opens the game achievement and gives the user a sticker
  Future<Map<String, dynamic>> giveEventSticker(Map<String, Object> params) {
    return _api.request('secure.giveEventSticker', params);
  }

  /// Sends notification to the user.
  Future<Map<String, dynamic>> sendNotification(Map<String, Object> params) {
    return _api.request('secure.sendNotification', params);
  }

  /// Sends 'SMS' notification to a user's mobile device.
  Future<Map<String, dynamic>> sendSMSNotification(Map<String, Object> params) {
    return _api.request('secure.sendSMSNotification', params);
  }

  /// Sets a counter which is shown to the user in bold in the left menu.
  Future<Map<String, dynamic>> setCounter(Map<String, Object> params) {
    return _api.request('secure.setCounter', params);
  }
}
