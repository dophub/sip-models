import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:sip_models/response.dart';

import '../../../enum/id_enum.dart';

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
    this.product,
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
  ProductModel? product;

  @override
  fromJson(Map<dynamic, dynamic> json) {
    /// target_id i product ise target_object product model olarak gelmekte
    String? _targetId = json["target_id"];
    ProductModel? _product;
    BannerTargetObject? _targetObject;
    try {
      if (_targetId == BannerTargetId.product.name) {
        _product = json["target_object"] == null ? ProductModel() : ProductModel().fromJson(json["target_object"]);
      } else {
        _product = ProductModel();
        _targetObject = BannerTargetObject.fromJson(json["target_object"]);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return BannerModel(
      clientPoint: json["client_point"],
      createDate: DateTime.tryParse(json["create_date"]),
      description: json["description"],
      endDate: DateTime.tryParse(json["end_date"]),
      fileUrl: json["file_url"] == null ? BannerUrlModel() : BannerUrlModel.fromJson(json["file_url"]),
      id: json["id"],
      sessionPointId: json["session_point_id"],
      startDate: DateTime.tryParse(json["start_date"]),
      title: json["title"],
      targetId: _targetId,
      targetObject: _targetObject,
      product: _product,
    );
  }

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
