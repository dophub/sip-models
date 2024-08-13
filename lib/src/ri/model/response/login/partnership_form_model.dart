import 'package:background_json_parser/background_json_parser.dart';

class PartnershipFormModel extends IBaseModel<PartnershipFormModel> {
  PartnershipFormModel({
    this.firmName,
    this.kitcenId,
    this.cityName,
    this.address,
    this.authorizedName,
    this.mobilePhone,
    this.email,
    this.firmTypes,
  });

  String? firmName;
  String? kitcenId;
  String? cityName;
  String? address;
  String? authorizedName;
  String? mobilePhone;
  String? email;
  List<dynamic>? firmTypes;

  @override
  PartnershipFormModel fromJson(Map json) => PartnershipFormModel(
        firmName: json['firm_name'],
        kitcenId: json['kitcen_id'],
        cityName: json['city_name'],
        address: json['address'],
        authorizedName: json['authorized_name'],
        mobilePhone: json['mobile_phone'],
        email: json['email'],
        firmTypes: List<dynamic>.from(json['firm_types'].map((x) => x)),
      );

  @override
  Map<String, dynamic> toJson()=> {
    'firm_name': firmName,
    'kitcen_id': kitcenId,
    'city_name': cityName,
    'address': address,
    'authorized_name': authorizedName,
    'mobile_phone': mobilePhone,
    'email': email,
    'firm_types': List<dynamic>.from(firmTypes!.map((x) => x)),
  };
}
