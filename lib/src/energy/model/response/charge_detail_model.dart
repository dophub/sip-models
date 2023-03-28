import 'package:background_json_parser/background_json_parser.dart';

class ChargeDetailModel extends IBaseModel<ChargeDetailModel> {
  ChargeDetailModel({
    this.id,
    this.startDate,
    this.endDate,
    this.totalMinutes,
    this.totalKw,
    this.userId,
    this.userTitle,
    this.mobilePhone,
    this.pointCode,
    this.stationName,
    this.unitPrice,
    this.totalPrice,
    this.status,
    this.connectorId,
    this.meterStart,
    this.meterStop,
    this.connectorType,
    this.address,
  });

  int? id;
  String? startDate;
  String? endDate;
  int? totalMinutes;
  double? totalKw;
  int? userId;
  String? userTitle;
  String? mobilePhone;
  String? pointCode;
  String? stationName;
  double? unitPrice;
  double? totalPrice;
  String? status;
  int? connectorId;
  double? meterStart;
  double? meterStop;
  String? connectorType;
  String? address;

  @override
  fromJson(Map<String, dynamic> json) => ChargeDetailModel(
        id: json["id"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        totalMinutes: json["total_minutes"],
        totalKw: json["total_kw"].toDouble() ?? 0.0,
        userId: json["user_id"],
        userTitle: json["user_title"],
        mobilePhone: json["mobile_phone"],
        pointCode: json["point_code"],
        stationName: json["station_name"],
        unitPrice: json["unit_price"].toDouble(),
        totalPrice: json["total_price"] == null ? 0.0 : json["total_price"].toDouble(),
        status: json["status"],
        connectorId: json["connector_id"],
        meterStart: json["meter_start"] == null ? 0.0 : json["meter_start"].toDouble(),
        meterStop: json["meter_stop"] == null ? 0.0 : json["meter_stop"].toDouble(),
        connectorType: json["connector_type"],
        address: json["address"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "start_date": startDate,
        "end_date": endDate,
        "total_minutes": totalMinutes,
        "total_kw": totalKw,
        "user_id": userId,
        "user_title": userTitle,
        "mobile_phone": mobilePhone,
        "point_code": pointCode,
        "station_name": stationName,
        "unit_price": unitPrice,
        "total_price": totalPrice,
        "status": status,
        "connector_id": connectorId,
        "meter_start": meterStart,
        "meter_stop": meterStop,
        "connector_type": connectorType,
        "address": address,
      };
}
