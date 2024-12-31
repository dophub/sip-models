import 'package:background_json_parser/background_json_parser.dart';

class ByDealerModel<T extends IBaseModel<T>> {
  List<T>? dealerData;
  List<T>? totalData;

  ByDealerModel({
    this.dealerData,
    this.totalData,
  });

  factory ByDealerModel.fromJson(T model, Map<String, dynamic> json) => ByDealerModel<T>(
        dealerData: json["dealer_data"] == null ? [] : model.jsonParser(json["dealer_data"]),
        totalData: json["total_data"] == null ? [] : model.jsonParser(json["dealer_data"]),
      );
}
