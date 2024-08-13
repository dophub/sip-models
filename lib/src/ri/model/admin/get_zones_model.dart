import 'package:background_json_parser/background_json_parser.dart';

class GetZonesModel extends IBaseModel<GetZonesModel> {
  int? id;
  String? name;
  int? cityId;
  int? districtKey;
  bool? isActive;
  List<GetZonesNeighborhoodModel>? neighborhoods;

  GetZonesModel({
    this.id,
    this.name,
    this.cityId,
    this.districtKey,
    this.isActive,
    this.neighborhoods,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetZonesModel(
        id: json["id"],
        name: json["name"],
        cityId: json["city_id"],
        districtKey: json["district_key"],
        isActive: json["is_active"],
        neighborhoods: json["neighborhoods"] == null
            ? []
            : List<GetZonesNeighborhoodModel>.from(
                json["neighborhoods"].map((x) => GetZonesNeighborhoodModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city_id": cityId,
        "district_key": districtKey,
        "is_active": isActive,
        "neighborhoods": List<dynamic>.from(neighborhoods!.map((x) => x.toJson())),
      };
}

class GetZonesNeighborhoodModel {
  int? id;
  String? name;
  int? neighborhoodKey;
  int? districtId;
  bool? isActive;
  int? avgServiceTime;
  int? minPackageAmount;
  int? neighborhoodId;
  bool isUpdated = false;

  GetZonesNeighborhoodModel({
    this.id,
    this.name,
    this.neighborhoodKey,
    this.districtId,
    this.isActive,
    this.avgServiceTime,
    this.minPackageAmount,
    this.neighborhoodId,
  });

  GetZonesNeighborhoodModel copyWith({
    int? id,
    String? name,
    int? neighborhoodKey,
    dynamic integrationCode,
    int? districtId,
    bool? isActive,
    int? avgServiceTime,
    int? minPackageAmount,
    int? neighborhoodId,
  }) =>
      GetZonesNeighborhoodModel(
        id: id ?? this.id,
        name: name ?? this.name,
        neighborhoodKey: neighborhoodKey ?? this.neighborhoodKey,
        districtId: districtId ?? this.districtId,
        isActive: isActive ?? this.isActive,
        avgServiceTime: avgServiceTime ?? this.avgServiceTime,
        minPackageAmount: minPackageAmount ?? this.minPackageAmount,
        neighborhoodId: neighborhoodId ?? this.neighborhoodId,
      );

  factory GetZonesNeighborhoodModel.fromJson(Map<String, dynamic> json) => GetZonesNeighborhoodModel(
        id: json["id"],
        name: json["name"],
        neighborhoodKey: json["neighborhood_key"],
        districtId: json["district_id"],
        isActive: json["is_active"] ?? false,
        avgServiceTime: json["avg_service_time"],
        minPackageAmount: json["min_package_amount"],
        neighborhoodId: json["neighborhood_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "neighborhood_key": neighborhoodKey,
        "district_id": districtId,
        "is_active": isActive,
        "avg_service_time": avgServiceTime ?? 0,
        "min_package_amount": minPackageAmount ?? 0,
        "neighborhood_id": neighborhoodId,
        "is_updated": isUpdated,
      };
}
