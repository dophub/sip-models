import 'package:background_json_parser/background_json_parser.dart';

class StaticWorkingHoursModel extends IBaseModel<StaticWorkingHoursModel> {
  int? id;
  StaticWorkingHourModel? workingHours;
  String? staticDate;
  int? dealerId;

  StaticWorkingHoursModel({
    this.id,
    this.workingHours,
    this.staticDate,
    this.dealerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => StaticWorkingHoursModel(
        id: json["id"],
        workingHours: StaticWorkingHourModel.fromJson(json["working_hours"]),
        staticDate: json["static_date"],
        dealerId: json["dealer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "working_hours": workingHours!.toJson(),
        "static_date": staticDate,
        "dealer_id": dealerId,
      };
}

class StaticWorkingHourModel {
  int? day;
  String? end;
  String? start;
  bool? status;
  bool? courier;
  String? description;

  StaticWorkingHourModel({
    this.day,
    this.end,
    this.start,
    this.status,
    this.courier,
    this.description,
  });

  factory StaticWorkingHourModel.fromJson(Map<String, dynamic> json) => StaticWorkingHourModel(
        day: json["day"],
        end: json["end"],
        start: json["start"],
        status: json["status"],
        courier: json["courier"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "end": end,
        "start": start,
        "status": status,
        "courier": courier,
        "description": description,
      };
}
