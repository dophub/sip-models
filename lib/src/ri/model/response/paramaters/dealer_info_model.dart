

import 'package:sip_models/src/model/response/other/images_model.dart';

class DealerInfoModel {
  DealerInfoModel({
    this.dealerId,
    this.dealerName,
    this.dealerCode,
    this.districtId,
    this.neighborhoodId,
    this.latlng,
    this.openVale,
    this.openTable,
    this.openMarketplace,
    this.openReservation,
    this.marketplaceIsActive,
    this.reservationIsActive,
    this.valeIsActive,
    this.selfServiceIsActive,
    this.selfServiceDefaultTable,
    this.selfServiceDefaultTableQrCode,
    this.dealerPos,
    this.logoImage,
    this.brandCode,
    this.brandName,
    this.listImage,
    this.mobileCoverImage,
    this.address,
    this.dealerPaymentPos,
    this.isAutoCancel,
    this.isSyncOrder,
  });

  int? dealerId;
  String? dealerName;
  String? dealerCode;
  int? districtId;
  int? neighborhoodId;
  String? latlng;
  bool? openVale;
  bool? openTable;
  bool? openMarketplace;
  bool? openReservation;
  bool? marketplaceIsActive;
  bool? reservationIsActive;
  bool? valeIsActive;
  bool? selfServiceIsActive;
  String? selfServiceDefaultTable;
  String? selfServiceDefaultTableQrCode;
  List<DealerPoModel>? dealerPos;
  ImagesModel? logoImage;
  String? brandCode;
  String? brandName;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  Address? address;
  List<DealerPaymentPoModel>? dealerPaymentPos;
  bool? isAutoCancel; // false ise iptal işlemi için SMS göndereceğiz
  bool?
      isSyncOrder; // true ise self servis ekranında satırda is_sync=false olduğunda kırmızı senklendirmeyi ve 15 sn sonra popup mesajını göstereceğiz. "false" ise hiç bir şey olmayacak.

  factory DealerInfoModel.fromJson(Map<String, dynamic> json) => DealerInfoModel(
        dealerId: json["dealer_id"],
        dealerName: json["dealer_name"],
        dealerCode: json["dealer_code"],
        districtId: json["district_id"],
        neighborhoodId: json["neighborhood_id"],
        latlng: json["latlng"],
        openVale: json["open_vale"],
        openTable: json["open_table"],
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        marketplaceIsActive: json["marketplace_is_active"],
        reservationIsActive: json["reservation_is_active"],
        valeIsActive: json["vale_is_active"],
        selfServiceIsActive: json["self_service_is_active"],
        selfServiceDefaultTable: json["self_service_default_table"],
        selfServiceDefaultTableQrCode: json["self_service_default_table_qrcode"],
        dealerPos:
            json["dealer_pos"] == null ? [] : List<DealerPoModel>.from(json["dealer_pos"]!.map((x) => DealerPoModel.fromJson(x))),
        logoImage: json["logo_image"] == null ? null : ImagesModel.fromJson(json["logo_image"]),
        brandCode: json["brand_code"],
        brandName: json["brand_name"],
        listImage: json["list_image"] == null ? null : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null ? null : ImagesModel.fromJson(json["mobile_cover_image"]),
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        dealerPaymentPos: json["dealer_payment_pos"] == null
            ? []
            : List<DealerPaymentPoModel>.from(json["dealer_payment_pos"]!.map((x) => DealerPaymentPoModel.fromJson(x))),
        isAutoCancel: json['is_auto_cancel'],
        isSyncOrder: json['is_sync_order'],
      );

  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "dealer_name": dealerName,
        "dealer_code": dealerCode,
        "district_id": districtId,
        "neighborhood_id": neighborhoodId,
        "latlng": latlng,
        "open_vale": openVale,
        "open_table": openTable,
        "open_marketplace": openMarketplace,
        "open_reservation": openReservation,
        "marketplace_is_active": marketplaceIsActive,
        "reservation_is_active": reservationIsActive,
        "vale_is_active": valeIsActive,
        "self_service_is_active": selfServiceIsActive,
        "self_service_default_table": selfServiceDefaultTable,
        "self_service_default_table_qrcode": selfServiceDefaultTableQrCode,
        "dealer_pos": dealerPos == null ? [] : List<dynamic>.from(dealerPos!.map((x) => x.toJson())),
        "logo_image": logoImage?.toJson(),
        "brand_code": brandCode,
        "brand_name": brandName,
        "list_image": listImage?.toJson(),
        "mobile_cover_image": mobileCoverImage?.toJson(),
        "address": address?.toJson(),
        "dealer_payment_pos":
            dealerPaymentPos == null ? [] : List<dynamic>.from(dealerPaymentPos!.map((x) => x.toJson())),
        'is_auto_cancel': isAutoCancel,
        'is_sync_order': isSyncOrder,
      };
}

