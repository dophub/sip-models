import 'package:background_json_parser/background_json_parser.dart';

import 'table_model.dart';

class StationModel extends IBaseModel<StationModel> {
  String? stationCode;
  String? stationName;
  String? floor;
  List<StationTableModel>? tables;

  StationModel({
    this.stationCode,
    this.stationName,
    this.floor,
    this.tables,
  });

  @override
  fromJson(Map<String, dynamic> json) => StationModel(
        stationCode: json['station_code'] as String?,
        stationName: json['station_name'] as String?,
        floor: json['floor'] as String?,
        tables: (json['tables'] as List<dynamic>?)
            ?.map((e) => StationTableModel().fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'station_code': stationCode,
        'station_name': stationName,
        'floor': floor,
        'tables': tables?.map((e) => e.toJson()).toList(),
      };
}
