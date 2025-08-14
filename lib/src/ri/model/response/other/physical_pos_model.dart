import 'package:background_json_parser/background_json_parser.dart';

class PhysicalPosModel extends IBaseModel<PhysicalPosModel> {
  String? id;
  String? title;
  String? serialNo;
  String? gateway;
  bool? status;

  PhysicalPosModel({
    this.id,
    this.title,
    this.serialNo,
    this.gateway,
    this.status,
  });

  @override
  fromJson(Map<String, dynamic> json) => PhysicalPosModel(
        id: json["id"],
        title: json["title"],
        serialNo: json["serial_no"],
        gateway: json["gateway"],
        status: json["status"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "serial_no": serialNo,
        "gateway": gateway,
        "status": status,
      };
}
