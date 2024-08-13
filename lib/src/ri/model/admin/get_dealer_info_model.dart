import 'package:background_json_parser/background_json_parser.dart';

class GetDealerInfoModel extends IBaseModel<GetDealerInfoModel> {
  int? dealerId;
  String? dealerName;
  int? cityId;
  String? city;
  int? neighborhoodId;
  String? neighborhood;
  int? districtId;
  String? district;
  String? orderPhone1;
  String? orderPhone2;
  String? latlng;
  dynamic assignPackages;
  List<_PosStationModel>? posStations;
  dynamic paymentPoses;
  _UserModel? user;
  _GetDealerInfoCatalogModel? catalog;
  _DealerFeatureStatusModel? dealerFeatureStatus;
  _IsItCompletedModel? isItCompleted;

  GetDealerInfoModel({
    this.dealerId,
    this.dealerName,
    this.cityId,
    this.city,
    this.neighborhoodId,
    this.neighborhood,
    this.districtId,
    this.district,
    this.orderPhone1,
    this.orderPhone2,
    this.latlng,
    this.assignPackages,
    this.posStations,
    this.paymentPoses,
    this.user,
    this.catalog,
    this.dealerFeatureStatus,
    this.isItCompleted,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetDealerInfoModel(
        dealerId: json["dealer_id"],
        dealerName: json["dealer_name"],
        cityId: json["city_id"],
        city: json["city"],
        neighborhoodId: json["neighborhood_id"],
        neighborhood: json["neighborhood"],
        districtId: json["district_id"],
        district: json["district"],
        orderPhone1: json["order_phone_1"],
        orderPhone2: json["order_phone_2"],
        latlng: json["latlng"],
        assignPackages: json["assign_packages"],
        posStations: json["pos_stations"] == null
            ? []
            : List<_PosStationModel>.from(json["pos_stations"].map((x) => _PosStationModel.fromJson(x))),
        paymentPoses: json["payment_poses"],
        user: json["user"] == null ? null : _UserModel.fromJson(json["user"]),
        catalog: json["catalog"] == null ? null : _GetDealerInfoCatalogModel.fromJson(json["catalog"]),
        dealerFeatureStatus: json["dealer_feature_status"] == null
            ? null
            : _DealerFeatureStatusModel.fromJson(json["dealer_feature_status"]),
        isItCompleted: json["is_it_completed"] == null ? null : _IsItCompletedModel.fromJson(json["is_it_completed"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "dealer_name": dealerName,
        "city_id": cityId,
        "city": city,
        "neighborhood_id": neighborhoodId,
        "neighborhood": neighborhood,
        "district_id": districtId,
        "district": district,
        "order_phone_1": orderPhone1,
        "order_phone_2": orderPhone2,
        "latlng": latlng,
        "assign_packages": assignPackages,
        "pos_stations": List<dynamic>.from(posStations!.map((x) => x.toJson())),
        "payment_poses": paymentPoses,
        "user": user!.toJson(),
        "catalog": catalog!.toJson(),
        "dealer_feature_status": dealerFeatureStatus!.toJson(),
        "is_it_completed": isItCompleted!.toJson(),
      };
}

class _GetDealerInfoCatalogModel {
  int? catalogId;
  String? catalogName;
  GetDealerInfoPriceModel? price;

  _GetDealerInfoCatalogModel({
    this.catalogId,
    this.catalogName,
    this.price,
  });

  factory _GetDealerInfoCatalogModel.fromJson(Map<String, dynamic> json) => _GetDealerInfoCatalogModel(
        catalogId: json["catalog_id"],
        catalogName: json["catalog_name"],
        price: json["price"] == null ? null : GetDealerInfoPriceModel.fromJson(json["price"]),
      );

  Map<String, dynamic> toJson() => {
        "catalog_id": catalogId,
        "catalog_name": catalogName,
        "price": price!.toJson(),
      };
}

class GetDealerInfoPriceModel {
  String? priceName;
  int? priceId;

  GetDealerInfoPriceModel({
    this.priceName,
    this.priceId,
  });

  factory GetDealerInfoPriceModel.fromJson(Map<String, dynamic> json) => GetDealerInfoPriceModel(
        priceName: json["price_name"],
        priceId: json["price_id"],
      );

  Map<String, dynamic> toJson() => {
        "price_name": priceName,
        "price_id": priceId,
      };
}

class _DealerFeatureStatusModel {
  bool? dealerIsActive;
  bool? marketplaceIsActive;
  bool? reservationIsActive;
  bool? selfServiceIsActive;
  bool? tableIsActive;
  bool? valeIsActive;
  bool? isTipsActive;

  _DealerFeatureStatusModel({
    this.dealerIsActive,
    this.marketplaceIsActive,
    this.reservationIsActive,
    this.selfServiceIsActive,
    this.tableIsActive,
    this.valeIsActive,
    this.isTipsActive,
  });

  factory _DealerFeatureStatusModel.fromJson(Map<String, dynamic> json) => _DealerFeatureStatusModel(
        dealerIsActive: json["dealer_is_active"],
        marketplaceIsActive: json["marketplace_is_active"],
        reservationIsActive: json["reservation_is_active"],
        selfServiceIsActive: json["self_service_is_active"],
        tableIsActive: json["table_is_active"],
        valeIsActive: json["vale_is_active"],
        isTipsActive: json["is_tips_active"],
      );

  Map<String, dynamic> toJson() => {
        "dealer_is_active": dealerIsActive,
        "marketplace_is_active": marketplaceIsActive,
        "reservation_is_active": reservationIsActive,
        "self_service_is_active": selfServiceIsActive,
        "table_is_active": tableIsActive,
        "vale_is_active": valeIsActive,
        "is_tips_active": isTipsActive,
      };
}

class _IsItCompletedModel {
  bool? paymentInfo;
  bool? latlng;
  bool? address;
  bool? dealerAssignLicense;
  bool? workingHours;
  bool? dealerPaymentType;
  bool? dealerZones;

  _IsItCompletedModel({
    this.paymentInfo,
    this.latlng,
    this.address,
    this.dealerAssignLicense,
    this.workingHours,
    this.dealerPaymentType,
    this.dealerZones,
  });

  factory _IsItCompletedModel.fromJson(Map<String, dynamic> json) => _IsItCompletedModel(
        paymentInfo: json["payment_info"],
        latlng: json["latlng"],
        address: json["address"],
        dealerAssignLicense: json["dealer_assign_license"],
        workingHours: json["working_hours"],
        dealerPaymentType: json["dealer_payment_type"],
        dealerZones: json["dealer_zones"],
      );

  Map<String, dynamic> toJson() => {
        "payment_info": paymentInfo,
        "latlng": latlng,
        "address": address,
        "dealer_assign_license": dealerAssignLicense,
        "working_hours": workingHours,
        "dealer_payment_type": dealerPaymentType,
        "dealer_zones": dealerZones,
      };
}

class _PosStationModel {
  int? id;
  int? dealerId;
  String? deviceSerial;
  String? title;
  bool? isActive;
  int? count;

  _PosStationModel({
    this.id,
    this.dealerId,
    this.deviceSerial,
    this.title,
    this.isActive,
    this.count,
  });

  factory _PosStationModel.fromJson(Map<String, dynamic> json) => _PosStationModel(
        id: json["id"],
        dealerId: json["dealer_id"],
        deviceSerial: json["device_serial"],
        title: json["title"],
        isActive: json["is_active"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_id": dealerId,
        "device_serial": deviceSerial,
        "title": title,
        "is_active": isActive,
        "count": count,
      };
}

class _UserModel {
  String? email;
  String? phone;
  String? authorizedName;
  String? authorizedSurname;

  _UserModel({
    this.email,
    this.phone,
    this.authorizedName,
    this.authorizedSurname,
  });

  factory _UserModel.fromJson(Map<String, dynamic> json) => _UserModel(
        email: json["email"],
        phone: json["phone"],
        authorizedName: json["authorized_name"],
        authorizedSurname: json["authorized_surname"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "phone": phone,
        "authorized_name": authorizedName,
        "authorized_surname": authorizedSurname,
      };
}
