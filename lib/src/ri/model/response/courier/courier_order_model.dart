import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/request/order_model.dart';

class CourierOrderModel extends IBaseModel<CourierOrderModel> {
  CourierOrderModel({
    this.orderId,
    this.orderNote,
    this.convertFullname,
    this.address,
    this.paymentType,
    this.dealer,
  });

  int? orderId;
  String? orderNote;
  PaymentInfo? paymentType;
  String? convertFullname;
  _CourierOrderAddressModel? address;
  _DealerModel? dealer;// hangi işletmeye sipariş verilmiş

  @override
  fromJson(Map json) => CourierOrderModel(
        orderId: json['order_id'],
        convertFullname: json['convert_fullname'],
        orderNote: json['order_note'],
        paymentType: json['payment_info'],
        address: _CourierOrderAddressModel.fromMap(json['address']),
        dealer: json['dealer'] == null ? null : _DealerModel.fromMap(json['dealer']),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class _CourierOrderAddressModel {
  _CourierOrderAddressModel({
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

  factory _CourierOrderAddressModel.fromMap(Map<String, dynamic> json) => _CourierOrderAddressModel(
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

class _DealerModel {
  _DealerModel({
    this.dealerId,
    this.dealerName,
  });

  final int? dealerId;
  final String? dealerName;

  factory _DealerModel.fromMap(Map<String, dynamic> json) => _DealerModel(
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
      );

  Map<String, dynamic> toJson() => {
        'dealer_id': dealerId,
        'dealer_name': dealerName,
      };
}
