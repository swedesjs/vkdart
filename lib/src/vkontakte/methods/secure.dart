part of '../api.dart';

/// В этой секции представлены административные методы,

/// предназначенные для вызова от имени приложения с использованием стороннего сервера.

/// Для использования этих методов необходимо применять сервисный ключ из настроек приложения.
class Secure {
  /// Конструктор.
  Secure(this._api);
  final Api _api;

  /// Adds user activity information to an application
  Future<ApiResponse<T>> addAppEvent<T>(Map<String, Object> params) =>
      _api.request<T>('secure.addAppEvent', params);

  /// Checks the user authentication in 'IFrame' and 'Flash' apps using the 'access_token' parameter.
  Future<ApiResponse<T>> checkToken<T>(Map<String, Object> params) =>
      _api.request<T>('secure.checkToken', params);

  /// Returns payment balance of the application in hundredth of a vote.
  Future<ApiResponse<T>> getAppBalance<T>(Map<String, Object> params) =>
      _api.request<T>('secure.getAppBalance', params);

  /// Shows a list of SMS notifications sent by the application using
  /// [sendSMSNotification] method.
  Future<ApiResponse<T>> getSMSHistory<T>(Map<String, Object> params) =>
      _api.request<T>('secure.getSMSHistory', params);

  /// Shows history of votes transaction between users and the application.
  Future<ApiResponse<T>> getTransactionsHistory<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('secure.getTransactionsHistory', params);

  /// Returns one of the previously set game levels of one or more users in the application.
  Future<ApiResponse<T>> getUserLevel<T>(Map<String, Object> params) =>
      _api.request<T>('secure.getUserLevel', params);

  /// Opens the game achievement and gives the user a sticker
  Future<ApiResponse<T>> giveEventSticker<T>(Map<String, Object> params) =>
      _api.request<T>('secure.giveEventSticker', params);

  /// Sends notification to the user.
  Future<ApiResponse<T>> sendNotification<T>(Map<String, Object> params) =>
      _api.request<T>('secure.sendNotification', params);

  /// Sends 'SMS' notification to a user's mobile device.
  Future<ApiResponse<T>> sendSMSNotification<T>(Map<String, Object> params) =>
      _api.request<T>('secure.sendSMSNotification', params);

  /// Sets a counter which is shown to the user in bold in the left menu.
  Future<ApiResponse<T>> setCounter<T>(Map<String, Object> params) =>
      _api.request<T>('secure.setCounter', params);

  /// Устанавливает игровой уровень пользователя в приложении, который смогут увидеть его друзья.
  Future<ApiResponse<T>> setUserLevel<T>(Map<String, Object> params) =>
      _api.request<T>('secure.setUserLevel', params);
}
