import 'package:background_json_parser/background_json_parser.dart';

import 'ireport.dart';

class DashboardReportModel extends IBaseModel<DashboardReportModel> implements IReport {
  DashboardReportOverviewModel? overview;
  DashboardReportBreakdownsModel? breakdowns;
  @override
  ReportDateRangeModel? dateRange;

  @override
  String? printHtml;

  DashboardReportModel({this.overview, this.breakdowns, this.dateRange, this.printHtml});

  factory DashboardReportModel.fromJson(String json, bool isString) {
    if (isString) {
      return DashboardReportModel(printHtml: json);
    } else {
      return DashboardReportModel().jsonParser(json);
    }
  }

  @override
  fromJson(Map<String, dynamic> json) => DashboardReportModel(
    dateRange: json["date_range"] == null ? null : ReportDateRangeModel.fromJson(json["date_range"]),
    overview: json["overview"] == null ? null : DashboardReportOverviewModel.fromJson(json["overview"]),
    breakdowns: json["breakdowns"] == null ? null : DashboardReportBreakdownsModel.fromJson(json["breakdowns"]),
  );

  @override
  Map<String, dynamic> toJson() => {
    "date_range": dateRange?.toJson(),
    "overview": overview?.toJson(),
    "breakdowns": breakdowns?.toJson(),
  };
}

class DashboardReportBreakdownsModel {
  List<DashboardReportByModel>? byPaymentType;
  List<DashboardReportByModel>? byDeliveryType;
  List<DashboardReportByModel>? bySource;

  DashboardReportBreakdownsModel({this.byPaymentType, this.byDeliveryType, this.bySource});

  factory DashboardReportBreakdownsModel.fromJson(Map<String, dynamic> json) => DashboardReportBreakdownsModel(
    byPaymentType: json["by_payment_type"] == null
        ? []
        : List<DashboardReportByModel>.from(json["by_payment_type"]!.map((x) => DashboardReportByModel.fromJson(x))),
    byDeliveryType: json["by_delivery_type"] == null
        ? []
        : List<DashboardReportByModel>.from(json["by_delivery_type"]!.map((x) => DashboardReportByModel.fromJson(x))),
    bySource: json["by_source"] == null
        ? []
        : List<DashboardReportByModel>.from(json["by_source"]!.map((x) => DashboardReportByModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "by_payment_type": byPaymentType == null ? [] : List<dynamic>.from(byPaymentType!.map((x) => x.toJson())),
    "by_delivery_type": byDeliveryType == null ? [] : List<dynamic>.from(byDeliveryType!.map((x) => x.toJson())),
    "by_source": bySource == null ? [] : List<dynamic>.from(bySource!.map((x) => x.toJson())),
  };
}

class DashboardReportByModel {
  String? id;
  String? name;
  double? amount;
  int? count;
  double? amountPercent;
  double? countPercent;
  List<DashboardReportByModel>? items;

  DashboardReportByModel({
    this.id,
    this.name,
    this.amount,
    this.count,
    this.amountPercent,
    this.countPercent,
    this.items,
  });

  factory DashboardReportByModel.fromJson(Map<String, dynamic> json) => DashboardReportByModel(
    id: json["id"],
    name: json["name"],
    amount: json["amount"]?.toDouble(),
    count: json["count"],
    amountPercent: json["amount_percent"]?.toDouble(),
    countPercent: json["count_percent"]?.toDouble(),
    items: json["items"] == null
        ? []
        : List<DashboardReportByModel>.from(json["items"]!.map((x) => DashboardReportByModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "amount": amount,
    "count": count,
    "amount_percent": amountPercent,
    "count_percent": countPercent,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class DashboardReportOverviewModel {
  double? totalSales;
  double? totalSalesTrend;
  int? transactionCount;
  double? transactionCountTrend;
  double? activeTurnover;
  double? activeTurnoverTrend;
  int? activeOrderCount;
  double? activeOrderCountTrend;

  DashboardReportOverviewModel({
    this.totalSales,
    this.totalSalesTrend,
    this.transactionCount,
    this.transactionCountTrend,
    this.activeTurnover,
    this.activeTurnoverTrend,
    this.activeOrderCount,
    this.activeOrderCountTrend,
  });

  factory DashboardReportOverviewModel.fromJson(Map<String, dynamic> json) => DashboardReportOverviewModel(
    totalSales: json["total_sales"]?.toDouble(),
    totalSalesTrend: json["total_sales_trend"]?.toDouble(),
    transactionCount: json["transaction_count"],
    transactionCountTrend: json["transaction_count_trend"]?.toDouble(),
    activeTurnover: json["active_turnover"]?.toDouble(),
    activeTurnoverTrend: json["active_turnover_trend"]?.toDouble(),
    activeOrderCount: json["active_order_count"],
    activeOrderCountTrend: json["active_order_count_trend"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "total_sales": totalSales,
    "total_sales_trend": totalSalesTrend,
    "transaction_count": transactionCount,
    "transaction_count_trend": transactionCountTrend,
    "active_turnover": activeTurnover,
    "active_turnover_trend": activeTurnoverTrend,
    "active_order_count": activeOrderCount,
    "active_order_count_trend": activeOrderCountTrend,
  };
}
