import 'package:background_json_parser/background_json_parser.dart';

import '../other/multi_item_picker_widget_model.dart';

class BrandDealerModel extends IBaseModel<BrandDealerModel> implements IMultiItemPickerWidgetModel {
  int? id;
  int? brandId;
  String? dealerCode;
  String? dealerName;
  bool? listingInWeb;
  _BrandDealerCityModel? city;
  _BrandDealerCityModel? district;
  _BrandDealerCityModel? neighborhood;

  BrandDealerModel({
    this.id,
    this.brandId,
    this.dealerCode,
    this.dealerName,
    this.listingInWeb,
    this.city,
    this.district,
    this.neighborhood,
  });

  @override
  fromJson(Map<String, dynamic> json) => BrandDealerModel(
        id: json["id"],
        brandId: json["brand_id"],
        dealerCode: json["dealer_code"],
        dealerName: json["dealer_name"],
        listingInWeb: json["listing_in_web"],
        city: _BrandDealerCityModel.fromJson(json["city"]),
        district: _BrandDealerCityModel.fromJson(json["district"]),
        neighborhood: _BrandDealerCityModel.fromJson(json["neighborhood"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_id": brandId,
        "dealer_code": dealerCode,
        "dealer_name": dealerName,
        "listing_in_web": listingInWeb,
        "city": city?.toJson(),
        "district": district?.toJson(),
        "neighborhood": neighborhood?.toJson(),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => dealerName!;
}

class _BrandDealerCityModel {
  int? id;
  String? name;

  _BrandDealerCityModel({
    this.id,
    this.name,
  });

  _BrandDealerCityModel copyWith({
    int? id,
    String? name,
  }) =>
      _BrandDealerCityModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory _BrandDealerCityModel.fromJson(Map<String, dynamic> json) => _BrandDealerCityModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
