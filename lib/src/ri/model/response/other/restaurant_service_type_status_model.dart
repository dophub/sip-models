import 'package:background_json_parser/background_json_parser.dart';

class RestaurantServiceTypeStatusModel extends IBaseModel<RestaurantServiceTypeStatusModel> {
  RestaurantServiceTypeStatusModel({
    this.marketplaceIsActive,
    this.reservationIsActive,
    this.valeIsActive,
    this.tableIsActive,
    this.selfServiceIsActive,
    this.delay = 0,
    this.openMarketplace,
    this.openReservation,
    this.openTable,
    this.openVale,
    this.openSelfService,
    this.openGetin,
    this.getinIsActive,
  });

  bool? marketplaceIsActive;
  bool? reservationIsActive;
  bool? valeIsActive;
  bool? tableIsActive;
  bool? selfServiceIsActive;
  int? delay;
  bool? openMarketplace;
  bool? openReservation;
  bool? openTable;
  bool? openVale;
  bool? openSelfService;
  bool? openGetin;
  bool? getinIsActive;

  @override
  Map<String, dynamic> toJson() => {
        "marketplace_is_active": marketplaceIsActive,
        "reservation_is_active": reservationIsActive,
        "vale_is_active": valeIsActive,
        "table_is_active": tableIsActive,
        "self_service_is_active": selfServiceIsActive,
        "delay": delay,
        "open_marketplace": openMarketplace,
        "open_reservation": openReservation,
        "open_table": openTable,
        "open_vale": openVale,
        "open_self_service": openSelfService,
        "open_getin": openGetin,
        "getin_is_active": getinIsActive,
      };

  @override
  RestaurantServiceTypeStatusModel fromJson(Map<String, dynamic> json) => RestaurantServiceTypeStatusModel(
        marketplaceIsActive: json["marketplace_is_active"],
        reservationIsActive: json["reservation_is_active"],
        valeIsActive: json["vale_is_active"],
        tableIsActive: json["table_is_active"],
        selfServiceIsActive: json["self_service_is_active"],
        delay: json["delay"] ?? 0,
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        openTable: json["open_table"],
        openVale: json["open_vale"],
        openSelfService: json["open_self_service"],
        openGetin: json["open_getin"],
        getinIsActive: json["getin_is_active"],
      );

  RestaurantServiceTypeStatusModel copyWith({
    bool? valeIsActive,
    bool? reservationIsActive,
    bool? marketplaceIsActive,
    bool? tableIsActive,
    bool? selfServiceIsActive,
    int? delay,
    bool? openMarketplace,
    bool? openReservation,
    bool? openTable,
    bool? openVale,
    bool? openSelfService,
    bool? openGetin,
    bool? getinIsActive,
  }) {
    return RestaurantServiceTypeStatusModel(
      valeIsActive: valeIsActive ?? this.valeIsActive,
      reservationIsActive: reservationIsActive ?? this.reservationIsActive,
      marketplaceIsActive: marketplaceIsActive ?? this.marketplaceIsActive,
      selfServiceIsActive: selfServiceIsActive ?? this.selfServiceIsActive,
      tableIsActive: tableIsActive ?? this.tableIsActive,
      delay: delay ?? this.delay,
      openMarketplace: openMarketplace ?? this.openMarketplace,
      openReservation: openReservation ?? this.openReservation,
      openTable: openTable ?? this.openTable,
      openVale: openVale ?? this.openVale,
      openSelfService: openSelfService ?? this.openSelfService,
      openGetin: openGetin ?? this.openGetin,
      getinIsActive: getinIsActive ?? this.getinIsActive,
    );
  }
}
