import 'package:background_json_parser/background_json_parser.dart';

class IntegrationModel extends IBaseModel<IntegrationModel> {
  String code;
  String name;
  String integrationCode;
  bool integrationStatus;

  IntegrationModel({
    required this.code,
    required this.name,
    required this.integrationCode,
    required this.integrationStatus,
  });

  @override
  fromJson(Map<String, dynamic> json) => IntegrationModel(
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
