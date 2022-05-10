
/// Iyzico PostPayment te dönen response
class PaymentModel {
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

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
        complete: json["complete"],
        paymentId: json["paymentId"],
        total: json["total"].toDouble(),
        status: json["status"],
      );
}
