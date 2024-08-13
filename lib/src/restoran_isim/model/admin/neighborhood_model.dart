import 'package:background_json_parser/background_json_parser.dart';

import '../other/multi_item_picker_widget_model.dart';

class NeighborhoodModel extends IBaseModel<NeighborhoodModel> implements IMultiItemPickerWidgetModel {
  int? id;
  String? name;
  int? neighborhoodKey;
  int? districtId;

  NeighborhoodModel({
    this.id,
    this.name,
    this.neighborhoodKey,
    this.districtId,
  });

  @override
  fromJson(Map<String, dynamic> json) => NeighborhoodModel(
        id: json["id"],
        name: json["name"],
        neighborhoodKey: json["neighborhood_key"],
        districtId: json["district_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "neighborhood_key": neighborhoodKey,
        "district_id": districtId,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}
