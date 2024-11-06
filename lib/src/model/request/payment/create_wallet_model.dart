import 'package:background_json_parser/background_json_parser.dart';

class CreateWalletModel extends IBaseModel<CreateWalletModel> {
  final int? customerGroupId;
  final String? type;
  final String? title;
  final double? minimumBalance;
  final double? dailyAmountLimit;
  final double? weeklyAmountLimit;
  final double? monthlyAmountLimit;
  final int? dailyUsingLimit;
  final int? customerId;
  final String? currencyId;
  final int? siparisimPlus;

  CreateWalletModel({
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
  fromJson(Map<String, dynamic> json) => CreateWalletModel(
        customerGroupId: json["customer_group_id"],
        type: json["type"],
        title: json["title"],
        minimumBalance: json["minimum_balance"]?.toDouble(),
        dailyAmountLimit: json["daily_amount_limit"]?.toDouble(),
        weeklyAmountLimit: json["weekly_amount_limit"]?.toDouble(),
        monthlyAmountLimit: json["mountly_amount_limiti"]?.toDouble(),
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
