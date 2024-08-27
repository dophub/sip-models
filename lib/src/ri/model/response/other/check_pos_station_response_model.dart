import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/foundation.dart';

import '../../other/multi_item_picker_widget_model.dart';

class CheckPosStationResponseModel extends IBaseModel<CheckPosStationResponseModel> {
  CheckPosStationResponseModel({
    this.status,
    this.info,
  });

  String? status;
  CheckPosStationResponseInfoModel? info;

  @override
  CheckPosStationResponseModel fromJson(Map<String, dynamic> json) => CheckPosStationResponseModel(
        status: json["status"],
        info: json["info"] == null ? null : CheckPosStationResponseInfoModel.fromJson(json["info"]),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class CheckPosStationResponseInfoModel {
  CheckPosStationResponseInfoModel({
    this.id,
    this.title,
    this.deviceSerial,
    this.createDate,
    this.isActive,
    this.dealerId,
    this.posPrinters,
    this.terminalId,
    this.kioskLandingImage,
    this.kioskIsAutoAccept,
    this.kioskAutoAcceptTime,
    this.closeOrderReadNewQr,
    this.kioskMobilePhoneIsRequire,
    this.jumpToCaseButtonInKiosk,
    this.showCashButtonIn,
    this.isKioskChangeableDeliveryType,
    this.isChangeableOrderPoint,
    this.isKioskPleksiScreen,
    this.tableServiceAmount,
    this.localSettings,
    this.kioskImages,
    this.dealerContents,
    this.isChangeableDeliverySSType,
    this.isChangeableDeliveryTableType,
    this.setOrderPointId,
    this.kioskShowMobilePhoneScreen,
    this.defaultKisokBanner,
    this.dealerKioskBanner,
    this.posStationsLocalSettings,
    this.localPrinterId,
  });

  int? id;
  String? title;
  String? deviceSerial;
  DateTime? createDate;
  bool? isActive;
  int? dealerId;
  List<PosPrinterModel>? posPrinters;
  String? terminalId;
  String? kioskLandingImage;
  bool? kioskIsAutoAccept;
  int? kioskAutoAcceptTime;
  bool? closeOrderReadNewQr;
  bool? kioskMobilePhoneIsRequire;
  bool? jumpToCaseButtonInKiosk;
  bool? showCashButtonIn;
  bool? isKioskChangeableDeliveryType; // kisok masaya service seçme ekranı açık mı
  bool? isKioskPleksiScreen; // Masa Numarası girme ekranı açık mı
  bool? isChangeableOrderPoint; // Paket service açık mı değil mi
  double? tableServiceAmount; // Self service te masaya service ücreti var mı
  PosStationLocalSettingsModel? localSettings;
  List<KioskImageModel>? kioskImages;
  bool? isChangeableDeliverySSType;
  bool? isChangeableDeliveryTableType;
  String? setOrderPointId;
  String? defaultKisokBanner;
  String? dealerKioskBanner;
  bool? kioskShowMobilePhoneScreen;
  Map<String, Map<String, String>?>? dealerContents; // localization Map<LanguageCode,Map<Kay,value>>
  PosStationsLocalSettingsModel? posStationsLocalSettings; // istasyon bazlı kisok ayarları
  int? localPrinterId;

  /// close_order_read_new_qr = Kasada qr okumada önceki sipariş kapatılıyor mu
  /// jump_to_case_button_in_kiosk = kiosk ekranında Kasa ekranına hızlı geçiş olacak mı?
  /// show_cash_button_in = Kiosk ekranında Nakit ödeme olacak mı
  ///
  /// is_changeable_delivery_ss_type = self servis tipi seçilebilir mi
  /// is_changeable_delivery_table_type = masaya servis tipi seçilebilir mi
  /// is_changeable_order_point = paket servis tipi seçilebilir mi
  /// set_order_point_id = is_changeable_order_point seçilir ise order pointin olacağı değer
  /// kiosk_mobile_phone_is_require = Kiosk ekranında cep telefonu gereklimi
  ///
  /// kiosk_show_mobile_phone_screen = telefon girme ekranı çıkacak mı

  factory CheckPosStationResponseInfoModel.fromJson(Map<String, dynamic> json) {
    final Map<String, Map<String, String>?> temp = {};
    try {
      final Map<String, dynamic> _dealerContents = json["dealer_contents"];
      _dealerContents.forEach((String key, value) {
        final Map<String, String> tempValue = {};
        value?.forEach((element) {
          tempValue.addAll({element['content_type_id']: element['content']});
        });
        temp.addAll({key: tempValue});
      });
    } catch (e) {
      debugPrintStack(label: 'CheckPosStationResponseInfoModel:dealerContents parse Error');
    }

    return CheckPosStationResponseInfoModel(
      id: json["id"],
      title: json["title"],
      deviceSerial: json["device_serial"],
      createDate: json["create_date"] == null ? null : DateTime.parse(json["create_date"]),
      isActive: json["is_active"],
      dealerId: json["dealer_id"],
      posPrinters: json["pos_printers"] == null
          ? []
          : List<PosPrinterModel>.from(json["pos_printers"]!.map((x) => PosPrinterModel.fromJson(x))),
      terminalId: json["terminalid"],
      kioskLandingImage: json['kiosk_landing_image'],
      kioskIsAutoAccept: json['kiosk_is_auto_accept'],
      kioskAutoAcceptTime: json['kiosk_auto_accept_time'],
      closeOrderReadNewQr: json["close_order_read_new_qr"],
      kioskMobilePhoneIsRequire: json["kiosk_mobile_phone_is_require"],
      jumpToCaseButtonInKiosk: json["jump_to_case_button_in_kiosk"],
      showCashButtonIn: json["show_cash_button_in"],
      isKioskChangeableDeliveryType: json["is_kiosk_changeable_delivery_type"],
      isKioskPleksiScreen: json["is_kiosk_pleksi_screen"],
      isChangeableOrderPoint: json["is_changeable_order_point"],
      tableServiceAmount: json["table_service_amount"],
      isChangeableDeliverySSType: json["is_changeable_delivery_ss_type"],
      isChangeableDeliveryTableType: json["is_changeable_delivery_table_type"],
      setOrderPointId: json["set_order_point_id"],
      defaultKisokBanner: json["default_kisok_banner"],
      dealerKioskBanner: json["dealer_kiosk_banner"],
      kioskShowMobilePhoneScreen: json["kiosk_show_mobile_phone_screen"],
      localSettings:
          json["local_settings"] == null ? null : PosStationLocalSettingsModel.fromJson(json["local_settings"]),
      kioskImages: json["kiosk_images"] == null
          ? []
          : List<KioskImageModel>.from(json["kiosk_images"].map((x) => KioskImageModel.fromJson(x))),
      dealerContents: temp,
      posStationsLocalSettings: json['pos_stations_local_settings'] == null
          ? null
          : PosStationsLocalSettingsModel.fromJson(json['pos_stations_local_settings']),
      localPrinterId: json['local_printer_id'],
    );
  }
}

class PosPrinterModel extends IBaseModel<PosPrinterModel> implements IMultiItemPickerWidgetModel {
  PosPrinterModel({
    this.id,
    this.ipAddress,
    this.isDefault,
    this.printerName,
    this.posStationId,
    this.printerTypeId,
    this.port,
    this.isCheckWriting,
    this.isPaySlipWriting,
    this.paperSize,
  });

  int? id;
  String? ipAddress;
  bool? isDefault;
  bool? isCheckWriting; // masa printer
  bool? isPaySlipWriting; // Kasa printer
  String? printerName;
  int? posStationId;
  String? printerTypeId;
  int? port;
  String? paperSize;

  factory PosPrinterModel.fromJson(Map<String, dynamic> json) => PosPrinterModel(
        id: json["id"],
        ipAddress: json["ip_address"],
        isDefault: json["is_default"],
        isCheckWriting: json["is_check_writing"],
        isPaySlipWriting: json["is_pay_slip_writing"],
        printerName: json["printer_name"],
        posStationId: json["pos_station_id"],
        printerTypeId: json["printer_type_id"],
        port: json["port"],
        paperSize: json["paper_size"],
      );

  @override
  PosPrinterModel fromJson(Map<String, dynamic> json) => PosPrinterModel.fromJson(json);

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "ip_address": ipAddress,
        "is_default": isDefault,
        "is_check_writing": isCheckWriting,
        "is_pay_slip_writing": isPaySlipWriting,
        "printer_name": printerName,
        "pos_station_id": posStationId,
        "printer_type_id": printerTypeId,
        "port": port,
        "paper_size": paperSize,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => '${printerName!} (${ipAddress!})';
}

class PosStationLocalSettingsModel {
  String? primaryColor;
  String? onPrimaryColor;
  String? secondaryColor;
  String? backgroundColor;
  String? onBackgroundColor;
  String? buttonColor;
  String? landingButtonColor;
  String? onButtonColor;
  String? onLandingButtonColor;
  int? screenWaitingSeconds;
  int? popupWaitingSeconds;
  bool? isDepot;

  PosStationLocalSettingsModel({
    this.primaryColor,
    this.onPrimaryColor,
    this.secondaryColor,
    this.backgroundColor,
    this.buttonColor,
    this.onButtonColor,
    this.screenWaitingSeconds,
    this.popupWaitingSeconds,
    this.onBackgroundColor,
    this.landingButtonColor,
    this.onLandingButtonColor,
    this.isDepot,
  });

  factory PosStationLocalSettingsModel.fromJson(Map<String, dynamic> json) => PosStationLocalSettingsModel(
        primaryColor: json["primary_color"],
        onPrimaryColor: json["on_primary_color"],
        secondaryColor: json["secondary_color"],
        backgroundColor: json["background_color"],
        onBackgroundColor: json["on_background_color"],
        buttonColor: json["button_color"],
        landingButtonColor: json["landing_button_color"],
        onButtonColor: json["on_button_color"],
        onLandingButtonColor: json["on_landing_button_color"],
        screenWaitingSeconds: json["screen_waiting_seconds"],
        popupWaitingSeconds: json["popup_waiting_seconds"],
        isDepot: json["is_depot"],
      );

  Map<String, dynamic> toJson() => {
        "primary_color": primaryColor,
        "on_primary_color": onPrimaryColor,
        "secondary_color": secondaryColor,
        "background_color": backgroundColor,
        "on_background_color": onBackgroundColor,
        "button_color": buttonColor,
        "landing_button_color": landingButtonColor,
        "on_button_color": onButtonColor,
        "on_landing_button_color": onLandingButtonColor,
        "screen_waiting_seconds": screenWaitingSeconds,
        "popup_waiting_seconds": popupWaitingSeconds,
        "is_depot": isDepot,
      };
}

class KioskImageModel {
  int? id;
  String? langId;
  int? dealerId;
  String? imageUrl;

  KioskImageModel({
    this.id,
    this.langId,
    this.dealerId,
    this.imageUrl,
  });

  factory KioskImageModel.fromJson(Map<String, dynamic> json) => KioskImageModel(
        id: json["id"],
        langId: json["lang_id"],
        dealerId: json["dealer_id"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lang_id": langId,
        "dealer_id": dealerId,
        "image_url": imageUrl,
      };
}

class DealerContentModel {
  String content;
  String langId;
  String contentTypeId;

  DealerContentModel({
    required this.content,
    required this.langId,
    required this.contentTypeId,
  });

  factory DealerContentModel.fromJson(Map<String, dynamic> json) => DealerContentModel(
        content: json["content"],
        langId: json["lang_id"],
        contentTypeId: json["content_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "content": content,
        "lang_id": langId,
        "content_type_id": contentTypeId,
      };
}

class PosStationsLocalSettingsModel {
  int? categoryProductColumnCount;

  PosStationsLocalSettingsModel({
    required this.categoryProductColumnCount,
  });

  factory PosStationsLocalSettingsModel.fromJson(Map<String, dynamic> json) => PosStationsLocalSettingsModel(
        categoryProductColumnCount: json["category_product_column_count"],
      );

  Map<String, dynamic> toJson() => {
        "category_product_column_count": categoryProductColumnCount,
      };
}
