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
  late String? _title;

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

class WalletCustomerGroupModel {
  int? id;
  String? title;
  String? type;
  WalletValidRulesModel? validRules;
  List<WalletValidCompanyModel>? validCompanies;

  WalletCustomerGroupModel({
    this.id,
    this.title,
    this.type,
    this.validRules,
    this.validCompanies,
  });

  factory WalletCustomerGroupModel.fromJson(Map<String, dynamic> json) => WalletCustomerGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        validRules: json["valid_rules"] == null ? null : WalletValidRulesModel.fromJson(json["valid_rules"]),
        validCompanies: json["valid_companies"] == null
            ? []
            : List<WalletValidCompanyModel>.from(
                json["valid_companies"]!.map((x) => WalletValidCompanyModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "valid_rules": validRules?.toJson(),
        "valid_companies": validCompanies == null ? [] : List<dynamic>.from(validCompanies!.map((x) => x.toJson())),
      };
}

class WalletValidCompanyModel {
  int? id;
  String? title;
  List<WalletBrandModel>? brands;

  WalletValidCompanyModel({
    this.id,
    this.title,
    this.brands,
  });

  factory WalletValidCompanyModel.fromJson(Map<String, dynamic> json) => WalletValidCompanyModel(
        id: json["id"],
        title: json["title"],
        brands: json["brands"] == null
            ? []
            : List<WalletBrandModel>.from(json["brands"]!.map((x) => WalletBrandModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "brands": brands == null ? [] : List<dynamic>.from(brands!.map((x) => x.toJson())),
      };
}

class WalletBrandModel {
  int? id;
  String? title;
  List<WalletDealerModel>? dealers;

  WalletBrandModel({
    this.id,
    this.title,
    this.dealers,
  });

  factory WalletBrandModel.fromJson(Map<String, dynamic> json) => WalletBrandModel(
        id: json["id"],
        title: json["title"],
        dealers: json["dealers"] == null
            ? []
            : List<WalletDealerModel>.from(json["dealers"]!.map((x) => WalletDealerModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "dealers": dealers == null ? [] : List<dynamic>.from(dealers!.map((x) => x.toJson())),
      };
}

class WalletDealerModel {
  int? id;
  String? title;

  WalletDealerModel({
    this.id,
    this.title,
  });

  factory WalletDealerModel.fromJson(Map<String, dynamic> json) => WalletDealerModel(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

class WalletValidRulesModel {
  bool? isActive;
  int? startDate;
  int? endDate;
  List<String>? paymentTypes;
  bool? isMinPackageAmountStrict;
  String? ruleName;
  String? ruleTypeId;
  double? rewardAmount;

  WalletValidRulesModel({
    this.isActive,
    this.startDate,
    this.endDate,
    this.paymentTypes,
    this.isMinPackageAmountStrict,
    this.ruleName,
    this.ruleTypeId,
    this.rewardAmount,
  });

  factory WalletValidRulesModel.fromJson(Map<String, dynamic> json) => WalletValidRulesModel(
        isActive: json["is_active"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        paymentTypes: json["payment_types"] == null ? [] : List<String>.from(json["payment_types"]!.map((x) => x)),
        isMinPackageAmountStrict: json["is_min_package_amount_strict"],
        ruleName: json["rule_name"],
        ruleTypeId: json["rule_type_id"],
        rewardAmount: json["reward_amount"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "is_active": isActive,
        "start_date": startDate,
        "end_date": endDate,
        "payment_types": paymentTypes == null ? [] : List<dynamic>.from(paymentTypes!.map((x) => x)),
        "is_min_package_amount_strict": isMinPackageAmountStrict,
        "rule_name": ruleName,
        "rule_type_id": ruleTypeId,
        "reward_amount": rewardAmount,
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
