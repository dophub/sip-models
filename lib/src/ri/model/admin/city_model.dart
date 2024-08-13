import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class CityModel extends IBaseModel<CityModel> implements IMultiItemPickerWidgetModel {
  int? id;
  String? name;
  String? plateCode;

  CityModel({
    this.id,
    this.name,
    this.plateCode,
  });

  @override
  fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"],
        name: json["name"],
        plateCode: json["plate_code"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "plate_code": plateCode,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}
