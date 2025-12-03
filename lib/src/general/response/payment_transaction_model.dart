import 'package:background_json_parser/background_json_parser.dart';

class PaymentTransactionModel extends IBaseModel<PaymentTransactionModel> {
  int? id;
  double? amount;
  String? status;
  int? dealerId;
  String? paymentCodeId;
  String? message;
  PaymentTransactionPaymentInfoModel? paymentInfo;
  DateTime? createdAt;

  PaymentTransactionModel({
    this.id,
    this.amount,
    this.status,
    this.dealerId,
    this.paymentCodeId,
    this.message,
    this.paymentInfo,
    this.createdAt,
  });

  @override
  PaymentTransactionModel fromJson(Map<String, dynamic> json) => PaymentTransactionModel.fromJson(json);

  factory PaymentTransactionModel.fromJson(Map<String, dynamic> json) => PaymentTransactionModel(
        id: json["id"],
        amount: json["amount"]?.toDouble(),
        status: json["status"],
        dealerId: json["dealer_id"],
        paymentCodeId: json["payment_code_id"],
        message: json["message"],
        paymentInfo:
            json["payment_info"] == null ? null : PaymentTransactionPaymentInfoModel.fromJson(json["payment_info"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]).toLocal(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "amount": amount,
        "status": status,
        "dealer_id": dealerId,
        "payment_code_id": paymentCodeId,
        "message": message,
        "payment_info": paymentInfo?.toJson(),
        "created_at": createdAt?.toIso8601String(),
      };
}

class PaymentTransactionPaymentInfoModel {
  String? ip;
  List<PaymentTransactionItemModel>? items;
  int? amount;
  bool? use3D;
  String? sourceId;
  String? sourceType;
  String? paymentType;
  bool? isFullPayment;
  bool? marketplaceOrder;

  PaymentTransactionPaymentInfoModel({
    this.ip,
    this.items,
    this.amount,
    this.use3D,
    this.sourceId,
    this.sourceType,
    this.paymentType,
    this.isFullPayment,
    this.marketplaceOrder,
  });

  factory PaymentTransactionPaymentInfoModel.fromJson(Map<String, dynamic> json) => PaymentTransactionPaymentInfoModel(
        ip: json["ip"],
        items: json["items"] == null
            ? []
            : List<PaymentTransactionItemModel>.from(
                json["items"]!.map((x) => PaymentTransactionItemModel.fromJson(x))),
        amount: json["amount"],
        use3D: json["use_3d"],
        sourceId: json["source_id"],
        sourceType: json["source_type"],
        paymentType: json["payment_type"],
        isFullPayment: json["is_full_payment"],
        marketplaceOrder: json["marketplace_order"],
      );

  Map<String, dynamic> toJson() => {
        "ip": ip,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "amount": amount,
        "use_3d": use3D,
        "source_id": sourceId,
        "source_type": sourceType,
        "payment_type": paymentType,
        "is_full_payment": isFullPayment,
        "marketplace_order": marketplaceOrder,
      };
}

class PaymentTransactionItemModel {
  int? id;
  int? count;

  PaymentTransactionItemModel({
    this.id,
    this.count,
  });

  factory PaymentTransactionItemModel.fromJson(Map<String, dynamic> json) => PaymentTransactionItemModel(
        id: json["id"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
      };
}
