import 'package:background_json_parser/background_json_parser.dart';

import 'table_order_model.dart';

class MarketplaceOrderModel extends IBaseModel<MarketplaceOrderModel> with ActiveOrderModelExtent {
  List<TableOrderItemModel>? items;
  String? title;
  MarketplaceOrderOrderPointModel? status;
  MarketplaceOrderAddressModel? address;
  MarketplaceOrderOrderPointModel? payment;
  MarketplaceOrderCustomerModel? customer;
  int? orderId;
  String? cityName;
  String? orderNote;
  double? tipAmount;
  MarketplaceOrderOrderPointModel? orderPoint;
  String? recordDate;
  DateTime? updateDate;
  String? orderNumber;
  double? totalAmount;
  String? districtName;
  bool? isSyncOrder;
  MarketplaceOrderOrderPointModel? sessionPoint;
  String? infoPhoneNumber;
  String? neighborhoodName;
  String? clientPointId;

  MarketplaceOrderModel({
    this.items,
    this.title,
    this.status,
    this.address,
    this.payment,
    this.customer,
    this.orderId,
    this.cityName,
    this.orderNote,
    this.tipAmount,
    this.orderPoint,
    this.recordDate,
    this.updateDate,
    this.orderNumber,
    this.totalAmount,
    this.districtName,
    this.isSyncOrder,
    this.sessionPoint,
    this.infoPhoneNumber,
    this.neighborhoodName,
    this.clientPointId,
  }) {
    super.id = orderId;
  }

  @override
  fromJson(Map<String, dynamic> json) => MarketplaceOrderModel(
        items: List<TableOrderItemModel>.from(json["items"].map((x) => TableOrderItemModel.fromJson(x))),
        title: json["title"],
        status: MarketplaceOrderOrderPointModel.fromJson(json["status"]),
        address: MarketplaceOrderAddressModel.fromJson(json["address"]),
        payment: MarketplaceOrderOrderPointModel.fromJson(json["payment"]),
        customer: MarketplaceOrderCustomerModel.fromJson(json["customer"]),
        orderId: json["order_id"],
        cityName: json["city_name"],
        orderNote: json["order_note"],
        tipAmount: json["tip_amount"]?.toDouble() ?? 0.0,
        orderPoint: MarketplaceOrderOrderPointModel.fromJson(json["order_point"]),
        recordDate: json["record_date"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
        orderNumber: json["order_number"],
        totalAmount: json["total_amount"]?.toDouble(),
        districtName: json["district_name"],
        isSyncOrder: json["is_sync_order"],
        sessionPoint: MarketplaceOrderOrderPointModel.fromJson(json["session_point"]),
        infoPhoneNumber: json["info_phone_number"],
        neighborhoodName: json["neighborhood_name"],
        clientPointId: json["client_point_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "status": status?.toJson(),
        "address": address?.toJson(),
        "payment": payment?.toJson(),
        "customer": customer?.toJson(),
        "order_id": orderId,
        "city_name": cityName,
        "order_note": orderNote,
        "tip_amount": tipAmount,
        "order_point": orderPoint?.toJson(),
        "record_date": recordDate,
        "update_date": updateDate,
        "order_number": orderNumber,
        "total_amount": totalAmount,
        "district_name": districtName,
        "is_sync_order": isSyncOrder,
        "session_point": sessionPoint?.toJson(),
        "info_phone_number": infoPhoneNumber,
        "neighborhood_name": neighborhoodName,
        "client_point_id": clientPointId,
      };
}

class MarketplaceOrderAddressModel {
  String? floor;
  String? address;
  String? location;
  String? flatNumber;
  String? addressName;
  String? addressRoute;
  String? buildingNumber;

  MarketplaceOrderAddressModel({
    this.floor,
    this.address,
    this.location,
    this.flatNumber,
    this.addressName,
    this.addressRoute,
    this.buildingNumber,
  });

  factory MarketplaceOrderAddressModel.fromJson(Map<String, dynamic> json) => MarketplaceOrderAddressModel(
        floor: json["floor"],
        address: json["address"],
        location: json["location"],
        flatNumber: json["flat_number"],
        addressName: json["address_name"],
        addressRoute: json["address_route"],
        buildingNumber: json["building_number"],
      );

  Map<String, dynamic> toJson() => {
        "floor": floor,
        "address": address,
        "location": location,
        "flat_number": flatNumber,
        "address_name": addressName,
        "address_route": addressRoute,
        "building_number": buildingNumber,
      };
}

class MarketplaceOrderCustomerModel {
  String? lastName;
  String? firstName;
  String? mobilePhone;

  MarketplaceOrderCustomerModel({
    this.lastName,
    this.firstName,
    this.mobilePhone,
  });

  factory MarketplaceOrderCustomerModel.fromJson(Map<String, dynamic> json) => MarketplaceOrderCustomerModel(
        lastName: json["last_name"],
        firstName: json["first_name"],
        mobilePhone: json["mobile_phone"],
      );

  Map<String, dynamic> toJson() => {
        "last_name": lastName,
        "first_name": firstName,
        "mobile_phone": mobilePhone,
      };
}

class MarketplaceOrderOrderPointModel {
  String? code;
  String? name;

  MarketplaceOrderOrderPointModel({
    this.code,
    this.name,
  });

  factory MarketplaceOrderOrderPointModel.fromJson(Map<String, dynamic> json) => MarketplaceOrderOrderPointModel(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
