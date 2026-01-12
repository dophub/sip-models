import 'package:background_json_parser/background_json_parser.dart';

class ProductPerformanceReportModel extends IBaseModel<ProductPerformanceReportModel> {
  ProductPerformanceReportDateRangeModel? dateRange;
  ProductPerformanceReportSummaryModel? summary;
  List<ProductPerformanceReportProductModel>? products;

  ProductPerformanceReportModel({
    this.dateRange,
    this.summary,
    this.products,
  });

  @override
  fromJson(Map<String, dynamic> json) => ProductPerformanceReportModel(
        dateRange: json["date_range"] == null ? null : ProductPerformanceReportDateRangeModel.fromJson(json["date_range"]),
        summary: json["summary"] == null ? null : ProductPerformanceReportSummaryModel.fromJson(json["summary"]),
        products: json["products"] == null ? [] : List<ProductPerformanceReportProductModel>.from(json["products"]!.map((x) => ProductPerformanceReportProductModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "date_range": dateRange?.toJson(),
        "summary": summary?.toJson(),
        "products": products == null ? [] : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class ProductPerformanceReportDateRangeModel {
  DateTime? start;
  DateTime? end;

  ProductPerformanceReportDateRangeModel({
    this.start,
    this.end,
  });

  factory ProductPerformanceReportDateRangeModel.fromJson(Map<String, dynamic> json) => ProductPerformanceReportDateRangeModel(
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

class ProductPerformanceReportProductModel {
  int? productId;
  String? productName;
  int? totalQuantity;
  int? totalRevenue;
  int? orderInclusionCount;
  double? averagePrice;
  int? rank;
  double? qtyPercent;

  ProductPerformanceReportProductModel({
    this.productId,
    this.productName,
    this.totalQuantity,
    this.totalRevenue,
    this.orderInclusionCount,
    this.averagePrice,
    this.rank,
    this.qtyPercent,
  });

  factory ProductPerformanceReportProductModel.fromJson(Map<String, dynamic> json) => ProductPerformanceReportProductModel(
        productId: json["product_id"],
        productName: json["product_name"],
        totalQuantity: json["total_quantity"],
        totalRevenue: json["total_revenue"],
        orderInclusionCount: json["order_inclusion_count"],
        averagePrice: json["average_price"]?.toDouble(),
        rank: json["rank"],
        qtyPercent: json["qty_percent"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "total_quantity": totalQuantity,
        "total_revenue": totalRevenue,
        "order_inclusion_count": orderInclusionCount,
        "average_price": averagePrice,
        "rank": rank,
        "qty_percent": qtyPercent,
      };
}

class ProductPerformanceReportSummaryModel {
  int? totalRevenue;
  int? totalRevenueTrend;
  int? totalQuantitySold;
  int? totalQuantitySoldTrend;
  int? uniqueProducts;
  String? topProduct;

  ProductPerformanceReportSummaryModel({
    this.totalRevenue,
    this.totalRevenueTrend,
    this.totalQuantitySold,
    this.totalQuantitySoldTrend,
    this.uniqueProducts,
    this.topProduct,
  });

  factory ProductPerformanceReportSummaryModel.fromJson(Map<String, dynamic> json) => ProductPerformanceReportSummaryModel(
        totalRevenue: json["total_revenue"],
        totalRevenueTrend: json["total_revenue_trend"],
        totalQuantitySold: json["total_quantity_sold"],
        totalQuantitySoldTrend: json["total_quantity_sold_trend"],
        uniqueProducts: json["unique_products"],
        topProduct: json["top_product"],
      );

  Map<String, dynamic> toJson() => {
        "total_revenue": totalRevenue,
        "total_revenue_trend": totalRevenueTrend,
        "total_quantity_sold": totalQuantitySold,
        "total_quantity_sold_trend": totalQuantitySoldTrend,
        "unique_products": uniqueProducts,
        "top_product": topProduct,
      };
}
