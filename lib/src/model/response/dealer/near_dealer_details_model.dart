import 'package:background_json_parser/background_json_parser.dart';

import '../other/menu_detail_model.dart';

class NearDealerDetailsModel extends IBaseModel<NearDealerDetailsModel> {
  NearDealerDetailsModel({
    this.id,
    this.menuName,
    this.menuOrder,
    this.categories,
    this.menuListType,
  });

  int? id;
  String? menuName;
  int? menuOrder;
  List<Category>? categories;
  String? menuListType;

  @override
  fromJson(Map<dynamic, dynamic> json) => NearDealerDetailsModel(
        id: json["id"],
        menuName: json["menu_name"],
        menuOrder: json["menu_order"],
        menuListType: json['menu_list_type'] as String?,
        categories:
            json["categories"] == null ? [] : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class Category {
  Category({
    this.id,
    this.products,
    this.listOrder,
    this.categoryName,
    this.menuListTypeId,
    this.imageUrl,
  });

  int? id;
  List<ProductModel>? products;
  int? listOrder;
  String? categoryName;
  String? menuListTypeId;
  String? imageUrl;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        products: json["products"] == null
            ? []
            : List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
        listOrder: json["list_order"],
        categoryName: json["category_name"],
        menuListTypeId: json["menu_list_type_id"],
        imageUrl: json['image_url'],
      );
}
