import 'package:background_json_parser/background_json_parser.dart';

class CreateRedirectModel extends IBaseModel<CreateRedirectModel> {
  String? typeid;
  CreateRedirectDataModel? jsonData;

  CreateRedirectModel({
    this.typeid,
    this.jsonData,
  });

  @override
  fromJson(Map<String, dynamic> json) => CreateRedirectModel(
        typeid: json["typeid"],
        jsonData: CreateRedirectDataModel.fromJson(json["json_data"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "typeid": typeid,
        "json_data": jsonData?.toJson(),
      };
}

class CreateRedirectDataModel {
  String? module;
  String? page;
  String? qr;

  CreateRedirectDataModel({
    this.module,
    this.page,
    this.qr,
  });

  factory CreateRedirectDataModel.fromJson(Map<String, dynamic> json) => CreateRedirectDataModel(
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
