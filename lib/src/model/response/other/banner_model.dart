import 'package:sip_models/response.dart';

class BannerModel extends IBaseModel<BannerModel> {
  BannerModel({
    this.clientPoint,
    this.createDate,
    this.description,
    this.endDate,
    this.fileUrl,
    this.id,
    this.sessionPointId,
    this.startDate,
    this.targetId,
    this.targetObject,
    this.title,
  });

  String? clientPoint;
  DateTime? createDate;
  String? description;
  DateTime? endDate;
  FileUrl? fileUrl;
  int? id;
  String? sessionPointId;
  DateTime? startDate;
  String? targetId;
  TargetObject? targetObject;
  String? title;

  @override
  fromJson(Map<dynamic, dynamic> json) => BannerModel(
        clientPoint: json["client_point"],
        createDate: DateTime.parse(json["create_date"]),
        description: json["description"],
        endDate: DateTime.parse(json["end_date"]),
        fileUrl: FileUrl.fromJson(json["file_url"]),
        id: json["id"],
        sessionPointId: json["session_point_id"],
        startDate: DateTime.parse(json["start_date"]),
        targetId: json["target_id"],
        targetObject: TargetObject.fromJson(json["target_object"]),
        title: json["title"],
      );
}

class FileUrl {
  FileUrl({
    this.app,
    this.web,
  });

  String? app;
  String? web;

  factory FileUrl.fromJson(Map<String, dynamic> json) => FileUrl(
        app: json["app"],
        web: json["web"],
      );
}

class TargetObject {
  TargetObject({
    this.dealerId,
    this.id,
    this.itemType,
    this.name,
    this.url,
  });

  int? dealerId;
  int? id;
  String? itemType;
  String? name;
  String? url;

  factory TargetObject.fromJson(Map<String, dynamic> json) => TargetObject(
        dealerId: json["dealer_id"],
        id: json["id"],
        itemType: json["item_type"],
        name: json["name"],
        url: json["url"],
      );
}
