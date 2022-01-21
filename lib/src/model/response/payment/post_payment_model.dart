import 'dart:convert';

PostPaymentModel postPaymentModelFromJson(String str) => PostPaymentModel.fromJson(json.decode(str));

/// Paycell Ödeme yaparken dönen response
/// Yeni kartla ve kayıtlı kartla
class PostPaymentModel {
  PostPaymentModel({
    this.status,
    this.transactionId,
    this.total,
    this.useThreeD,
    this.threeDSessionId,
    this.base64Content,
  });

  String? status;
  String? transactionId;
  double? total;
  bool? useThreeD;
  String? threeDSessionId;
  String? base64Content;

  factory PostPaymentModel.fromJson(Map<String, dynamic> json) => PostPaymentModel(
    status: json["status"],
    transactionId: json["transactionId"],
    total: json["total"].toDouble(),
    useThreeD: json["useThreeD"],
    threeDSessionId: json["threeDSessionId"],
    base64Content: json["base64Content"],
  );
}
