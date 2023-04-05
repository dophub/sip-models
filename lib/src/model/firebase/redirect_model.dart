import 'package:background_json_parser/background_json_parser.dart';

class RedirectModel extends IBaseModel<RedirectModel> {
  RedirectModel({
    this.typeId,
    this.jsonData,
  });

  String? typeId;
  RedirectDataModel? jsonData;

  @override
  RedirectModel fromJson(json) {
    typeId = json["typeid"];
    jsonData = RedirectDataModel().fromJson(json["json_data"]);
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "typeid": typeId,
        "json_data": jsonData?.toJson(),
      };
}

class RedirectDataModel extends IBaseModel<RedirectDataModel> {
  RedirectDataModel({
    this.typeId,
    this.module,
    this.page,
    this.qr,
  });

  String? typeId;
  String? module;
  String? page;
  String? qr;

  @override
  RedirectDataModel fromJson(Map<String, dynamic> json) {
    typeId = json["typeid"];
    module = json["module"];
    page = json["page"];
    qr = json["qr"];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "typeid": typeId,
        "module": module,
        "page": page,
        "qr": qr,
      };
}
