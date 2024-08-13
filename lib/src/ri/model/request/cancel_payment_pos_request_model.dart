class CancelPosPaymentRequestModel {
    CancelPosPaymentRequestModel({
        required this.id,
        required this.deviceId,
        required this.status,
    });

    int id;
    String deviceId;
    String status;

    Map<String, dynamic> toJson() => {
        "id": id,
        "device_id": deviceId,
        "status": status,
    };
}
