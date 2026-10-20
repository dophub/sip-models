import 'package:background_json_parser/background_json_parser.dart';

import 'idashboard_bars_card_model.dart';
import 'ireport.dart';

class EndOfDayReportModel extends IBaseModel<EndOfDayReportModel> implements IReport {
  @override
  ReportDateRangeModel? dateRange;

  @override
  String? printHtml;

  EndOfDayReportSummaryModel? summary;
  List<EndOfDayReportPaymentMethodModel>? paymentMethods;
  EndOfDayReportTipsModel? tips;
  List<EndOfDayReportHourlySalesModel>? hourlySales;
  String? peakHour;
  List<EndOfDayReportChannelModel>? channels;
  List<EndOfDayReportCategoryModel>? categories;
  List<EndOfDayReportTopProductModel>? topProducts;
  EndOfDayReportLossesModel? losses;
  List<EndOfDayReportTaxBreakdownModel>? taxBreakdown;
  EndOfDayReportTableStatsModel? tableStats;
  List<EndOfDayReportPersonnelModel>? personnel;

  EndOfDayReportModel({
    this.dateRange,
    this.printHtml,
    this.summary,
    this.paymentMethods,
    this.tips,
    this.hourlySales,
    this.peakHour,
    this.channels,
    this.categories,
    this.topProducts,
    this.losses,
    this.taxBreakdown,
    this.tableStats,
    this.personnel,
  });

  factory EndOfDayReportModel.fromJson(String json, bool isString) {
    if (isString) {
      return EndOfDayReportModel(printHtml: json);
    } else {
      return EndOfDayReportModel().jsonParser(json);
    }
  }

  @override
  fromJson(Map<String, dynamic> json) => EndOfDayReportModel(
    dateRange: json["date_range"] == null ? null : ReportDateRangeModel.fromJson(json["date_range"]),
    summary: json["summary"] == null ? null : EndOfDayReportSummaryModel.fromJson(json["summary"]),
    paymentMethods: json["payment_methods"] == null
        ? []
        : List<EndOfDayReportPaymentMethodModel>.from(
            json["payment_methods"].map((x) => EndOfDayReportPaymentMethodModel.fromJson(x)),
          ),
    tips: json["tips"] == null ? null : EndOfDayReportTipsModel.fromJson(json["tips"]),
    hourlySales: json["hourly_sales"] == null
        ? []
        : List<EndOfDayReportHourlySalesModel>.from(
            json["hourly_sales"].map((x) => EndOfDayReportHourlySalesModel.fromJson(x)),
          ),
    peakHour: json["peak_hour"],
    channels: json["channels"] == null
        ? []
        : List<EndOfDayReportChannelModel>.from(json["channels"].map((x) => EndOfDayReportChannelModel.fromJson(x))),
    categories: json["categories"] == null
        ? []
        : List<EndOfDayReportCategoryModel>.from(
            json["categories"].map((x) => EndOfDayReportCategoryModel.fromJson(x)),
          ),
    topProducts: json["top_products"] == null
        ? []
        : List<EndOfDayReportTopProductModel>.from(
            json["top_products"].map((x) => EndOfDayReportTopProductModel.fromJson(x)),
          ),
    losses: json["losses"] == null ? null : EndOfDayReportLossesModel.fromJson(json["losses"]),
    taxBreakdown: json["tax_breakdown"] == null
        ? []
        : List<EndOfDayReportTaxBreakdownModel>.from(
            json["tax_breakdown"].map((x) => EndOfDayReportTaxBreakdownModel.fromJson(x)),
          ),
    tableStats: json["table_stats"] == null ? null : EndOfDayReportTableStatsModel.fromJson(json["table_stats"]),
    personnel: json["personnel"] == null
        ? []
        : List<EndOfDayReportPersonnelModel>.from(
            json["personnel"].map((x) => EndOfDayReportPersonnelModel.fromJson(x)),
          ),
  );

  @override
  Map<String, dynamic> toJson() => {
    "date_range": dateRange?.toJson(),
    "summary": summary?.toJson(),
    "payment_methods": paymentMethods == null ? [] : List<dynamic>.from(paymentMethods!.map((x) => x.toJson())),
    "tips": tips?.toJson(),
    "hourly_sales": hourlySales == null ? [] : List<dynamic>.from(hourlySales!.map((x) => x.toJson())),
    "peak_hour": peakHour,
    "channels": channels == null ? [] : List<dynamic>.from(channels!.map((x) => x.toJson())),
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    "top_products": topProducts == null ? [] : List<dynamic>.from(topProducts!.map((x) => x.toJson())),
    "losses": losses?.toJson(),
    "tax_breakdown": taxBreakdown == null ? [] : List<dynamic>.from(taxBreakdown!.map((x) => x.toJson())),
    "table_stats": tableStats?.toJson(),
    "personnel": personnel == null ? [] : List<dynamic>.from(personnel!.map((x) => x.toJson())),
  };
}

