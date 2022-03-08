
import 'dart:convert';

CityDistrictNeighborhoodModel getCityDistrictNeighborhoodModelFromJson(
        String str) =>
    CityDistrictNeighborhoodModel.fromJson(json.decode(str));

class CityDistrictNeighborhoodModel {
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
  List<Place>? districts;
  int? districtId;
  String? districtName;
  List<Place>? neighborhoods;
  List<Place>? cities;

  factory CityDistrictNeighborhoodModel.fromJson(Map<String, dynamic> json) =>
      CityDistrictNeighborhoodModel(
        cityId: json["city_id"],
        cityName: json["city_name"],
        districts:
            List<Place>.from(json["districts"].map((x) => Place.fromJson(x))),
        districtId: json["district_id"],
        districtName: json["district_name"],
        neighborhoods: List<Place>.from(
            json["neighborhoods"].map((x) => Place.fromJson(x))),
        cities: List<Place>.from(json["cities"].map((x) => Place.fromJson(x))),
      );
}

List<Place> placeFromJson(String str) =>
    List<Place>.from(json.decode(str).map((x) => Place.fromJson(x)));

class Place {
  Place({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json["id"],
        name: json["name"],
      );

}
