import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

class FoodsUnderCertainCategoryResponseModel extends IBaseModel<FoodsUnderCertainCategoryResponseModel> {
  FoodsUnderCertainCategoryResponseModel({
    this.id,
    this.productName,
    this.itemType,
    this.listOrder,
    this.isActive,
    this.isSell,
    this.price,
    this.matchedProducts,
  });

  int? id;
  String? productName;
  String? itemType;
  int? listOrder;
  bool? isActive;
  bool? isSell;
  List<PriceModel>? price;
  List<MatchedProductsModel>? matchedProducts;

  FoodsUnderCertainCategoryResponseModel copyWith({
    int? id,
    String? productName,
    String? itemType,
    int? listOrder,
    bool? isActive,
    bool? isSell,
    List<PriceModel>? price,
    List<MatchedProductsModel>? matchedProducts,
  }) =>
      FoodsUnderCertainCategoryResponseModel(
          id: id ?? this.id,
          productName: productName ?? this.productName,
          itemType: itemType ?? this.itemType,
          listOrder: listOrder ?? this.listOrder,
          isActive: isActive ?? this.isActive,
          isSell: isSell ?? this.isSell,
          price: price ?? this.price,
          matchedProducts: matchedProducts ?? this.matchedProducts);

  @override
  FoodsUnderCertainCategoryResponseModel fromJson(Map<String, dynamic> json) => FoodsUnderCertainCategoryResponseModel(
        id: json["id"],
        productName: json["product_name"],
        itemType: json["item_type"],
        listOrder: json["list_order"],
        isActive: json["is_active"],
        isSell: json["is_sell"],
        price: json["price"] == null ? [] : List<PriceModel>.from(json["price"]!.map((x) => PriceModel.fromJson(x))),
        matchedProducts: json['matched_products'] == null ? null : List<MatchedProductsModel>.from(json["matched_products"]!.map((x) => MatchedProductsModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}


class MatchedProductsModel {
  MatchedProductsModel({
    this.id,
    this.price,
    this.productCode,
    this.productName,
  });

  int? id;
  double? price;
  String? productCode;
  String? productName;

  factory MatchedProductsModel.fromJson(Map<String, dynamic> json) => MatchedProductsModel(
        id: json["id"],
        price: json["price"]?.toDouble(),
        productCode: json["product_code"],
        productName: json["product_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "product_code": productCode,
        "product_name": productName,
      };
}
