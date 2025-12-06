class OrderPaySocketEventModel {
  String? type;
  String? sourceId;
  String? sourceType;
  String? message;
  OrderPaySocketEventOrderModel? order;
  OrderPaySocketEventServiceModel? service;
  OrderPaySocketEventTransactionModel? transaction;

  OrderPaySocketEventModel({
    this.type,
    this.sourceId,
    this.sourceType,
    this.message,
    this.order,
    this.service,
    this.transaction,
  });

  factory OrderPaySocketEventModel.fromJson(Map<String, dynamic> json) => OrderPaySocketEventModel(
        type: json["type"],
        sourceId: json["sourceId"],
        sourceType: json["sourceType"],
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
        "message": message,
        "order": order?.toJson(),
        "service": service?.toJson(),
        "transaction": transaction?.toJson(),
      };
}

class OrderPaySocketEventOrderModel {
  int? id;
  double? totalAmount;
  String? orderNote;
  double? tipAmount;
  String? clientPointId;
  String? orderStatusId;
  String? paymentTypeId;
  bool? isUseCampaign;
  double? beforeCampaignTotal;
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
        totalAmount: json["total_amount"]?.toDouble(),
        orderNote: json["order_note"],
        tipAmount: json["tip_amount"]?.toDouble(),
        clientPointId: json["client_point_id"],
        orderStatusId: json["order_status_id"],
        paymentTypeId: json["payment_type_id"],
        isUseCampaign: json["is_use_campaign"],
        beforeCampaignTotal: json["before_campaign_total"]?.toDouble(),
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
  double? totalTipAmount;
  String? paymentTypeId;
  double? serviceTotalAmount;
  String? serviceStatusId;
  double? tableServiceAmount;
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
        totalTipAmount: json["total_tip_amount"]?.toDouble(),
        paymentTypeId: json["payment_type_id"],
        serviceTotalAmount: json["service_total_amount"]?.toDouble(),
        serviceStatusId: json["service_status_id"],
        tableServiceAmount: json["table_service_amount"]?.toDouble(),
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
  double? amount;
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
        amount: json["amount"]?.toDouble(),
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
