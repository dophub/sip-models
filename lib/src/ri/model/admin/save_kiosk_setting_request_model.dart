import 'package:background_json_parser/background_json_parser.dart';

class SaveKioskSettingRequestModel extends IBaseModel<SaveKioskSettingRequestModel> {
  final String? title;
  final String? deviceId;
  final int? paymentPosId;
  final int? kioskAutoAcceptTime;
  final bool? kioskIsAutoAccept;

  SaveKioskSettingRequestModel({
    required this.title,
    required this.deviceId,
    required this.paymentPosId,
    required this.kioskAutoAcceptTime,
    required this.kioskIsAutoAccept,
  });

  @override
  fromJson(Map<String, dynamic> json) => SaveKioskSettingRequestModel(
        title: json["title"],
        deviceId: json["device_id"],
        paymentPosId: json["payment_pos_id"],
        kioskAutoAcceptTime: json["kiosk_auto_accept_time"],
        kioskIsAutoAccept: json["kiosk_is_auto_accept"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "title": title,
        "device_id": deviceId,
        "payment_pos_id": paymentPosId,
        "kiosk_auto_accept_time": kioskAutoAcceptTime,
        "kiosk_is_auto_accept": kioskIsAutoAccept,
      };
}
