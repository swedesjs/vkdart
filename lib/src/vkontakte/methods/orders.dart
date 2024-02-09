import 'package:vkdart/vkontakte.dart';

/// The methods in this section provide an additional opportunity to manage the status of orders that have been made by users in applications.
///
/// See https://dev.vk.com/ru/method/orders
class Orders {
  // ignore: public_member_api_docs
  Orders(this._api);
  final Api _api;

  /// Cancels the subscription.
  Future<Object> cancelSubscription(Map<String, dynamic> params) =>
      _api.request('orders.cancelSubscription', params);

  /// Changes order status.
  Future<Object> changeState(Map<String, dynamic> params) =>
      _api.request('orders.changeState', params);

  /// Returns a list of orders.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('orders.get', params);

  /// Returns the cost of votes in the user's currency.
  Future<Object> getAmount(Map<String, dynamic> params) =>
      _api.request('orders.getAmount', params);

  /// Returns information about orders by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('orders.getById', params);

  /// Gets information about the subscription by its ID.
  Future<Object> getUserSubscriptionById(Map<String, dynamic> params) =>
      _api.request('orders.getUserSubscriptionById', params);

  /// Retrieves a list of the user's active subscriptions.
  Future<Object> getUserSubscriptions(Map<String, dynamic> params) =>
      _api.request('orders.getUserSubscriptions', params);

  /// Updates the subscription price for the user.
  Future<Object> updateSubscription(Map<String, dynamic> params) =>
      _api.request('orders.updateSubscription', params);
}
