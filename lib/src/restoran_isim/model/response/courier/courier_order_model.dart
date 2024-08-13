import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/request.dart';

class CourierOrderModel extends IBaseModel<CourierOrderModel> {
  CourierOrderModel({
    this.orderId,
    this.orderNote,
    this.convertFullname,
    this.address,
    this.paymentType,
  });

  int? orderId;
  String? orderNote;
  PaymentInfo? paymentType;
  String? convertFullname;
  Address? address;


  @override
  fromJson(Map json) => CourierOrderModel(
        orderId: json['order_id'],
        convertFullname: json['convert_fullname'],
        orderNote: json['order_note'],
        paymentType: json['payment_info'],
        address: Address.fromMap(json['address']),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class Address {
  Address({
    required this.address,
    required this.addressRoute,
    required this.buildingNumber,
    required this.floor,
    required this.flatNumber,
    required this.latlng,
  });

  String address;
  String addressRoute;
  String buildingNumber;
  String floor;
  String flatNumber;
  String latlng;

  factory Address.fromMap(Map<String, dynamic> json) => Address(
        address: json['address'],
        addressRoute: json['address_route'],
        buildingNumber: json['building_number'],
        floor: json['floor'],
        flatNumber: json['flat_number'],
        latlng: json['latlng'],
      );

  Map<String, dynamic> toMap() => {
        'address': address,
        'address_route': addressRoute,
        'building_number': buildingNumber,
        'floor': floor,
        'flat_number': flatNumber,
        'latlng': latlng,
      };
}
