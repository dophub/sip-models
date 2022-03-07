
class VehicleInfoModel {
  VehicleInfoModel({
    this.id,
    this.vehicleModel,
    this.plate,
  });

  int? id;
  String? vehicleModel;
  String? plate;

  factory VehicleInfoModel.fromJson(Map<String, dynamic> json) => VehicleInfoModel(
    id: json["id"],
    vehicleModel: json["vehicle_model"],
    plate: json["plate"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "vehicle_model": vehicleModel,
    "plate": plate,
  };
}
