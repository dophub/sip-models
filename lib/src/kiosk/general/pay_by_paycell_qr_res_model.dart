import 'package:background_json_parser/background_json_parser.dart';

class PayByPaycellQrResModel extends IBaseModel<PayByPaycellQrResModel> {
  bool? status;
  String? qrCode;
  String? paymentTypeCode;
  double? totalAmount;

  PayByPaycellQrResModel({
    this.status,
    this.qrCode,
    this.paymentTypeCode,
    this.totalAmount,
  });

  @override
  fromJson(Map<String, dynamic> json) => PayByPaycellQrResModel(
        status: json["status"],
        qrCode: json["qr_code"],
        paymentTypeCode: json["payment_type_code"],
        totalAmount: json["total_amount"].toDouble(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "status": status,
        "qr_code": qrCode,
        "payment_type_code": paymentTypeCode,
        "total_amount": totalAmount,
      };
}
