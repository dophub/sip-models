import 'package:background_json_parser/background_json_parser.dart';

class BranchProductActivationModel extends IBaseModel<BranchProductActivationModel> {
  int? id;
  String? dealerName;
  bool? status;
  String? productType;

  BranchProductActivationModel({
    this.id,
    this.dealerName,
    this.status,
    this.productType,
  });

  BranchProductActivationModel copyWith() => BranchProductActivationModel(
        id: id,
        dealerName: dealerName,
        status: status,
        productType: productType,
      );

  @override
  fromJson(Map<String, dynamic> json) => BranchProductActivationModel(
        id: json["id"],
        dealerName: json["dealer_name"],
        status: json["status"],
        productType: json["product_type"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_name": dealerName,
        "status": status,
        "product_type": productType,
      };
}
