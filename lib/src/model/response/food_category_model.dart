import '../../../response.dart';

///Dealer(Kategori) ve MarketPlace(Mutfaklar) modüllerinde kullanılan model
class FoodCategoryModel  extends IBaseModel<FoodCategoryModel> {
  FoodCategoryModel({
    this.id,
    this.image,
    this.listOrder,
    this.categoryName,
  });

  int? id;
  ImagesModel? image;
  int? listOrder;
  String? categoryName;

  @override
  fromJson(Map<dynamic, dynamic>  json) =>
      FoodCategoryModel(
        id: json["id"],
        image: ImagesModel.fromJson(json["icon_file"]),
        listOrder: json["list_order"],
        categoryName: json["category_name"],
      );

}
