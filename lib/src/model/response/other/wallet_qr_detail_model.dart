import 'package:background_json_parser/background_json_parser.dart';

class WalletQrDetailModel extends IBaseModel<WalletQrDetailModel> {
  String? id;
  String? code;
  double? amount;
  DateTime? createDate;
  String? updateDate;
  String? phoneNumber;
  int? mainBrandId;
  bool? isActive;
  int? transactionCount;

  WalletQrDetailModel({
    this.id,
    this.code,
    this.amount,
    this.createDate,
    this.updateDate,
    this.phoneNumber,
    this.mainBrandId,
    this.isActive,
    this.transactionCount,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletQrDetailModel(
        id: json["id"],
        code: json["code"],
        amount: json["amount"]?.toDouble() ?? 0.0,
        createDate: json["create_date"] == null ? null : DateTime.parse(json["create_date"]),
        updateDate: json["update_date"],
        phoneNumber: json["phone_number"],
        mainBrandId: json["main_brand_id"],
        isActive: json["is_active"],
        transactionCount: json["transaction_count"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "amount": amount,
        "create_date": createDate?.toIso8601String(),
        "update_date": updateDate,
        "phone_number": phoneNumber,
        "main_brand_id": mainBrandId,
        "is_active": isActive,
        "transaction_count": transactionCount,
      };
}
