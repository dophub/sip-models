import 'package:background_json_parser/background_json_parser.dart';

class UpdateDealerInfoModel extends IBaseModel<UpdateDealerInfoModel> {
  final String? dealerName;
  final int? cityId;
  final int? neighborhoodId;
  final int? districtId;
  final String? orderPhone1;
  final String? orderPhone2;
  final String? latlng;
  final int? priceListId;
  final String? email;
  final String? mobilePhone;
  final String? name;
  final String? surname;

  UpdateDealerInfoModel({
    required this.dealerName,
    required this.cityId,
    required this.neighborhoodId,
    required this.districtId,
    required this.orderPhone1,
    required this.orderPhone2,
    required this.latlng,
    required this.priceListId,
    required this.email,
    required this.mobilePhone,
    required this.name,
    required this.surname,
  });

  @override
  fromJson(Map<String, dynamic> json) => UpdateDealerInfoModel(
        dealerName: json["dealer_name"],
        cityId: json["city_id"],
        neighborhoodId: json["neighborhood_id"],
        districtId: json["district_id"],
        orderPhone1: json["order_phone_1"],
        orderPhone2: json["order_phone_2"],
        latlng: json["latlng"],
        priceListId: json["price_list_id"],
        email: json["email"],
        mobilePhone: json["mobile_phone"],
        name: json["name"],
        surname: json["surname"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "dealer_name": dealerName,
        "city_id": cityId,
        "neighborhood_id": neighborhoodId,
        "district_id": districtId,
        "order_phone_1": orderPhone1,
        "order_phone_2": orderPhone2,
        "latlng": latlng,
        "price_list_id": priceListId,
        "email": email,
        "mobile_phone": mobilePhone,
        "name": name,
        "surname": surname,
      };
}
