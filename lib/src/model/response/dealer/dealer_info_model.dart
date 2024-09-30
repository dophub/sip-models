import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/dealer/dealer_detail_model.dart';
import 'package:sip_models/src/model/response/other/images_model.dart';
import '../order/past_order_details_model.dart';

class DealerInfoModel extends IBaseModel<DealerInfoModel> {
  DealerInfoModel({
    this.dealerId,
    this.mainBrandId,
    this.dealerName,
    this.restaurantInWorkingHours,
    this.restaurantInPackageService,
    this.workingHours,
    this.weeklyWorkingHours,
    this.logoImage,
    this.listImage,
    this.rating,
    this.rating2,
    this.commentCount,
    this.avgServiceTime,
    this.avgServiceTimeMin,
    this.avgServiceTimeMax,
    this.minPackageAmount,
    this.distance,
    this.mobileCoverImage,
    this.latlng,
    this.openMarketplace,
    this.openReservation,
    this.openTable,
    this.openVale,
    this.socials,
    this.webAddress,
    this.foodCategories,
    this.address,
  });

  int? dealerId;
  int? mainBrandId;
  String? dealerName;
  bool? restaurantInWorkingHours;
  bool? restaurantInPackageService;
  WorkingHourModel? workingHours;
  List<WorkingHourModel>? weeklyWorkingHours;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  num? rating;
  num? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  int? minPackageAmount;
  int? distance;
  ImagesModel? mobileCoverImage;
  String? latlng;
  bool? openMarketplace;
  bool? openReservation;
  bool? openTable;
  bool? openVale;
  SocialsModel? socials;
  String? webAddress;
  List<FoodCategory>? foodCategories;
  String? address;

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerInfoModel(
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        dealerName: json["dealer_name"],
        restaurantInWorkingHours: json["restaurant_in_working_hours"],
        restaurantInPackageService: json["restaurant_in_package_service"],
        workingHours: WorkingHourModel.fromJson(json["working_hours"]),
        weeklyWorkingHours:
            List<WorkingHourModel>.from(json["weekly_working_hours"].map((x) => WorkingHourModel.fromJson(x))),
        logoImage: json["logo_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["logo_image"]),
        listImage: json["list_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["list_image"]),
        rating: json["rating"],
        rating2: json["rating2"],
        commentCount: json["comment_count"],
        avgServiceTime: json["avg_service_time"],
        avgServiceTimeMin: json["avg_service_time_min"],
        avgServiceTimeMax: json["avg_service_time_max"],
        minPackageAmount: json["min_package_amount"],
        distance: json["distance"],
        mobileCoverImage:
            json["mobile_cover_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["mobile_cover_image"]),
        latlng: json["latlng"],
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        openTable: json["open_table"],
        openVale: json["open_vale"],
        socials: json["socials"] == null ? SocialsModel() : SocialsModel.fromJson(json["socials"]),
        webAddress: json["web_address"],
        foodCategories: json["food_categories"] == null
            ? []
            : List<FoodCategory>.from(json["food_categories"].map((x) => FoodCategory.fromJson(x))),
        address: json["address"] is String ? json["address"] : null,
      );

  @override
  Map<String, dynamic> toJson() {
    return {
      "dealer_id": dealerId,
      "main_brand_id": mainBrandId,
      "dealer_name": dealerName,
      "restaurant_in_working_hours": restaurantInWorkingHours,
      "restaurant_in_package_service": restaurantInPackageService,
      "working_hours": workingHours?.toJson(),
      "weekly_working_hours": weeklyWorkingHours?.map((x) => x.toJson()).toList(),
      "logo_image": logoImage?.toJson(),
      "list_image": listImage?.toJson(),
      "rating": rating,
      "rating2": rating2,
      "comment_count": commentCount,
      "avg_service_time": avgServiceTime,
      "avg_service_time_min": avgServiceTimeMin,
      "avg_service_time_max": avgServiceTimeMax,
      "min_package_amount": minPackageAmount,
      "distance": distance,
      "mobile_cover_image": mobileCoverImage?.toJson(),
      "latlng": latlng,
      "open_marketplace": openMarketplace,
      "open_reservation": openReservation,
      "open_table": openTable,
      "open_vale": openVale,
      "socials": socials?.toJson(),
      "web_address": webAddress,
      "food_categories": foodCategories?.map((x) => x.toJson()).toList(),
      "address": address,
    };
  }
}

class SocialsModel {
  SocialsModel({
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

  factory SocialsModel.fromJson(Map<String, dynamic> json) => SocialsModel(
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

  Map<String, dynamic> toJson() {
    return {
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
}

