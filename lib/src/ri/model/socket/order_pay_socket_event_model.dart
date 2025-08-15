class OrderPaySocketEventModel {
  String? type;
  int? sourceId;
  String? sourceType;
  OrderPaySocketEventOrderModel? order;
  OrderPaySocketEventServiceModel? service;

  OrderPaySocketEventModel({
    this.type,
    this.sourceId,
    this.sourceType,
    this.order,
    this.service,
  });

  factory OrderPaySocketEventModel.fromJson(Map<String, dynamic> json) => OrderPaySocketEventModel(
        type: json["type"],
        sourceId: json["sourceId"],
        sourceType: json["sourceType"],
        order: json["order"] == null ? null : OrderPaySocketEventOrderModel.fromJson(json["order"]),
        service: json["service"] == null ? null : OrderPaySocketEventServiceModel.fromJson(json["service"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "sourceId": sourceId,
        "sourceType": sourceType,
        "order": order?.toJson(),
        "service": service?.toJson(),
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
