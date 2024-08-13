import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/request.dart';
import 'package:sip_models/response.dart';

import 'report_app2app_payment_result_model.dart';

class PrinterQueueResponseModel extends IBaseModel<PrinterQueueResponseModel> {
  PrinterQueueResponseModel({
    this.id,
    this.trackid,
    this.printData,
    this.printTemplateId,
    this.posStationPrinterId,
    this.posStationId,
    this.printerTypeId,
    this.ipAddress,
    this.port,
    this.isRevision,
    this.printerName,
    this.paymentModelId,
    this.isPaymentNotification,
    this.isCheckNotification,
    this.footers,
    this.headers,
    this.paperSize,
  });

  int? id;
  String? trackid;
  PrinterQueueResponsePrintDataModel? printData;
  String? printTemplateId; // workflow şablonu
  int? posStationPrinterId;
  int? posStationId;
  String? printerTypeId;
  String? ipAddress;
  int? port;
  bool? isRevision;
  String? printerName;
  String? paymentModelId;
  bool? isPaymentNotification; // printer Ödeme mi : alan true ise kasa fişi
  bool?
      isCheckNotification; //Kredi kartı ve printer adisyon mu : isCheckNotification true ise ve isPaymentNotification false is masa fişi
  List<PrinterLineAndStyleModel>? headers;
  List<PrinterLineAndStyleModel>? footers;
  String? paperSize;

