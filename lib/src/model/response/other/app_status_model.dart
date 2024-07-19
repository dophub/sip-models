import 'dart:io';

import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
    this.market,
    this.travel,
    this.hotel,
    this.energy,
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
  bool? market;
  bool? travel;
  bool? hotel;
  bool? energy;

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
        market: json["market"],
        travel: json["travel"],
        hotel: json["hotel"],
        energy: json["energy"],
        forceUpdate: kIsWeb
            ? false
            : Platform.isIOS
                ? json["force_update_ios"]
                : json["force_update_android"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
