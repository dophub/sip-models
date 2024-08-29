import 'package:background_json_parser/background_json_parser.dart';

import '../../../../ri_models.dart';

class GetReportTypesModel extends IBaseModel<GetReportTypesModel> implements IMultiItemPickerWidgetModel {
  String? reportTitle;
  String? reportId;
  String? endpointAddress;
  String? method;
  Map<String, dynamic>? payload;

  GetReportTypesModel({
    this.reportTitle,
    this.reportId,
    this.endpointAddress,
    this.method,
    this.payload,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetReportTypesModel(
        reportTitle: json["report_title"],
        reportId: json["report_id"],
        endpointAddress: json["endpoint_address"],
        method: json["method"],
        payload: json["payload"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "report_title": reportTitle,
        "report_id": reportId,
        "endpoint_address": endpointAddress,
        "method": method,
        "payload": payload,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => reportTitle ?? '';
}
