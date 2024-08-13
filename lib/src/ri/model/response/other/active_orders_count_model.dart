import 'package:background_json_parser/background_json_parser.dart';

class ActiveOrdersCountModel extends IBaseModel<ActiveOrdersCountModel> {
  int? tableCount;
  int? takeOutCount;
  int? getinCount;
  int? orderPendingCount;
  int? selfServiceCount;

  ActiveOrdersCountModel(
      {this.tableCount, this.takeOutCount, this.orderPendingCount, this.getinCount, this.selfServiceCount});

  @override
  fromJson(Map<String, dynamic> json) {
    return ActiveOrdersCountModel(
      tableCount: json['table_count'],
      takeOutCount: json['take_out_count'],
      getinCount: json['getin_count'],
      orderPendingCount: json['order_pending_count'],
      selfServiceCount: json['self_service_count'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'table_count': tableCount,
        'take_out_count': takeOutCount,
        'getin_count': getinCount,
        'order_pending_count': orderPendingCount,
      };
}
