import 'package:background_json_parser/background_json_parser.dart';

import 'printer_queue_response_model.dart';

class ReportApp2AppPaymentResultModel extends IBaseModel<ReportApp2AppPaymentResultModel> {
  bool? complete;
  bool? isPrint;
  ReportApp2AppPaymentResultPrinterModel? printerModel;

  ReportApp2AppPaymentResultModel({
    this.complete,
    this.isPrint,
    this.printerModel,
  });

  @override
  fromJson(Map<String, dynamic> json) => ReportApp2AppPaymentResultModel(
        complete: json["complete"],
        isPrint: json["is_print"],
        printerModel: json["printer_model"] == null
            ? null
            : ReportApp2AppPaymentResultPrinterModel.fromJson(json["printer_model"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class ReportApp2AppPaymentResultPrinterModel {
  List<PrinterLineAndStyleModel>? headers;
  List<PrinterLineAndStyleModel>? footers;
  PrinterQueueResponsePrintDataModel? orders;

  ReportApp2AppPaymentResultPrinterModel({
    this.headers,
    this.footers,
    this.orders,
  });

  factory ReportApp2AppPaymentResultPrinterModel.fromJson(Map<String, dynamic> json) =>
      ReportApp2AppPaymentResultPrinterModel(
        headers: json["headers"] == null
            ? []
            : List<PrinterLineAndStyleModel>.from(json["headers"].map((x) => PrinterLineAndStyleModel.fromJson(x))),
        footers: json["footers"] == null
            ? []
            : List<PrinterLineAndStyleModel>.from(json["footers"].map((x) => PrinterLineAndStyleModel.fromJson(x))),
        orders: json["orders"] == null ? null : PrinterQueueResponsePrintDataModel.fromJson(json['orders']),
      );
}

class PrinterLineAndStyleModel {
  String? style;
  String? text;

  PrinterLineAndStyleModel({
    this.style,
    this.text,
  });

  factory PrinterLineAndStyleModel.fromJson(Map<String, dynamic> json) => PrinterLineAndStyleModel(
        style: json["style"],
        text: json["text"],
      );
}
