import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/foundation.dart';
import 'package:sip_models/response.dart' hide DealerInfoModel;

import 'courier_model.dart';
import 'dealer_info_model.dart';
import 'order_cancel_model.dart';
import 'order_status_model.dart';
import 'station_table_model.dart';
import 'waiter_model.dart';

class ParametersResponseModel extends IBaseModel<ParametersResponseModel> {
  OrderStatusModel? orderStatus;
  PaymentInfoModel? paymentType;
  List<WaiterModel>? waiters;
  List<ParamStationTableModel>? stationTable;
  List<CourierModel>? courier;
  DealerInfoModel? dealerInfo;
  List<OrderCancelModel>? orderCancel;
  List<PosBrandsModel>? posBrands;
  Map<String, Map<String, String>?>? contents; // localization Map<LanguageCode,Map<Kay,value>>

  ParametersResponseModel({
    this.orderStatus,
    this.paymentType,
    this.waiters,
    this.stationTable,
    this.courier,
    this.dealerInfo,
    this.orderCancel,
    this.posBrands,
    this.contents,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    final Map<String, Map<String, String>?> temp = {};
    try {
      final Map<String, dynamic> _dealerContents = json["contents"];
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

    return ParametersResponseModel(
      orderStatus:
          json['order_status'] == null ? null : OrderStatusModel.fromJson(json['order_status'] as Map<String, dynamic>),
      paymentType: json["payment_type"] == null ? null : PaymentInfoModel.fromJson(json["payment_type"]),
      waiters:
          (json['waiters'] as List<dynamic>?)?.map((e) => WaiterModel.fromJson(e as Map<String, dynamic>)).toList(),
      stationTable: (json['station_table'] as List<dynamic>?)
          ?.map((e) => ParamStationTableModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      courier:
          (json['courier'] as List<dynamic>?)?.map((e) => CourierModel.fromJson(e as Map<String, dynamic>)).toList(),
      dealerInfo:
          json['dealer_info'] == null ? null : DealerInfoModel.fromJson(json['dealer_info'] as Map<String, dynamic>),
      orderCancel: (json['order_cancel'] as List<dynamic>?)
          ?.map((e) => OrderCancelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      posBrands: (json['pos_brands'] as List<dynamic>?)
          ?.map((e) => PosBrandsModel().fromJson(e as Map<String, dynamic>))
          .toList(),
      contents: temp,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class PaymentInfoModel {
  PaymentInfoModel({
    this.takeout,
    this.getin,
    this.table,
  });

  List<PaymentType>? takeout;
  List<PaymentType>? getin;
  List<PaymentType>? table;

  factory PaymentInfoModel.fromJson(Map<String, dynamic> json) => PaymentInfoModel(
        takeout:
            json["TAKEOUT"] == null ? [] : List<PaymentType>.from(json["TAKEOUT"].map((x) => PaymentType.fromJson(x))),
        getin: json["GETIN"] == null ? [] : List<PaymentType>.from(json["GETIN"].map((x) => PaymentType.fromJson(x))),
        table: json["TABLE"] == null ? [] : List<PaymentType>.from(json["TABLE"].map((x) => PaymentType.fromJson(x))),
      );

  Map toJson() => {
        "TAKEOUT": takeout?.map((e) => e.toJson()),
        "GETIN": getin?.map((e) => e.toJson()),
        "TABLE": table?.map((e) => e.toJson()),
      };

  PaymentInfoModel copyWith() => PaymentInfoModel(
        takeout: takeout!.map((e) => e.copyWith()).toList(),
        getin: getin!.map((e) => e.copyWith()).toList(),
        table: table!.map((e) => e.copyWith()).toList(),
      );
}

class PosBrandsModel {
  PosBrandsModel({
    this.id,
    this.setting,
    this.dealerId,
    this.isActive,
    this.brandCode,
    this.brandName,
    this.clientKey,
    this.terminalId,
    this.posBrandId,
    this.terminalEx1,
    this.terminalEx2,
    this.terminalEx3,
    this.clientPassword,
  });

  int? id;
  SettingModel? setting;
  int? dealerId;
  bool? isActive;
  String? brandCode;
  String? brandName;
  String? clientKey;
  String? terminalId;
  String? posBrandId;
  String? terminalEx1;
  String? terminalEx2;
  String? terminalEx3;
  String? clientPassword;

  Map<String, dynamic> toJson() => {
        'id': id,
        'setting': setting == null ? null : setting!.toJson(),
        'dealer_id': dealerId,
        'is_active': isActive,
        'brand_code': brandCode,
        'brand_name': brandName,
        'client_key': clientKey,
        'terminal_id': terminalId,
        'pos_brand_id': posBrandId,
        'terminal_ex1': terminalEx1,
        'terminal_ex2': terminalEx2,
        'terminal_ex3': terminalEx3,
        'client_password': clientPassword,
      };

  PosBrandsModel fromJson(Map<String, dynamic> json) {
    return PosBrandsModel(
      id: json['id'],
      setting: SettingModel.fromJson(json['setting']),
      dealerId: json['dealer_id'],
      isActive: json['is_active'],
      brandCode: json['brand_code'],
      brandName: json['brand_name'],
      clientKey: json['client_key'],
      terminalId: json['terminal_id'],
      posBrandId: json['pos_brand_id'],
      terminalEx1: json['terminal_ex1'],
      terminalEx2: json['terminal_ex2'],
      terminalEx3: json['terminal_ex3'],
      clientPassword: json['client_password'],
    );
  }
}

class SettingModel {
  SettingModel({
    this.printInvoice,
  });

  PrintInvoiceModel? printInvoice;

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        printInvoice: PrintInvoiceModel.fromJson(json['print_invoice']),
      );

  Map<String, dynamic> toJson() => {
        'print_invoice': printInvoice == null ? null : printInvoice!.toJson(),
      };
}

class PrintInvoiceModel {
  PrintInvoiceModel({
    this.cash,
    this.creditCard,
  });

  bool? cash;
  bool? creditCard;

  factory PrintInvoiceModel.fromJson(Map<String, dynamic> json) => PrintInvoiceModel(
        cash: json['cash'],
        creditCard: json['credit_card'],
      );

  Map<String, dynamic> toJson() => {
        'cash': cash,
        'credit_card': creditCard,
      };
}
