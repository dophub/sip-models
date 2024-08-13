import 'package:background_json_parser/background_json_parser.dart';

import 'station_model.dart';

class WaiterModel extends IBaseModel<WaiterModel> {
  int? id;
  String? name;
  String? surname;
  List<WaiterStationModel>? stations;

  WaiterModel({this.id, this.name, this.surname, this.stations});

  factory WaiterModel.fromJson(Map<String, dynamic> json) => WaiterModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        surname: json['surname'] as String?,
        stations: (json['stations'] as List<dynamic>?)
            ?.map((e) => WaiterStationModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'surname': surname,
        'stations': stations?.map((e) => e.toJson()).toList(),
      };

  @override
  WaiterModel fromJson(Map<String, dynamic> json) => WaiterModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        surname: json['surname'] as String?,
        stations: (json['stations'] as List<dynamic>?)?.map((e) => WaiterStationModel.fromJson(e as Map<String, dynamic>)).toList(),
      );
}
