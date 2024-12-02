import 'package:background_json_parser/background_json_parser.dart';

class OrderStatusHistoryModel extends IBaseModel<OrderStatusHistoryModel> {
  final OrderStatusHistoryStatusModel? prevOrderStatus;
  final OrderStatusHistoryStatusModel? currentOrderStatus;
  final DateTime? updateDate;
  final OrderStatusHistoryUserModel? orderHistoryCustomer;

  OrderStatusHistoryModel({
    this.prevOrderStatus,
    this.currentOrderStatus,
    this.updateDate,
    this.orderHistoryCustomer,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderStatusHistoryModel(
        prevOrderStatus: OrderStatusHistoryStatusModel.fromJson(json["prev_order_status"]),
        currentOrderStatus: OrderStatusHistoryStatusModel.fromJson(json["current_order_status"]),
        updateDate: DateTime.parse(json["update_date"]),
        orderHistoryCustomer: OrderStatusHistoryUserModel.fromJson(json["order_history_customer"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "prev_order_status": prevOrderStatus?.toJson(),
        "current_order_status": currentOrderStatus?.toJson(),
        "update_date": updateDate?.toIso8601String(),
        "order_history_customer": orderHistoryCustomer?.toJson(),
      };
}

class OrderStatusHistoryStatusModel {
  final String? code;
  final String? name;

  OrderStatusHistoryStatusModel({
    required this.code,
    required this.name,
  });

  factory OrderStatusHistoryStatusModel.fromJson(Map<String, dynamic> json) => OrderStatusHistoryStatusModel(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}

class OrderStatusHistoryUserModel {
  final String? firstname;
  final String? lastname;

  OrderStatusHistoryUserModel({
    required this.firstname,
    required this.lastname,
  });

  factory OrderStatusHistoryUserModel.fromJson(Map<String, dynamic> json) => OrderStatusHistoryUserModel(
        firstname: json["firstname"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
      };
}
