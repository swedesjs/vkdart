import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// The model `market order` update.
///
/// See:
/// - https://dev.vk.com/ru/reference/objects/market-order
/// - https://dev.vk.com/ru/reference/objects/market-order_edit
class VkDartMarketOrderUpdate extends MarketOrderModel {
  // ignore: public_member_api_docs
  VkDartMarketOrderUpdate(VkDartUpdate update) : super(update.object);
}
