import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/dealer/dealer_detail_model.dart';
import 'package:sip_models/src/model/response/other/images_model.dart';
import '../address/customer_address_model.dart';
import '../order/past_order_details_model.dart';

class DealerInfoModel extends IBaseModel<DealerInfoModel> {
  DealerInfoModel(
      {this.dealerId,
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
      this.dealerAddress});

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
  CustomerAddressModel? dealerAddress;

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerInfoModel(
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        dealerName: json["dealer_name"],
        restaurantInWorkingHours: json["restaurant_in_working_hours"],
        restaurantInPackageService: json["restaurant_in_package_service"],
        workingHours: WorkingHourModel.fromJson(json["working_hours"]),
        weeklyWorkingHours: List<WorkingHourModel>.from(
            json["weekly_working_hours"].map((x) => WorkingHourModel.fromJson(x))),
        logoImage:
            json["logo_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["logo_image"]),
        listImage:
            json["list_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["list_image"]),
        rating: json["rating"],
        rating2: json["rating2"],
        commentCount: json["comment_count"],
        avgServiceTime: json["avg_service_time"],
        avgServiceTimeMin: json["avg_service_time_min"],
        avgServiceTimeMax: json["avg_service_time_max"],
        minPackageAmount: json["min_package_amount"],
        distance: json["distance"],
        mobileCoverImage: json["mobile_cover_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["mobile_cover_image"]),
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
        dealerAddress:
            json["address"] == null ? null : CustomerAddressModel().fromJson(json["address"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
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
}
