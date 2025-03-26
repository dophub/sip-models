import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/dealer/dealer_info_model.dart';

import '../other/images_model.dart';
import '../other/menu_detail_model.dart';
import 'dealer_detail_model.dart';

class DealerModel extends IBaseModel<DealerModel> {
  int? id;
  String? dealerName;
  num? rating;
  num? rating2;
  String? latlng;
  double? distance;
  String? distanceType;
  bool? distanceRequired;
  String? qrCode;
  int? cityId;
  String? city;
  int? districtId;
  String? district;
  int? neighbourhoodId;
  String? neighborhood;
  GetNearDealerByLatLngOrderLinesModel? orderLines;
  SocialsModel? socialMedia;
  String? address;
  bool? openMarketplace;
  bool? marketplaceIsActive;
  bool? openGetin;
  bool? getinIsActive;
  bool? openTakeout;
  bool? takeoutIsActive;
  bool? openReservation;
  bool? openVale;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  double? minPackageAmount;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  List<WorkingHourModel>? weeklyWorkingHours;
  WorkingHourModel? workingHours;
  List<FoodCategories>? foodCategories;
  DealerMainBrandModel? mainBrand;

  /// Product Listesi Searchte kullanılıyor
  List<ProductModel>? products;

  DealerModel({
    this.id,
    this.dealerName,
    this.rating,
    this.rating2,
    this.latlng,
    this.distance,
    this.distanceType,
    this.distanceRequired,
    this.qrCode,
    this.cityId,
    this.city,
    this.districtId,
    this.district,
    this.neighbourhoodId,
    this.neighborhood,
    this.orderLines,
    this.logoImage,
    this.socialMedia,
    this.address,
    this.openMarketplace,
    this.marketplaceIsActive,
    this.openGetin,
    this.getinIsActive,
    this.openTakeout,
    this.takeoutIsActive,
    this.openReservation,
    this.openVale,
    this.commentCount,
    this.avgServiceTime,
    this.avgServiceTimeMin,
    this.avgServiceTimeMax,
    this.minPackageAmount,
    this.listImage,
    this.mobileCoverImage,
    this.weeklyWorkingHours,
    this.workingHours,
    this.foodCategories,
    this.mainBrand,
    this.products,
  });

  @override
  fromJson(Map<String, dynamic> json) => DealerModel(
        id: json["dealer_id"] ?? json["id"],
        dealerName: json["dealer_name"],
        rating: json['rating'],
        rating2: json['rating2'],
        latlng: json["latlng"],
        distance: json["distance"]?.toDouble(),
        distanceType: json["distance_type"],
        distanceRequired: json["distance_required"],
        qrCode: json["qr_code"],
        cityId: json["city_id"],
        city: json["city"],
        districtId: json["district_id"],
        district: json["district"],
        neighbourhoodId: json["neighbourhood_id"],
        neighborhood: json["neighborhood"],
        orderLines:
            json["order_lines"] == null ? null : GetNearDealerByLatLngOrderLinesModel.fromJson(json["order_lines"]),
        socialMedia: json["social_media"] == null ? null : SocialsModel.fromJson(json["social_media"]),
        address: json["address"],
        openMarketplace: json["open_marketplace"],
        marketplaceIsActive: json["marketplace_is_active"],
        openGetin: json["open_getin"],
        getinIsActive: json["getin_is_active"],
        openTakeout: json["open_takeout"],
        takeoutIsActive: json["takeout_is_active"],
        openReservation: json["open_reservation"],
        openVale: json["open_vale"],
        commentCount: json["comment_count"],
        avgServiceTime: json["avg_service_time"],
        avgServiceTimeMin: json["avg_service_time_min"],
        avgServiceTimeMax: json["avg_service_time_max"],
        minPackageAmount: json["min_package_amount"]?.toDouble(),
        logoImage: json['logo_image'] == null ? null : ImagesModel.fromJson(json['logo_image']),
        listImage: json["list_image"] == null ? null : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null ? null : ImagesModel.fromJson(json["mobile_cover_image"]),
        weeklyWorkingHours: json["weekly_working_hours"] == null
            ? []
            : List<WorkingHourModel>.from(json["weekly_working_hours"]!.map((x) => WorkingHourModel.fromJson(x))),
        workingHours: json["working_hours"] == null ? null : WorkingHourModel.fromJson(json["working_hours"]),
        foodCategories: json["food_categories"] == null
            ? null
            : List<FoodCategories>.from(json["food_categories"].map((x) => FoodCategories.fromJson(x))),
        mainBrand: json["main_brand"] == null ? null : DealerMainBrandModel.fromJson(json["main_brand"]),
        products: json["products"] == null
            ? []
            : List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class GetNearDealerByLatLngOrderLinesModel {
  String? orderPhone1;
  String? orderPhone2;
  String? whatsappLine;

  GetNearDealerByLatLngOrderLinesModel({
    this.orderPhone1,
    this.orderPhone2,
    this.whatsappLine,
  });

  factory GetNearDealerByLatLngOrderLinesModel.fromJson(Map<String, dynamic> json) =>
      GetNearDealerByLatLngOrderLinesModel(
        orderPhone1: json["order_phone_1"],
        orderPhone2: json["order_phone_2"],
        whatsappLine: json["whatsapp_line"],
      );
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
