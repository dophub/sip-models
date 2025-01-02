import 'dart:convert';

import 'package:background_json_parser/background_json_parser.dart';

import '../../../../../ri_models.dart';

class ByDealerModel<T extends IBaseModel<T>> {
  List<ByDealerDataModel<T>>? dealerData;
  List<T>? totalData;

  ByDealerModel({
    this.dealerData,
    this.totalData,
  });

  factory ByDealerModel.fromJson(T model, String json) {
    final map = jsonDecode(json);
    return ByDealerModel<T>(
      dealerData: map["dealer_data"] == null
          ? null
          : (map["dealer_data"] as List).map((e) => ByDealerDataModel<T>.fromJson(model, e)).toList(),
      totalData: map["total_data"] == null ? [] : model.jsonParserByMap(map["total_data"]),
    );
  }
}

class ByDealerDataModel<T extends IBaseModel<T>> {
  ByDealerDealerModel? dealer;
  List<T>? dealerData;

  ByDealerDataModel({
    this.dealer,
    this.dealerData,
  });

  factory ByDealerDataModel.fromJson(T model, Map<String, dynamic> map) {
    return ByDealerDataModel(
      dealer: map["dealer"] == null ? null : ByDealerDealerModel.fromJson(map["dealer"]),
      dealerData: map["dealer_data"] == null ? [] : model.jsonParserByMap(map["dealer_data"]),
    );
  }

}

class ByDealerDealerModel {
  int? id;
  String? name;

  ByDealerDealerModel({
    this.id,
    this.name,
  });

  factory ByDealerDealerModel.fromJson(Map<String, dynamic> json) => ByDealerDealerModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
