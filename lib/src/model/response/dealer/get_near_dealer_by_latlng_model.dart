import 'package:background_json_parser/background_json_parser.dart';

class GetNearDealerByLatLngModel extends IBaseModel<GetNearDealerByLatLngModel> {
  int? id;
  String? dealerName;
  String? latlng;
  double? distance;
  String? distanceType;
  bool? distanceRequired;

  GetNearDealerByLatLngModel({
    this.id,
    this.dealerName,
    this.latlng,
    this.distance,
    this.distanceType,
    this.distanceRequired,
  });

  @override
  fromJson(Map<String, dynamic> json) => GetNearDealerByLatLngModel(
        id: json["id"],
        dealerName: json["dealer_name"],
        latlng: json["latlng"],
        distance: json["distance"]?.toDouble(),
        distanceType: json["distance_type"],
        distanceRequired: json["distance_required"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_name": dealerName,
        "latlng": latlng,
        "distance": distance,
        "distance_type": distanceType,
        "distance_required": distanceRequired,
      };
}
