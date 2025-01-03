import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/ri/model/response/order_stats/order_count_model.dart';

import '../other/by_dealer_model.dart';

class OrderStatsModel extends IBaseModel<OrderStatsModel> {
  ByDealerModel<OrderCountModel>? todayOrderCounts;
  ByDealerModel<OrderCountModel>? weekOrderCounts;
  ByDealerModel<OrderCountModel>? monthOrderCounts;

  OrderStatsModel({
    this.todayOrderCounts,
    this.weekOrderCounts,
    this.monthOrderCounts,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderStatsModel(
        todayOrderCounts: json["today_order_counts"] == null
            ? null
            : ByDealerModel.fromJson(OrderCountModel(), json["today_order_counts"]),
        weekOrderCounts: json["week_order_counts"] == null
            ? null
            : ByDealerModel.fromJson(OrderCountModel(), json["week_order_counts"]),
        monthOrderCounts: json["month_order_counts"] == null
            ? null
            : ByDealerModel.fromJson(OrderCountModel(), json["month_order_counts"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

