import 'package:background_json_parser/background_json_parser.dart';

class MarketplaceIntegrationDetailModel extends IBaseModel<MarketplaceIntegrationDetailModel> {
  final int? id;
  final String? integrationCode;
  final bool? isActive;
  final String? integrationTypeId;
  final String? apiKey;
  final String? secretKey;
  final bool? autoConfirm;
  final String? brandCode;
  final List<IntegrationItemModel>? items;

  MarketplaceIntegrationDetailModel({
    this.id,
    this.integrationCode,
    this.isActive,
    this.integrationTypeId,
    this.apiKey,
    this.secretKey,
    this.autoConfirm,
    this.brandCode,
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
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class IntegrationItemModel {
  final int? id;
  final String? code;
  final String? title;
  final String? type;
  final String? integrationCode;
  final bool? integrationStatus;

  IntegrationItemModel({
    this.id,
    this.code,
    this.title,
    this.type,
    this.integrationCode,
    this.integrationStatus,
  });

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
}
