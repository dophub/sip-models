import 'package:background_json_parser/background_json_parser.dart';

class WalletMovementModel extends IBaseModel<WalletMovementModel> {
  final int? customerGroupId;
  final String? type;
  final String? title;
  final int? minimumBalance;
  final int? dailyAmountLimit;
  final int? weeklyAmountLimit;
  final int? monthlyAmountLimit;
  final int? dailyUsingLimit;
  final String? customerId;
  final int? currencyId;
  final int? siparisimPlus;

  WalletMovementModel({
    this.customerGroupId,
    this.type,
    this.title,
    this.minimumBalance,
    this.dailyAmountLimit,
    this.weeklyAmountLimit,
    this.monthlyAmountLimit,
    this.dailyUsingLimit,
    this.customerId,
    this.currencyId,
    this.siparisimPlus,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletMovementModel(
        customerGroupId: json["customer_group_id"],
        type: json["type"],
        title: json["title"],
        minimumBalance: json["minimum_balance"],
        dailyAmountLimit: json["daily_amount_limit"],
        weeklyAmountLimit: json["weekly_amount_limit"],
        monthlyAmountLimit: json["mountly_amount_limiti"],
        dailyUsingLimit: json["daily_using_limit"],
        customerId: json["customer_id"],
        currencyId: json["currency_id"],
        siparisimPlus: json["siparisim_plus"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "customer_group_id": customerGroupId,
        "type": type,
        "title": title,
        "minimum_balance": minimumBalance,
        "daily_amount_limit": dailyAmountLimit,
        "weekly_amount_limit": weeklyAmountLimit,
        "mountly_amount_limiti": monthlyAmountLimit,
        "daily_using_limit": dailyUsingLimit,
        "customer_id": customerId,
        "currency_id": currencyId,
        "siparisim_plus": siparisimPlus,
      };
}