  @override
  PrinterQueueResponseModel fromJson(Map<String, dynamic> json) => PrinterQueueResponseModel(
        id: json["id"],
        trackid: json["trackid"],
        printData: json["print_data"] == null ? null : PrinterQueueResponsePrintDataModel.fromJson(json["print_data"]),
        printTemplateId: json["print_template_id"],
        posStationPrinterId: json["pos_station_printer_id"],
        posStationId: json["pos_station_id"],
        printerTypeId: json["printer_type_id"],
        ipAddress: json["ip_address"],
        port: json["port"],
        isRevision: json["is_revision"],
        printerName: json["printer_name"],
        paymentModelId: json["payment_model_id"],
        isPaymentNotification: json["is_payment_notification"],
        isCheckNotification: json["is_check_notification"],
        headers: json["headers"] == null
            ? []
            : List<PrinterLineAndStyleModel>.from(json["headers"].map((x) => PrinterLineAndStyleModel.fromJson(x))),
        footers: json["footers"] == null
            ? []
            : List<PrinterLineAndStyleModel>.from(json["footers"].map((x) => PrinterLineAndStyleModel.fromJson(x))),
        paperSize: json["paper_size"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class PrinterQueueResponsePrintDataModel {
  PrinterQueueResponsePrintDataModel({
    this.orders,
    this.qrCode,
    this.dealerId,
    this.qTableId,
    this.serviceId,
    this.tableInfo,
    this.personCount,
    this.serviceNumber,
    this.payCustomerId,
    this.paymentTypeId,
    this.revisionNumber,
    this.totalTipAmount,
    this.numberOfService,
    this.serviceStatusId,
    this.servicePayTypeId,
    this.serviceTotalAmount,
    this.serviceTotalAmountWithoutKdv,
    this.paymentType,
    this.serviceDeliveryType,
    this.tableServiceAmount,
    this.paymentModelId,
  });

  List<PrinterQuequeResponseOrderModel>? orders;
  dynamic qrCode;
  int? dealerId;
  String? qTableId;
  int? serviceId;
  _TableInfo? tableInfo;
  int? personCount;
  String? serviceNumber;
  String? serviceDeliveryType;
  dynamic payCustomerId;
  int? numberOfService;
  dynamic paymentTypeId;
  String? revisionNumber;
  double? totalTipAmount;
  String? serviceStatusId;
  dynamic servicePayTypeId;
  double? serviceTotalAmount;
  double? serviceTotalAmountWithoutKdv;
  String? paymentType;
  double? tableServiceAmount;
  String? paymentModelId;

  factory PrinterQueueResponsePrintDataModel.fromJson(Map<String, dynamic> json) => PrinterQueueResponsePrintDataModel(
        orders: json["orders"] == null
            ? []
            : List<PrinterQuequeResponseOrderModel>.from(
                json["orders"]!.map((x) => PrinterQuequeResponseOrderModel.fromJson(x))),
        qrCode: json["qr_code"],
        dealerId: json["dealer_id"],
        numberOfService: json["number_of_service"],
        qTableId: json["q_table_id"],
        serviceId: json["service_id"],
        tableInfo: json["table_info"] == null ? null : _TableInfo.fromJson(json["table_info"]),
        personCount: json["person_count"],
        serviceNumber: json["service_number"],
        payCustomerId: json["pay_customer_id"],
        paymentTypeId: json["payment_type_id"],
        revisionNumber: json["revision_number"],
        totalTipAmount: json["total_tip_amount"]?.toDouble(),
        serviceStatusId: json["service_status_id"],
        servicePayTypeId: json["service_pay_type_id"],
        serviceTotalAmount: json["service_total_amount"]?.toDouble(),
        serviceTotalAmountWithoutKdv: json["service_total_amount_without_kdv"]?.toDouble(),
        paymentType: json["payment_type"],
        serviceDeliveryType: json["service_delivery_type"],
        tableServiceAmount: json["table_service_amount"]?.toDouble(),
        paymentModelId: json["payment_model_id"],
      );
}

class PrinterQuequeResponseOrderModel {
  PrinterQuequeResponseOrderModel({
    this.id,
    this.items,
    this.ssoId,
    this.customer,
    this.dealerId,
    this.nickName,
    this.sessionId,
    this.orderNote,
    this.tipAmount,
    this.customerId,
    this.recordDate,
    this.courierInfo,
    this.orderNumber,
    this.orderStatus,
    this.paymentInfo,
    this.totalAmount,
    this.deliveryDate,
    this.orderOptions,
    this.orderPointId,
    this.clientPointId,
    this.customerAddress,
    this.deliveryTypeId,
    this.sessionPointId,
    this.tableServiceId,
    this.tipAmountWithoutKdv,
    this.totalAmountWithoutKdv,
  });

  int? id;
  List<PrinterQueueResponseOrderOrderItemModel>? items;
  String? ssoId;
  _Customer? customer;
  int? dealerId;
  String? nickName;
  String? sessionId;
  String? orderNote;
  double? tipAmount;
  int? customerId;
  DateTime? recordDate;
  dynamic courierInfo;
  String? orderNumber;
  _OrderStatus? orderStatus;
  _PaymentInfoModel? paymentInfo;
  double? totalAmount;
  dynamic deliveryDate;
  dynamic orderOptions;
  String? orderPointId;
  String? clientPointId;
  CustomerAddressModel? customerAddress;
  String? deliveryTypeId;
  String? sessionPointId;
  int? tableServiceId;
  double? tipAmountWithoutKdv;
  double? totalAmountWithoutKdv;

  factory PrinterQuequeResponseOrderModel.fromJson(Map<String, dynamic> json) => PrinterQuequeResponseOrderModel(
        id: json["id"],
        items: json["items"] == null
            ? []
            : List<PrinterQueueResponseOrderOrderItemModel>.from(
                json["items"]!.map((x) => PrinterQueueResponseOrderOrderItemModel.fromJson(x))),
        ssoId: json["sso_id"],
        customer: json["customer"] == null ? null : _Customer.fromJson(json["customer"]),
        dealerId: json["dealer_id"],
        nickName: json["nick_name"],
        sessionId: json["sessionId"],
        orderNote: json["order_note"],
        tipAmount: json["tip_amount"]?.toDouble(),
        customerId: json["customer_id"],
        recordDate: json["record_date"] == null ? null : DateTime.parse(json["record_date"]),
        courierInfo: json["courier_info"],
        orderNumber: json["order_number"],
        orderStatus: json["order_status"] == null ? null : _OrderStatus.fromJson(json["order_status"]),
        customerAddress:
            json["customer_address"] == null ? null : CustomerAddressModel().fromJson(json["customer_address"]),
        paymentInfo: json["payment_info"] == null ? null : _PaymentInfoModel.fromJson(json["payment_info"]),
        totalAmount: json["total_amount"]?.toDouble(),
        deliveryDate: json["delivery_date"],
        orderOptions: json["order_options"],
        orderPointId: json["order_point_id"],
        clientPointId: json["client_point_id"],
        deliveryTypeId: json["delivery_type_id"],
        sessionPointId: json["session_point_id"],
        tableServiceId: json["table_service_id"],
        tipAmountWithoutKdv: json["tip_amount_without_kdv"]?.toDouble(),
        totalAmountWithoutKdv: json["total_amount_without_kdv"]?.toDouble(),
      );
}

class _PaymentInfoModel {
  String? name;
  String? type;
  bool? isOnlinePayment;

  _PaymentInfoModel({
    this.name,
    this.type,
    this.isOnlinePayment,
  });

  factory _PaymentInfoModel.fromJson(Map<String, dynamic> json) => _PaymentInfoModel(
        name: json["name"],
        type: json["type"],
        isOnlinePayment: json["is_online_payment"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "is_online_payment": isOnlinePayment,
      };
}

class _Customer {
  _Customer({
    this.id,
    this.sessionId,
    this.nameSurname,
    this.phoneNumber,
  });

  int? id;
  String? sessionId;
  String? nameSurname;
  String? phoneNumber;

  factory _Customer.fromJson(Map<String, dynamic> json) => _Customer(
        id: json["id"],
        sessionId: json["sessionId"],
        nameSurname: json["name_surname"],
        phoneNumber: json["phone_number"],
      );
}

class PrinterQueueResponseOrderOrderItemModel {
  PrinterQueueResponseOrderOrderItemModel({
    required this.id,
    required this.count,
    required this.status,
    required this.options,
    required this.itemNote,
    required this.itemTitle,
    required this.totalPrice,
    required this.itemTypeId,
  });

  final int? id;
  final int? count;
  final PrinterQueueResponseOrderOrderItemStatusModel? status;
  final List<OrderOption>? options;
  final String? itemNote;
  final String? itemTitle;
  final double? totalPrice;
  final String? itemTypeId;

  factory PrinterQueueResponseOrderOrderItemModel.fromJson(Map<String, dynamic> json) =>
      PrinterQueueResponseOrderOrderItemModel(
        id: json["id"],
        count: json["count"],
        status: json["status"] == null ? null : PrinterQueueResponseOrderOrderItemStatusModel.fromJson(json["status"]),
        options:
            json["options"] == null ? [] : List<OrderOption>.from(json["options"]!.map((x) => OrderOption.fromJson(x))),
        itemNote: json["item_note"],
        itemTitle: json["item_title"],
        totalPrice: json["total_price"]?.toDouble(),
        itemTypeId: json["item_type_id"],
      );
}

class PrinterQueueResponseOrderOrderItemStatusModel {
  PrinterQueueResponseOrderOrderItemStatusModel({
    required this.statusCode,
    required this.statusName,
  });

  String? statusCode;
  String? statusName;

  factory PrinterQueueResponseOrderOrderItemStatusModel.fromJson(Map<String, dynamic> json) =>
      PrinterQueueResponseOrderOrderItemStatusModel(
        statusCode: json["status_code"],
        statusName: json["status_name"],
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "status_name": statusName,
      };
}

class _OrderStatus {
  _OrderStatus({
    this.orderStatusCode,
    this.orderStatusName,
    this.orderStatusGroupId,
  });

  String? orderStatusCode;
  String? orderStatusName;
  String? orderStatusGroupId;

  factory _OrderStatus.fromJson(Map<String, dynamic> json) => _OrderStatus(
        orderStatusCode: json["order_status_code"],
        orderStatusName: json["order_status_name"],
        orderStatusGroupId: json["order_status_group_id"],
      );

  Map<String, dynamic> toJson() => {
        "order_status_code": orderStatusCode,
        "order_status_name": orderStatusName,
        "order_status_group_id": orderStatusGroupId,
      };
}

class _TableInfo {
  _TableInfo({
    this.tableCode,
    this.tableName,
    this.stationCode,
    this.stationName,
  });

  String? tableCode;
  String? tableName;
  String? stationCode;
  String? stationName;

  factory _TableInfo.fromJson(Map<String, dynamic> json) => _TableInfo(
        tableCode: json["table_code"],
        tableName: json["table_name"],
        stationCode: json["station_code"],
        stationName: json["station_name"],
      );

  Map<String, dynamic> toJson() => {
        "table_code": tableCode,
        "table_name": tableName,
        "station_code": stationCode,
        "station_name": stationName,
      };
}
