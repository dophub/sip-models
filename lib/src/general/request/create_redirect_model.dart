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
  Map<String, dynamic> toJson({Map<String, dynamic> addData = const {}}) => {
        "typeid": typeid,
        "json_data": jsonData?.toJson(addData: addData),
      };
}

class CreateRedirectDataModel {
  String? module;
  String? page;

  CreateRedirectDataModel({
    this.module,
    this.page,
  });

  factory CreateRedirectDataModel.fromJson(Map<String, dynamic> json) {
    return CreateRedirectDataModel(
      module: json["module"],
      page: json["page"],
    );
  }

  Map<String, dynamic> toJson({Map<String, dynamic> addData = const {}}) {
    final Map<String, dynamic> _map = {
      "module": module,
      "page": page,
    };
    _map.addAll(addData);
    return _map;
  }
}
