import 'package:background_json_parser/background_json_parser.dart';

import '../../../../ri_models.dart';

class GetReportTypesModel extends IBaseModel<GetReportTypesModel> implements IMultiItemPickerWidgetModel {
  String reportTitle;
  String reportId;
  String endpointAddress;
  String method;
  GetReportTypesPayloadModel payload;

  GetReportTypesModel({
    required this.reportTitle,
    required this.reportId,
    required this.endpointAddress,
    required this.method,
    required this.payload,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetReportTypesModel(
        reportTitle: json["report_title"],
        reportId: json["report_id"],
        endpointAddress: json["endpoint_address"],
        method: json["method"],
        payload: GetReportTypesPayloadModel.fromJson(json["payload"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "report_title": reportTitle,
        "report_id": reportId,
        "endpoint_address": endpointAddress,
        "method": method,
        "payload": payload.toJson(),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => reportTitle;
}

class GetReportTypesPayloadModel {
  List<int> productIds;
  List<String> status;
  DateTime startDate;
  DateTime endDate;

  GetReportTypesPayloadModel({
    required this.productIds,
    required this.status,
    required this.startDate,
    required this.endDate,
  });

  factory GetReportTypesPayloadModel.fromJson(Map<String, dynamic> json) => GetReportTypesPayloadModel(
        productIds: List<int>.from(json["product_ids"].map((x) => x)),
        status: List<String>.from(json["status"].map((x) => x)),
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
      );

  Map<String, dynamic> toJson() => {
        "product_ids": List<dynamic>.from(productIds.map((x) => x)),
        "status": List<dynamic>.from(status.map((x) => x)),
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
      };
}