class EndOfDayReportSummaryModel {
  double? grossSales;
  double? grossSalesTrend;
  double? netSales;
  double? netSalesTrend;
  int? checkCount;
  double? checkCountTrend;
  int? customerCount;
  double? customerCountTrend;
  double? averageCheck;
  double? averagePerPerson;

  EndOfDayReportSummaryModel({
    this.grossSales,
    this.grossSalesTrend,
    this.netSales,
    this.netSalesTrend,
    this.checkCount,
    this.checkCountTrend,
    this.customerCount,
    this.customerCountTrend,
    this.averageCheck,
    this.averagePerPerson,
  });

  factory EndOfDayReportSummaryModel.fromJson(Map<String, dynamic> json) => EndOfDayReportSummaryModel(
    grossSales: json["gross_sales"]?.toDouble(),
    grossSalesTrend: json["gross_sales_trend"]?.toDouble(),
    netSales: json["net_sales"]?.toDouble(),
    netSalesTrend: json["net_sales_trend"]?.toDouble(),
    checkCount: json["check_count"],
    checkCountTrend: json["check_count_trend"]?.toDouble(),
    customerCount: json["customer_count"],
    customerCountTrend: json["customer_count_trend"]?.toDouble(),
    averageCheck: json["average_check"]?.toDouble(),
    averagePerPerson: json["average_per_person"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "gross_sales": grossSales,
    "gross_sales_trend": grossSalesTrend,
    "net_sales": netSales,
    "net_sales_trend": netSalesTrend,
    "check_count": checkCount,
    "check_count_trend": checkCountTrend,
    "customer_count": customerCount,
    "customer_count_trend": customerCountTrend,
    "average_check": averageCheck,
    "average_per_person": averagePerPerson,
  };
}

class EndOfDayReportPaymentMethodModel extends IDashboardBarsCardModel {
  String? paymentTypeId;
  String? paymentTypeName;
  String? paymentGroup;
  @override
  double? amount;
  int? transactionCount;
  @override
  double? amountPercent;

  EndOfDayReportPaymentMethodModel({
    this.paymentTypeId,
    this.paymentTypeName,
    this.paymentGroup,
    this.amount,
    this.transactionCount,
    this.amountPercent,
  });

  factory EndOfDayReportPaymentMethodModel.fromJson(Map<String, dynamic> json) => EndOfDayReportPaymentMethodModel(
    paymentTypeId: json["payment_type_id"],
    paymentTypeName: json["payment_type_name"],
    paymentGroup: json["payment_group"],
    amount: json["amount"]?.toDouble(),
    transactionCount: json["transaction_count"],
    amountPercent: json["amount_percent"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "payment_type_id": paymentTypeId,
    "payment_type_name": paymentTypeName,
    "payment_group": paymentGroup,
    "amount": amount,
    "transaction_count": transactionCount,
    "amount_percent": amountPercent,
  };

  @override
  int? get count => transactionCount;

  @override
  String? get name => paymentTypeName;

  @override
  double? get countPercent => null;

  @override
  String? get id => null;

  @override
  List<EndOfDayReportPaymentMethodModel>? get items => [];
}

class EndOfDayReportTipsModel {
  double? totalTipAmount;

  EndOfDayReportTipsModel({this.totalTipAmount});

  factory EndOfDayReportTipsModel.fromJson(Map<String, dynamic> json) =>
      EndOfDayReportTipsModel(totalTipAmount: json["total_tip_amount"]?.toDouble());

  Map<String, dynamic> toJson() => {"total_tip_amount": totalTipAmount};
}

class EndOfDayReportHourlySalesModel {
  String? hour;
  double? amount;
  int? count;

  EndOfDayReportHourlySalesModel({this.hour, this.amount, this.count});

  factory EndOfDayReportHourlySalesModel.fromJson(Map<String, dynamic> json) =>
      EndOfDayReportHourlySalesModel(hour: json["hour"], amount: json["amount"]?.toDouble(), count: json["count"]);

