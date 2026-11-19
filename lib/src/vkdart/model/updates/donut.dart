import 'package:vkdart/model.dart';

/// Модель обновления `donut`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#Платные%20подписки%20VK%20Donut
class VkDartDonutUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartDonutUpdate(this.update);

  /// Проверяет, создана ли подписка.
  bool get isCreate => update.type == UpdateType.donut_subscription_create;

  /// Проверяет, продлена ли подписка.
  bool get isProlonged =>
      update.type == UpdateType.donut_subscription_prolonged;

  /// Проверяет, истекла ли подписка.
  bool get isExpired => update.type == UpdateType.donut_subscription_expired;

  /// Проверяет, отменена ли подписка.
  bool get isCancelled =>
      update.type == UpdateType.donut_subscription_cancelled;

  /// Проверяет, изменилась ли стоимость подписки.
  bool get isPriceChanged =>
      update.type == UpdateType.donut_subscription_price_changed;

  /// Проверяет, выполнен ли вывод средств.
  bool get isMoneyWithdraw => update.type == UpdateType.donut_money_withdraw;

  /// Проверяет наличие ошибки вывода средств.
  bool get isMoneyWithdrawError =>
      update.type == UpdateType.donut_money_withdraw_error;

  /// ID пользователя.
  int? get userId => update.object['user_id'];

  /// Сумма в рублях.
  int? get amount => update.object['amount'];

  /// Сумма без комиссии (в рублях).
  double? get amountWithoutFee => update.object['amount_without_fee'];

  /// Старая цена в рублях.
  int? get amountOld => update.object['amount_old'];

  /// Новая цена в рублях.
  int? get amountNew => update.object['amount_new'];

  /// Сумма доплаты в рублях.
  double? get amountDiff => update.object['amount_diff'];

  /// Сумма доплаты без комиссии (в рублях).
  double? get amountDiffWithoutFee => update.object['amount_diff_without_fee'];

  /// Причина ошибки.
  String? get reason => update.object['reason'];
}
