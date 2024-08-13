import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class SuggestedProductModel extends IBaseModel<SuggestedProductModel> implements IMultiItemPickerWidgetModel {
  int? id;
  String? name;
  String? productName;
  String? categoryName;
  int? listOrder;
  String? itemTypeId;
  double? price;

  SuggestedProductModel({
    this.id,
    this.name,
    this.productName,
    this.categoryName,
    this.listOrder,
    this.itemTypeId,
    this.price,
  });

  @override
  fromJson(Map<String, dynamic> json) => SuggestedProductModel(
        id: json["id"],
        name: json["name"],
        productName: json["product_name"],
        categoryName: json["category_name"],
        listOrder: json["list_order"],
        itemTypeId: json["item_type_id"],
        price: json["price"]?.toDouble(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "item_id": id,
        "name": name,
        "product_name": productName,
        "category_name": categoryName,
        "list_order": listOrder,
        "item_type_id": itemTypeId,
        "price": price,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? productName ?? categoryName ?? '';
}
