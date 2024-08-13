import 'package:background_json_parser/background_json_parser.dart';

import '../other/multi_item_picker_widget_model.dart';

class AdminDistrictModel extends IBaseModel<AdminDistrictModel> implements IMultiItemPickerWidgetModel {
  int? id;
  String? name;
  int? cityId;
  int? districtKey;

  AdminDistrictModel({
    this.id,
    this.name,
    this.cityId,
    this.districtKey,
  });

  @override
  fromJson(Map<String, dynamic> json) => AdminDistrictModel(
        id: json["id"],
        name: json["name"],
        cityId: json["city_id"],
        districtKey: json["district_key"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city_id": cityId,
        "district_key": districtKey,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}
