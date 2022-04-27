class VehicleInfoModel {
  VehicleInfoModel({
    this.id,
    this.vehicleModel,
    this.plate,
    this.statusId,
  });

  int? id;
  String? vehicleModel;
  String? plate;
  String? statusId;

  factory VehicleInfoModel.fromJson(Map<String, dynamic> json) =>
      VehicleInfoModel(
        id: json["id"],
        vehicleModel: json["vehicle_model"],
        plate: json["plate"],
        statusId: json["status_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vehicle_model": vehicleModel,
        "plate": plate,
        "status_id": statusId,
      };
}
