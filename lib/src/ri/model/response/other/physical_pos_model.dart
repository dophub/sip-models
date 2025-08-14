import 'package:background_json_parser/background_json_parser.dart';

import '../../../../../ri_models.dart';

class PhysicalPosModel extends IBaseModel<PhysicalPosModel> implements IMultiItemPickerWidgetModel {
  String? id;
  String? name;
  String? serialNo;
  String? gateway;
  bool? status;

  PhysicalPosModel({
    this.id,
    this.name,
    this.serialNo,
    this.gateway,
    this.status,
  });

  @override
  fromJson(Map<String, dynamic> json) => PhysicalPosModel(
        id: json["id"],
        name: json["title"],
        serialNo: json["serial_no"],
        gateway: json["gateway"],
        status: json["status"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": name,
        "serial_no": serialNo,
        "gateway": gateway,
        "status": status,
      };

  @override
  bool selectedValue = false;

  @override
  bool? get isDisable => false;

  @override
  String get title => name ?? '-';
}
