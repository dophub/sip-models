import 'package:background_json_parser/background_json_parser.dart';

import 'ireport.dart';

class DailySaleReportModel extends IBaseModel<DailySaleReportModel> implements IReport {
  DailySaleReportSummaryModel? summary;
  List<DailySaleReportBranchModel>? branches;
  List<DailySaleReportDeviceModel>? devices;

  @override
  ReportDateRangeModel? dateRange;

  @override
  String? printHtml;

  DailySaleReportModel({this.summary, this.branches, this.devices, this.dateRange, this.printHtml});

  factory DailySaleReportModel.fromJson(String json, bool isString) {
    if (isString) {
      return DailySaleReportModel(printHtml: json);
    } else {
      return DailySaleReportModel().jsonParser(json);
    }
  }

  @override
  fromJson(Map<String, dynamic> json) => DailySaleReportModel(
    dateRange: json["date_range"] == null ? null : ReportDateRangeModel.fromJson(json["date_range"]),
    summary: json["summary"] == null ? null : DailySaleReportSummaryModel.fromJson(json["summary"]),
    branches: json["branches"] == null
        ? []
        : List<DailySaleReportBranchModel>.from(json["branches"]!.map((x) => DailySaleReportBranchModel.fromJson(x))),
    devices: json["devices"] == null
        ? []
        : List<DailySaleReportDeviceModel>.from(json["devices"]!.map((x) => DailySaleReportDeviceModel.fromJson(x))),
  );

  @override
  Map<String, dynamic> toJson() => {
    "date_range": dateRange?.toJson(),
    "summary": summary?.toJson(),
    "branches": branches == null ? [] : List<dynamic>.from(branches!.map((x) => x.toJson())),
    "devices": devices == null ? [] : List<dynamic>.from(devices!.map((x) => x.toJson())),
  };
}

class DailySaleReportBranchModel {
  int? dealerId;
  String? dealerName;
  String? dealerCode;
  double? totalSales;
  int? transactionCount;
  List<DailySaleReportSummaryPaymentBreakdownModel>? paymentBreakdown;

  DailySaleReportBranchModel({
    this.dealerId,
    this.dealerName,
    this.dealerCode,
    this.totalSales,
    this.transactionCount,
    this.paymentBreakdown,
  });

