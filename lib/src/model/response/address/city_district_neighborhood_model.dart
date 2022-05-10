import 'dart:convert';

import 'package:background_json_parser/json_parser.dart';

class CityDistrictNeighborhoodModel extends IBaseModel<CityDistrictNeighborhoodModel> {
  CityDistrictNeighborhoodModel({
    this.cityId,
    this.cityName,
    this.districts,
    this.districtId,
    this.districtName,
    this.neighborhoods,
    this.cities,
  });

  int? cityId;
  String? cityName;
  List<PlaceModel>? districts;
  int? districtId;
  String? districtName;
  List<PlaceModel>? neighborhoods;
  List<PlaceModel>? cities;

  @override
  fromJson(Map<dynamic, dynamic> json) => CityDistrictNeighborhoodModel(
        cityId: json["city_id"],
        cityName: json["city_name"],
        districts: List<PlaceModel>.from(json["districts"].map((x) => PlaceModel().fromJson(x))),
        districtId: json["district_id"],
        districtName: json["district_name"],
        neighborhoods:
            List<PlaceModel>.from(json["neighborhoods"].map((x) => PlaceModel().fromJson(x))),
        cities: List<PlaceModel>.from(json["cities"].map((x) => PlaceModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

@Deprecated("""
Use [PlaceModel] instead [Place] 
""")
class Place {
  Place({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  fromJson(Map<String, dynamic> json) => Place(
        id: json["id"],
        name: json["name"],
      );
}

class PlaceModel extends IBaseModel<PlaceModel> {
  PlaceModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  @override
  fromJson(Map<String, dynamic> json) => PlaceModel(
        id: json["id"],
        name: json["name"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
