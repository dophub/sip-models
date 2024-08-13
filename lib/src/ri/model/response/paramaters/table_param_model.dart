
class TableParamModel {
  String? tableCode;
  String? tableName;

  TableParamModel({this.tableCode, this.tableName});

  factory TableParamModel.fromJson(Map<String, dynamic> json) => TableParamModel(
        tableCode: json['table_code'] as String?,
        tableName: json['table_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'table_code': tableCode,
        'table_name': tableName,
      };
}
