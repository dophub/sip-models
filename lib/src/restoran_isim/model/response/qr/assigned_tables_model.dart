import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

class AssignedTablesModel extends IBaseModel<AssignedTablesModel> {
  AssignedTablesModel({
    this.stationName,
    this.stationCode,
    this.tables,
  });

  String? stationName;
  String? stationCode;
  List<TableModel>? tables;

  @override
  AssignedTablesModel fromJson(Map json) => AssignedTablesModel(
        stationName: json['station_name'],
        stationCode: json['station_code'],
        tables: List<TableModel>.from(json['tables'].map((x) => TableModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
