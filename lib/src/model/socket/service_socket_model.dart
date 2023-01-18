import '../request/order_model.dart';

class ServiceSocketModel {
  ServiceSocketModel({
    this.id,
    this.count,
    this.tableId,
    this.tableName,
    this.total,
    this.status,
    this.sessionId,
    this.updateDate,
    this.dealerId,
    this.customerId,
    this.numberOfService,
    this.paymentModelId,
  });

  int? id;
  int? count;
  String? tableId;
  String? tableName;
  int? total;
  ItemStatus? status;
  String? sessionId;
  DateTime? updateDate;
  int? dealerId;
  int? customerId;
  int? numberOfService;
  String? paymentModelId;

  factory ServiceSocketModel.fromJson(Map<String, dynamic> json) => ServiceSocketModel(
        id: json["id"],
        count: json["count"],
        tableId: json["table_id"],
        tableName: json["table_name"],
        total: json["total"],
        status: ItemStatus.fromJson(json["status"]),
        sessionId: json["session_id"],
        updateDate: DateTime.tryParse(json["update_date"]),
        dealerId: json["dealer_id"],
        customerId: json["customer_id"],
        numberOfService: json["number_of_service"],
        paymentModelId: json["payment_model_id"],
      );
}
