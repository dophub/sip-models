import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';
import 'package:sip_models/src/model/response/dealer/dealer_info_model.dart';
import 'package:sip_models/src/model/response/other/images_model.dart';

class GetNearDealerByLatLngModel extends IBaseModel<GetNearDealerByLatLngModel> {
  int? id;
  String? dealerName;
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
  int? minPackageAmount;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  List<WorkingHourModel>? weeklyWorkingHours;
  WorkingHourModel? workingHours;
  GetNearDealerByLatLngMainBrandModel? mainBrand;

  GetNearDealerByLatLngModel({
    this.id,
    this.dealerName,
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
    this.mainBrand,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetNearDealerByLatLngModel(
        id: json["id"],
        dealerName: json["dealer_name"],
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
        minPackageAmount: json["min_package_amount"],
        listImage: json["list_image"] == null ? null : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null ? null : ImagesModel.fromJson(json["mobile_cover_image"]),
        weeklyWorkingHours: json["weekly_working_hours"] == null
            ? []
            : List<WorkingHourModel>.from(json["weekly_working_hours"]!.map((x) => WorkingHourModel.fromJson(x))),
        workingHours: json["working_hours"] == null ? null : WorkingHourModel.fromJson(json["working_hours"]),
        mainBrand: json["main_brand"] == null ? null : GetNearDealerByLatLngMainBrandModel.fromJson(json["main_brand"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_name": dealerName,
        "latlng": latlng,
        "distance": distance,
        "distance_type": distanceType,
        "distance_required": distanceRequired,
        "qr_code": qrCode,
        "city_id": cityId,
        "city": city,
        "district_id": districtId,
        "district": district,
        "neighbourhood_id": neighbourhoodId,
        "neighborhood": neighborhood,
        "order_lines": orderLines?.toJson(),
        "social_media": socialMedia?.toJson(),
        "address": address,
        "open_marketplace": openMarketplace,
        "marketplace_is_active": marketplaceIsActive,
        "open_getin": openGetin,
        "getin_is_active": getinIsActive,
        "open_takeout": openTakeout,
        "takeout_is_active": takeoutIsActive,
        "open_reservation": openReservation,
        "open_vale": openVale,
        "comment_count": commentCount,
        "avg_service_time": avgServiceTime,
        "avg_service_time_min": avgServiceTimeMin,
        "avg_service_time_max": avgServiceTimeMax,
        "min_package_amount": minPackageAmount,
        "list_image": listImage?.toJson(),
        "mobile_cover_image": mobileCoverImage?.toJson(),
        "weekly_working_hours": weeklyWorkingHours == null ? [] : List<dynamic>.from(weeklyWorkingHours!.map((x) => x)),
        "working_hours": workingHours,
        "main_brand": mainBrand?.toJson(),
      };
}

class GetNearDealerByLatLngMainBrandModel {
  int? id;
  String? brandName;

  GetNearDealerByLatLngMainBrandModel({
    this.id,
    this.brandName,
  });

  factory GetNearDealerByLatLngMainBrandModel.fromJson(Map<String, dynamic> json) =>
      GetNearDealerByLatLngMainBrandModel(
        id: json["id"],
        brandName: json["brand_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_name": brandName,
      };
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

  Map<String, dynamic> toJson() => {
        "order_phone_1": orderPhone1,
        "order_phone_2": orderPhone2,
        "whatsapp_line": whatsappLine,
      };
}
