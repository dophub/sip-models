class DashboardReportModel {
  DashboardReportDateRangeModel? dateRange;
  DashboardReportOverviewModel? overview;
  DashboardReportBreakdownsModel? breakdowns;

  DashboardReportModel({
    this.dateRange,
    this.overview,
    this.breakdowns,
  });

  factory DashboardReportModel.fromJson(Map<String, dynamic> json) => DashboardReportModel(
        dateRange: json["date_range"] == null ? null : DashboardReportDateRangeModel.fromJson(json["date_range"]),
        overview: json["overview"] == null ? null : DashboardReportOverviewModel.fromJson(json["overview"]),
        breakdowns: json["breakdowns"] == null ? null : DashboardReportBreakdownsModel.fromJson(json["breakdowns"]),
      );

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

  DashboardReportBreakdownsModel({
    this.byPaymentType,
    this.byDeliveryType,
    this.bySource,
  });

  factory DashboardReportBreakdownsModel.fromJson(Map<String, dynamic> json) => DashboardReportBreakdownsModel(
        byPaymentType: json["by_payment_type"] == null
            ? []
            : List<DashboardReportByModel>.from(
                json["by_payment_type"]!.map((x) => DashboardReportByModel.fromJson(x))),
        byDeliveryType: json["by_delivery_type"] == null
            ? []
            : List<DashboardReportByModel>.from(
                json["by_delivery_type"]!.map((x) => DashboardReportByModel.fromJson(x))),
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

  DashboardReportByModel({
    this.id,
    this.name,
    this.amount,
    this.count,
    this.amountPercent,
    this.countPercent,
  });

  factory DashboardReportByModel.fromJson(Map<String, dynamic> json) => DashboardReportByModel(
        id: json["id"],
        name: json["name"],
        amount: json["amount"]?.toDouble(),
        count: json["count"],
        amountPercent: json["amount_percent"]?.toDouble(),
        countPercent: json["count_percent"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "amount": amount,
        "count": count,
        "amount_percent": amountPercent,
        "count_percent": countPercent,
      };
}

class DashboardReportDateRangeModel {
  DateTime? start;
  DateTime? end;

  DashboardReportDateRangeModel({
    this.start,
    this.end,
  });

  factory DashboardReportDateRangeModel.fromJson(Map<String, dynamic> json) => DashboardReportDateRangeModel(
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
