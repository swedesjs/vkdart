import 'package:vkdart/model.dart';

/// The model `donut` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#Платные%20подписки%20VK%20Donut
class VkDartDonutUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartDonutUpdate(this.update);

  @override
  final Update update;

  /// Check is subscription create
  bool get isCreate => updateType == UpdateType.donut_subscription_create;

  /// Check is subscription prolonged
  bool get isProlonged => updateType == UpdateType.donut_subscription_prolonged;

  /// Check is subscription expired
  bool get isExpired => updateType == UpdateType.donut_subscription_expired;

  /// Check is subscription cancelled
  bool get isCancelled => updateType == UpdateType.donut_subscription_cancelled;

  /// Check is subscription price changed
  bool get isPriceChanged =>
      updateType == UpdateType.donut_subscription_price_changed;

  /// Check is money withdraw
  bool get isMoneyWithdraw => updateType == UpdateType.donut_money_withdraw;

  /// Check is money withdraw error
  bool get isMoneyWithdrawError =>
      updateType == UpdateType.donut_money_withdraw_error;

  /// User ID.
  int? get userId => payload['user_id'];

  /// the amount in rubles.
  int? get amount => payload['amount'];

  /// the amount without commission (in rubles).
  double? get amountWithoutFee => payload['amount_without_fee'];

  /// the old price is in rubles.
  int? get amountOld => payload['amount_old'];

  /// the new price is in rubles.
  int? get amountNew => payload['amount_new'];

  /// the amount of the surcharge in rubles.
  double? get amountDiff => payload['amount_diff'];

  /// the amount of the surcharge without commission (in rubles).
  double? get amountDiffWithoutFee => payload['amount_diff_without_fee'];

  /// the reason for the error.
  String? get reason => payload['reason'];
}
