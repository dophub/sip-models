import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/foundation.dart';
import '../../../../../response.dart';
import 'courier_model.dart';
import 'order_cancel_model.dart';
import 'order_status_model.dart';
import 'station_table_model.dart';
import 'waiter_model.dart';

class ParametersResponseModel extends IBaseModel<ParametersResponseModel> {
  OrderStatusModel? orderStatus;
  PaymentInfoModel? paymentType;
  List<WaiterModel>? waiters;
  List<ParamStationTableModel>? stationTable;
  List<CourierModel>? courier;
  ParametersResponseDealerInfoModel? dealerInfo;
  List<OrderCancelModel>? orderCancel;
  List<PosBrandsModel>? posBrands;
  Map<String, Map<String, String>?>? contents; // localization Map<LanguageCode,Map<Kay,value>>

  ParametersResponseModel({
    this.orderStatus,
    this.paymentType,
    this.waiters,
    this.stationTable,
    this.courier,
    this.dealerInfo,
    this.orderCancel,
    this.posBrands,
    this.contents,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    final Map<String, Map<String, String>?> temp = {};
    try {
      final Map<String, dynamic> _dealerContents = json["contents"];
      _dealerContents.forEach((String key, value) {
        final Map<String, String> tempValue = {};
        value?.forEach((element) {
          tempValue.addAll({element['content_type_id']: element['content']});
        });
        temp.addAll({key: tempValue});
      });
    } catch (e) {
      debugPrintStack(label: 'CheckPosStationResponseInfoModel:dealerContents parse Error');
    }

    return ParametersResponseModel(
      orderStatus:
          json['order_status'] == null ? null : OrderStatusModel.fromJson(json['order_status'] as Map<String, dynamic>),
      paymentType: json["payment_type"] == null ? null : PaymentInfoModel.fromJson(json["payment_type"]),
      waiters:
          (json['waiters'] as List<dynamic>?)?.map((e) => WaiterModel.fromJson(e as Map<String, dynamic>)).toList(),
      stationTable: (json['station_table'] as List<dynamic>?)
          ?.map((e) => ParamStationTableModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courier:
          (json['courier'] as List<dynamic>?)?.map((e) => CourierModel.fromJson(e as Map<String, dynamic>)).toList(),
      dealerInfo: json['dealer_info'] == null
          ? null
          : ParametersResponseDealerInfoModel.fromJson(json['dealer_info'] as Map<String, dynamic>),
      orderCancel: (json['order_cancel'] as List<dynamic>?)
          ?.map((e) => OrderCancelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      posBrands: (json['pos_brands'] as List<dynamic>?)
          ?.map((e) => PosBrandsModel().fromJson(e as Map<String, dynamic>))
          .toList(),
      contents: temp,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class PaymentInfoModel {
  PaymentInfoModel({
    this.takeout,
    this.getin,
    this.table,
  });

  List<PaymentType>? takeout;
  List<PaymentType>? getin;
  List<PaymentType>? table;

  factory PaymentInfoModel.fromJson(Map<String, dynamic> json) => PaymentInfoModel(
        takeout:
            json["TAKEOUT"] == null ? [] : List<PaymentType>.from(json["TAKEOUT"].map((x) => PaymentType.fromJson(x))),
        getin: json["GETIN"] == null ? [] : List<PaymentType>.from(json["GETIN"].map((x) => PaymentType.fromJson(x))),
        table: json["TABLE"] == null ? [] : List<PaymentType>.from(json["TABLE"].map((x) => PaymentType.fromJson(x))),
      );

  Map toJson() => {
        "TAKEOUT": takeout?.map((e) => e.toJson()),
        "GETIN": getin?.map((e) => e.toJson()),
        "TABLE": table?.map((e) => e.toJson()),
      };

  PaymentInfoModel copyWith() => PaymentInfoModel(
        takeout: takeout!.map((e) => e.copyWith()).toList(),
        getin: getin!.map((e) => e.copyWith()).toList(),
        table: table!.map((e) => e.copyWith()).toList(),
      );
}

class PosBrandsModel {
  PosBrandsModel({
    this.id,
    this.setting,
    this.dealerId,
    this.isActive,
    this.brandCode,
    this.brandName,
    this.clientKey,
    this.terminalId,
    this.posBrandId,
    this.terminalEx1,
    this.terminalEx2,
    this.terminalEx3,
    this.clientPassword,
  });

  int? id;
  SettingModel? setting;
  int? dealerId;
  bool? isActive;
  String? brandCode;
  String? brandName;
  String? clientKey;
  String? terminalId;
  String? posBrandId;
  String? terminalEx1;
  String? terminalEx2;
  String? terminalEx3;
  String? clientPassword;

  Map<String, dynamic> toJson() => {
        'id': id,
        'setting': setting == null ? null : setting!.toJson(),
        'dealer_id': dealerId,
        'is_active': isActive,
        'brand_code': brandCode,
        'brand_name': brandName,
        'client_key': clientKey,
        'terminal_id': terminalId,
        'pos_brand_id': posBrandId,
        'terminal_ex1': terminalEx1,
        'terminal_ex2': terminalEx2,
        'terminal_ex3': terminalEx3,
        'client_password': clientPassword,
      };

  PosBrandsModel fromJson(Map<String, dynamic> json) {
    return PosBrandsModel(
      id: json['id'],
      setting: SettingModel.fromJson(json['setting']),
      dealerId: json['dealer_id'],
      isActive: json['is_active'],
      brandCode: json['brand_code'],
      brandName: json['brand_name'],
      clientKey: json['client_key'],
      terminalId: json['terminal_id'],
      posBrandId: json['pos_brand_id'],
      terminalEx1: json['terminal_ex1'],
      terminalEx2: json['terminal_ex2'],
      terminalEx3: json['terminal_ex3'],
      clientPassword: json['client_password'],
    );
  }
}

class SettingModel {
  SettingModel({
    this.printInvoice,
  });

  PrintInvoiceModel? printInvoice;

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        printInvoice: PrintInvoiceModel.fromJson(json['print_invoice']),
      );

  Map<String, dynamic> toJson() => {
        'print_invoice': printInvoice == null ? null : printInvoice!.toJson(),
      };
}

class PrintInvoiceModel {
  PrintInvoiceModel({
    this.cash,
    this.creditCard,
  });

  bool? cash;
  bool? creditCard;

  factory PrintInvoiceModel.fromJson(Map<String, dynamic> json) => PrintInvoiceModel(
        cash: json['cash'],
        creditCard: json['credit_card'],
      );

  Map<String, dynamic> toJson() => {
        'cash': cash,
        'credit_card': creditCard,
      };
}

class ParametersResponseDealerInfoModel {
  ParametersResponseDealerInfoModel({
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
  List<DealerInfoPosModel>? dealerPos;
  ImagesModel? logoImage;
  String? brandCode;
  String? brandName;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  DealerInfoAddressModel? address;
  List<DealerInfoPaymentPoModel>? dealerPaymentPos;
  bool? isAutoCancel; // false ise iptal işlemi için SMS göndereceğiz
  bool?
      isSyncOrder; // true ise self servis ekranında satırda is_sync=false olduğunda kırmızı senklendirmeyi ve 15 sn sonra popup mesajını göstereceğiz. "false" ise hiç bir şey olmayacak.

  factory ParametersResponseDealerInfoModel.fromJson(Map<String, dynamic> json) => ParametersResponseDealerInfoModel(
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
        dealerPos: json["dealer_pos"] == null
            ? []
            : List<DealerInfoPosModel>.from(json["dealer_pos"]!.map((x) => DealerInfoPosModel.fromJson(x))),
        logoImage: json["logo_image"] == null ? null : ImagesModel.fromJson(json["logo_image"]),
        brandCode: json["brand_code"],
        brandName: json["brand_name"],
        listImage: json["list_image"] == null ? null : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null ? null : ImagesModel.fromJson(json["mobile_cover_image"]),
        address: json["address"] == null ? null : DealerInfoAddressModel.fromJson(json["address"]),
        dealerPaymentPos: json["dealer_payment_pos"] == null
            ? []
            : List<DealerInfoPaymentPoModel>.from(
                json["dealer_payment_pos"]!.map((x) => DealerInfoPaymentPoModel.fromJson(x))),
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

class DealerInfoAddressModel {
  DealerInfoAddressModel({
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

  factory DealerInfoAddressModel.fromJson(Map<String, dynamic> json) => DealerInfoAddressModel(
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

class DealerInfoPaymentPoModel {
  DealerInfoPaymentPoModel({
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

  factory DealerInfoPaymentPoModel.fromJson(Map<String, dynamic> json) => DealerInfoPaymentPoModel(
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

class DealerInfoPosModel {
  DealerInfoPosModel({
    this.terminalId,
    this.posBrandId,
  });

  String? terminalId;
  String? posBrandId;

  factory DealerInfoPosModel.fromJson(Map<String, dynamic> json) => DealerInfoPosModel(
        terminalId: json["terminal_id"],
        posBrandId: json["pos_brand_id"],
      );

  Map<String, dynamic> toJson() => {
        "terminal_id": terminalId,
        "pos_brand_id": posBrandId,
      };
}
