import 'package:background_json_parser/background_json_parser.dart';

class LocalCustomerModel extends IBaseModel<LocalCustomerModel> {
  final String? customerName;
  final int? customerId;
  final String? mobilePhone;
  final int? districtId;
  final int? neighborhoodId;
  final String? addressType;
  final String? address;
  final String? floor;
  final String? flatNumber;
  final String? buildingNumber;
  final String? addressRoute;

  LocalCustomerModel({
    this.customerName,
    this.customerId,
    this.mobilePhone,
    this.districtId,
    this.neighborhoodId,
    this.addressType,
    this.address,
    this.floor,
    this.flatNumber,
    this.buildingNumber,
    this.addressRoute,
  });

  @override
  fromJson(Map<String, dynamic> json) => LocalCustomerModel(
        customerName: json["customer_name"],
        customerId: json["customer_id"],
        mobilePhone: json["mobile_phone"],
        districtId: json["district_id"],
        neighborhoodId: json["neighborhood_id"],
        addressType: json["address_type"],
        address: json["address"],
        floor: json["floor"],
        flatNumber: json["flat_number"],
        buildingNumber: json["building_number"],
        addressRoute: json["address_route"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "customer_name": customerName,
        "customer_id": customerId,
        "mobile_phone": mobilePhone,
        "district_id": districtId,
        "neighborhood_id": neighborhoodId,
        "address_type": addressType,
        "address": address,
        "floor": floor,
        "flat_number": flatNumber,
        "building_number": buildingNumber,
        "address_route": addressRoute,
      };
}
