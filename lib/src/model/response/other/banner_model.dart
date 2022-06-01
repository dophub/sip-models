import 'package:background_json_parser/background_json_parser.dart';

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
  BannerUrlModel? fileUrl;
  int? id;
  String? sessionPointId;
  DateTime? startDate;
  String? targetId;
  BannerTargetObject? targetObject;
  String? title;

  @override
  fromJson(Map<dynamic, dynamic> json) => BannerModel(
        clientPoint: json["client_point"],
        createDate: DateTime.tryParse(json["create_date"]),
        description: json["description"],
        endDate: DateTime.tryParse(json["end_date"]),
        fileUrl: json["target_object"] == null ? BannerUrlModel() :  BannerUrlModel.fromJson(json["file_url"]),
        id: json["id"],
        sessionPointId: json["session_point_id"],
        startDate: DateTime.tryParse(json["start_date"]),
        targetId: json["target_id"],
        targetObject: json["target_object"] == null ? null : BannerTargetObject.fromJson(json["target_object"]),
        title: json["title"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class BannerUrlModel {
  BannerUrlModel({
    this.app,
    this.web,
  });

  String? app;
  String? web;

  factory BannerUrlModel.fromJson(Map<String, dynamic> json) => BannerUrlModel(
        app: json["app"],
        web: json["web"],
      );
}

class BannerTargetObject {
  BannerTargetObject({
    this.dealerId,
    this.id,
    this.itemType,
    this.name,
    this.url,
    this.campaignTitle,
    this.campaignId,
  });

  int? dealerId;
  int? id;
  String? itemType;
  String? name;
  String? url;
  String? campaignTitle;
  int? campaignId;

  factory BannerTargetObject.fromJson(Map<String, dynamic> json) => BannerTargetObject(
        dealerId: json["dealer_id"],
        id: json["id"],
        itemType: json["item_type"],
        name: json["name"],
        url: json["url"],
        campaignId: json["campaign_id"],
        campaignTitle: json["campaign_title"],
      );
}
