class ValetVehicleUpdateModel {
  ValetVehicleUpdateModel({
    this.vehicleId,
    this.message,
  });

  int? vehicleId;
  String? message;

  factory ValetVehicleUpdateModel.fromJson(Map<String, dynamic> json) => ValetVehicleUpdateModel(
        vehicleId: json['vehicle_id'],
        message: json['message'],
      );

  Map<String, dynamic> toJson() => {
        'vehicle_id': vehicleId,
        'message': message,
      };
}
