import 'package:background_json_parser/json_parser.dart';

/// Iyzico PostPayment te dönen response
class PaymentModel extends IBaseModel<PaymentModel> {
  PaymentModel({
    this.complete,
    this.paymentId,
    this.total,
    this.status,
  });

  bool? complete;
  String? paymentId;
  double? total;
  String? status;

  @override
  fromJson(Map<String, dynamic> json) => PaymentModel(
        complete: json["complete"],
        paymentId: json["paymentId"],
        total: json["total"].toDouble(),
        status: json["status"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
