import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';

///Dealer(Kategori) ve MarketPlace(Mutfaklar) modüllerinde kullanılan model
class FoodCategoryModel extends IBaseModel<FoodCategoryModel> {
  FoodCategoryModel({
    this.id,
    this.image,
    this.listOrder,
    this.categoryName,
  });

  /// 1- Dealer modulunde QR detail categories için int olarak kullanılmakta
  /// 2- MarketPlace modulunde NearDealerDetail de String olarak kullanılmakta
  dynamic id;
  ImagesModel? image;
  int? listOrder;
  String? categoryName;

  @override
  fromJson(Map<dynamic, dynamic> json) => FoodCategoryModel(
        id: json["id"],
        image: json["icon_file"] == null ? ImagesModel() : ImagesModel.fromJson(json["icon_file"]),
        listOrder: json["list_order"],
        categoryName: json["category_name"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
