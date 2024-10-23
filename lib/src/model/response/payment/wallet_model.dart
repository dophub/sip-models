import 'package:background_json_parser/background_json_parser.dart';

class WalletModel extends IBaseModel<WalletModel> {
  final String? id;
  final String? typeId;
  final String? number;
  final WalletCustomersModel? customers;
  final String? title;
  final WalletCurrencyModel? currency;
  final int? balance;
  final int? minimumBalance;
  final int? dailyAmountLimit;
  final int? weeklyAmountLimit;
  final int? monthlyAmountLimit;
  final int? dailyUsingLimit;
  final WalletCustomerGroupModel? customerGroup;
  final bool? isActive;
  final int? createdAt;
  final int? updatedAt;
  final int? expiredDate;

  WalletModel({
    this.id,
    this.typeId,
    this.number,
    this.customers,
    this.title,
    this.currency,
    this.balance,
    this.minimumBalance,
    this.dailyAmountLimit,
    this.weeklyAmountLimit,
    this.monthlyAmountLimit,
    this.dailyUsingLimit,
    this.customerGroup,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.expiredDate,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletModel(
        id: json["id"],
        typeId: json["type_id"],
        number: json["number"],
        customers: json["customers"] == null ? null : WalletCustomersModel.fromJson(json["customers"]),
        title: json["title"],
        currency: json["currency"] == null ? null : WalletCurrencyModel.fromJson(json["currency"]),
        balance: json["balance"],
        minimumBalance: json["minimum_balance"],
        dailyAmountLimit: json["daily_amount_limit"],
        weeklyAmountLimit: json["weekly_amount_limit"],
        monthlyAmountLimit: json["mountly_amount_limit"],
        dailyUsingLimit: json["daily_using_limit"],
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
        "title": title,
        "currency": currency?.toJson(),
        "balance": balance,
        "minimum_balance": minimumBalance,
        "daily_amount_limit": dailyAmountLimit,
        "weekly_amount_limit": weeklyAmountLimit,
        "mountly_amount_limit": monthlyAmountLimit,
        "daily_using_limit": dailyUsingLimit,
        "customer_group": customerGroup?.toJson(),
        "is_active": isActive,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "expired_date": expiredDate,
      };
}

class WalletCurrencyModel {
  final String? code;
  final String? name;
  final String? isoCode;

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
  final int? id;
  final String? title;
  final String? type;
  final List<WalletCustomerGroupMatchModel>? customerGroupMatch;

  WalletCustomerGroupModel({
    this.id,
    this.title,
    this.type,
    this.customerGroupMatch,
  });

  factory WalletCustomerGroupModel.fromJson(Map<String, dynamic> json) => WalletCustomerGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        customerGroupMatch: json["customer_group_match"] == null
            ? []
            : List<WalletCustomerGroupMatchModel>.from(
                json["customer_group_match"]!.map((x) => WalletCustomerGroupMatchModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "customer_group_match":
            customerGroupMatch == null ? [] : List<dynamic>.from(customerGroupMatch!.map((x) => x.toJson())),
      };
}

class WalletCustomerGroupMatchModel {
  final int? id;
  final dynamic dealer;
  final WalletMainBrandModel? mainBrand;

  WalletCustomerGroupMatchModel({
    this.id,
    this.dealer,
    this.mainBrand,
  });

  factory WalletCustomerGroupMatchModel.fromJson(Map<String, dynamic> json) => WalletCustomerGroupMatchModel(
        id: json["id"],
        dealer: json["dealer"],
        mainBrand: json["main_brand"] == null ? null : WalletMainBrandModel.fromJson(json["main_brand"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer": dealer,
        "main_brand": mainBrand?.toJson(),
      };
}

class WalletMainBrandModel {
  final int? id;
  final String? brandName;

  WalletMainBrandModel({
    this.id,
    this.brandName,
  });

  factory WalletMainBrandModel.fromJson(Map<String, dynamic> json) => WalletMainBrandModel(
        id: json["id"],
        brandName: json["brand_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_name": brandName,
      };
}

class WalletCustomersModel {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? mobilePhone;

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
