/*
import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';

///Dealer(Kategori) ve MarketPlace(Mutfaklar) modüllerinde kullanılan model
class FoodCategoryModel extends IBaseModel<FoodCategoryModel> {
  FoodCategoryModel({this.id, this.image, this.listOrder, this.categoryName, this.products});

  /// 1- Dealer modulunde QR detail categories için int olarak kullanılmakta
  /// 2- MarketPlace modulunde NearDealerDetail de String olarak kullanılmakta
  dynamic id;
  String? image;
  int? listOrder;
  String? categoryName;
  List<ProductModel>? products;

  @override
  fromJson(Map<dynamic, dynamic> json) => FoodCategoryModel(
    id: json["id"],
    image: json["image_url"],
    listOrder: json["list_order"],
    categoryName: json["category_name"],
    products: json["products"] == null
        ? []
        : List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
  );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
*/
