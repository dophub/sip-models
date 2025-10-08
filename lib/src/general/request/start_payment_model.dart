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
  String? reasonCode;
  List<StartPaymentItemModel>? items;
  bool? use3D;
  StartPaymentCardDetailModel? cardDetails;
  String? cardId;

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
    this.reasonCode,
    this.use3D,
    this.cardDetails,
    this.cardId,
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
        reasonCode: json["reason_code"],
        items: json["items"] == null
            ? []
            : List<StartPaymentItemModel>.from(json["items"]!.map((x) => StartPaymentItemModel.fromJson(x))),
        use3D: json["use_3d"],
        cardDetails: json["card_details"] == null ? null : StartPaymentCardDetailModel.fromJson(json["card_details"]),
        cardId: json["card_id"],
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
        "reason_code": reasonCode,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "use_3d": use3D,
        "card_details": cardDetails?.toJson(),
        "card_id": cardId,
      };
}

class StartPaymentCardDetailModel {
  String? nameSurname;
  String? month;
  String? year;
  String? cvv;
  String? cardNumber;
  bool? cardSave;

  StartPaymentCardDetailModel({
    this.nameSurname,
    this.month,
    this.year,
    this.cvv,
    this.cardNumber,
    this.cardSave,
  });

  factory StartPaymentCardDetailModel.fromJson(Map<String, dynamic> json) => StartPaymentCardDetailModel(
        nameSurname: json["name_surname"],
        month: json["month"],
        year: json["year"],
        cvv: json["cvv"],
        cardNumber: json["card_number"],
        cardSave: json["card_save"],
      );

  Map<String, dynamic> toJson() => {
        "name_surname": nameSurname,
        "month": month,
        "year": year,
        "cvv": cvv,
        "card_number": cardNumber,
        "card_save": cardSave,
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