  factory DailySaleReportBranchModel.fromJson(Map<String, dynamic> json) => DailySaleReportBranchModel(
    dealerId: json["dealer_id"],
    dealerName: json["dealer_name"],
    dealerCode: json["dealer_code"],
    totalSales: json["total_sales"]?.toDouble(),
    transactionCount: json["transaction_count"],
    paymentBreakdown: json["payment_breakdown"] == null
        ? []
        : List<DailySaleReportSummaryPaymentBreakdownModel>.from(
            json["payment_breakdown"]!.map((x) => DailySaleReportSummaryPaymentBreakdownModel.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "dealer_id": dealerId,
    "dealer_name": dealerName,
    "dealer_code": dealerCode,
    "total_sales": totalSales,
    "transaction_count": transactionCount,
    "payment_breakdown": paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
  };
}

class DailySaleReportDeviceModel {
  String? deviceId;
  String? deviceName;
  double? totalSales;
  int? transactionCount;
  List<DailySaleReportSummaryPaymentBreakdownModel>? paymentBreakdown;

  DailySaleReportDeviceModel({
    this.deviceId,
    this.deviceName,
    this.totalSales,
    this.transactionCount,
    this.paymentBreakdown,
  });

  factory DailySaleReportDeviceModel.fromJson(Map<String, dynamic> json) => DailySaleReportDeviceModel(
    deviceId: json["device_id"],
    deviceName: json["device_name"],
    totalSales: json["total_sales"]?.toDouble(),
    transactionCount: json["transaction_count"],
    paymentBreakdown: json["payment_breakdown"] == null
        ? []
        : List<DailySaleReportSummaryPaymentBreakdownModel>.from(
            json["payment_breakdown"]!.map((x) => DailySaleReportSummaryPaymentBreakdownModel.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "device_id": deviceId,
    "device_name": deviceName,
    "total_sales": totalSales,
    "transaction_count": transactionCount,
    "payment_breakdown": paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
  };
}

class DailySaleReportSummaryModel {
  double? totalSales;
  double? totalSalesTrend;
  int? transactionCount;
  double? transactionCountTrend;
  List<DailySaleReportSummaryPaymentBreakdownModel>? paymentBreakdown;

  DailySaleReportSummaryModel({
    this.totalSales,
    this.totalSalesTrend,
    this.transactionCount,
    this.transactionCountTrend,
    this.paymentBreakdown,
  });

  factory DailySaleReportSummaryModel.fromJson(Map<String, dynamic> json) => DailySaleReportSummaryModel(
    totalSales: json["total_sales"]?.toDouble(),
    totalSalesTrend: json["total_sales_trend"]?.toDouble(),
    transactionCount: json["transaction_count"],
    transactionCountTrend: json["transaction_count_trend"]?.toDouble(),
    paymentBreakdown: json["payment_breakdown"] == null
        ? []
        : List<DailySaleReportSummaryPaymentBreakdownModel>.from(
            json["payment_breakdown"]!.map((x) => DailySaleReportSummaryPaymentBreakdownModel.fromJson(x)),
          ),
  );

  Map<String, dynamic> toJson() => {
    "total_sales": totalSales,
    "total_sales_trend": totalSalesTrend,
    "transaction_count": transactionCount,
    "transaction_count_trend": transactionCountTrend,
    "payment_breakdown": paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
  };
}

class DailySaleReportSummaryPaymentBreakdownModel {
  String? paymentGroupId;
  String? paymentGroupName;
  double? amount;
  int? transactionCount;
  double? amountPercent;
  double? countPercent;
  List<DailySaleReportSummaryPaymentBreakdownItemModel>? items;

  DailySaleReportSummaryPaymentBreakdownModel({
    this.paymentGroupId,
    this.paymentGroupName,
    this.amount,
    this.transactionCount,
    this.amountPercent,
    this.countPercent,
    this.items,
  });

  factory DailySaleReportSummaryPaymentBreakdownModel.fromJson(Map<String, dynamic> json) =>
      DailySaleReportSummaryPaymentBreakdownModel(
        paymentGroupId: json["payment_group_id"],
        paymentGroupName: json["payment_group_name"],
        amount: json["amount"]?.toDouble(),
        transactionCount: json["transaction_count"],
        amountPercent: json["amount_percent"]?.toDouble(),
        countPercent: json["count_percent"]?.toDouble(),
        items: json["items"] == null
            ? []
            : List<DailySaleReportSummaryPaymentBreakdownItemModel>.from(
                json["items"]!.map((x) => DailySaleReportSummaryPaymentBreakdownItemModel.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "payment_group_id": paymentGroupId,
    "payment_group_name": paymentGroupName,
    "amount": amount,
    "transaction_count": transactionCount,
    "amount_percent": amountPercent,
    "count_percent": countPercent,
    "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class DailySaleReportSummaryPaymentBreakdownItemModel {
  String? paymentTypeId;
  String? paymentTypeName;
  double? amount;
  int? transactionCount;
  double? amountPercent;
  double? countPercent;

  DailySaleReportSummaryPaymentBreakdownItemModel({
    this.paymentTypeId,
    this.paymentTypeName,
    this.amount,
    this.transactionCount,
    this.amountPercent,
    this.countPercent,
  });

  factory DailySaleReportSummaryPaymentBreakdownItemModel.fromJson(Map<String, dynamic> json) =>
      DailySaleReportSummaryPaymentBreakdownItemModel(
        paymentTypeId: json["payment_type_id"],
        paymentTypeName: json["payment_type_name"],
        amount: json["amount"]?.toDouble(),
        transactionCount: json["transaction_count"],
        amountPercent: json["amount_percent"]?.toDouble(),
        countPercent: json["count_percent"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
    "payment_type_id": paymentTypeId,
    "payment_type_name": paymentTypeName,
    "amount": amount,
    "transaction_count": transactionCount,
    "amount_percent": amountPercent,
    "count_percent": countPercent,
  };
}
