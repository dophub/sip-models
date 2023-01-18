import 'package:sip_models/src/model/request/order_model.dart';

class OrderSocketDataModel {
  OrderSocketDataModel({
    this.id,
    this.orderPoint,
    this.total,
    this.status,
    this.sessionId,
    this.updateDate,
    this.dealerId,
    this.customerId,
  });

  int? id;
  String? orderPoint;
  double? total;
  OrderStatusModel? status;
  String? sessionId;
  DateTime? updateDate;
  int? dealerId;
  int? customerId;

  factory OrderSocketDataModel.fromJson(Map<String, dynamic> json) => OrderSocketDataModel(
        id: json["id"],
        orderPoint: json["order_point"],
        total: json["total"] == null ? 0.0 : json["total"].toDouble(),
        status: OrderStatusModel.fromJson(json["status"]),
        sessionId: json["session_id"],
        updateDate: DateTime.parse(json["update_date"]),
        dealerId: json["dealer_id"],
        customerId: json["customer_id"],
      );
}
