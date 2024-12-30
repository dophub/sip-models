import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/ri/model/response/order_stats/order_count_model.dart';

class OrderStatsModel extends IBaseModel<OrderStatsModel> {
  OrderStatsOrderCountsModel? todayOrderCounts;
  OrderStatsOrderCountsModel? weekOrderCounts;
  OrderStatsOrderCountsModel? monthOrderCounts;

  OrderStatsModel({
    this.todayOrderCounts,
    this.weekOrderCounts,
    this.monthOrderCounts,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderStatsModel(
        todayOrderCounts:
            json["today_order_counts"] == null ? null : OrderStatsOrderCountsModel.fromJson(json["today_order_counts"]),
        weekOrderCounts:
            json["week_order_counts"] == null ? null : OrderStatsOrderCountsModel.fromJson(json["week_order_counts"]),
        monthOrderCounts:
            json["month_order_counts"] == null ? null : OrderStatsOrderCountsModel.fromJson(json["month_order_counts"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "today_order_counts": todayOrderCounts?.toJson(),
        "week_order_counts": weekOrderCounts?.toJson(),
        "month_order_counts": monthOrderCounts?.toJson(),
      };
}

class OrderStatsOrderCountsModel extends IBaseModel<OrderStatsOrderCountsModel> {
  List<OrderStatsDealerDataModel>? dealerData;
  OrderCountModel? totalData;

  OrderStatsOrderCountsModel({
    this.dealerData,
    this.totalData,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderStatsOrderCountsModel(
        dealerData: json["dealer_data"] == null
            ? []
            : List<OrderStatsDealerDataModel>.from(
                json["dealer_data"]!.map((x) => OrderStatsDealerDataModel.fromJson(x))),
        totalData: json["total_data"] == null ? null : OrderCountModel.fromJson(json["total_data"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "dealer_data": dealerData == null ? [] : List<dynamic>.from(dealerData!.map((x) => x.toJson())),
        "total_data": totalData?.toJson(),
      };
}

class OrderStatsDealerModel {
  int? id;
  String? name;

  OrderStatsDealerModel({
    this.id,
    this.name,
  });

  factory OrderStatsDealerModel.fromJson(Map<String, dynamic> json) => OrderStatsDealerModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class OrderStatsDealerDataModel {
  OrderStatsDealerModel? dealer;
  OrderCountModel? dealerData;

  OrderStatsDealerDataModel({
    this.dealer,
    this.dealerData,
  });

  factory OrderStatsDealerDataModel.fromJson(Map<String, dynamic> json) => OrderStatsDealerDataModel(
        dealer: json["dealer"] == null ? null : OrderStatsDealerModel.fromJson(json["dealer"]),
        dealerData: json["dealer_data"] == null ? null : OrderCountModel.fromJson(json["dealer_data"]),
      );

  Map<String, dynamic> toJson() => {
        "dealer": dealer?.toJson(),
        "dealer_data": dealerData?.toJson(),
      };
}
