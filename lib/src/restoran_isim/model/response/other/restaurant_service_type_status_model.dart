import 'package:background_json_parser/background_json_parser.dart';

class RestaurantServiceTypeStatusModel extends IBaseModel<RestaurantServiceTypeStatusModel> {
  RestaurantServiceTypeStatusModel({
    this.marketplaceIsActive,
    this.reservationIsActive,
    this.valeIsActive,
    this.tableIsActive,
    this.selfServiceIsActive,
    this.delay = 0,
  });

  bool? marketplaceIsActive;
  bool? reservationIsActive;
  bool? valeIsActive;
  bool? tableIsActive;
  bool? selfServiceIsActive;
  int? delay;

  @override
  Map<String, dynamic> toJson() => {
        "marketplace_is_active": marketplaceIsActive,
        "reservation_is_active": reservationIsActive,
        "vale_is_active": valeIsActive,
        "table_is_active": tableIsActive,
        "self_service_is_active": selfServiceIsActive,
        "delay": delay
      };

  @override
  RestaurantServiceTypeStatusModel fromJson(Map<String, dynamic> json) => RestaurantServiceTypeStatusModel(
        marketplaceIsActive: json["marketplace_is_active"],
        reservationIsActive: json["reservation_is_active"],
        valeIsActive: json["vale_is_active"],
        tableIsActive: json["table_is_active"],
        selfServiceIsActive: json["self_service_is_active"],
        delay: json["delay"] ?? 0,
      );

  RestaurantServiceTypeStatusModel copyWith({
    bool? valeIsActive,
    bool? reservationIsActive,
    bool? marketplaceIsActive,
    bool? tableIsActive,
    bool? selfServiceIsActive,
    int? delay,
  }) {
    return RestaurantServiceTypeStatusModel(
      valeIsActive: valeIsActive ?? this.valeIsActive,
      reservationIsActive: reservationIsActive ?? this.reservationIsActive,
      marketplaceIsActive: marketplaceIsActive ?? this.marketplaceIsActive,
      selfServiceIsActive: selfServiceIsActive ?? this.selfServiceIsActive,
      tableIsActive:  tableIsActive ?? this.tableIsActive,
      delay: delay ?? this.delay,
    );
  }
}
