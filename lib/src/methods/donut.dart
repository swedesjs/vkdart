import 'package:vkdart/src/api.dart';

/// Методы для работы с VK Donut. [Документация VK Donut.](https://dev.vk.com/ru/api/donut/getting-started)
class Donut {
  /// Конструктор.
  Donut(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Возвращает список донов, которые подписаны на определенные сообщества, из числа друзей пользователя.
  Future<Map<String, dynamic>> getFriends(Map<String, Object> params) =>
      _api.request('donut.getFriends', params);

  /// Возвращает информацию о подписке VK Donut.
  Future<Map<String, dynamic>> getSubscription(Map<String, Object> params) =>
      _api.request('donut.getSubscription', params);

  /// Returns a list of user's VK Donut subscriptions.
  Future<Map<String, dynamic>> getSubscriptions(Map<String, Object> params) =>
      _api.request('donut.getSubscriptions', params);

  /// Возвращает информацию о том, подписан ли пользователь на платный контент
  /// (является доном).
  Future<Map<String, dynamic>> isDon(Map<String, Object> params) =>
      _api.request('donut.isDon', params);
}
