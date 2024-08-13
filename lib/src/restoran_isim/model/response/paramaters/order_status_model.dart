class OrderStatusModel {
  List<OrderStateParamModel>? takeout;
  List<OrderStateParamModel>? getIn;
  List<OrderStateParamModel>? table;

  OrderStatusModel({this.takeout, this.getIn, this.table});

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) => OrderStatusModel(
        takeout: (json['TAKEOUT'] as List<dynamic>?)
            ?.map((e) => OrderStateParamModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        getIn: (json['GETIN'] as List<dynamic>?)
            ?.map((e) => OrderStateParamModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        table: (json['TABLE'] as List<dynamic>?)
            ?.map((e) => OrderStateParamModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'TAKEOUT': takeout?.map((e) => e.toJson()).toList(),
        'GETIN': getIn?.map((e) => e.toJson()).toList(),
        'TABLE': table?.map((e) => e.toJson()).toList(),
      };
}

class OrderStateParamModel {
  String? orderStatusCode;
  String? orderStatusName;

  OrderStateParamModel({this.orderStatusCode, this.orderStatusName});

  factory OrderStateParamModel.fromJson(Map<String, dynamic> json) => OrderStateParamModel(
        orderStatusCode: json['order_status_code'] as String?,
        orderStatusName: json['order_status_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'order_status_code': orderStatusCode,
        'order_status_name': orderStatusName,
      };
}
