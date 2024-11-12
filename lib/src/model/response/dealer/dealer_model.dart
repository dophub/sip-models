import 'package:background_json_parser/background_json_parser.dart';

import '../other/images_model.dart';
import '../other/menu_detail_model.dart';
import 'dealer_detail_model.dart';

class DealerModel extends IBaseModel<DealerModel> {
  int? dealerId;
  String? dealerName;
  num? rating;
  num? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  double? minPackageAmount;
  int? distance;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  String? latlng;
  WorkingHourModel? workingHours;
  List<FoodCategories>? foodCategories;
  String? dealerCode;
  bool? openMarketplace;
  bool? openReservation;
  bool? openTable;
  bool? openVale;
  String? address;
  DealerMainBrandModel? mainBrand;

  /// Product Listesi Searchte kullanılıyor
  List<ProductModel>? products;

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
    this.openMarketplace,
    this.openReservation,
    this.openTable,
    this.openVale,
    this.products,
    this.address,
    this.mainBrand,
  });

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerModel(
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
        rating: json['rating'],
        rating2: json['rating2'],
        commentCount: json['comment_count'],
        avgServiceTime: json['avg_service_time'],
        avgServiceTimeMin: json['avg_service_time_min'],
        avgServiceTimeMax: json['avg_service_time_max'],
        minPackageAmount: json['min_package_amount'] == null ? 0 : json['min_package_amount'].toDouble(),
        distance: json['distance'],
        logoImage: json['logo_image'] != null ? ImagesModel.fromJson(json['logo_image']) : ImagesModel(),
        listImage: json['list_image'] != null ? ImagesModel.fromJson(json['list_image']) : ImagesModel(),
        mobileCoverImage:
            json['mobile_cover_image'] != null ? ImagesModel.fromJson(json['mobile_cover_image']) : ImagesModel(),
        latlng: json['latlng'],
        workingHours: json['working_hours'] != null ? WorkingHourModel.fromJson(json['working_hours']) : null,
        foodCategories: json["food_categories"] == null
            ? null
            : List<FoodCategories>.from(json["food_categories"].map((x) => FoodCategories.fromJson(x))),
        dealerCode: json["dealer_code"],
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        openTable: json["open_table"],
        openVale: json["open_vale"],
        products: json["products"] == null
            ? []
            : List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
        address: json["address"],
        mainBrand: json["main_brand"] == null ? null : DealerMainBrandModel.fromJson(json["main_brand"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class DealerMainBrandModel {
  final int id;
  final String brandName;

  DealerMainBrandModel({
    required this.id,
    required this.brandName,
  });

  factory DealerMainBrandModel.fromJson(Map<String, dynamic> json) => DealerMainBrandModel(
        id: json["id"],
        brandName: json["brand_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_name": brandName,
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
