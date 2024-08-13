import 'package:background_json_parser/background_json_parser.dart';
import '../../other/multi_item_picker_widget_model.dart';

class DealerServiceAddressModel extends IBaseModel<DealerServiceAddressModel> implements IMultiItemPickerWidgetModel {
  final int? id;
  final String? name;
  final String? plateCode;
  final List<DealerServiceAddressDistrictModel>? district;

  DealerServiceAddressModel({
    this.id,
    this.name,
    this.plateCode,
    this.district,
  });

  @override
  fromJson(Map<String, dynamic> json) => DealerServiceAddressModel(
        id: json["id"],
        name: json["name"],
        plateCode: json["plate_code"],
        district: List<DealerServiceAddressDistrictModel>.from(
            json["district"].map((x) => DealerServiceAddressDistrictModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "plate_code": plateCode,
        "district": List<dynamic>.from(district!.map((x) => x.toJson())),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}

class DealerServiceAddressDistrictModel implements IMultiItemPickerWidgetModel {
  int? id;
  String? name;
  int? cityId;
  int? districtKey;
  List<DealerServiceAddressNeighborhoodModel>? neighborhood;

  DealerServiceAddressDistrictModel({
    this.id,
    this.name,
    this.cityId,
    this.districtKey,
    this.neighborhood,
  });

  factory DealerServiceAddressDistrictModel.fromJson(Map<String, dynamic> json) => DealerServiceAddressDistrictModel(
        id: json["id"],
        name: json["name"],
        cityId: json["city_id"],
        districtKey: json["district_key"],
        neighborhood: List<DealerServiceAddressNeighborhoodModel>.from(
            json["neighborhood"].map((x) => DealerServiceAddressNeighborhoodModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "city_id": cityId,
        "district_key": districtKey,
        "neighborhood": List<dynamic>.from(neighborhood!.map((x) => x.toJson())),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}

class DealerServiceAddressNeighborhoodModel implements IMultiItemPickerWidgetModel {
  final int? id;
  final String? name;
  final int? districtId;
  final int? neighborhoodKey;

  DealerServiceAddressNeighborhoodModel({
    this.id,
    this.name,
    this.districtId,
    this.neighborhoodKey,
  });

  factory DealerServiceAddressNeighborhoodModel.fromJson(Map<String, dynamic> json) =>
      DealerServiceAddressNeighborhoodModel(
        id: json["id"],
        name: json["name"],
        districtId: json["district_id"],
        neighborhoodKey: json["neighborhood_key"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "district_id": districtId,
        "neighborhood_key": neighborhoodKey,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => name ?? '';
}
