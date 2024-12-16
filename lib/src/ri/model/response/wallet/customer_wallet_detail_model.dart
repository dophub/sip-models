import 'package:background_json_parser/background_json_parser.dart';

import '../../../../../ri_models.dart';

class CustomerWalletDetailModel implements IMultiItemPickerWidgetModel {
  String? id;
  String? customerName;
  String? mobilePhone;
  int? customerId;
  String? number;
  String? typeId;
  double? balance;
  String? currencyId;
  int? expiredDate;
  bool? isActive;
  CustomerWalletDetailCustomerGroupModel? customerGroup;
  List<CustomerWalletDetailModelTransactionModel>? transactions;
  List<CustomerWalletDetailWalletAddressMatchModel>? walletAddressMatch;
  String? _title;

  CustomerWalletDetailModel({
    this.id,
    this.customerName,
    this.mobilePhone,
    this.customerId,
    this.number,
    String? title,
    this.typeId,
    this.balance,
    this.currencyId,
    this.expiredDate,
    this.isActive,
    this.customerGroup,
    this.transactions,
    this.walletAddressMatch,
  }) {
    _title = title;
  }

  fromJson(Map<String, dynamic> json) => CustomerWalletDetailModel(
        id: json["id"],
        customerName: json["customer_name"],
        mobilePhone: json["mobile_phone"],
        customerId: json["customer_id"],
        number: json["number"],
        title: json["title"],
        typeId: json["type_id"],
        balance: json["balance"]?.toDouble(),
        currencyId: json["currency_id"],
        expiredDate: json["expired_date"],
        isActive: json["is_active"],
        customerGroup: json["customer_group"] == null
            ? null
            : CustomerWalletDetailCustomerGroupModel.fromJson(json["customer_group"]),
        transactions: json["transactions"] == null
            ? []
            : List<CustomerWalletDetailModelTransactionModel>.from(
                json["transactions"]!.map((x) => CustomerWalletDetailModelTransactionModel.fromJson(x))),
        walletAddressMatch: json["wallet_address_match"] == null
            ? []
            : List<CustomerWalletDetailWalletAddressMatchModel>.from(
                json["wallet_address_match"]!.map((x) => CustomerWalletDetailWalletAddressMatchModel().fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_name": customerName,
        "mobile_phone": mobilePhone,
        "customer_id": customerId,
        "number": number,
        "title": _title,
        "type_id": typeId,
        "balance": balance,
        "currency_id": currencyId,
        "expired_date": expiredDate,
        "is_active": isActive,
        "customer_group": customerGroup?.toJson(),
        "transactions": transactions == null ? [] : List<dynamic>.from(transactions!.map((x) => x.toJson())),
        "wallet_address_match":
            walletAddressMatch == null ? [] : List<dynamic>.from(walletAddressMatch!.map((x) => x.toJson())),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => _title ?? '';
}

class CustomerWalletDetailCustomerGroupModel {
  int? id;
  String? title;
  String? type;

  CustomerWalletDetailCustomerGroupModel({
    this.id,
    this.title,
    this.type,
  });

  factory CustomerWalletDetailCustomerGroupModel.fromJson(Map<String, dynamic> json) =>
      CustomerWalletDetailCustomerGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
      };
}

class CustomerWalletDetailModelTransactionModel {
  int? id;
  String? transactionId;
  double? amount;
  String? currency;
  DateTime? createdAt;
  String? notes;
  String? paymentTags;
  String? type;

  CustomerWalletDetailModelTransactionModel({
    this.id,
    this.transactionId,
    this.amount,
    this.currency,
    this.createdAt,
    this.notes,
    this.paymentTags,
    this.type,
  });

  factory CustomerWalletDetailModelTransactionModel.fromJson(Map<String, dynamic> json) =>
      CustomerWalletDetailModelTransactionModel(
        id: json["id"],
        transactionId: json["transaction_id"],
        amount: json["amount"]?.toDouble(),
        currency: json["currency"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        notes: json["notes"],
        paymentTags: json["payment_tags"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_id": transactionId,
        "amount": amount,
        "currency": currency,
        "created_at": createdAt?.toIso8601String(),
        "notes": notes,
        "payment_tags": paymentTags,
        "type": type,
      };
}

class CustomerWalletDetailWalletAddressMatchModel extends IBaseModel<CustomerWalletDetailWalletAddressMatchModel> {
  int? id;
  String? walletId;
  int? addressId;
  String? addressName;
  String? customerId;

  CustomerWalletDetailWalletAddressMatchModel({
    this.id,
    this.walletId,
    this.addressId,
    this.addressName,
    this.customerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => CustomerWalletDetailWalletAddressMatchModel(
        id: json["id"],
        walletId: json["wallet_id"],
        addressId: json["address_id"],
        addressName: json["address_name"],
        customerId: json["customer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "wallet_id": walletId,
        "address_id": addressId,
        "address_name": addressName,
        "customer_id": customerId,
      };
}
