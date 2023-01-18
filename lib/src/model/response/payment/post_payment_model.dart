import 'package:background_json_parser/background_json_parser.dart';

/// Paycell Ödeme yaparken dönen response
/// Yeni kartla ve kayıtlı kartla
class PostPaymentModel extends IBaseModel<PostPaymentModel> {
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

  @override
  fromJson(Map<String, dynamic> json) => PostPaymentModel(
        status: json["status"],
        transactionId: json["transactionId"],
        total: json["total"].toDouble(),
        useThreeD: json["useThreeD"],
        threeDSessionId: json["threeDSessionId"],
        base64Content: json["base64Content"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
