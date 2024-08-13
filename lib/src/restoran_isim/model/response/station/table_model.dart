import 'package:background_json_parser/background_json_parser.dart';

import 'service_model.dart';

class StationTableModel extends IBaseModel<StationTableModel> {
  String? tableCode;
  String? tableName;
  String? qrCode;
  String? stationId;
  int? personCount;
  StationServiceModel? service;
  String? paymentModelId;

  StationTableModel({
    this.tableCode,
    this.tableName,
    this.qrCode,
    this.stationId,
    this.personCount,
    this.service,
    this.paymentModelId,
  });

  @override
  Map<String, dynamic> toJson() => {
        'table_code': tableCode,
        'table_name': tableName,
        'qr_code': qrCode,
        'station_id': stationId,
        'person_count': personCount,
        'service': service?.toJson(),
        'payment_model_id': paymentModelId,
      };

  @override
  StationTableModel fromJson(Map<String, dynamic> json) => StationTableModel(
        tableCode: json['table_code'] as String?,
        tableName: json['table_name'] as String?,
        qrCode: json['qr_code'] as String?,
        stationId: json['station_id'] as String?,
        personCount: json['person_count'] as int?,
        service: json['service'] == null ? null : StationServiceModel.fromJson(json['service'] as Map<String, dynamic>),
        paymentModelId: json["payment_model_id"],
      );
}
