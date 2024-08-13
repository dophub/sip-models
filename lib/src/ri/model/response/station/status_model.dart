class TableOrderStatusModel {
  String? statusCode;
  String? statusName;

  TableOrderStatusModel({this.statusCode, this.statusName});

  factory TableOrderStatusModel.fromJson(Map<String, dynamic> json) => TableOrderStatusModel(
        statusCode: json['status_code'] as String?,
        statusName: json['status_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'status_code': statusCode,
        'status_name': statusName,
      };
}
