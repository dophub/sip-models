import 'package:background_json_parser/background_json_parser.dart';

class ActivationGroupModel extends IBaseModel<ActivationGroupModel> {
  int? id;
  String? groupName;
  int? startDayOfWeek;
  String? startTime;
  int? endDayOfWeek;
  String? endTime;
  int? dealerId;

  ActivationGroupModel({
    this.id,
    this.groupName,
    this.startDayOfWeek,
    this.startTime,
    this.endDayOfWeek,
    this.endTime,
    this.dealerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => ActivationGroupModel(
        id: json["id"],
        groupName: json["group_name"],
        startDayOfWeek: json["start_day_of_week"],
        startTime: json["start_time"],
        endDayOfWeek: json["end_day_of_week"],
        endTime: json["end_time"],
        dealerId: json["dealer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "group_name": groupName,
        "start_day_of_week": startDayOfWeek,
        "start_time": startTime,
        "end_day_of_week": endDayOfWeek,
        "end_time": endTime,
        "dealer_id": dealerId,
      };
}
