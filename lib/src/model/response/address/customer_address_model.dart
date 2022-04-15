import 'package:sip_models/response.dart';

class CustomerAddressModel extends IBaseModel<CustomerAddressModel> {
  CustomerAddressModel({
    this.id,
    this.floor,
    this.latlng,
    this.address,
    this.cityId,
    this.cityName,
    this.districtId,
    this.flatNumber,
    this.addressName,
    this.addressRoute,
    this.districtName,
    this.buildingNumber,
    this.neighborhoodId,
    this.neighborhoodName,
    this.addressTypeId,
    this.addressTypeName,
    this.icon,
    this.isAvailable,
    this.distance,
  });

  int? id;
  String? floor;
  String? latlng;
  String? address;
  int? cityId;
  String? cityName;
  int? districtId;
  String? flatNumber;
  String? addressName;
  String? addressRoute;
  String? districtName;
  String? buildingNumber;
  int? neighborhoodId;
  String? neighborhoodName;
  String? addressTypeId;
  String? addressTypeName;
  String? icon;
  bool?
      isAvailable; // adres belirli işletmenini hizmet içinde mi dışında mı kalıyor
  int? distance;

  CustomerAddressModel copyWith() {
    return CustomerAddressModel(
      id: id,
      floor: floor,
      latlng: latlng,
      address: address,
      cityId: cityId,
      cityName: cityName,
      districtId: districtId,
      flatNumber: flatNumber,
      addressName: addressName,
      addressRoute: addressRoute,
      districtName: districtName,
      buildingNumber: buildingNumber,
      neighborhoodId: neighborhoodId,
      neighborhoodName: neighborhoodName,
      addressTypeId: addressTypeId,
      addressTypeName: addressTypeName,
      icon: icon,
      isAvailable: isAvailable,
      distance: distance,
    );
  }

  @override
  fromJson(Map<dynamic, dynamic> json) => CustomerAddressModel(
        id: json["id"],
        floor: json["floor"],
        latlng: json["latlng"],
        address: json["address"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        districtId: json["district_id"],
        flatNumber: json["flat_number"],
        addressName: json["address_name"],
        addressRoute: json["address_route"],
        districtName: json["district_name"],
        buildingNumber: json["building_number"],
        neighborhoodId: json["neighborhood_id"],
        neighborhoodName: json["neighborhood_name"],
        addressTypeId: json["address_type_id"],
        addressTypeName: json["address_type_name"],
        icon: json["icon"],
        isAvailable: json["is_available"],
        distance: json["distance"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "floor": floor,
        "latlng": latlng,
        "address": address,
        "city_id": cityId,
        "city_name": cityName,
        "district_id": districtId,
        "flat_number": flatNumber,
        "address_name": addressName,
        "address_route": addressRoute,
        "district_name": districtName,
        "building_number": buildingNumber,
        "neighborhood_id": neighborhoodId,
        "neighborhood_name": neighborhoodName,
        "address_type_id": addressTypeId,
        "address_type_name": addressTypeName,
        "icon": icon,
        "is_available": isAvailable,
        "distance": distance,
      };
}
