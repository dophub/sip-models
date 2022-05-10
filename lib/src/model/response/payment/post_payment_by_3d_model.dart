import 'package:background_json_parser/json_parser.dart';

/// iyzico 3D Ödeme yaptıktan sonrta dönen respobse
class PostPaymentBy3DIyzicoModel extends IBaseModel<PostPaymentBy3DIyzicoModel> {
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

  @override
  fromJson(Map<String, dynamic> json) => PostPaymentBy3DIyzicoModel(
        htmlUrl: json["htmlUrl"],
        base64Content: json["base64Content"],
        paymentId: json["paymentId"],
        total: json["total"].toDouble(),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
