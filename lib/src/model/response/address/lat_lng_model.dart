import 'package:background_json_parser/background_json_parser.dart';

class LatLngModel extends IBaseModel<LatLngModel> {
  String? lat;
  String? lon;

  LatLngModel({
    this.lat,
    this.lon,
  });

  @override
  fromJson(Map<String, dynamic> json) => LatLngModel(
        lat: json["lat"],
        lon: json["lon"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
      };
}
