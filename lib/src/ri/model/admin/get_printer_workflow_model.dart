import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class GetPrinterWorkflowModel extends IBaseModel<GetPrinterWorkflowModel> {
  List<_GetPrinterWorkflowStatusPointModel>? statusPoint;
  List<_GetPrinterWorkflowPrinterTemplateModel>? printerTemplates;
  List<_GetPrinterWorkflowDealerStationModel>? dealerStation;
  List<_GetPrinterWorkflowPaymentModel>? paymentModel;
  List<GetPrinterWorkflowPosStationPrinterModel>? posStationPrinters;

  GetPrinterWorkflowModel({
    this.statusPoint,
    this.printerTemplates,
    this.dealerStation,
    this.paymentModel,
    this.posStationPrinters,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetPrinterWorkflowModel(
        statusPoint: json["ostatus_opoint"] == null
            ? null
            : List<_GetPrinterWorkflowStatusPointModel>.from(
                json["ostatus_opoint"].map((x) => _GetPrinterWorkflowStatusPointModel.fromJson(x))),
        printerTemplates: json["printer_templates"] == null
            ? null
            : List<_GetPrinterWorkflowPrinterTemplateModel>.from(
                json["printer_templates"].map((x) => _GetPrinterWorkflowPrinterTemplateModel.fromJson(x))),
        dealerStation: json["dealer_station"] == null
            ? null
            : List<_GetPrinterWorkflowDealerStationModel>.from(
                json["dealer_station"].map((x) => _GetPrinterWorkflowDealerStationModel.fromJson(x))),
        paymentModel: json["payment_model"] == null
            ? null
            : List<_GetPrinterWorkflowPaymentModel>.from(
                json["payment_model"].map((x) => _GetPrinterWorkflowPaymentModel.fromJson(x))),
        posStationPrinters: json["pos_station_printers"] == null
            ? null
            : List<GetPrinterWorkflowPosStationPrinterModel>.from(
                json["pos_station_printers"].map((x) => GetPrinterWorkflowPosStationPrinterModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "ostatus_opoint": List<dynamic>.from(statusPoint!.map((x) => x.toJson())),
        "printer_templates": List<dynamic>.from(printerTemplates!.map((x) => x.toJson())),
        "dealer_station": List<dynamic>.from(dealerStation!.map((x) => x.toJson())),
        "payment_model": List<dynamic>.from(paymentModel!.map((x) => x.toJson())),
        "pos_station_printers": List<dynamic>.from(posStationPrinters!.map((x) => x.toJson())),
      };
}

class _GetPrinterWorkflowDealerStationModel implements IMultiItemPickerWidgetModel {
  String? stationCode;
  String? stationName;

  _GetPrinterWorkflowDealerStationModel({
    this.stationCode,
    this.stationName,
  });

  factory _GetPrinterWorkflowDealerStationModel.fromJson(Map<String, dynamic> json) =>
      _GetPrinterWorkflowDealerStationModel(
        stationCode: json["station_code"],
        stationName: json["station_name"],
      );

  Map<String, dynamic> toJson() => {
        "station_code": stationCode,
        "station_name": stationName,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => stationName ?? '';
}

class _GetPrinterWorkflowStatusPointModel implements IMultiItemPickerWidgetModel {
  String? orderPointCode;
  String? orderPointName;
  List<_StatusPointOrderStatusModel>? orderStatus;

  _GetPrinterWorkflowStatusPointModel({
    this.orderPointCode,
    this.orderPointName,
    this.orderStatus,
  });

  factory _GetPrinterWorkflowStatusPointModel.fromJson(Map<String, dynamic> json) =>
      _GetPrinterWorkflowStatusPointModel(
        orderPointCode: json["order_point_code"],
        orderPointName: json["order_point_name"],
        orderStatus: List<_StatusPointOrderStatusModel>.from(
            json["order_status"].map((x) => _StatusPointOrderStatusModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "order_point_code": orderPointCode,
        "order_point_name": orderPointName,
        "order_status": List<dynamic>.from(orderStatus!.map((x) => x.toJson())),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => orderPointName ?? '';
}

class _StatusPointOrderStatusModel implements IMultiItemPickerWidgetModel {
  String? orderStatusCode;
  String? orderStatusName;

  _StatusPointOrderStatusModel({
    this.orderStatusCode,
    this.orderStatusName,
  });

  factory _StatusPointOrderStatusModel.fromJson(Map<String, dynamic> json) => _StatusPointOrderStatusModel(
        orderStatusCode: json["order_status_code"],
        orderStatusName: json["order_status_name"],
      );

  Map<String, dynamic> toJson() => {
        "order_status_code": orderStatusCode,
        "order_status_name": orderStatusName,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => orderStatusName ?? '';
}

class _GetPrinterWorkflowPaymentModel implements IMultiItemPickerWidgetModel {
  String? modelCode;
  String? modelName;

  _GetPrinterWorkflowPaymentModel({
    this.modelCode,
    this.modelName,
  });

  factory _GetPrinterWorkflowPaymentModel.fromJson(Map<String, dynamic> json) => _GetPrinterWorkflowPaymentModel(
        modelCode: json["model_code"],
        modelName: json["model_name"],
      );

  Map<String, dynamic> toJson() => {
        "model_code": modelCode,
        "model_name": modelName,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => modelName ?? '';
}

class GetPrinterWorkflowPosStationPrinterModel implements IMultiItemPickerWidgetModel {
  String? printerName;
  int? id;
  int? posStationId;
  String? printerTypeId;
  String? posStation;

  GetPrinterWorkflowPosStationPrinterModel({
    this.printerName,
    this.id,
    this.posStationId,
    this.printerTypeId,
    this.posStation,
  });

  factory GetPrinterWorkflowPosStationPrinterModel.fromJson(Map<String, dynamic> json) =>
      GetPrinterWorkflowPosStationPrinterModel(
        printerName: json["printer_name"],
        id: json["id"],
        posStationId: json["pos_station_id"],
        printerTypeId: json["printer_type_id"],
        posStation: json["pos_station"],
      );

  Map<String, dynamic> toJson() => {
        "printer_name": printerName,
        "id": id,
        "pos_station_id": posStationId,
        "printer_type_id": printerTypeId,
        "pos_station": posStation,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => printerName ?? '';
}

class _GetPrinterWorkflowPrinterTemplateModel implements IMultiItemPickerWidgetModel {
  String? templateCode;
  String? templateName;

  _GetPrinterWorkflowPrinterTemplateModel({
    this.templateCode,
    this.templateName,
  });

  factory _GetPrinterWorkflowPrinterTemplateModel.fromJson(Map<String, dynamic> json) =>
      _GetPrinterWorkflowPrinterTemplateModel(
        templateCode: json["template_code"],
        templateName: json["template_name"],
      );

  Map<String, dynamic> toJson() => {
        "template_code": templateCode,
        "template_name": templateName,
      };

  @override
  bool selectedValue = false;

  @override
  // TODO: implement title
  String get title => templateName ?? '';
}
