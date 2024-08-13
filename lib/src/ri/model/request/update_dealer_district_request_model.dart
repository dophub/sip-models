class UpdateDealerDistrictRequestModel {
    UpdateDealerDistrictRequestModel({
        this.id,
        this.isActive,
        this.avgServiceTime,
    });

    int? id;
    bool? isActive;
    int? avgServiceTime;

    factory UpdateDealerDistrictRequestModel.fromJson(Map<String, dynamic> json) => UpdateDealerDistrictRequestModel(
        id: json["id"],
        isActive: json["is_active"],
        avgServiceTime: json["avg_service_time"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "is_active": isActive,
        "avg_service_time": avgServiceTime,
    };
}
