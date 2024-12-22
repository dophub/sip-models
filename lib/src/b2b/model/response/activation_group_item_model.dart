import 'package:background_json_parser/background_json_parser.dart';

class ActivationGroupItemModel extends IBaseModel<ActivationGroupItemModel> {
  int? id;
  String? itemTypeId;
  String? name;
  int? productId;
  int? promotionMenuId;
  int? activationGroupId;
  ActivationGroupItemsModel? item;

  ActivationGroupItemModel({
    this.id,
    this.itemTypeId,
    this.name,
    this.productId,
    this.promotionMenuId,
    this.activationGroupId,
    this.item,
  });

  @override
  fromJson(Map<String, dynamic> json) => ActivationGroupItemModel(
        id: json["id"],
        itemTypeId: json["item_type_id"],
        name: json["name"],
        productId: json["product_id"],
        promotionMenuId: json["promotion_menu_id"],
        activationGroupId: json["activation_group_id"],
        item: json["item"] == null ? null : ActivationGroupItemsModel.fromJson(json["item"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "item_type_id": itemTypeId,
        "product_id": productId,
        "name": name,
        "promotion_menu_id": promotionMenuId,
        "activation_group_id": activationGroupId,
        "item": item?.toJson(),
      };
}

class ActivationGroupItemsModel {
  String? imageUrl;
  String? itemCode;
  String? itemName;
  String? imageSizeId;

  ActivationGroupItemsModel({
    this.imageUrl,
    this.itemCode,
    this.itemName,
    this.imageSizeId,
  });

  factory ActivationGroupItemsModel.fromJson(Map<String, dynamic> json) => ActivationGroupItemsModel(
        imageUrl: json["image_url"],
        itemCode: json["item_code"],
        itemName: json["item_name"],
        imageSizeId: json["image_size_id"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "item_code": itemCode,
        "item_name": itemName,
        "image_size_id": imageSizeId,
      };
}
