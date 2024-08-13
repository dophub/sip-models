import 'package:background_json_parser/background_json_parser.dart';

class DailyReportModel extends IBaseModel<DailyReportModel> {
  int? count;
  String? startDate;
  String? endDate;
  List<DailyReportPaymentTypeModel>? paymentTypes;
  List<DailyReportStatusTypeModel>? statusTypes;
  List<DailyReportOrderSourceModel>? orderSources;
  List<DailyReportOrderItemModel>? orderItems;

  DailyReportModel({
    this.count,
    this.startDate,
    this.endDate,
    this.paymentTypes,
    this.statusTypes,
    this.orderSources,
    this.orderItems,
  });

  @override
  fromJson(Map<String, dynamic> json) => DailyReportModel(
        count: json["count"],
        startDate: json["startDate"],
        endDate: json["endDate"],
        paymentTypes: json["paymentTypes"] == null
            ? []
            : List<DailyReportPaymentTypeModel>.from(
                json["paymentTypes"].map((x) => DailyReportPaymentTypeModel.fromJson(x))),
        statusTypes: json["statusTypes"] == null
            ? []
            : List<DailyReportStatusTypeModel>.from(
                json["statusTypes"].map((x) => DailyReportStatusTypeModel.fromJson(x))),
        orderSources: json["orderSources"] == null
            ? []
            : List<DailyReportOrderSourceModel>.from(
                json["orderSources"].map((x) => DailyReportOrderSourceModel.fromJson(x))),
        orderItems: json["orderItems"] == null
            ? []
            : List<DailyReportOrderItemModel>.from(
                json["orderItems"].map((x) => DailyReportOrderItemModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "count": count,
        "startDate": startDate,
        "endDate": endDate,
        "paymentTypes": List<dynamic>.from(paymentTypes!.map((x) => x.toJson())),
        "statusTypes": List<dynamic>.from(statusTypes!.map((x) => x.toJson())),
        "orderSources": List<dynamic>.from(orderSources!.map((x) => x.toJson())),
        "orderItems": List<dynamic>.from(orderItems!.map((x) => x.toJson())),
      };
}

class DailyReportOrderItemModel implements IReportModel {
  String? orderItem;
  @override
  int? count;
  @override
  double? turnover;

  DailyReportOrderItemModel({
    this.orderItem,
    this.count,
    this.turnover,
  });

  factory DailyReportOrderItemModel.fromJson(Map<String, dynamic> json) => DailyReportOrderItemModel(
        orderItem: json["orderItem"],
        count: json["count"],
        turnover: json["turnover"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "orderItem": orderItem,
        "count": count,
        "turnover": turnover,
      };

  @override
  String? get title => orderItem;
}

class DailyReportOrderSourceModel implements IReportModel {
  String? orderSource;
  int? count;
  double? turnover;

  DailyReportOrderSourceModel({
    this.orderSource,
    this.count,
    this.turnover,
  });

  factory DailyReportOrderSourceModel.fromJson(Map<String, dynamic> json) => DailyReportOrderSourceModel(
        orderSource: json["orderSource"],
        count: json["count"],
        turnover: json["turnover"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "orderSource": orderSource,
        "count": count,
        "turnover": turnover,
      };

  @override
  String? get title => orderSource;
}

class DailyReportPaymentTypeModel implements IReportModel {
  String? paymentType;
  @override
  int? count;
  @override
  double? turnover;

  DailyReportPaymentTypeModel({
    this.paymentType,
    this.count,
    this.turnover,
  });

  factory DailyReportPaymentTypeModel.fromJson(Map<String, dynamic> json) => DailyReportPaymentTypeModel(
        paymentType: json["paymentType"],
        count: json["count"],
        turnover: json["turnover"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "paymentType": paymentType,
        "count": count,
        "turnover": turnover,
      };

  @override
  String? get title => paymentType;
}

class DailyReportStatusTypeModel implements IReportModel {
  String? statusType;
  @override
  int? count;
  @override
  double? turnover;

  DailyReportStatusTypeModel({
    this.statusType,
    this.count,
    this.turnover,
  });

  factory DailyReportStatusTypeModel.fromJson(Map<String, dynamic> json) => DailyReportStatusTypeModel(
        statusType: json["statusType"],
        count: json["count"],
        turnover: json["turnover"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "statusType": statusType,
        "count": count,
        "turnover": turnover,
      };

  @override
  String? get title => statusType;
}

abstract class IReportModel {
  String? get title;

  int? count;
  double? turnover;
}
