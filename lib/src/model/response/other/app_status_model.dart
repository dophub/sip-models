import 'dart:io';

import 'package:background_json_parser/background_json_parser.dart';

class AppStatusModel extends IBaseModel<AppStatusModel> {
  AppStatusModel({
    this.marketplace,
    this.qr,
    this.payment,
    this.reservation,
    this.newMember,
    this.binc,
    this.iosVersion,
    this.androidVersion,
    this.iosAppLink,
    this.androidAppLink,
    this.enableLog,
    this.forceUpdate,
  });

  bool? marketplace;
  bool? qr;
  bool? payment;
  bool? reservation;
  bool? newMember;
  bool? binc;
  String? iosVersion;
  String? androidVersion;
  String? iosAppLink;
  String? androidAppLink;
  bool? enableLog;
  bool? forceUpdate;

  @override
  AppStatusModel fromJson(Map<String, dynamic> json) => AppStatusModel(
        marketplace: json["marketplace"],
        qr: json["qr"],
        payment: json["payment"],
        reservation: json["reservation"],
        newMember: json["new_member"],
        binc: json["binc"],
        iosVersion: json["ios_version"],
        androidVersion: json["android_version"],
        iosAppLink: json["ios_app_link"],
        androidAppLink: json["android_app_link"],
        enableLog: json["enable_log"],
        forceUpdate: Platform.isIOS ? json["force_update_ios"] : json["force_update_android"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
