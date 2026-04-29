import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';
import '../../../../ri_models.dart';

class WalletModel extends IBaseModel<WalletModel> implements IPaymentType, IMultiItemPickerWidgetModel {
  String? id;
  String? typeId;
  String? number;
  WalletCustomersModel? customers;
  int? paymentPercentage;

  WalletCurrencyModel? currency;
  double? balance;
  double? minimumBalance;
  double? dailyAmountLimit;
  double? weeklyAmountLimit;
  double? mountlyAmountLimit;
  double? dailyUsingLimit;
  WalletCustomerGroupModel? customerGroup;
  bool? isActive;
  int? createdAt;
  int? updatedAt;
  int? expiredDate;
  int? customerId;
  String? currencyId;
  late String? _title;
  String? paymentTypeCode;
  String? customerName;
  String? mobilePhone;

  WalletModel({
    this.id,
    this.typeId,
    this.number,
    this.customers,
    this.paymentPercentage,
    this.currency,
    this.balance,
    this.minimumBalance,
    this.dailyAmountLimit,
    this.weeklyAmountLimit,
    this.mountlyAmountLimit,
    this.dailyUsingLimit,
    this.customerGroup,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.expiredDate,
    String? title,
    this.paymentTypeCode,
    this.customerName,
    this.mobilePhone,
    this.customerId,
    this.currencyId,
  }) {
    _title = title;
  }

  @override
  fromJson(Map<String, dynamic> json) => WalletModel(
        id: json["id"],
        typeId: json["type_id"],
        number: json["number"],
        customers: json["customers"] == null ? null : WalletCustomersModel.fromJson(json["customers"]),
        paymentPercentage: json["payment_percentage"],
        title: json["title"],
        currency: json["currency"] == null ? null : WalletCurrencyModel.fromJson(json["currency"]),
        balance: json["balance"]?.toDouble(),
        minimumBalance: json["minimum_balance"]?.toDouble(),
        dailyAmountLimit: json["daily_amount_limit"]?.toDouble(),
        weeklyAmountLimit: json["weekly_amount_limit"]?.toDouble(),
        mountlyAmountLimit: json["mountly_amount_limit"]?.toDouble(),
        dailyUsingLimit: json["daily_using_limit"]?.toDouble(),
        customerGroup:
            json["customer_group"] == null ? null : WalletCustomerGroupModel.fromJson(json["customer_group"]),
        isActive: json["is_active"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        expiredDate: json["expired_date"],
        customerId: json["customer_id"],
        currencyId: json["currency_id"],
        paymentTypeCode: json["payment_type_code"],
        customerName: json["customer_name"],
        mobilePhone: json["mobile_phone"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "type_id": typeId,
        "number": number,
        "customers": customers?.toJson(),
        "payment_percentage": paymentPercentage,
        "title": _title,
        "currency": currency?.toJson(),
        "balance": balance,
        "minimum_balance": minimumBalance,
        "daily_amount_limit": dailyAmountLimit,
        "weekly_amount_limit": weeklyAmountLimit,
        "mountly_amount_limit": mountlyAmountLimit,
        "daily_using_limit": dailyUsingLimit,
        "customer_group": customerGroup?.toJson(),
        "is_active": isActive,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "expired_date": expiredDate,
        "customer_id": customerId,
        "currency_id": currencyId,
        "payment_type_code": paymentTypeCode,
        "customer_name": customerName,
        "mobile_phone": mobilePhone,
      };

  @override
  String get getName => _title ?? '';

  @override
  String get title => _title ?? '';

  set title(String? title) {
    _title = title;
  }

  @override
  bool selectedValue = false;

  @override
  bool? isDisable = false;

  @override
  String? get getPaymentType => paymentTypeCode;
}

class WalletCurrencyModel {
  String? code;
  String? name;
  String? isoCode;

  WalletCurrencyModel({
    this.code,
    this.name,
    this.isoCode,
  });

  factory WalletCurrencyModel.fromJson(Map<String, dynamic> json) => WalletCurrencyModel(
        code: json["code"],
        name: json["name"],
        isoCode: json["iso_code"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "iso_code": isoCode,
      };
}

class WalletCustomersModel {
  int? id;
  String? firstName;
  String? lastName;
  String? mobilePhone;

  WalletCustomersModel({
    this.id,
    this.firstName,
    this.lastName,
    this.mobilePhone,
  });

  factory WalletCustomersModel.fromJson(Map<String, dynamic> json) => WalletCustomersModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        mobilePhone: json["mobile_phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "mobile_phone": mobilePhone,
      };
}

class WalletCustomerGroupModel {
  int? id;
  String? title;
  String? type;
  WalletCustomerGroupValidRulesModel? validRules;

  WalletCustomerGroupModel({
    this.id,
    this.title,
    this.type,
    this.validRules,
  });

  factory WalletCustomerGroupModel.fromJson(Map<String, dynamic> json) => WalletCustomerGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        validRules:
            json["valid_rules"] == null ? null : WalletCustomerGroupValidRulesModel.fromJson(json["valid_rules"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "valid_rules": validRules?.toJson(),
      };
}

class WalletCustomerGroupValidRulesModel {
  bool? isActive;
  List<String>? paymentTypes;
  double? maxReward;
  bool? isMinPackageAmountStrict;
  String? ruleName;
  String? ruleTypeId;
  double? rewardAmount;
  List<String>? orderPoints;
  bool? allowWithCampaign;

  WalletCustomerGroupValidRulesModel({
    this.isActive,
    this.paymentTypes,
    this.maxReward,
    this.isMinPackageAmountStrict,
    this.ruleName,
    this.ruleTypeId,
    this.rewardAmount,
    this.orderPoints,
    this.allowWithCampaign,
  });

  factory WalletCustomerGroupValidRulesModel.fromJson(Map<String, dynamic> json) => WalletCustomerGroupValidRulesModel(
        isActive: json["is_active"],
        paymentTypes: json["payment_types"] == null ? [] : List<String>.from(json["payment_types"]!.map((x) => x)),
        maxReward: json["max_reward"]?.toDouble(),
        isMinPackageAmountStrict: json["is_min_package_amount_strict"],
        ruleName: json["rule_name"],
        ruleTypeId: json["rule_type_id"],
        rewardAmount: json["reward_amount"]?.toDouble(),
        orderPoints: json["order_points"] == null ? [] : List<String>.from(json["order_points"]!.map((x) => x)),
        allowWithCampaign: json["allow_with_campaign"],
      );

  Map<String, dynamic> toJson() => {
        "is_active": isActive,
        "payment_types": paymentTypes == null ? [] : List<dynamic>.from(paymentTypes!.map((x) => x)),
        "max_reward": maxReward,
        "is_min_package_amount_strict": isMinPackageAmountStrict,
        "rule_name": ruleName,
        "rule_type_id": ruleTypeId,
        "reward_amount": rewardAmount,
        "order_points": orderPoints == null ? [] : List<dynamic>.from(orderPoints!.map((x) => x)),
        "allow_with_campaign": allowWithCampaign,
      };
}
