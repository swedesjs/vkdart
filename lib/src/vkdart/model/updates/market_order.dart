import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель обновления `market order`.
///
/// См.:
/// - https://dev.vk.com/ru/api/community-events/json-schema#market_order_new
/// - https://dev.vk.com/ru/api/community-events/json-schema#market_order_edit
class VkDartMarketOrderUpdate extends MarketOrderModel {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMarketOrderUpdate(this.update) : super(update.object);

  /// Проверяет, создан ли заказ.
  bool get isNew => update.type == UpdateType.market_order_new;

  /// Проверяет, изменён ли заказ.
  bool get isEdit => update.type == UpdateType.market_order_edit;
}
