
class AddressByLocation {
  String? name;
  int? neighbourhoodId;
  int? districtId;
  int? cityId;
  String? neighborhoodName;
  String? cityName;
  String? districtName;

  AddressByLocation({
    this.name,
    this.neighbourhoodId,
    this.districtId,
    this.cityId,
    this.neighborhoodName,
    this.cityName,
    this.districtName,
  });

  @override
  String toString() {
    return 'AddressByLocation(name: $name, neighbourhoodId: $neighbourhoodId, districtId: $districtId, cityId: $cityId, neighborhoodName: $neighborhoodName, cityName: $cityName, districtName: $districtName)';
  }

  factory AddressByLocation.fromJson(Map<String, dynamic> json) {
    return AddressByLocation(
      name: json['name'] as String?,
      neighbourhoodId: json['neighbourhood_id'] as int?,
      districtId: json['district_id'] as int?,
      cityId: json['city_id'] as int?,
      neighborhoodName: json['neighborhood_name'] as String?,
      cityName: json['city_name'] as String?,
      districtName: json['district_name'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'neighbourhood_id': neighbourhoodId,
        'district_id': districtId,
        'city_id': cityId,
        'neighborhood_name': neighborhoodName,
        'city_name': cityName,
        'district_name': districtName,
      };

  AddressByLocation copyWith({
    String? name,
    int? neighbourhoodId,
    int? districtId,
    int? cityId,
    String? neighborhoodName,
    String? cityName,
    String? districtName,
  }) {
    return AddressByLocation(
      name: name ?? this.name,
      neighbourhoodId: neighbourhoodId ?? this.neighbourhoodId,
      districtId: districtId ?? this.districtId,
      cityId: cityId ?? this.cityId,
      neighborhoodName: neighborhoodName ?? this.neighborhoodName,
      cityName: cityName ?? this.cityName,
      districtName: districtName ?? this.districtName,
    );
  }

  @override
  int get hashCode =>
      name.hashCode ^
      neighbourhoodId.hashCode ^
      districtId.hashCode ^
      cityId.hashCode ^
      neighborhoodName.hashCode ^
      cityName.hashCode ^
      districtName.hashCode;
}
