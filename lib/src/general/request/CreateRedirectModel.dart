import 'package:background_json_parser/background_json_parser.dart';

class CreateRedirectModel extends IBaseModel<CreateRedirectModel> {
  String? typeid;
  JsonData? jsonData;

  CreateRedirectModel({
    this.typeid,
    this.jsonData,
  });

  @override
  fromJson(Map<String, dynamic> json) => CreateRedirectModel(
        typeid: json["typeid"],
        jsonData: JsonData.fromJson(json["json_data"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "typeid": typeid,
        "json_data": jsonData?.toJson(),
      };
}

class JsonData {
  String? module;
  String? page;
  String? qr;

  JsonData({
    this.module,
    this.page,
    this.qr,
  });

  factory JsonData.fromJson(Map<String, dynamic> json) => JsonData(
        module: json["module"],
        page: json["page"],
        qr: json["qr"],
      );

  Map<String, dynamic> toJson() => {
        "module": module,
        "page": page,
        "qr": qr,
      };
}
