import 'package:background_json_parser/background_json_parser.dart';

class GetPrinterWorkflowDetailModel extends IBaseModel<GetPrinterWorkflowDetailModel> {
  bool? isPaymentNotification;
  int? printWorkflowId;
  _PosStationPrinterModel? posStationPrinter;
  _OrderStatusPointModel? orderStatusPoint;
  _DealerStationModel? dealerStation;
  _PaymentModel? paymentModel;
  _PrinterTemplatesModel? printerTemplates;

  GetPrinterWorkflowDetailModel({
    this.isPaymentNotification,
    this.printWorkflowId,
    this.posStationPrinter,
    this.orderStatusPoint,
    this.dealerStation,
    this.paymentModel,
    this.printerTemplates,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetPrinterWorkflowDetailModel(
        isPaymentNotification: json["is_payment_notification"],
        printWorkflowId: json["print_workflow_id"],
        posStationPrinter:
            json["pos_station_printer"] == null ? null : _PosStationPrinterModel.fromJson(json["pos_station_printer"]),
        orderStatusPoint:
            json["order_status_point"] == null ? null : _OrderStatusPointModel.fromJson(json["order_status_point"]),
        dealerStation: json["dealer_station"] == null ? null : _DealerStationModel.fromJson(json["dealer_station"]),
        paymentModel: json["payment_model"] == null ? null : _PaymentModel.fromJson(json["payment_model"]),
        printerTemplates:
            json["printer_templates"] == null ? null : _PrinterTemplatesModel.fromJson(json["printer_templates"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "is_payment_notification": isPaymentNotification,
        "print_workflow_id": printWorkflowId,
        "pos_station_printer": posStationPrinter!.toJson(),
        "order_status_point": orderStatusPoint!.toJson(),
        "dealer_station": dealerStation!.toJson(),
        "payment_model": paymentModel!.toJson(),
        "printer_templates": printerTemplates!.toJson(),
      };
}

class _DealerStationModel {
  String? dealerStationName;
  String? floor;
  String? stationCode;

  _DealerStationModel({
    this.dealerStationName,
    this.floor,
    this.stationCode,
  });

  factory _DealerStationModel.fromJson(Map<String, dynamic> json) => _DealerStationModel(
        dealerStationName: json["dealer_station_name"],
        floor: json["floor"],
        stationCode: json["station_code"],
      );

  Map<String, dynamic> toJson() => {
        "dealer_station_name": dealerStationName,
        "floor": floor,
        "station_code": stationCode,
      };
}

class _OrderStatusPointModel {
  String? orderStatus;
  String? orderPoint;
  String? orderStatusCode;
  String? orderPointCode;

  _OrderStatusPointModel({
    this.orderStatus,
    this.orderPoint,
    this.orderStatusCode,
    this.orderPointCode,
  });

  factory _OrderStatusPointModel.fromJson(Map<String, dynamic> json) => _OrderStatusPointModel(
        orderStatus: json["order_status"],
        orderPoint: json["order_point"],
        orderStatusCode: json["order_status_code"],
        orderPointCode: json["order_point_code"],
      );

  Map<String, dynamic> toJson() => {
        "order_status": orderStatus,
        "order_point": orderPoint,
        "order_status_code": orderStatusCode,
        "order_point_code": orderPointCode,
      };
}

class _PaymentModel {
  String? modelName;
  String? modelCode;

  _PaymentModel({
    this.modelName,
    this.modelCode,
  });

  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _PaymentModel(
        modelName: json["model_name"],
        modelCode: json["model_code"],
      );

  Map<String, dynamic> toJson() => {
        "model_name": modelName,
        "model_code": modelCode,
      };
}

class _PosStationPrinterModel {
  int? posStationPrintersId;
  int? posStationId;
  String? printerName;
  bool? isPaySlipWriting;
  String? posStation;

  _PosStationPrinterModel({
    this.posStationPrintersId,
    this.posStationId,
    this.printerName,
    this.isPaySlipWriting,
    this.posStation,
  });

  factory _PosStationPrinterModel.fromJson(Map<String, dynamic> json) => _PosStationPrinterModel(
        posStationPrintersId: json["pos_station_printers_id"],
        posStationId: json["pos_station_id"],
        printerName: json["printer_name"],
        isPaySlipWriting: json["is_pay_slip_writing"],
        posStation: json["pos_station"],
      );

  Map<String, dynamic> toJson() => {
        "pos_station_printers_id": posStationPrintersId,
        "pos_station_id": posStationId,
        "printer_name": printerName,
        "is_pay_slip_writing": isPaySlipWriting,
        "pos_station": posStation,
      };
}

class _PrinterTemplatesModel {
  String? templateName;
  String? templateCode;

  _PrinterTemplatesModel({
    this.templateName,
    this.templateCode,
  });

  factory _PrinterTemplatesModel.fromJson(Map<String, dynamic> json) => _PrinterTemplatesModel(
        templateName: json["template_name"],
        templateCode: json["template_code"],
      );

  Map<String, dynamic> toJson() => {
        "template_name": templateName,
        "template_code": templateCode,
      };
}
