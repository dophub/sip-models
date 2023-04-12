import '../../../../energy.dart';

class ChargeStationDetailModel {
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
  List<ChargeStationModel>? points;

  factory ChargeStationDetailModel.fromJson(Map<String, dynamic> json) => ChargeStationDetailModel(
        id: json["id"],
        title: json["title"],
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
        address: json["address"],
        hours: json["hours"],
        distance: json["distance"],
        points: json["points"] == null
            ? []
            : List<ChargeStationModel>.from(json["points"].map((x) => ChargeStationModel().fromJson(x))),
      );

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
