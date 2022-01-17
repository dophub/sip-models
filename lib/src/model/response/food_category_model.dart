import '../../../response.dart';

///Dealer(Kategori) ve MarketPlace(Mutfaklar) modüllerinde kullanılan model
class FoodCategoryModel  extends IBaseModel<FoodCategoryModel> {
  FoodCategoryModel({
    this.id,
    this.image,
    this.listOrder,
    this.categoryName,
  });

  dynamic id;
  String? image;
  int? listOrder;
  String? categoryName;

  @override
  fromJson(Map<dynamic, dynamic>  json) =>
      FoodCategoryModel(
        id: json["id"],
        image: json["icon_file"]["url"] ?? "",
        listOrder: json["list_order"],
        categoryName: json["category_name"],
      );

}
