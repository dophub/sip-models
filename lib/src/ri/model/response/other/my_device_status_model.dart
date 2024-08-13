import 'package:background_json_parser/background_json_parser.dart';

class MyDeviceStatusModel extends IBaseModel<MyDeviceStatusModel> {
  bool? status;
  String? type;
  String? id;
  dynamic createdAt;
  String? dealerName;
  String? title;
  MyDeviceStatusModel? options;

  MyDeviceStatusModel({
    this.status,
    this.type,
    this.id,
    this.createdAt,
    this.dealerName,
    this.title,
    this.options,
  });

  @override
  fromJson(Map<String, dynamic> json) => MyDeviceStatusModel(
        status: json["status"],
        type: json["type"],
        id: json["id"],
        createdAt: json["created_at"],
        dealerName: json["dealer_name"],
        title: json["title"],
        options: json["options"] == null ? null : MyDeviceStatusModel().fromJson(json["options"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "status": status,
        "type": type,
        "id": id,
        "created_at": createdAt,
        "dealer_name": dealerName,
        "title": title,
        "options": options?.toJson(),
      };
}
