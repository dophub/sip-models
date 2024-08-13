import 'package:background_json_parser/background_json_parser.dart';

class PaycellInfoResponseModel extends IBaseModel<PaycellInfoResponseModel> {
  PaycellInfoResponseModel({
    this.id,
    this.isActive,
    this.clientKey,
    this.deviceSerial,
    this.terminalid,
    this.subMerchantid,
    this.okcSerial,
    this.posCode,
    this.appName,
    this.dgpid,
    this.username,
    this.password,
    this.packageName,
    this.isWebPos,
    this.title,
    this.isAssign,
    this.assignDate,
    this.dealerId,
    this.posBrandId,
    this.isInvoice,
    this.isEftMode,
    this.isPrintOptionDoc, // Basılan slipte bilgi fişi olacak mı
    this.isPrintOptionCustomerCopy, // Basılan slipte müşteri kopyası olacak
    this.isPrintOptionMerchantCopy, // Basılan slipte işletme kopyası olacak
    this.isPrintOptionPrintSlip, // slip basılacak mı
  });

  int? id;
  bool? isActive;
  String? clientKey;
  String? deviceSerial;
  String? terminalid;
  String? subMerchantid;
  String? okcSerial;
  String? posCode;
  String? appName;
  String? dgpid;
  String? username;
  String? password;
  String? packageName;
  bool? isWebPos;
  String? title;
  bool? isAssign;
  DateTime? assignDate;
  int? dealerId;
  String? posBrandId;
  bool? isInvoice;
  bool? isEftMode;
  bool? isPrintOptionDoc;
  bool? isPrintOptionCustomerCopy;
  bool? isPrintOptionMerchantCopy;
  bool? isPrintOptionPrintSlip;

  @override
  PaycellInfoResponseModel fromJson(Map<String, dynamic> json) => PaycellInfoResponseModel(
        id: json["id"],
        isActive: json["is_active"],
        clientKey: json["client_key"],
        deviceSerial: json["device_serial"],
        terminalid: json["terminalid"],
        subMerchantid: json["sub_merchantid"],
        okcSerial: json["okc_serial"],
        posCode: json["pos_code"],
        appName: json["app_name"],
        dgpid: json["dgpid"],
        username: json["username"],
        password: json["password"],
        packageName: json["package_name"],
        isWebPos: json["is_web_pos"],
        title: json["title"],
        isAssign: json["is_assign"],
        assignDate: json["assign_date"] == null ? null : DateTime.parse(json["assign_date"]),
        dealerId: json["dealer_id"],
        posBrandId: json["pos_brand_id"],
        isInvoice: json["is_invoice"],
        isEftMode: json["is_eft_mode"],
        isPrintOptionDoc: json["is_print_option_doc"],
        isPrintOptionCustomerCopy: json["is_print_option_customer_copy"],
        isPrintOptionMerchantCopy: json["is_print_option_merchant_copy"],
        isPrintOptionPrintSlip: json["is_print_option_print_slip"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
