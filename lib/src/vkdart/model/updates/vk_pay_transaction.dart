import 'package:vkdart/model.dart';

/// Модель обновления `vk pay transaction`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#vkpay_transaction
class VkDartPayTransactionUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartPayTransactionUpdate(this.update);

  /// ID пользователя, отправившего перевод.
  int get fromId => update.object['from_id'];

  /// Сумма перевода в тысячных долях рубля.
  int get amount => update.object['amount'];

  /// Комментарий к переводу.
  String? get description => update.object['description'];

  /// Время отправки перевода в формате Unix.
  int get transferAt => update.object['date'];
}
