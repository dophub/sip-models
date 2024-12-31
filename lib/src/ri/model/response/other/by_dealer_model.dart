import 'dart:convert';

import 'package:background_json_parser/background_json_parser.dart';

class ByDealerModel<T extends IBaseModel<T>> {
  List<T>? dealerData;
  List<T>? totalData;

  ByDealerModel({
    this.dealerData,
    this.totalData,
  });

  factory ByDealerModel.fromJson(T model, String json) {
    final map = jsonDecode(json);
    return ByDealerModel<T>(
      dealerData: map["dealer_data"] == null ? [] : model.jsonParser(map["dealer_data"]),
      totalData: map["total_data"] == null ? [] : model.jsonParser(map["dealer_data"]),
    );
  }
}
