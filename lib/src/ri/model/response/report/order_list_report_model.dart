import 'package:background_json_parser/background_json_parser.dart';

class OrderListReportModel extends IBaseModel<OrderListReportModel> {
  OrderListReportDateRangeModel? dateRange;
  OrderListReportStatsModel? stats;
  List<OrderListReportOrderModel>? orders;

  OrderListReportModel({
    this.dateRange,
    this.stats,
    this.orders,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderListReportModel(
        dateRange: json["date_range"] == null ? null : OrderListReportDateRangeModel.fromJson(json["date_range"]),
        stats: json["stats"] == null ? null : OrderListReportStatsModel.fromJson(json["stats"]),
        orders: json["orders"] == null ? [] : List<OrderListReportOrderModel>.from(json["orders"]!.map((x) => OrderListReportOrderModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "date_range": dateRange?.toJson(),
        "stats": stats?.toJson(),
        "orders": orders == null ? [] : List<dynamic>.from(orders!.map((x) => x.toJson())),
      };
}

class OrderListReportDateRangeModel {
  DateTime? start;
  DateTime? end;

  OrderListReportDateRangeModel({
    this.start,
    this.end,
  });

  factory OrderListReportDateRangeModel.fromJson(Map<String, dynamic> json) => OrderListReportDateRangeModel(
        start: json["start"] == null ? null : DateTime.parse(json["start"]),
        end: json["end"] == null ? null : DateTime.parse(json["end"]),
      );

  Map<String, dynamic> toJson() => {
        "start":
            "${start!.year.toString().padLeft(4, '0')}-${start!.month.toString().padLeft(2, '0')}-${start!.day.toString().padLeft(2, '0')}",
        "end":
            "${end!.year.toString().padLeft(4, '0')}-${end!.month.toString().padLeft(2, '0')}-${end!.day.toString().padLeft(2, '0')}",
      };
}

class OrderListReportOrderModel {
  int? id;
  String? orderNumber;
  DateTime? createDate;
  int? totalAmount;
  String? dealerName;
  String? customerName;
  String? customerPhone;
  String? orderStatus;
  String? paymentType;
  String? deliveryType;
  int? itemCount;

  OrderListReportOrderModel({
    this.id,
    this.orderNumber,
    this.createDate,
    this.totalAmount,
    this.dealerName,
    this.customerName,
    this.customerPhone,
    this.orderStatus,
    this.paymentType,
    this.deliveryType,
    this.itemCount,
  });

  factory OrderListReportOrderModel.fromJson(Map<String, dynamic> json) => OrderListReportOrderModel(
        id: json["id"],
        orderNumber: json["order_number"],
        createDate: json["create_date"] == null ? null : DateTime.parse(json["create_date"]),
        totalAmount: json["total_amount"],
        dealerName: json["dealer_name"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        orderStatus: json["order_status"],
        paymentType: json["payment_type"],
        deliveryType: json["delivery_type"],
        itemCount: json["item_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_number": orderNumber,
        "create_date": createDate?.toIso8601String(),
        "total_amount": totalAmount,
        "dealer_name": dealerName,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "order_status": orderStatus,
        "payment_type": paymentType,
        "delivery_type": deliveryType,
        "item_count": itemCount,
      };
}

class OrderListReportStatsModel {
  int? totalOrders;
  int? totalRevenue;
  double? averageOrderValue;
  OrderListReportStatusBreakdownModel? statusBreakdown;

  OrderListReportStatsModel({
    this.totalOrders,
    this.totalRevenue,
    this.averageOrderValue,
    this.statusBreakdown,
  });

  factory OrderListReportStatsModel.fromJson(Map<String, dynamic> json) => OrderListReportStatsModel(
        totalOrders: json["total_orders"],
        totalRevenue: json["total_revenue"],
        averageOrderValue: json["average_order_value"]?.toDouble(),
        statusBreakdown: json["status_breakdown"] == null ? null : OrderListReportStatusBreakdownModel.fromJson(json["status_breakdown"]),
      );

  Map<String, dynamic> toJson() => {
        "total_orders": totalOrders,
        "total_revenue": totalRevenue,
        "average_order_value": averageOrderValue,
        "status_breakdown": statusBreakdown?.toJson(),
      };
}

class OrderListReportStatusBreakdownModel {
  int? hazrlanyor;
  int? ptal;
  int? cihazda;
  int? tamamland;
  int? yolda;

  OrderListReportStatusBreakdownModel({
    this.hazrlanyor,
    this.ptal,
    this.cihazda,
    this.tamamland,
    this.yolda,
  });

  factory OrderListReportStatusBreakdownModel.fromJson(Map<String, dynamic> json) => OrderListReportStatusBreakdownModel(
        hazrlanyor: json["_hazırlanıyor"],
        ptal: json["İptal"],
        cihazda: json["_cihazda"],
        tamamland: json["_tamamlandı"],
        yolda: json["_yolda"],
      );

  Map<String, dynamic> toJson() => {
        "_hazırlanıyor": hazrlanyor,
        "İptal": ptal,
        "_cihazda": cihazda,
        "_tamamlandı": tamamland,
        "_yolda": yolda,
      };
}
