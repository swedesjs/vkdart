import 'package:vkdart/model.dart';

/// The model `vk pay transaction` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#vkpay_transaction
class VkDartPayTransactionUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartPayTransactionUpdate(this.update);
  @override
  final Update update;

  /// the ID of the user who sent the transfer.
  int get fromId => updateObject['from_id'];

  /// the amount of the transfer in thousandths of a ruble.
  int get amount => updateObject['amount'];

  /// comment on the translation.
  String? get description => updateObject['description'];

  /// the time when the transfer was sent to Unixtime.
  int get transferAt => updateObject['date'];
}
