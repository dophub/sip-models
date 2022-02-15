import 'dart:convert';
import '../../../response.dart';
import 'menu_detail_model.dart';


class NearDealerDetailsModel  extends IBaseModel<NearDealerDetailsModel> {
  NearDealerDetailsModel({
    this.id,
    this.menuName,
    this.menuOrder,
    this.categories,
  });

  int? id;
  String? menuName;
  int? menuOrder;
  List<Category>? categories;

  @override
  fromJson(Map<dynamic, dynamic> json) => NearDealerDetailsModel(
    id: json["id"],
    menuName: json["menu_name"],
    menuOrder: json["menu_order"],
    categories: json["categories"] == null ? []: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
  );
}

class Category {
  Category({
    this.id,
    this.products,
    this.listOrder,
    this.categoryName,
    this.menuListTypeId,
  });

  int? id;
  List<ProductModel>? products;
  int? listOrder;
  String? categoryName;
  String? menuListTypeId;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    products: json["products"] == null ? []: List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
    listOrder: json["list_order"],
    categoryName: json["category_name"],
    menuListTypeId: json["menu_list_type_id"],
  );
}



