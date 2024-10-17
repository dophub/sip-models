import 'package:background_json_parser/background_json_parser.dart';

class MarketplaceIntegrationModel extends IBaseModel<MarketplaceIntegrationModel> {
  String? code;
  String? name;
  String? integrationCode;
  bool? integrationStatus;

  MarketplaceIntegrationModel({
    this.code,
    this.name,
    this.integrationCode,
    this.integrationStatus,
  });

  @override
  fromJson(Map<String, dynamic> json) => MarketplaceIntegrationModel(
        code: json["code"],
        name: json["name"],
        integrationCode: json["integration_code"],
        integrationStatus: json["integration_status"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "integration_code": integrationCode,
        "integration_status": integrationStatus,
      };
}
