import 'package:background_json_parser/background_json_parser.dart';

class ByDealerModel<T extends IBaseModel<T>> extends IBaseModel<ByDealerModel> {
  List<ByDealerDataModel<T>>? dealerData;
  List<T>? totalData;
  late T _parserModel;

  ByDealerModel(
    T model, {
    this.dealerData,
    this.totalData,
  }) {
    _parserModel = model;
  }

  @override
  ByDealerModel<IBaseModel> fromJson(Map<String, dynamic> json) {
    dealerData = json["dealer_data"] == null
        ? null
        : (json["dealer_data"] as List).map((e) => ByDealerDataModel<T>.fromJson(_parserModel, e)).toList();
    totalData = json["total_data"] == null ? [] : _parserModel.jsonParserByMap(json["total_data"]);
    return this;
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
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
  int? dealerId;
  String? dealerName;

  ByDealerDealerModel({
    this.dealerId,
    this.dealerName,
  });

  factory ByDealerDealerModel.fromJson(Map<String, dynamic> json) => ByDealerDealerModel(
        dealerId: json["dealer_id"],
        dealerName: json["dealer_name"],
      );

  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "dealer_name": dealerName,
      };
}
