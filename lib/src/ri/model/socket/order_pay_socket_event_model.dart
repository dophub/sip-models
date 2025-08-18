class OrderPaySocketEventModel {
  String? type;
  String? sourceId;
  String? sourceType;
  String? transactionId;
  String? message;
  OrderPaySocketEventOrderModel? order;
  OrderPaySocketEventServiceModel? service;
  OrderPaySocketEventTransactionModel? transaction;

  OrderPaySocketEventModel({
    this.type,
    this.sourceId,
    this.sourceType,
    this.transactionId,
    this.message,
    this.order,
    this.service,
    this.transaction,
  });

  factory OrderPaySocketEventModel.fromJson(Map<String, dynamic> json) => OrderPaySocketEventModel(
        type: json["type"],
        sourceId: json["sourceId"],
        sourceType: json["sourceType"],
        transactionId: json["transaction_id"],
        message: json["message"],
        order: json["order"] == null ? null : OrderPaySocketEventOrderModel.fromJson(json["order"]),
        service: json["service"] == null ? null : OrderPaySocketEventServiceModel.fromJson(json["service"]),
        transaction:
            json["transaction"] == null ? null : OrderPaySocketEventTransactionModel.fromJson(json["transaction"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "sourceId": sourceId,
        "sourceType": sourceType,
        "transaction_id": transactionId,
        "message": message,
        "order": order?.toJson(),
        "service": service?.toJson(),
        "transaction": transaction?.toJson(),
      };
}

class OrderPaySocketEventOrderModel {
  int? id;
  int? totalAmount;
  String? orderNote;
  int? tipAmount;
  String? clientPointId;
  String? orderStatusId;
  String? paymentTypeId;
  bool? isUseCampaign;
  int? beforeCampaignTotal;
  String? orderPayStatusTypeId;

  OrderPaySocketEventOrderModel({
    this.id,
    this.totalAmount,
    this.orderNote,
    this.tipAmount,
    this.clientPointId,
    this.orderStatusId,
    this.paymentTypeId,
    this.isUseCampaign,
    this.beforeCampaignTotal,
    this.orderPayStatusTypeId,
  });

  factory OrderPaySocketEventOrderModel.fromJson(Map<String, dynamic> json) => OrderPaySocketEventOrderModel(
        id: json["id"],
        totalAmount: json["total_amount"],
        orderNote: json["order_note"],
        tipAmount: json["tip_amount"],
        clientPointId: json["client_point_id"],
        orderStatusId: json["order_status_id"],
        paymentTypeId: json["payment_type_id"],
        isUseCampaign: json["is_use_campaign"],
        beforeCampaignTotal: json["before_campaign_total"],
        orderPayStatusTypeId: json["order_pay_status_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total_amount": totalAmount,
        "order_note": orderNote,
        "tip_amount": tipAmount,
        "client_point_id": clientPointId,
        "order_status_id": orderStatusId,
        "payment_type_id": paymentTypeId,
        "is_use_campaign": isUseCampaign,
        "before_campaign_total": beforeCampaignTotal,
        "order_pay_status_type_id": orderPayStatusTypeId,
      };
}

class OrderPaySocketEventServiceModel {
  int? id;
  int? personCount;
  int? totalTipAmount;
  String? paymentTypeId;
  int? serviceTotalAmount;
  String? serviceStatusId;
  int? tableServiceAmount;
  List<OrderPaySocketEventOrderModel>? orders;

  OrderPaySocketEventServiceModel({
    this.id,
    this.personCount,
    this.totalTipAmount,
    this.paymentTypeId,
    this.serviceTotalAmount,
    this.serviceStatusId,
    this.tableServiceAmount,
    this.orders,
  });

  factory OrderPaySocketEventServiceModel.fromJson(Map<String, dynamic> json) => OrderPaySocketEventServiceModel(
        id: json["id"],
        personCount: json["person_count"],
        totalTipAmount: json["total_tip_amount"],
        paymentTypeId: json["payment_type_id"],
        serviceTotalAmount: json["service_total_amount"],
        serviceStatusId: json["service_status_id"],
        tableServiceAmount: json["table_service_amount"],
        orders: json["orders"] == null
            ? []
            : List<OrderPaySocketEventOrderModel>.from(
                json["orders"]!.map((x) => OrderPaySocketEventOrderModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "person_count": personCount,
        "total_tip_amount": totalTipAmount,
        "payment_type_id": paymentTypeId,
        "service_total_amount": serviceTotalAmount,
        "service_status_id": serviceStatusId,
        "table_service_amount": tableServiceAmount,
        "orders": orders == null ? [] : List<dynamic>.from(orders!.map((x) => x.toJson())),
      };
}

class OrderPaySocketEventTransactionModel {
  String? transactionId;
  String? trackId;
  String? sourceId;
  String? sourceTypeId;
  int? amount;
  String? status;
  String? message;
  String? paymentCodeId;

  OrderPaySocketEventTransactionModel({
    this.transactionId,
    this.trackId,
    this.sourceId,
    this.sourceTypeId,
    this.amount,
    this.status,
    this.message,
    this.paymentCodeId,
  });

  factory OrderPaySocketEventTransactionModel.fromJson(Map<String, dynamic> json) =>
      OrderPaySocketEventTransactionModel(
        transactionId: json["transaction_id"],
        trackId: json["track_id"],
        sourceId: json["source_id"],
        sourceTypeId: json["source_type_id"],
        amount: json["amount"],
        status: json["status"],
        message: json["message"],
        paymentCodeId: json["payment_code_id"],
      );

  Map<String, dynamic> toJson() => {
        "transaction_id": transactionId,
        "track_id": trackId,
        "source_id": sourceId,
        "source_type_id": sourceTypeId,
        "amount": amount,
        "status": status,
        "message": message,
        "payment_code_id": paymentCodeId,
      };
}
