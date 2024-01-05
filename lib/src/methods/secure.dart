import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// В этой секции представлены административные методы,
// ignore: lines_longer_than_80_chars
/// предназначенные для вызова от имени приложения с использованием стороннего сервера.
// ignore: lines_longer_than_80_chars
/// Для использования этих методов необходимо применять сервисный ключ из настроек приложения.
class Secure {
  /// Конструктор.
  Secure(this._api);
  final Api _api;

  /// Adds user activity information to an application
  MethodTypeReturn addAppEvent(MethodTypeParams params) =>
      _api.request('secure.addAppEvent', params);

  // ignore: lines_longer_than_80_chars
  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  MethodTypeReturn checkToken(MethodTypeParams params) =>
      _api.request('secure.checkToken', params);

  /// Returns payment balance of the application in hundredth of a vote.
  MethodTypeReturn getAppBalance(MethodTypeParams params) =>
      _api.request('secure.getAppBalance', params);

  /// Shows a list of SMS notifications sent by the application using [vk.com/dev/secure.sendSMSNotification|secure.sendSMSNotification] method.
  MethodTypeReturn getSMSHistory(MethodTypeParams params) =>
      _api.request('secure.getSMSHistory', params);

  /// Shows history of votes transaction between users and the application.
  MethodTypeReturn getTransactionsHistory(MethodTypeParams params) =>
      _api.request('secure.getTransactionsHistory', params);

  // ignore: lines_longer_than_80_chars
  /// Returns one of the previously set game levels of one or more users in the application.
  MethodTypeReturn getUserLevel(MethodTypeParams params) =>
      _api.request('secure.getUserLevel', params);

  /// Opens the game achievement and gives the user a sticker
  MethodTypeReturn giveEventSticker(MethodTypeParams params) =>
      _api.request('secure.giveEventSticker', params);

  /// Sends notification to the user.
  MethodTypeReturn sendNotification(MethodTypeParams params) =>
      _api.request('secure.sendNotification', params);

  /// Sends 'SMS' notification to a user's mobile device.
  MethodTypeReturn sendSMSNotification(MethodTypeParams params) =>
      _api.request('secure.sendSMSNotification', params);

  /// Sets a counter which is shown to the user in bold in the left menu.
  MethodTypeReturn setCounter(MethodTypeParams params) =>
      _api.request('secure.setCounter', params);

  // ignore: lines_longer_than_80_chars
  /// Устанавливает игровой уровень пользователя в приложении, который смогут увидеть его друзья.
  MethodTypeReturn setUserLevel(MethodTypeParams params) =>
      _api.request('secure.setUserLevel', params);
}
