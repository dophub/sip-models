import 'package:background_json_parser/background_json_parser.dart';

class ChargeStationModel extends IBaseModel<ChargeStationModel> {
  ChargeStationModel({
    this.id,
    this.title,
    this.lat,
    this.long,
    this.address,
    this.hours,
    this.distance,
    this.stationCount,
    this.imageUrl,
    this.powerTypes,
    this.kws,
  });

  String? id;
  String? title;
  double? lat;
  double? long;
  String? address;
  String? hours;
  int? distance;
  int? stationCount;
  String? imageUrl;
  List<String>? powerTypes;
  List<int>? kws;

  @override
  fromJson(Map<String, dynamic> json) => ChargeStationModel(
        id: json["id"],
        title: json["title"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
        address: json["address"],
        hours: json["hours"],
        distance: json["distance"],
        stationCount: json["station_count"],
        imageUrl: json["image_url"],
        powerTypes: json["power_types"] == null ? [] : List<String>.from(json["power_types"].map((x) => x)),
        kws: json["kws"] == null ? [] : List<int>.from(json["kws"].map((x) => x)),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "lat": lat,
        "long": long,
        "address": address,
        "hours": hours,
        "distance": distance,
        "station_count": stationCount,
        "image_url": imageUrl,
        "power_types": List<dynamic>.from(powerTypes!.map((x) => x)),
        "kws": List<dynamic>.from(kws!.map((x) => x)),
      };
}
