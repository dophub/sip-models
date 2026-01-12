import 'package:background_json_parser/background_json_parser.dart';

class DailySaleReportModel extends IBaseModel<DailySaleReportModel> {
  DailySaleReportDateRangeModel? dateRange;
  DailySaleReportSummaryModel? summary;
  List<DailySaleReportBranchModel>? branches;
  List<DailySaleReportDeviceModel>? devices;

  DailySaleReportModel({
    this.dateRange,
    this.summary,
    this.branches,
    this.devices,
  });

  @override
  fromJson(Map<String, dynamic> json) => DailySaleReportModel(
        dateRange: json["date_range"] == null ? null : DailySaleReportDateRangeModel.fromJson(json["date_range"]),
        summary: json["summary"] == null ? null : DailySaleReportSummaryModel.fromJson(json["summary"]),
        branches: json["branches"] == null
            ? []
            : List<DailySaleReportBranchModel>.from(
                json["branches"]!.map((x) => DailySaleReportBranchModel.fromJson(x))),
        devices: json["devices"] == null
            ? []
            : List<DailySaleReportDeviceModel>.from(
                json["devices"]!.map((x) => DailySaleReportDeviceModel.fromJson(x))),
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
  int? totalSales;
  int? transactionCount;
  List<DailySaleReportPaymentBreakdownModel>? paymentBreakdown;

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
        totalSales: json["total_sales"],
        transactionCount: json["transaction_count"],
        paymentBreakdown: json["payment_breakdown"] == null
            ? []
            : List<DailySaleReportPaymentBreakdownModel>.from(
                json["payment_breakdown"]!.map((x) => DailySaleReportPaymentBreakdownModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "dealer_name": dealerName,
        "dealer_code": dealerCode,
        "total_sales": totalSales,
        "transaction_count": transactionCount,
        "payment_breakdown":
            paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
      };
}

class DailySaleReportPaymentBreakdownModel {
  String? paymentTypeId;
  String? paymentTypeName;
  int? amount;
  int? transactionCount;
  double? amountPercent;
  double? countPercent;

  DailySaleReportPaymentBreakdownModel({
    this.paymentTypeId,
    this.paymentTypeName,
    this.amount,
    this.transactionCount,
    this.amountPercent,
    this.countPercent,
  });

  factory DailySaleReportPaymentBreakdownModel.fromJson(Map<String, dynamic> json) =>
      DailySaleReportPaymentBreakdownModel(
        paymentTypeId: json["payment_type_id"],
        paymentTypeName: json["payment_type_name"],
        amount: json["amount"],
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

class DailySaleReportDateRangeModel {
  DateTime? start;
  DateTime? end;

  DailySaleReportDateRangeModel({
    this.start,
    this.end,
  });

  factory DailySaleReportDateRangeModel.fromJson(Map<String, dynamic> json) => DailySaleReportDateRangeModel(
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

class DailySaleReportDeviceModel {
  String? deviceId;
  String? deviceName;
  int? totalSales;
  int? transactionCount;
  List<DailySaleReportPaymentBreakdownModel>? paymentBreakdown;

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
        totalSales: json["total_sales"],
        transactionCount: json["transaction_count"],
        paymentBreakdown: json["payment_breakdown"] == null
            ? []
            : List<DailySaleReportPaymentBreakdownModel>.from(
                json["payment_breakdown"]!.map((x) => DailySaleReportPaymentBreakdownModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "device_id": deviceId,
        "device_name": deviceName,
        "total_sales": totalSales,
        "transaction_count": transactionCount,
        "payment_breakdown":
            paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
      };
}

class DailySaleReportSummaryModel {
  int? totalSales;
  int? totalSalesTrend;
  int? transactionCount;
  int? transactionCountTrend;
  List<DailySaleReportPaymentBreakdownModel>? paymentBreakdown;

  DailySaleReportSummaryModel({
    this.totalSales,
    this.totalSalesTrend,
    this.transactionCount,
    this.transactionCountTrend,
    this.paymentBreakdown,
  });

  factory DailySaleReportSummaryModel.fromJson(Map<String, dynamic> json) => DailySaleReportSummaryModel(
        totalSales: json["total_sales"],
        totalSalesTrend: json["total_sales_trend"],
        transactionCount: json["transaction_count"],
        transactionCountTrend: json["transaction_count_trend"],
        paymentBreakdown: json["payment_breakdown"] == null
            ? []
            : List<DailySaleReportPaymentBreakdownModel>.from(
                json["payment_breakdown"]!.map((x) => DailySaleReportPaymentBreakdownModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "total_sales": totalSales,
        "total_sales_trend": totalSalesTrend,
        "transaction_count": transactionCount,
        "transaction_count_trend": transactionCountTrend,
        "payment_breakdown":
            paymentBreakdown == null ? [] : List<dynamic>.from(paymentBreakdown!.map((x) => x.toJson())),
      };
}
