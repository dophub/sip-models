import 'package:background_json_parser/background_json_parser.dart';

class SearchProductModel extends IBaseModel<SearchProductModel> {
  String? type;
  int? id;
  String? name;
  String? code;
  List<SearchProductCategoryModel>? categories;
  List<SearchProductPriceModel>? price;

  SearchProductModel({
    this.type,
    this.id,
    this.name,
    this.code,
    this.categories,
    this.price,
  });

  @override
  fromJson(Map<String, dynamic> json) => SearchProductModel(
        type: json["type"],
        id: json["id"],
        name: json["name"],
        code: json["code"],
        categories: json["categories"] == null
            ? []
            : List<SearchProductCategoryModel>.from(
                json["categories"]!.map((x) => SearchProductCategoryModel.fromJson(x))),
        price: json["price"] == null
            ? []
            : List<SearchProductPriceModel>.from(json["price"]!.map((x) => SearchProductPriceModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "name": name,
        "code": code,
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "price": price == null ? [] : List<dynamic>.from(price!.map((x) => x.toJson())),
      };
}

class SearchProductCategoryModel {
  int? categoryId;
  String? categoryName;

  SearchProductCategoryModel({
    this.categoryId,
    this.categoryName,
  });

  factory SearchProductCategoryModel.fromJson(Map<String, dynamic> json) => SearchProductCategoryModel(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
      );

  Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
      };
}

class SearchProductPriceModel {
  int? id;
  int? price;
  bool? isDefault;
  String? orderDeliveryTypeId;

  SearchProductPriceModel({
    this.id,
    this.price,
    this.isDefault,
    this.orderDeliveryTypeId,
  });

  factory SearchProductPriceModel.fromJson(Map<String, dynamic> json) => SearchProductPriceModel(
        id: json["id"],
        price: json["price"],
        isDefault: json["is_default"],
        orderDeliveryTypeId: json["order_delivery_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "is_default": isDefault,
        "order_delivery_type_id": orderDeliveryTypeId,
      };
}
