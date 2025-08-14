import 'package:background_json_parser/background_json_parser.dart';

class StartPaymentModel extends IBaseModel<StartPaymentModel> {
  String? paymentType;
  bool? isFullPayment;
  String? sourceType;
  String? sourceId;
  double? amount;
  String? walletId;
  String? content;
  String? serialNo;
  List<StartPaymentItemModel>? items;

  StartPaymentModel({
    this.paymentType,
    this.isFullPayment,
    this.sourceType,
    this.sourceId,
    this.amount,
    this.walletId,
    this.content,
    this.serialNo,
    this.items,
  });

  @override
  fromJson(Map<String, dynamic> json) => StartPaymentModel(
        paymentType: json["payment_type"],
        isFullPayment: json["is_full_payment"],
        sourceType: json["source_type"],
        sourceId: json["source_id"],
        amount: json["amount"]?.toDouble(),
        walletId: json["wallet_id"],
        content: json["content"],
        serialNo: json["serial_no"],
        items: json["items"] == null
            ? []
            : List<StartPaymentItemModel>.from(json["items"]!.map((x) => StartPaymentItemModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "payment_type": paymentType,
        "is_full_payment": isFullPayment,
        "source_type": sourceType,
        "source_id": sourceId,
        "amount": amount,
        "wallet_id": walletId,
        "content": content,
        "serial_no": serialNo,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class StartPaymentItemModel {
  int? id;
  int? count;

  StartPaymentItemModel({
    this.id,
    this.count,
  });

  factory StartPaymentItemModel.fromJson(Map<String, dynamic> json) => StartPaymentItemModel(
        id: json["id"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
      };
}
