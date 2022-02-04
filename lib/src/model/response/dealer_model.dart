import 'package:sip_models/response.dart';

class DealerModel extends IBaseModel<DealerModel> {
  DealerModel({
    this.dealerId,
    this.dealerName,
    this.rating,
    this.rating2,
    this.commentCount,
    this.avgServiceTime,
    this.avgServiceTimeMin,
    this.avgServiceTimeMax,
    this.minPackageAmount,
    this.distance,
    this.logoImage,
    this.listImage,
    this.mobileCoverImage,
    this.latlng,
    this.workingHours,
    this.foodCategories,
    this.dealerCode,
    this.mainBrandId,
    this.openMarketplace,
    this.openReservation,
    this.openTable,
    this.openVale,
    this.products,
    this.table,
    this.menus,
    this.categories,
    this.socials
  });

  int? dealerId;
  String? dealerName;
  int? rating;
  double? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  double? minPackageAmount;
  int? distance; //
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage; //
  String? latlng;
  WorkingHourModel? workingHours;
  List<FoodCategories>? foodCategories;
  Socials? socials;

//////////// SearchProductModel
  String? dealerCode;
  int? mainBrandId;
  bool? openMarketplace;
  bool? openReservation;
  bool? openTable;
  bool? openVale;
  List<ProductModel>? products;

//////////// DealerDetailModel
  TableModel? table;
  List<MenuModel>? menus;
  List<FoodCategoryModel>? categories;

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerModel(
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
        rating: json['rating'],
        rating2: json['rating2'].toDouble(),
        commentCount: json['comment_count'],
        avgServiceTime: json['avg_service_time'],
        avgServiceTimeMin: json['avg_service_time_min'],
        avgServiceTimeMax: json['avg_service_time_max'],
        minPackageAmount: json['min_package_amount'].toDouble(),
        distance: json['distance'],
        logoImage: json['logo_image'] != null
            ? ImagesModel.fromJson(json['logo_image'])
            : ImagesModel(),
        listImage: json['list_image'] != null
            ? ImagesModel.fromJson(json['list_image'])
            : ImagesModel(),
        mobileCoverImage: json['mobile_cover_image'] != null
            ? ImagesModel.fromJson(json['mobile_cover_image'])
            : ImagesModel(),
        latlng: json['latlng'],
        workingHours: json['working_hours'] != null
            ? WorkingHourModel.fromJson(json['working_hours'])
            : null,
        foodCategories: json["food_categories"] == null
            ? null
            : List<FoodCategories>.from(
                json["food_categories"].map((x) => FoodCategories.fromJson(x))),
        dealerCode: json["dealer_code"],
        mainBrandId: json["main_brand_id"],
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        openTable: json["open_table"],
        openVale: json["open_vale"],
        products: List<ProductModel>.from(
            json["products"].map((x) => ProductModel.fromJson(x))),
        table: TableModel.fromJson(json["tables"]),
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

class Socials {
  Socials({
    this.bip,
    this.email,
    this.phone,
    this.twitter,
    this.youtube,
    this.facebook,
    this.linkedin,
    this.whatsapp,
    this.instagram,
  });
  String? bip;
  String? email;
  String? phone;
  String? twitter;
  String? youtube;
  String? facebook;
  String? linkedin;
  String? whatsapp;
  String? instagram;
  factory Socials.fromJson(Map<String, dynamic> json) => Socials(
    bip: json["bip"],
    email: json["email"],
    phone: json["phone"],
    twitter: json["twitter"],
    youtube: json["youtube"],
    facebook: json["facebook"],
    linkedin: json["linkedin"],
    whatsapp: json["whatsapp"],
    instagram: json["instagram"],
  );
  Map<String, dynamic> toJson() => {
    "bip": bip,
    "email": email,
    "phone": phone,
    "twitter": twitter,
    "youtube": youtube,
    "facebook": facebook,
    "linkedin": linkedin,
    "whatsapp": whatsapp,
    "instagram": instagram,
  };
}

class FoodCategories {
  ImagesModel? image;
  bool? isDefault;
  String? categoryName;

  FoodCategories({this.image, this.isDefault, this.categoryName});

  FoodCategories.fromJson(Map<String, dynamic> json) {
    image = json['image'] != null ? ImagesModel.fromJson(json['image']) : null;
    isDefault = json['is_default'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['is_default'] = isDefault;
    data['category_name'] = categoryName;
    return data;
  }
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
