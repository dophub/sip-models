import 'status_model.dart';

class StationServiceModel {
  int? id;
  int? person;
  num? total;
  String? createSideId;
  TableOrderStatusModel? status;
  double? paymentAmount;

  StationServiceModel({
    this.id,
    this.person,
    this.total, // toplam masa tutarı
    this.createSideId,
    this.status,
    this.paymentAmount, // Ödenen tutar
  });

  factory StationServiceModel.fromJson(Map<String, dynamic> json) => StationServiceModel(
        id: json['id'] as int?,
        person: json['person'] as int?,
        total: json['total'] as num?,
        createSideId: json['create_side_id'] as String?,
        status: json['status'] == null ? null : TableOrderStatusModel.fromJson(json['status'] as Map<String, dynamic>),
        paymentAmount: json['payment_amount']?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'person': person,
        'total': total,
        'create_side_id': createSideId,
        'status': status?.toJson(),
        'payment_amount': paymentAmount,
      };
}
