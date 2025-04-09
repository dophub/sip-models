import 'dart:io';

import 'package:background_json_parser/background_json_parser.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../../../../response.dart';

class AppStatusModel extends IBaseModel<AppStatusModel> {
  AppStatusModel({
    this.marketplace,
    this.getin,
    this.takeout,
    this.qr,
    this.payment,
    this.reservation,
    this.newMember,
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
    this.wallet,
    this.forceUpdateAction,
    this.mobileStartCover,
    this.mainBrandIds,
    this.defaultLatLng,
  });

  bool? marketplace;
  bool? getin;
  bool? takeout;
  bool? qr;
  bool? payment;
  bool? reservation;
  bool? newMember;
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
  bool? wallet;
  String? forceUpdateAction;
  ImagesModel? mobileStartCover;
  List<int>? mainBrandIds;
  String? defaultLatLng;

  @override
  AppStatusModel fromJson(Map<String, dynamic> json) => AppStatusModel(
        marketplace: json["marketplace"],
        getin: json["getin"],
        takeout: json["takeout"],
        qr: json["qr"],
        payment: json["payment"],
        reservation: json["reservation"],
        newMember: json["new_member"],
        iosVersion: json["ios_version"],
        androidVersion: json["android_version"],
        iosAppLink: json["ios_app_link"],
        androidAppLink: json["android_app_link"],
        enableLog: json["enable_log"],
        market: json["market"],
        travel: json["travel"],
        hotel: json["hotel"],
        energy: json["energy"],
        wallet: json["wallet"],
        forceUpdateAction: json["force_update_action"],
        mobileStartCover: json["mobile_start_cover"] == null ? null : ImagesModel.fromJson(json["mobile_start_cover"]),
        mainBrandIds: json["main_brand_ids"] == null ? null : List<int>.from(json["main_brand_ids"].map((x) => x)),
        forceUpdate: kIsWeb
            ? false
            : Platform.isIOS
                ? json["force_update_ios"]
                : json["force_update_android"],
        defaultLatLng: json["default_latlng"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
