class OrderDetailModel {
  OrderDetailModel({
    this.reason,
    this.message,
    this.deviceId,
  });

  String? reason;
  String? message;
  String? deviceId;
  
  Map<String, dynamic> toJson() => {
        "reason": reason,
        "message": message,
        "device_id": deviceId,
      };
}
