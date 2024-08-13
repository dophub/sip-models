import 'status_model.dart';

class StationServiceModel {
  int? id;
  int? person;
  num? total;
  String? createSideId;
  TableOrderStatusModel? status;

  StationServiceModel({
    this.id,
    this.person,
    this.total,
    this.createSideId,
    this.status,
  });

  factory StationServiceModel.fromJson(Map<String, dynamic> json) => StationServiceModel(
        id: json['id'] as int?,
        person: json['person'] as int?,
        total: json['total'] as num?,
        createSideId: json['create_side_id'] as String?,
        status: json['status'] == null ? null : TableOrderStatusModel.fromJson(json['status'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'person': person,
        'total': total,
        'create_side_id': createSideId,
        'status': status?.toJson(),
      };
}
