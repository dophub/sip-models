import 'package:background_json_parser/background_json_parser.dart';

class UpdateBranchProductActivationModel extends IBaseModel<UpdateBranchProductActivationModel> {
  int? dealerId;
  int? id; // Product ID
  bool? isActive;
  String? itemTypeId;

  UpdateBranchProductActivationModel({
    this.dealerId,
    this.id,
    this.isActive,
    this.itemTypeId,
  });

  @override
  fromJson(Map<String, dynamic> json) => UpdateBranchProductActivationModel(
        dealerId: json["dealer_id"],
        id: json["id"],
        isActive: json["is_active"],
        itemTypeId: json["item_type_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "id": id,
        "is_active": isActive,
        "item_type_id": itemTypeId,
      };
}