  Map<String, dynamic> toJson() => {"hour": hour, "amount": amount, "count": count};
}

class EndOfDayReportChannelModel extends IDashboardBarsCardModel {
  String? channelId;
  String? channelName;
  @override
  double? amount;
  @override
  int? count;
  @override
  double? amountPercent;

  EndOfDayReportChannelModel({this.channelId, this.channelName, this.amount, this.count, this.amountPercent});

  factory EndOfDayReportChannelModel.fromJson(Map<String, dynamic> json) => EndOfDayReportChannelModel(
    channelId: json["channel_id"],
    channelName: json["channel_name"],
    amount: json["amount"]?.toDouble(),
    count: json["count"],
    amountPercent: json["amount_percent"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "channel_id": channelId,
    "channel_name": channelName,
    "amount": amount,
    "count": count,
    "amount_percent": amountPercent,
  };

  @override
  double? get countPercent => null;

  @override
  String? get id => channelId;

  @override
  List<EndOfDayReportChannelModel>? get items => [];

  @override
  String? get name => channelName;
}

class EndOfDayReportCategoryModel extends IDashboardBarsCardModel {
  @override
  String? name;
  @override
  double? amount;
  @override
  int? count;
  @override
  double? amountPercent;

  EndOfDayReportCategoryModel({this.name, this.amount, this.count, this.amountPercent});

