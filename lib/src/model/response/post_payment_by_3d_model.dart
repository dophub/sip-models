import 'dart:convert';

PostPaymentBy3DModel postPaymentBy3DModelFromJson(String str) =>
    PostPaymentBy3DModel.fromJson(json.decode(str));


class PostPaymentBy3DModel {
  PostPaymentBy3DModel({
    this.htmlUrl,
    this.base64Content,
    this.paymentId,
    this.total,
  });

  String? htmlUrl;
  String? base64Content;
  String? paymentId;
  double? total;

  factory PostPaymentBy3DModel.fromJson(Map<String, dynamic> json) =>
      PostPaymentBy3DModel(
        htmlUrl: json["htmlUrl"],
        base64Content: json["base64Content"],
        paymentId: json["paymentId"],
        total: json["total"].toDouble(),
      );

}
