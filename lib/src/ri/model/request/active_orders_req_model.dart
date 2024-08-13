
class ActiveOrdersReqModel {
  String? orderStatus;
  List<String>? orderPoint;

  ActiveOrdersReqModel({this.orderStatus, this.orderPoint});

  factory ActiveOrdersReqModel.fromJson(Map<String, dynamic> json) {
    return ActiveOrdersReqModel(
      orderStatus: json['order_status'] as String?,
      orderPoint: json['order_point'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'order_status': orderStatus,
        'order_point': orderPoint,
      };
}
