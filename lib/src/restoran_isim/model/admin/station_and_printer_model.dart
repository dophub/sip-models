import 'package:background_json_parser/background_json_parser.dart';

class StationAndPrintersModel extends IBaseModel<StationAndPrintersModel> {
  int? id;
  String? title;
  String? deviceSerial;
  String? createDate;
  bool? isActive;
  int? dealerId;
  dynamic paymentPosId;
  int? kioskAutoAcceptTime;
  bool? kioskIsAutoAccept;
  dynamic kioskLandingImage;
  dynamic closeOrderReadNewQr;
  dynamic kioskMobilePhoneIsRequire;
  dynamic jumpToCaseButtonInKiosk;
  dynamic showCashButtonIn;
  dynamic localSettings;
  dynamic isTrack;
  dynamic localPrinterId;
  int? printerCount;
  List<StationAndPrinterModel>? posStationPrinter;
  String? posBrand;

  StationAndPrintersModel({
    this.id,
    this.title,
    this.deviceSerial,
    this.createDate,
    this.isActive,
    this.dealerId,
    this.paymentPosId,
    this.kioskAutoAcceptTime,
    this.kioskIsAutoAccept,
    this.kioskLandingImage,
    this.closeOrderReadNewQr,
    this.kioskMobilePhoneIsRequire,
    this.jumpToCaseButtonInKiosk,
    this.showCashButtonIn,
    this.localSettings,
    this.isTrack,
    this.localPrinterId,
    this.printerCount,
    this.posStationPrinter,
    this.posBrand,
  });

  @override
  fromJson(Map<String, dynamic> json) => StationAndPrintersModel(
        id: json["id"],
        title: json["title"],
        deviceSerial: json["device_serial"],
        createDate: json["create_date"],
        isActive: json["is_active"],
        dealerId: json["dealer_id"],
        paymentPosId: json["payment_pos_id"],
        kioskAutoAcceptTime: json["kiosk_auto_accept_time"],
        kioskIsAutoAccept: json["kiosk_is_auto_accept"],
        kioskLandingImage: json["kiosk_landing_image"],
        closeOrderReadNewQr: json["close_order_read_new_qr"],
        kioskMobilePhoneIsRequire: json["kiosk_mobile_phone_is_require"],
        jumpToCaseButtonInKiosk: json["jump_to_case_button_in_kiosk"],
        showCashButtonIn: json["show_cash_button_in"],
        localSettings: json["local_settings"],
        isTrack: json["is_track"],
        localPrinterId: json["local_printer_id"],
        printerCount: json["printer_count"],
        posStationPrinter: json["pos_station_printer"] == null
            ? null
            : List<StationAndPrinterModel>.from(
                json["pos_station_printer"].map((x) => StationAndPrinterModel.fromJson(x))),
        posBrand: json["pos_brand"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "device_serial": deviceSerial,
        "create_date": createDate,
        "is_active": isActive,
        "dealer_id": dealerId,
        "payment_pos_id": paymentPosId,
        "kiosk_auto_accept_time": kioskAutoAcceptTime,
        "kiosk_is_auto_accept": kioskIsAutoAccept,
        "kiosk_landing_image": kioskLandingImage,
        "close_order_read_new_qr": closeOrderReadNewQr,
        "kiosk_mobile_phone_is_require": kioskMobilePhoneIsRequire,
        "jump_to_case_button_in_kiosk": jumpToCaseButtonInKiosk,
        "show_cash_button_in": showCashButtonIn,
        "local_settings": localSettings,
        "is_track": isTrack,
        "local_printer_id": localPrinterId,
        "printer_count": printerCount,
        "pos_station_printer": List<dynamic>.from(posStationPrinter!.map((x) => x.toJson())),
        "pos_brand": posBrand,
      };
}

class StationAndPrinterModel {
  int? id;
  String? printerName;
  bool? isDefault;
  String? ipAddress;
  int? posStationId;
  String? printerTypeId;
  int? port;
  bool? isCheckWriting;
  bool? isPaySlipWriting;

  StationAndPrinterModel({
    this.id,
    this.printerName,
    this.isDefault,
    this.ipAddress,
    this.posStationId,
    this.printerTypeId,
    this.port,
    this.isCheckWriting,
    this.isPaySlipWriting,
  });

  factory StationAndPrinterModel.fromJson(Map<String, dynamic> json) => StationAndPrinterModel(
        id: json["id"],
        printerName: json["printer_name"],
        isDefault: json["is_default"],
        ipAddress: json["ip_address"],
        posStationId: json["pos_station_id"],
        printerTypeId: json["printer_type_id"],
        port: json["port"],
        isCheckWriting: json["is_check_writing"],
        isPaySlipWriting: json["is_pay_slip_writing"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "printer_name": printerName,
        "is_default": isDefault,
        "ip_address": ipAddress,
        "pos_station_id": posStationId,
        "printer_type_id": printerTypeId,
        "port": port,
        "is_check_writing": isCheckWriting,
        "is_pay_slip_writing": isPaySlipWriting,
      };
}
