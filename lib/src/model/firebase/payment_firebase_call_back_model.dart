class PaymentFirebaseCallBackModel {
  PaymentFirebaseCallBackModel({
    this.errorCode,
    this.errorMessage,
    this.orderId,
    this.status,
    this.token,
    this.total,
  });

  String? errorCode;
  String? errorMessage;
  int? orderId;
  String? status;
  String? token;
  double? total;

  factory PaymentFirebaseCallBackModel.fromJson(Map<dynamic, dynamic> json) =>
      PaymentFirebaseCallBackModel(
        errorCode: json["error_code"].toString(),
        errorMessage: json["error_message"],
        orderId: json["order_id"],
        status: json["status"],
        token: json["token"],
        total: json["total"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "error_code": errorCode,
        "error_message": errorMessage,
        "order_id": orderId,
        "status": status,
        "token": token,
        "total": total,
      };
}
