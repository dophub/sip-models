class WaiterStationModel {
  String? stationCode;
  String? stationName;

  WaiterStationModel({this.stationCode, this.stationName});

  factory WaiterStationModel.fromJson(Map<String, dynamic> json) => WaiterStationModel(
        stationCode: json['station_code'] as String?,
        stationName: json['station_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'station_code': stationCode,
        'station_name': stationName,
      };

  WaiterStationModel copyWith({
    String? stationCode,
    String? stationName,
  }) {
    return WaiterStationModel(
      stationCode: stationCode ?? this.stationCode,
      stationName: stationName ?? this.stationName,
    );
  }
}
