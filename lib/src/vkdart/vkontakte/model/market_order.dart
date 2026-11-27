import 'package:vkdart/vkontakte.dart';

/// Модель заказа товара.
///
/// См. https://dev.vk.com/ru/reference/objects/market-order
class MarketOrderModel {
  /// Данные.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  MarketOrderModel(this.payload);

  /// ID заказа.
  int? get id => payload['id'];

  /// ID сообщества.
  int? get groupId => payload['group_id'];

  /// ID покупателя.
  int? get userId => payload['user_id'];

  /// Дата создания заказа в формате Unix.
  int? get createdAt => payload['date'];

  /// ID группы свойств.
  int? get variantsGroupingId => payload['variants_grouping_id'];

  /// Является ли свойство основным.
  bool? get isMainVariant => payload['is_main_variant'];

  /// Варианты.
  List<MarketOrderPropertyValuesModel>? get propertyValues =>
      (payload['property_values'] as List?)
          ?.map((e) => MarketOrderPropertyValuesModel(
              (e as Map).cast<String, dynamic>()))
          .toList();

  /// Количество товара в корзине.
  int? get cartQuantity => payload['cart_quantity'];

  /// Статус заказа.
  int? get status => payload['status'];

  /// Количество товаров в заказе.
  int? get itemsCount => payload['items_count'];

  /// Общая стоимость заказа.
  Map<String, dynamic>? get totalPrice => payload['total_price'];

  /// стоимость в сотых долях денежной единицы.
  int? get totalPriceAmount => totalPrice?['amount'];

  /// ID валюты.
  int? get totalPriceCurrencyId => totalPrice?['currency']?['id'];

  /// Обозначение валюты;
  String? get totalPriceCurrencyName => totalPrice?['currency']?['name'];

  /// строковое представление стоимости заказа.
  String? get totalPriceText => totalPrice?['text'];

  /// Номер заказа, состоящий из ID покупателя и ID заказа.
  int? get displayOrderId => payload['display_order_id'];

  /// Комментарий к заказу.
  String? get comment => payload['comment'];

  /// См. https://dev.vk.com/ru/reference/objects/market-order#preview_order_items
  List<MarketAttachmentModel>? get previewOrderItems =>
      (payload['preview_order_items'] as List)
          .map((e) => MarketAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Информация о доставке.
  ///
  /// См. https://dev.vk.com/ru/reference/objects/market-order#delivery
  Map<String, dynamic>? get delivery => payload['delivery'];

  /// Адрес доставки.
  String? get deliveryAddress => delivery?['address'];

  /// Тип доставки.
  String? get deliveryType => delivery?['type'];

  /// номер отправления для отслеживания заказа.
  String? get deliveryTrackNumber => delivery?['track_number'];

  /// ссылка для отслеживания заказа по номеру отправления.
  String? get deliveryTrackLink => delivery?['track_link'];

  /// информация о пункте выдачи.
  Object? get deliveryPoint => delivery?['delivery_point'];

  /// Информация о покупателе.
  ///
  /// См. https://dev.vk.com/ru/reference/objects/market-order#recipient
  Map<String, dynamic>? get recipient => payload['recipient'];

  /// Имя покупателя.
  String? get recipientName => recipient?['name'];

  /// Номер покупателя.
  String? get recipientPhone => recipient?['phone'];

  /// Строковое представление данных покупателя.
  String? get recipientDisplayText => recipient?['display_text'];
}

/// Модель значений свойств заказа товара.
///
/// См. https://dev.vk.com/ru/reference/objects/market-order#property_values
class MarketOrderPropertyValuesModel {
  // ignore: public_member_api_docs
  MarketOrderPropertyValuesModel(this.payload);

  /// Данные.
  final Map<String, dynamic> payload;

  /// ID варианта.
  int get variantId => payload['variant_id'];

  /// Название варианта.
  String get variantName => payload['variant_name'];

  /// Название свойства.
  String get propertyName => payload['property_name'];
}
