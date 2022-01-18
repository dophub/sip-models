import 'dart:convert';
import 'menu_detail_model.dart';

List<NearDealerDetailsModel> nearDealerDetailsModelFromJson(String str) => List<NearDealerDetailsModel>.from(json.decode(str).map((x) => NearDealerDetailsModel.fromJson(x)));

class NearDealerDetailsModel {
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

  factory NearDealerDetailsModel.fromJson(Map<String, dynamic> json) => NearDealerDetailsModel(
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
    products: json["products"] == null ? []: List<ProductModel>.from(json["products"].map((x) => ProductModel.fromJson(x))),
    listOrder: json["list_order"],
    categoryName: json["category_name"],
    menuListTypeId: json["menu_list_type_id"],
  );
}



