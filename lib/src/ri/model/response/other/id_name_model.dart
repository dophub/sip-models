import 'package:background_json_parser/background_json_parser.dart';

class IdNameModel({this.id, this.name}) extends IBaseModel<IdNameModel> {
  int? id;
  String? name;

  @override
  fromJson(Map<String, dynamic> json) => IdNameModel(id: json["id"], name: json["name"]);

  @override
  Map<String, dynamic> toJson() => {"id": id, "name": name};
}
