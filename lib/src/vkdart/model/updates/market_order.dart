import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// The model `market order` update.
///
/// See:
/// - https://dev.vk.com/ru/reference/objects/market-order
/// - https://dev.vk.com/ru/reference/objects/market-order_edit
class VkDartMarketOrderUpdate extends MarketOrderModel with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMarketOrderUpdate(this.update) : super(update.object);
  @override
  final Update update;
}
