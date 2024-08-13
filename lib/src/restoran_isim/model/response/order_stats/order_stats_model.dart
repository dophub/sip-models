import 'package:background_json_parser/background_json_parser.dart';

import 'order_count_model.dart';

class OrderStatsModel extends IBaseModel<OrderStatsModel> {
  OrderCountModel? todayOrderCounts;
  OrderCountModel? weekOrderCounts;
  OrderCountModel? monthOrderCounts;

  OrderStatsModel({
    this.todayOrderCounts,
    this.weekOrderCounts,
    this.monthOrderCounts,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderStatsModel(
        todayOrderCounts: json['today_order_counts'] == null
            ? null
            : OrderCountModel.fromJson(json['today_order_counts'] as Map<String, dynamic>),
        weekOrderCounts: json['week_order_counts'] == null
            ? null
            : OrderCountModel.fromJson(json['week_order_counts'] as Map<String, dynamic>),
        monthOrderCounts: json['month_order_counts'] == null
            ? null
            : OrderCountModel.fromJson(json['month_order_counts'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'today_order_counts': todayOrderCounts?.toJson(),
        'week_order_counts': weekOrderCounts?.toJson(),
        'month_order_counts': monthOrderCounts?.toJson(),
      };
}
