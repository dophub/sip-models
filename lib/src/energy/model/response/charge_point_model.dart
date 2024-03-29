import 'package:background_json_parser/background_json_parser.dart';

class ChargePointModel extends IBaseModel<ChargePointModel> {
  ChargePointModel({
    this.id,
    this.title,
    this.lat,
    this.lng,
    this.address,
    this.pointId,
    this.pointCode,
    this.power,
    this.powerType,
    this.connectorTypes,
    this.distance,
    this.unitPrice,
    this.pointStatus,
    this.connectorId,
    this.qrCode,
    this.hours,
    this.connectorType,
    this.socketNumber,
    this.userId,
    this.isEditable,
  });

  String? id;
  String? title;
  double? lat;
  double? lng;
  String? address;
  String? pointId;
  String? pointCode;
  int? power;
  String? powerType;
  List<String>? connectorTypes;
  int? distance;
  double? unitPrice;
  String? pointStatus;
  int? connectorId;
  String? qrCode;
  String? hours;
  String? connectorType;
  int? socketNumber;
  int? userId;
  bool? isEditable;

  @override
  fromJson(Map<String, dynamic> json) => ChargePointModel(
        id: json["id"],
        title: json["title"],
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
        address: json["address"],
        pointId: json["point_id"],
        pointCode: json["point_code"],
        power: json["power"],
        powerType: json["power_type"],
        connectorTypes: json["connector_types"] == null ? [] : List<String>.from(json["connector_types"].map((x) => x)),
        distance: json["distance"],
        unitPrice: json["unit_price"]?.toDouble() ?? 0.0,
        pointStatus: json["point_status"],
        connectorId: json["connector_id"],
        qrCode: json["qr_code"],
        hours: json["hours"],
        connectorType: json["connector_type"],
        socketNumber: json["socket_number"],
        userId: json["user_id"],
        isEditable: json["is_editable"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "lat": lat,
        "lng": lng,
        "address": address,
        "point_id": pointId,
        "point_code": pointCode,
        "power": power,
        "power_type": powerType,
        "connector_types": List<dynamic>.from(connectorTypes!.map((x) => x)),
        "distance": distance,
        "unit_price": unitPrice,
        "point_status": pointStatus,
        "connector_id": connectorId,
        "qr_code": qrCode,
        "hours": hours,
        "connector_type": connectorType,
        "socket_number": socketNumber,
        "user_id": userId,
        "is_editable": isEditable,
      };
}
