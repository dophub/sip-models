/// iyzico 3D Ödeme yaptıktan sonrta dönen respobse
class PostPaymentBy3DIyzicoModel {
  PostPaymentBy3DIyzicoModel({
    this.htmlUrl,
    this.base64Content,
    this.paymentId,
    this.total,
  });

  String? htmlUrl;
  String? base64Content;
  String? paymentId;
  double? total;

  factory PostPaymentBy3DIyzicoModel.fromJson(Map<String, dynamic> json) =>
      PostPaymentBy3DIyzicoModel(
        htmlUrl: json["htmlUrl"],
        base64Content: json["base64Content"],
        paymentId: json["paymentId"],
        total: json["total"].toDouble(),
      );
}
