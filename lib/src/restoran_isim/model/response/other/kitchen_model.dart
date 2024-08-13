import 'package:background_json_parser/background_json_parser.dart';

class KitchenModel extends IBaseModel<KitchenModel> {
  String? kitchenCode;
  String? kitchenName;

  KitchenModel({this.kitchenCode, this.kitchenName});

  @override
  fromJson(Map<String, dynamic> json) {
    return KitchenModel(
      kitchenCode: json['kitchen_code'],
      kitchenName: json['kitchen_name'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'kitchen_code': kitchenCode,
      'kitchen_name': kitchenName,
    };
  }
}
