part of vkdart.methods;

/// Методы для работы с VK Donut. [Документация VK Donut.](https://dev.vk.com/ru/api/donut/getting-started)
class Donut {
  /// Конструктор.
  Donut(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Возвращает список донов, которые подписаны на определенные сообщества, из числа друзей пользователя.
  MethodTypeReturn getFriends(MethodTypeParams params) =>
      _api.request('donut.getFriends', params);

  /// Возвращает информацию о подписке VK Donut.
  MethodTypeReturn getSubscription(MethodTypeParams params) =>
      _api.request('donut.getSubscription', params);

  /// Returns a list of user's VK Donut subscriptions.
  MethodTypeReturn getSubscriptions(MethodTypeParams params) =>
      _api.request('donut.getSubscriptions', params);

  /// Возвращает информацию о том, подписан ли пользователь на платный контент
  /// (является доном).
  MethodTypeReturn isDon(MethodTypeParams params) =>
      _api.request('donut.isDon', params);
}
