import 'package:background_json_parser/background_json_parser.dart';

class GetPaymentPosModel extends IBaseModel<GetPaymentPosModel> {
  int? id;
  String? terminalid;
  String? clientKey;
  String? packageName;
  String? deviceSerial;
  String? posBrandId;
  String? subMerchantid;
  bool? isWebPos;
  String? posCode;
  String? okcSerial;
  String? dgpid;
  String? appName;
  String? username;
  String? password;
  int? dealerId;

  GetPaymentPosModel({
    this.id,
    this.terminalid,
    this.clientKey,
    this.packageName,
    this.deviceSerial,
    this.posBrandId,
    this.subMerchantid,
    this.isWebPos,
    this.posCode,
    this.okcSerial,
    this.dgpid,
    this.appName,
    this.username,
    this.password,
    this.dealerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetPaymentPosModel(
        id: json["id"],
        terminalid: json["terminalid"],
        clientKey: json["client_key"],
        packageName: json["package_name"],
        deviceSerial: json["device_serial"],
        posBrandId: json["pos_brand_id"],
        subMerchantid: json["sub_merchantid"],
        isWebPos: json["is_web_pos"],
        posCode: json["pos_code"],
        okcSerial: json["okc_serial"],
        dgpid: json["dgpid"],
        appName: json["app_name"],
        username: json["username"],
        password: json["password"],
        dealerId: json["dealer_id"],
      );

  @override
  Map<String, dynamic> toJson() {
    final map = {
      "id": id,
      "terminalid": terminalid,
      "client_key": clientKey,
      "package_name": packageName,
      "device_serial": deviceSerial,
      "pos_brand_id": posBrandId,
      "sub_merchantid": subMerchantid,
      "is_web_pos": isWebPos,
      "pos_code": posCode,
      "okc_serial": okcSerial,
      "dgpid": dgpid,
      "app_name": appName,
      "username": username,
      "password": password,
      "dealer_id": dealerId,
    };
    if (id == null) {
      map.remove('id');
    }
    return map;
  }
}
