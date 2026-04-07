import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/request/order_model.dart';

import '../../../../../response.dart';
import '../../other/order_dealer_info_model.dart';

class CourierOrderModel extends IBaseModel<CourierOrderModel> {
  CourierOrderModel({
    this.orderId,
    this.orderNote,
    this.customerFullname,
    this.address,
    this.paymentType,
    this.dealer,
    this.courier,
  });

  int? orderId;
  String? orderNote;
  PaymentInfo? paymentType;
  String? customerFullname;
  CourierOrderAddressModel? address;
  OrderDealerInfoModel? dealer; // hangi işletmeye sipariş verilmiş
  CourierOrderCourierModel? courier;

  @override
  fromJson(Map json) => CourierOrderModel(
        orderId: json['order_id'],
        customerFullname: json['customer_fullname'],
        orderNote: json['order_note'],
        paymentType: json['payment_info'],
        address: CourierOrderAddressModel.fromMap(json['address']),
        dealer: json['dealer'] == null ? null : OrderDealerInfoModel.fromJson(json['dealer']),
        courier: json["courier"] == null ? null : CourierOrderCourierModel.fromJson(json["courier"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class CourierOrderAddressModel {
  CourierOrderAddressModel({
    required this.address,
    required this.addressName,
    required this.addressRoute,
    required this.buildingNumber,
    required this.floor,
    required this.flatNumber,
    required this.latlng,
  });

  String address;
  String addressName;
  String addressRoute;
  String buildingNumber;
  String floor;
  String flatNumber;
  String latlng;

  factory CourierOrderAddressModel.fromMap(Map<String, dynamic> json) => CourierOrderAddressModel(
        address: json['address'],
        addressName: json['address_name'],
        addressRoute: json['address_route'],
        buildingNumber: json['building_number'],
        floor: json['floor'],
        flatNumber: json['flat_number'],
        latlng: json['latlng'],
      );

  Map<String, dynamic> toMap() => {
        'address': address,
        'address_name': addressName,
        'address_route': addressRoute,
        'building_number': buildingNumber,
        'floor': floor,
        'flat_number': flatNumber,
        'latlng': latlng,
      };
}

class CourierOrderCourierModel {
  int? id;
  String? name;
  String? surname;
  String? fullName;

  CourierOrderCourierModel({
    this.id,
    this.name,
    this.surname,
    this.fullName,
  });

  factory CourierOrderCourierModel.fromJson(Map<String, dynamic> json) => CourierOrderCourierModel(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "surname": surname,
        "full_name": fullName,
      };
}