class Address {
  Address({
    this.address,
    this.cityId,
    this.cityName,
    this.districtId,
    this.districtName,
    this.latlng,
    this.neighborhoodId,
    this.neighborhoodName,
  });

  String? address;
  int? cityId;
  String? cityName;
  int? districtId;
  String? districtName;
  String? latlng;
  int? neighborhoodId;
  String? neighborhoodName;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        address: json["address"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        districtId: json["district_id"],
        districtName: json["district_name"],
        latlng: json["latlng"],
        neighborhoodId: json["neighborhood_id"],
        neighborhoodName: json["neighborhood_name"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "city_id": cityId,
        "city_name": cityName,
        "district_id": districtId,
        "district_name": districtName,
        "latlng": latlng,
        "neighborhood_id": neighborhoodId,
        "neighborhood_name": neighborhoodName,
      };
}

class DealerPaymentPoModel {
  DealerPaymentPoModel({
    this.id,
    this.dgpid,
    this.title,
    this.appName,
    this.password,
    this.posCode,
    this.username,
    this.dealerId,
    this.isActive,
    this.isAssign,
    this.clientKey,
    this.isWebPos,
    this.okcSerial,
    this.terminalid,
    this.assignDate,
    this.packageName,
    this.posBrandId,
    this.deviceSerial,
    this.subMerchantid,
  });

  int? id;
  String? dgpid;
  String? title;
  String? appName;
  String? password;
  String? posCode;
  String? username;
  int? dealerId;
  bool? isActive;
  bool? isAssign;
  String? clientKey;
  bool? isWebPos;
  String? okcSerial;
  String? terminalid;
  DateTime? assignDate;
  String? packageName;
  String? posBrandId;
  String? deviceSerial;
  String? subMerchantid;

  factory DealerPaymentPoModel.fromJson(Map<String, dynamic> json) => DealerPaymentPoModel(
        id: json["id"],
        dgpid: json["dgpid"],
        title: json["title"],
        appName: json["app_name"],
        password: json["password"],
        posCode: json["pos_code"],
        username: json["username"],
        dealerId: json["dealer_id"],
        isActive: json["is_active"],
        isAssign: json["is_assign"],
        clientKey: json["client_key"],
        isWebPos: json["is_web_pos"],
        okcSerial: json["okc_serial"],
        terminalid: json["terminalid"],
        assignDate: json["assign_date"] == null ? null : DateTime.parse(json["assign_date"]),
        packageName: json["package_name"],
        posBrandId: json["pos_brand_id"],
        deviceSerial: json["device_serial"],
        subMerchantid: json["sub_merchantid"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dgpid": dgpid,
        "title": title,
        "app_name": appName,
        "password": password,
        "pos_code": posCode,
        "username": username,
        "dealer_id": dealerId,
        "is_active": isActive,
        "is_assign": isAssign,
        "client_key": clientKey,
        "is_web_pos": isWebPos,
        "okc_serial": okcSerial,
        "terminalid": terminalid,
        "assign_date": assignDate?.toIso8601String(),
        "package_name": packageName,
        "pos_brand_id": posBrandId,
        "device_serial": deviceSerial,
        "sub_merchantid": subMerchantid,
      };
}

class DealerPoModel {
  DealerPoModel({
    this.terminalId,
    this.posBrandId,
  });

  String? terminalId;
  String? posBrandId;

  factory DealerPoModel.fromJson(Map<String, dynamic> json) => DealerPoModel(
        terminalId: json["terminal_id"],
        posBrandId: json["pos_brand_id"],
      );

  Map<String, dynamic> toJson() => {
        "terminal_id": terminalId,
        "pos_brand_id": posBrandId,
      };
}

