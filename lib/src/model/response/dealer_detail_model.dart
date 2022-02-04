/*


import 'food_category_model.dart';
import 'images_model.dart';

/// GR Kod okutulduğu zaman Api den dönen response
class DealerDetailModel {
  DealerDetailModel(
      {this.dealerId,
      this.mainBrandId,
      this.dealerName,
      this.table,
      this.workingHours,
      this.logoImage,
      this.menus,
      this.categories,
      this.listImage,
      this.mobileCoverImage});

  int? dealerId;
  int? mainBrandId;
  String? dealerName;
  TableModel? table;
  WorkingHourModel? workingHours;
  List<MenuModel>? menus;
  List<FoodCategoryModel>? categories;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;

  factory DealerDetailModel.fromJson(Map<String, dynamic> json) =>
      DealerDetailModel(
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        dealerName: json["dealer_name"],
        table: TableModel.fromJson(json["tables"]),
        workingHours:  WorkingHourModel.fromJson(json["working_hours"]),
        logoImage: json["logo_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["logo_image"]),
        listImage: json["list_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["mobile_cover_image"]),
        menus: json["menus"] == null
            ? []
            : List<MenuModel>.from(
                json["menus"].map((x) => MenuModel.fromJson(x))),
        categories: json["categories"] == null ? [] : List<FoodCategoryModel>.from(json["categories"].map((x) => FoodCategoryModel().fromJson(x))),
      );

}
*/
