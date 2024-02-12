import 'package:vkdart/model.dart';

/// The model `vk pay transaction` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#vkpay_transaction
class VkDartPayTransactionUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartPayTransactionUpdate(this.update);

  /// the ID of the user who sent the transfer.
  int get fromId => update.object['from_id'];

  /// the amount of the transfer in thousandths of a ruble.
  int get amount => update.object['amount'];

  /// comment on the translation.
  String? get description => update.object['description'];

  /// the time when the transfer was sent to Unixtime.
  int get transferAt => update.object['date'];
}
