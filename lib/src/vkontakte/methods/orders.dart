import 'package:vkdart/vkontakte.dart';

/// The methods in this section provide an additional opportunity to manage the status of orders that have been made by users in applications.
///
/// See https://dev.vk.com/ru/method/orders
class Orders {
  // ignore: public_member_api_docs
  Orders(this._api);
  final Api _api;

  /// Cancels the subscription.
  Future<ApiResponse<T>> cancelSubscription<T>(Map<String, Object> params) =>
      _api.request<T>('orders.cancelSubscription', params);

  /// Changes order status.
  Future<ApiResponse<T>> changeState<T>(Map<String, Object> params) =>
      _api.request<T>('orders.changeState', params);

  /// Returns a list of orders.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('orders.get', params);

  /// Returns the cost of votes in the user's currency.
  Future<ApiResponse<T>> getAmount<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getAmount', params);

  /// Returns information about orders by their IDs.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getById', params);

  /// Gets information about the subscription by its ID.
  Future<ApiResponse<T>> getUserSubscriptionById<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('orders.getUserSubscriptionById', params);

  /// Retrieves a list of the user's active subscriptions.
  Future<ApiResponse<T>> getUserSubscriptions<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getUserSubscriptions', params);

  /// Updates the subscription price for the user.
  Future<ApiResponse<T>> updateSubscription<T>(Map<String, Object> params) =>
      _api.request<T>('orders.updateSubscription', params);
}
