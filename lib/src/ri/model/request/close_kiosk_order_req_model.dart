import 'package:background_json_parser/background_json_parser.dart';

class CloseKioskOrderReqModel extends IBaseModel<CloseKioskOrderReqModel> {
  CloseKioskOrderReqModel({
    this.paymentType,
    this.bankRefNo,
    this.provisionNo,
    this.rrn,
    this.amount,
    this.bin,
    this.cardNumber,
    this.deviceid,
    this.serviceId,
    this.status,
    this.message,
    this.dealerId,
  });

  String? paymentType;
  String? bankRefNo;
  String? provisionNo;
  String? rrn;
  int? amount;
  String? bin;
  String? cardNumber;
  String? deviceid;
  int? serviceId;
  String? status;
  String? message;
  int? dealerId;

  @override
  fromJson(Map<String, dynamic> json) => CloseKioskOrderReqModel(
        paymentType: json["payment_type"],
        bankRefNo: json["bank_ref_no"],
        provisionNo: json["provision_no"],
        rrn: json["rrn"],
        amount: json["amount"],
        bin: json["bin"],
        cardNumber: json["card_number"],
        deviceid: json["deviceid"],
        serviceId: json["service_id"],
        status: json["status"],
        message: json["message"],
        dealerId: json["dealer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "payment_type": paymentType,
        "bank_ref_no": bankRefNo,
        "provision_no": provisionNo,
        "rrn": rrn,
        "amount": amount,
        "bin": bin,
        "card_number": cardNumber,
        "deviceid": deviceid,
        "service_id": serviceId,
        "status": status,
        "message": message,
        "dealer_id": dealerId,
      };
}
