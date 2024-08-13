import 'package:background_json_parser/background_json_parser.dart';

class GenerateSecretModel extends IBaseModel<GenerateSecretModel> {
  GenerateSecretModel({
    this.clientCode,
  });

  String? clientCode;

  @override
  GenerateSecretModel fromJson(Map<String, dynamic> json) {
    return GenerateSecretModel(
      clientCode: json['client_code'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'client_code': clientCode,
    };
  }
}
