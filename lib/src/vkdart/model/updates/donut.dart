import 'package:vkdart/model.dart';

/// The model `donut` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#Платные%20подписки%20VK%20Donut
class VkDartDonutUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartDonutUpdate(this.update);

  /// Check is subscription create
  bool get isCreate => update.type == UpdateType.donut_subscription_create;

  /// Check is subscription prolonged
  bool get isProlonged =>
      update.type == UpdateType.donut_subscription_prolonged;

  /// Check is subscription expired
  bool get isExpired => update.type == UpdateType.donut_subscription_expired;

  /// Check is subscription cancelled
  bool get isCancelled =>
      update.type == UpdateType.donut_subscription_cancelled;

  /// Check is subscription price changed
  bool get isPriceChanged =>
      update.type == UpdateType.donut_subscription_price_changed;

  /// Check is money withdraw
  bool get isMoneyWithdraw => update.type == UpdateType.donut_money_withdraw;

  /// Check is money withdraw error
  bool get isMoneyWithdrawError =>
      update.type == UpdateType.donut_money_withdraw_error;

  /// User ID.
  int? get userId => update.object['user_id'];

  /// the amount in rubles.
  int? get amount => update.object['amount'];

  /// the amount without commission (in rubles).
  double? get amountWithoutFee => update.object['amount_without_fee'];

  /// the old price is in rubles.
  int? get amountOld => update.object['amount_old'];

  /// the new price is in rubles.
  int? get amountNew => update.object['amount_new'];

  /// the amount of the surcharge in rubles.
  double? get amountDiff => update.object['amount_diff'];

  /// the amount of the surcharge without commission (in rubles).
  double? get amountDiffWithoutFee => update.object['amount_diff_without_fee'];

  /// the reason for the error.
  String? get reason => update.object['reason'];
}
