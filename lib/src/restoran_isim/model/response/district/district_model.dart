import 'package:background_json_parser/background_json_parser.dart';

import 'neighborhood_model.dart';

class DistrictModel extends IBaseModel<DistrictModel> {
  int? districtId;
  String? districtName;
  List<NeighborhoodModel>? items;

  DistrictModel({this.districtId, this.districtName, this.items});

  @override
  fromJson(Map<String, dynamic> json) => DistrictModel(
        districtId: json['district_id'],
        districtName: json['district_name'],
        items: json["items"] == null ? [] : List<NeighborhoodModel>.from(json["items"]!.map((x) => NeighborhoodModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'district_id': districtId,
        'district_name': districtName,
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
