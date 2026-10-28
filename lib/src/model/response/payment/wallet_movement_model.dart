import 'package:background_json_parser/background_json_parser.dart';

class WalletMovementModel extends IBaseModel<WalletMovementModel> {
  int? id;
  String? transactionId;
  String? sourceId;
  double? amount;
  String? currencyId;
  DateTime? createdAt;
  String? sourceTypeId;
  String? paymentTagsId;
  WalletMovementPaymentTagsModel? paymentTags;
  String? paymentCodeId;
  String? paymentMethod;
  dynamic trackId;
  String? statusId;
  DateTime? updatedAt;
  String? walletId;
  String? errorCode;

  WalletMovementModel({
    this.id,
    this.transactionId,
    this.sourceId,
    this.amount,
    this.currencyId,
    this.createdAt,
    this.sourceTypeId,
    this.paymentTagsId,
    this.paymentTags,
    this.paymentCodeId,
    this.paymentMethod,
    this.trackId,
    this.statusId,
    this.updatedAt,
    this.walletId,
    this.errorCode,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletMovementModel(
    id: json["id"],
    transactionId: json["transaction_id"],
    sourceId: json["source_id"],
    amount: json["amount"]?.toDouble(),
    currencyId: json["currency_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    sourceTypeId: json["source_type_id"],
    paymentTagsId: json["payment_tags_id"],
    paymentTags: json["payment_tags"] == null ? null : WalletMovementPaymentTagsModel.fromJson(json["payment_tags"]),
    paymentCodeId: json["payment_code_id"],
    paymentMethod: json["payment_method"],
    trackId: json["track_id"],
    statusId: json["status_id"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    walletId: json["wallet_id"],
    errorCode: json["error_code"],
  );

  @override
  Map<String, dynamic> toJson() => {
    "id": id,
    "transaction_id": transactionId,
    "source_id": sourceId,
    "amount": amount,
    "currency_id": currencyId,
    "created_at": createdAt?.toIso8601String(),
    "source_type_id": sourceTypeId,
    "payment_tags_id": paymentTagsId,
    "payment_tags": paymentTags?.toJson(),
    "payment_code_id": paymentCodeId,
    "payment_method": paymentMethod,
    "track_id": trackId,
    "status_id": statusId,
    "updated_at": updatedAt?.toIso8601String(),
    "wallet_id": walletId,
    "error_code": errorCode,
  };
}

class WalletMovementPaymentTagsModel {
  String? code;
  String? name;

  WalletMovementPaymentTagsModel({this.code, this.name});

  factory WalletMovementPaymentTagsModel.fromJson(Map<String, dynamic> json) => WalletMovementPaymentTagsModel(code: json["code"], name: json["name"]);

  Map<String, dynamic> toJson() => {"code": code, "name": name};
}

