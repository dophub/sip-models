import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/parameters/parameters_Model.dart';

class AddLocalCustomerModel extends IBaseModel<AddLocalCustomerModel> {
  final String? message;
  final String? code;
  final AddLocalCustomerDataModel? data;

  AddLocalCustomerModel({
    this.message,
    this.code,
    this.data,
  });

  @override
  fromJson(Map<String, dynamic> json) => AddLocalCustomerModel(
        message: json["message"],
        code: json["code"],
        data: AddLocalCustomerDataModel().fromJson(json["data"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "message": message,
        "code": code,
        "data": data!.toJson(),
      };
}

class AddLocalCustomerDataModel extends IBaseModel<AddLocalCustomerDataModel> {
  final AddLocalCustomerAddressModel? address;
  final List<AddLocalCustomerAddressModel>? addresses;
  final String? ssoId;
  final int? id;
  String? firstName;
  String? lastName;
  String? mobilePhone;
  AddLocalCustomerAddressModel? selectedAddress; // kullanıcının seçtiği adres

  AddLocalCustomerDataModel({
    this.addresses,
    this.address,
    this.firstName,
    this.lastName,
    this.mobilePhone,
    this.ssoId,
    this.id,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    final AddLocalCustomerAddressModel? _address;
    final List<AddLocalCustomerAddressModel> _addresses = [];
    if (json["address"] is List) {
      _addresses.addAll(List<AddLocalCustomerAddressModel>.from(
          json["address"].map((e) => AddLocalCustomerAddressModel().fromJson(e))));
      _address = null;
    } else if (json["address"] != null) {
      _address = AddLocalCustomerAddressModel().fromJson(json["address"]);
      _addresses.add(_address);
    } else {
      _address = null;
    }

    return AddLocalCustomerDataModel(
      address: _address,
      addresses: _addresses,
      firstName: json["first_name"],
      lastName: json["last_name"],
      mobilePhone: json["mobile_phone"],
      ssoId: json["sso_id"],
      id: json["id"],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        "address": address!.toJson(),
        "first_name": firstName,
        "last_name": lastName,
        "mobile_phone": mobilePhone,
        "sso_id": ssoId,
        "id": id,
      };
}

/// -
class AddLocalCustomerAddressModel extends IBaseModel<AddLocalCustomerAddressModel> {
  final int? id;
  final String? addressName;
  final String? address;
  final String? buildingNumber;
  final String? floor;
  final String? flatNumber;
  final String? addressRoute;
  final String? latlng;
  final String? recordDate;
  final String? addressTypeId;
  final int? cityId;
  final int? customerId;
  final int? districtId;
  final int? neighborhoodId;
  final bool? isActive;
  final AddLocalCustomerCityModel? city;
  final AddLocalCustomerDistrictModel? district;
  final AddLocalCustomerNeighborhoodModel? neighborhood;
  final AddressType? addressType;

  AddLocalCustomerAddressModel({
    this.id,
    this.addressName,
    this.address,
    this.buildingNumber,
    this.floor,
    this.flatNumber,
    this.addressRoute,
    this.latlng,
    this.recordDate,
    this.addressTypeId,
    this.cityId,
    this.customerId,
    this.districtId,
    this.neighborhoodId,
    this.isActive,
    this.city,
    this.district,
    this.neighborhood,
    this.addressType,
  });

  @override
  fromJson(Map<String, dynamic> json) => AddLocalCustomerAddressModel(
        id: json["id"],
        addressName: json["address_name"],
        address: json["address"],
        buildingNumber: json["building_number"],
        floor: json["floor"],
        flatNumber: json["flat_number"],
        addressRoute: json["address_route"],
        latlng: json["latlng"],
        recordDate: json["record_date"],
        addressTypeId: json["address_type_id"],
        cityId: json["city_id"],
        customerId: json["customer_id"],
        districtId: json["district_id"],
        neighborhoodId: json["neighborhood_id"],
        isActive: json["is_active"],
        city: AddLocalCustomerCityModel.fromJson(json["city"]),
        district: AddLocalCustomerDistrictModel.fromJson(json["district"]),
        neighborhood: AddLocalCustomerNeighborhoodModel.fromJson(json["neighborhood"]),
        addressType: AddressType.fromJson(json["address_type"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "address_name": addressName,
        "address": address,
        "building_number": buildingNumber,
        "floor": floor,
        "flat_number": flatNumber,
        "address_route": addressRoute,
        "latlng": latlng,
        "record_date": recordDate,
        "address_type_id": addressTypeId,
        "city_id": cityId,
        "customer_id": customerId,
        "district_id": districtId,
        "neighborhood_id": neighborhoodId,
        "is_active": isActive,
        "city": city!.toJson(),
        "district": district!.toJson(),
        "neighborhood": neighborhood!.toJson(),
        "address_type": addressType!.toJson(),
      };
}

class AddLocalCustomerCityModel {
  final int? id;
  final String? name;
  final String? plateCode;

  AddLocalCustomerCityModel({
    this.id,
    this.name,
    this.plateCode,
  });

  factory AddLocalCustomerCityModel.fromJson(Map<String, dynamic> json) => AddLocalCustomerCityModel(
        id: json["id"],
        name: json["name"],
        plateCode: json["plate_code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "plate_code": plateCode,
      };
}

class AddLocalCustomerDistrictModel {
  final int? id;
  final String? name;
  final int? cityId;
  final int? districtKey;

  AddLocalCustomerDistrictModel({
    this.id,
    this.name,
    this.cityId,
    this.districtKey,
  });

  factory AddLocalCustomerDistrictModel.fromJson(Map<String, dynamic> json) => AddLocalCustomerDistrictModel(
        id: json["id"],
        name: json["name"],
        cityId: json["city_id"],
        districtKey: json["district_key"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city_id": cityId,
        "district_key": districtKey,
      };
}

class AddLocalCustomerNeighborhoodModel {
  final int? id;
  final String? name;
  final int? neighborhoodKey;
  final int? districtId;

  AddLocalCustomerNeighborhoodModel({
    this.id,
    this.name,
    this.neighborhoodKey,
    this.districtId,
  });

  factory AddLocalCustomerNeighborhoodModel.fromJson(Map<String, dynamic> json) => AddLocalCustomerNeighborhoodModel(
        id: json["id"],
        name: json["name"],
        neighborhoodKey: json["neighborhood_key"],
        districtId: json["district_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "neighborhood_key": neighborhoodKey,
        "district_id": districtId,
      };
}