  factory EndOfDayReportCategoryModel.fromJson(Map<String, dynamic> json) => EndOfDayReportCategoryModel(
    name: json["name"],
    amount: json["amount"]?.toDouble(),
    count: json["count"],
    amountPercent: json["amount_percent"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {"name": name, "amount": amount, "count": count, "amount_percent": amountPercent};

  @override
  double? get countPercent => null;

  String? get id => null;

  @override
  List<EndOfDayReportCategoryModel>? get items => [];
}

class EndOfDayReportTopProductModel extends IDashboardBarsCardModel {
  int? rank;
  int? productId;
  String? productName;
  int? quantity;
  double? revenue;

  EndOfDayReportTopProductModel({this.rank, this.productId, this.productName, this.quantity, this.revenue});

  factory EndOfDayReportTopProductModel.fromJson(Map<String, dynamic> json) => EndOfDayReportTopProductModel(
    rank: json["rank"],
    productId: json["product_id"],
    productName: json["product_name"],
    quantity: json["quantity"],
    revenue: json["revenue"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "rank": rank,
    "product_id": productId,
    "product_name": productName,
    "quantity": quantity,
    "revenue": revenue,
  };

  @override
  double? get amount => revenue;

  @override
  double? get amountPercent => null;

  @override
  int? get count => quantity;

  @override
  double? get countPercent => null;

  @override
  String? get id => null;

  @override
  List<EndOfDayReportTopProductModel>? get items => [];

  @override
  String? get name => '#' + rank.toString() + '  ' + productName!;
}

class EndOfDayReportLossesModel {
  EndOfDayReportDiscountsModel? discounts;
  EndOfDayReportCompsModel? comps;
  EndOfDayReportCancelsModel? cancels;
  double? totalLoss;
  double? totalLossPercent;

  EndOfDayReportLossesModel({this.discounts, this.comps, this.cancels, this.totalLoss, this.totalLossPercent});

  factory EndOfDayReportLossesModel.fromJson(Map<String, dynamic> json) => EndOfDayReportLossesModel(
    discounts: json["discounts"] == null ? null : EndOfDayReportDiscountsModel.fromJson(json["discounts"]),
    comps: json["comps"] == null ? null : EndOfDayReportCompsModel.fromJson(json["comps"]),
    cancels: json["cancels"] == null ? null : EndOfDayReportCancelsModel.fromJson(json["cancels"]),
    totalLoss: json["total_loss"]?.toDouble(),
    totalLossPercent: json["total_loss_percent"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "discounts": discounts?.toJson(),
    "comps": comps?.toJson(),
    "cancels": cancels?.toJson(),
    "total_loss": totalLoss,
    "total_loss_percent": totalLossPercent,
  };
}

class EndOfDayReportDiscountsModel {
  double? amount;
  int? orderCount;
  EndOfDayReportDetailModel? manual;
  EndOfDayReportDetailModel? campaign;

  EndOfDayReportDiscountsModel({this.amount, this.orderCount, this.manual, this.campaign});

  factory EndOfDayReportDiscountsModel.fromJson(Map<String, dynamic> json) => EndOfDayReportDiscountsModel(
    amount: json["amount"]?.toDouble(),
    orderCount: json["order_count"],
    manual: json["manual"] == null ? null : EndOfDayReportDetailModel.fromJson(json["manual"]),
    campaign: json["campaign"] == null ? null : EndOfDayReportDetailModel.fromJson(json["campaign"]),
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "order_count": orderCount,
    "manual": manual?.toJson(),
    "campaign": campaign?.toJson(),
  };
}

class EndOfDayReportDetailModel {
  double? amount;
  int? orderCount;

  EndOfDayReportDetailModel({this.amount, this.orderCount});

  factory EndOfDayReportDetailModel.fromJson(Map<String, dynamic> json) =>
      EndOfDayReportDetailModel(amount: json["amount"]?.toDouble(), orderCount: json["order_count"]);

  Map<String, dynamic> toJson() => {"amount": amount, "order_count": orderCount};
}

class EndOfDayReportCompsModel {
  double? amount;
  int? itemCount;

  EndOfDayReportCompsModel({this.amount, this.itemCount});

  factory EndOfDayReportCompsModel.fromJson(Map<String, dynamic> json) =>
      EndOfDayReportCompsModel(amount: json["amount"]?.toDouble(), itemCount: json["item_count"]);

  Map<String, dynamic> toJson() => {"amount": amount, "item_count": itemCount};
}

class EndOfDayReportCancelsModel {
  double? amount;
  int? orderCount;

  EndOfDayReportCancelsModel({this.amount, this.orderCount});

  factory EndOfDayReportCancelsModel.fromJson(Map<String, dynamic> json) =>
      EndOfDayReportCancelsModel(amount: json["amount"]?.toDouble(), orderCount: json["order_count"]);

  Map<String, dynamic> toJson() => {"amount": amount, "order_count": orderCount};
}

class EndOfDayReportTaxBreakdownModel {
  double? rate;
  double? grossAmount;
  double? baseAmount;
  double? taxAmount;

  EndOfDayReportTaxBreakdownModel({this.rate, this.grossAmount, this.baseAmount, this.taxAmount});

  factory EndOfDayReportTaxBreakdownModel.fromJson(Map<String, dynamic> json) => EndOfDayReportTaxBreakdownModel(
    rate: json["rate"]?.toDouble(),
    grossAmount: json["gross_amount"]?.toDouble(),
    baseAmount: json["base_amount"]?.toDouble(),
    taxAmount: json["tax_amount"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "gross_amount": grossAmount,
    "base_amount": baseAmount,
    "tax_amount": taxAmount,
  };
}

class EndOfDayReportTableStatsModel {
  int? totalTables;
  int? tablesUsed;
  int? serviceCount;
  double? turnoverRate;
  double? averageDurationMinutes;

  EndOfDayReportTableStatsModel({
    this.totalTables,
    this.tablesUsed,
    this.serviceCount,
    this.turnoverRate,
    this.averageDurationMinutes,
  });

  factory EndOfDayReportTableStatsModel.fromJson(Map<String, dynamic> json) => EndOfDayReportTableStatsModel(
    totalTables: json["total_tables"],
    tablesUsed: json["tables_used"],
    serviceCount: json["service_count"],
    turnoverRate: json["turnover_rate"]?.toDouble(),
    averageDurationMinutes: json["average_duration_minutes"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "total_tables": totalTables,
    "tables_used": tablesUsed,
    "service_count": serviceCount,
    "turnover_rate": turnoverRate,
    "average_duration_minutes": averageDurationMinutes,
  };
}

class EndOfDayReportPersonnelModel {
  int? personnelId;
  String? personnelName;
  int? checkCount;
  double? sales;
  double? averageCheck;
  double? discountAmount;
  double? tipAmount;

  EndOfDayReportPersonnelModel({
    this.personnelId,
    this.personnelName,
    this.checkCount,
    this.sales,
    this.averageCheck,
    this.discountAmount,
    this.tipAmount,
  });

  factory EndOfDayReportPersonnelModel.fromJson(Map<String, dynamic> json) => EndOfDayReportPersonnelModel(
    personnelId: json["personnel_id"],
    personnelName: json["personnel_name"],
    checkCount: json["check_count"],
    sales: json["sales"]?.toDouble(),
    averageCheck: json["average_check"]?.toDouble(),
    discountAmount: json["discount_amount"]?.toDouble(),
    tipAmount: json["tip_amount"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "personnel_id": personnelId,
    "personnel_name": personnelName,
    "check_count": checkCount,
    "sales": sales,
    "average_check": averageCheck,
    "discount_amount": discountAmount,
    "tip_amount": tipAmount,
  };
}
