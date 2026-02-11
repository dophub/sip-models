import 'status_model.dart';

class StationServiceModel {
  int? id;
  int? person;
  double? total;
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
        id: json['id'],
        person: json['person'],
        total: json['total']?.toDouble(),
        createSideId: json['create_side_id'],
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
