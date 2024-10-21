import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/ri/model/other/multi_item_picker_widget_model.dart';

class MarketplaceIntegrationDetailModel extends IBaseModel<MarketplaceIntegrationDetailModel> {
  int? id;
  String? integrationCode;
  bool? isActive;
  String? integrationTypeId;
  String? apiKey;
  String? secretKey;
  bool? autoConfirm;
  String? brandCode;
  List<IntegrationItemModel>? items;
  int? brandId;
  int? dealerId;

  MarketplaceIntegrationDetailModel({
    this.id,
    this.integrationCode,
    this.isActive,
    this.integrationTypeId,
    this.apiKey,
    this.secretKey,
    this.autoConfirm,
    this.brandCode,
    this.brandId,
    this.dealerId,
    this.items,
  });

  @override
  fromJson(Map<String, dynamic> json) => MarketplaceIntegrationDetailModel(
        id: json["id"],
        integrationCode: json["integration_code"],
        isActive: json["is_active"],
        integrationTypeId: json["integration_type_id"],
        apiKey: json["api_key"],
        secretKey: json["secret_key"],
        autoConfirm: json["auto_confirm"],
        brandCode: json["brand_code"],
        brandId: json["brand_id"],
        dealerId: json["dealer_id"],
        items: json["items"] == null
            ? []
            : List<IntegrationItemModel>.from(json["items"]!.map((x) => IntegrationItemModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "integration_code": integrationCode,
        "is_active": isActive,
        "integration_type_id": integrationTypeId,
        "api_key": apiKey,
        "secret_key": secretKey,
        "auto_confirm": autoConfirm,
        "brand_code": brandCode,
        "brand_id": brandId,
        "dealer_id": dealerId,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class IntegrationItemModel implements IMultiItemPickerWidgetModel {
  int? id;
  String? code;
  String? _title;
  String? type;
  String? integrationCode;
  bool? integrationStatus;

  IntegrationItemModel({
    this.id,
    this.code,
    String? title,
    this.type,
    this.integrationCode,
    this.integrationStatus,
  }) {
    _title = title;
  }

  factory IntegrationItemModel.fromJson(Map<String, dynamic> json) => IntegrationItemModel(
        id: json["id"],
        code: json["code"],
        title: json["title"],
        type: json["type"],
        integrationCode: json["integration_code"],
        integrationStatus: json["integration_status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "title": title,
        "type": type,
        "integration_code": integrationCode,
        "integration_status": integrationStatus,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => _title ?? '';
}
