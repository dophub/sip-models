import 'package:background_json_parser/background_json_parser.dart';

class NeighborhoodModel extends IBaseModel<NeighborhoodModel> {
  int? id;
  bool? isActive;
  int? neighborhoodId;
  int? avgServiceTime;
  String? neighborhoodName;
  double? minPackageAmount;

  NeighborhoodModel({
    this.id,
    this.isActive,
    this.neighborhoodId,
    this.avgServiceTime,
    this.neighborhoodName,
    this.minPackageAmount,
  });

  @override
  fromJson(Map<String, dynamic> json) => NeighborhoodModel(
        id: json['id'] as int?,
        isActive: json['is_active'] as bool?,
        neighborhoodId: json['neighborhood_id'] as int?,
        avgServiceTime: json['avg_service_time'] as int?,
        neighborhoodName: json['neighborhood_name'] as String?,
        minPackageAmount: json['min_package_amount'] as double?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'is_active': isActive,
        'neighborhood_id': neighborhoodId,
        'avg_service_time': avgServiceTime,
        'neighborhood_name': neighborhoodName,
        'min_package_amount': minPackageAmount,
      };
}
