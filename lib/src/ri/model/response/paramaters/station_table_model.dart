import 'table_param_model.dart';

class ParamStationTableModel {
  List<TableParamModel>? tables;
  String? stationCode;
  String? stationName;

  ParamStationTableModel({this.tables, this.stationCode, this.stationName});

  factory ParamStationTableModel.fromJson(Map<String, dynamic> json) => ParamStationTableModel(
        tables: (json['tables'] as List<dynamic>?)?.map((e) => TableParamModel.fromJson(e as Map<String, dynamic>)).toList(),
        stationCode: json['station_code'] as String?,
        stationName: json['station_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'tables': tables?.map((e) => e.toJson()).toList(),
        'station_code': stationCode,
        'station_name': stationName,
      };
}
