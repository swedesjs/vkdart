import 'package:vkdart/vkontakte.dart';

/// Market Order model.
///
/// See https://dev.vk.com/ru/reference/objects/market-order
class MarketOrderModel {
  /// Payload.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  MarketOrderModel(this.payload);

  /// The order ID.
  int? get id => payload['id'];

  /// The community ID.
  int? get groupId => payload['group_id'];

  /// The buyer's ID.
  int? get userId => payload['user_id'];

  /// The date the order was created in Unixtime format.
  int? get createdAt => payload['date'];

  /// ID of the option group.
  int? get variantsGroupingId => payload['variants_grouping_id'];

  /// Whether the option is the main one.
  bool? get isMainVariant => payload['is_main_variant'];

  /// Variants.
  List<MarketOrderPropertyValuesModel>? get propertyValues =>
      (payload['property_values'] as List?)
          ?.map((e) => MarketOrderPropertyValuesModel(
              (e as Map).cast<String, dynamic>()))
          .toList();

  /// The quantity of the product in the cart.
  int? get cartQuantity => payload['cart_quantity'];

  /// Order status.
  int? get status => payload['status'];

  /// The number of items in the order.
  int? get itemsCount => payload['items_count'];

  /// The total cost of the order.
  Map<String, dynamic>? get totalPrice => payload['total_price'];

  /// the cost in hundredths of a unit of currency.
  int? get totalPriceAmount => totalPrice?['amount'];

  /// currency identifier
  int? get totalPriceCurrencyId => totalPrice?['currency']?['id'];

  /// currency designation;
  String? get totalPriceCurrencyName => totalPrice?['currency']?['name'];

  /// a string representation of the order value.
  String? get totalPriceText => totalPrice?['text'];

  /// The order number, consisting of the customer ID and the order ID.
  int? get displayOrderId => payload['display_order_id'];

  /// Comment on the order.
  String? get comment => payload['comment'];

  /// See https://dev.vk.com/ru/reference/objects/market-order#preview_order_items
  List<MarketAttachmentModel>? get previewOrderItems =>
      (payload['preview_order_items'] as List)
          .map((e) => MarketAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Delivery information.
  ///
  /// See https://dev.vk.com/ru/reference/objects/market-order#delivery
  Map<String, dynamic>? get delivery => payload['delivery'];

  /// Delivery address.
  String? get deliveryAddress => delivery?['address'];

  /// Delivery type.
  String? get deliveryType => delivery?['type'];

  /// the track number for tracking the order.
  String? get deliveryTrackNumber => delivery?['track_number'];

  /// a link to track the order by track number.
  String? get deliveryTrackLink => delivery?['track_link'];

  /// information about the pick-up point.
  Object? get deliveryPoint => delivery?['delivery_point'];

  /// Information about the buyer.
  ///
  /// See https://dev.vk.com/ru/reference/objects/market-order#recipient
  Map<String, dynamic>? get recipient => payload['recipient'];

  /// the buyer's name.
  String? get recipientName => recipient?['name'];

  /// The buyer's number.
  String? get recipientPhone => recipient?['phone'];

  /// String representation of customer information.
  String? get recipientDisplayText => recipient?['display_text'];
}

/// Market Order Property Values model.
///
/// See https://dev.vk.com/ru/reference/objects/market-order#property_values
class MarketOrderPropertyValuesModel {
  // ignore: public_member_api_docs
  MarketOrderPropertyValuesModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// Id variant.
  int get variantId => payload['variant_id'];

  /// Variant name.
  String get variantName => payload['variant_name'];

  /// Property name.
  String get propertyName => payload['property_name'];
}
