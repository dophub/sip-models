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
    this.numberOfService,
    this.isSync,
  });

  int? id;
  String? orderPoint;
  double? total;
  OrderStatusModel? status;
  String? sessionId;
  DateTime? updateDate;
  int? dealerId;
  int? customerId;
  int? numberOfService;
  bool? isSync; // Siparişim işletmede kullanılmakta 3 part pos a iletildi mi

  factory OrderSocketDataModel.fromJson(Map<String, dynamic> json) => OrderSocketDataModel(
        id: json["id"],
        orderPoint: json["order_point"],
        total: json["total"] == null ? 0.0 : json["total"].toDouble(),
        status: OrderStatusModel.fromJson(json["status"]),
        sessionId: json["session_id"],
        updateDate: DateTime.parse(json["update_date"]),
        dealerId: json["dealer_id"],
        customerId: json["customer_id"],
        numberOfService: json['number_of_service'],
        isSync: json['is_sync'],
      );
}
