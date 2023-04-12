import 'package:background_json_parser/background_json_parser.dart';

import '../../../../energy.dart';

class ChargeStationDetailModel extends IBaseModel<ChargeStationDetailModel> {
  ChargeStationDetailModel({
    this.id,
    this.title,
    this.lat,
    this.lng,
    this.address,
    this.hours,
    this.distance,
    this.points,
  });

  String? id;
  String? title;
  double? lat;
  double? lng;
  String? address;
  String? hours;
  int? distance;
  List<ChargePointModel>? points;

  @override
  fromJson(Map<String, dynamic> json) => ChargeStationDetailModel(
        id: json["id"],
        title: json["title"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        address: json["address"],
        hours: json["hours"],
        distance: json["distance"],
        points: json["points"] == null
            ? []
            : List<ChargePointModel>.from(json["points"].map((x) => ChargePointModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "lat": lat,
        "lng": lng,
        "address": address,
        "hours": hours,
        "distance": distance,
        "points": List<dynamic>.from(points!.map((x) => x.toJson())),
      };
}
