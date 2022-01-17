
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
        categories: json["categories"] == null
            ? []
            : List<FoodCategoryModel>.from(
                json["categories"].map((x) => FoodCategoryModel().fromJson(x))),
      );

}

/// Okutulan masa bilgileri
class TableModel {
  TableModel({
    this.tableCode,
    this.tableName,
    this.stationCode,
  });

  String? tableCode;
  String? tableName;
  String? stationCode;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        tableCode: json["table_code"],
        tableName: json["table_name"],
        stationCode: json["station_code"],
      );

}

class MenuModel {
  MenuModel({
    this.id,
    this.menuName,
    this.menuImage,
    this.menuOrder,
  });

  int? id;
  String? menuName;
  String? menuImage;
  int? menuOrder;

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        id: json["id"],
        menuName: json["menu_name"],
        menuImage: json["menu_image"],
        menuOrder: json["menu_order"],
      );

}

/// İşleteme çalışma saatleri
class WorkingHourModel {
  WorkingHourModel({
    this.end,
    this.start,
    this.title,
    this.status,
    this.courier,
    this.dayOfWeek,
    this.courierEnd,
    this.courierStart,
  });

  String? end;
  String? start;
  String? title;
  bool? status;
  bool? courier;
  String? dayOfWeek;
  String? courierEnd;
  String? courierStart;

  factory WorkingHourModel.fromJson(Map<String, dynamic> json) =>
      WorkingHourModel(
        end: json["end"],
        start: json["start"],
        title: json["title"],
        status: json["status"],
        courier: json["courier"],
        dayOfWeek: json["dayofweek"],
        courierEnd: json["courier_end"],
        courierStart: json["courier_start"],
      );

}

