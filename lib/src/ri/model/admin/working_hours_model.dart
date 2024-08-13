import 'package:background_json_parser/background_json_parser.dart';

class WorkingHoursModel extends IBaseModel<WorkingHoursModel> {
  String? end;
  String? start;
  String? title;
  bool? status;
  bool? courier;
  String? dayofweek;
  String? courierEnd;
  String? courierStart;

  WorkingHoursModel({
    this.end,
    this.start,
    this.title,
    this.status,
    this.courier,
    this.dayofweek,
    this.courierEnd,
    this.courierStart,
  });

  @override
  fromJson(Map<String, dynamic> json) => WorkingHoursModel(
        end: json["end"],
        start: json["start"],
        title: json["title"],
        status: json["status"],
        courier: json["courier"],
        dayofweek: json["dayofweek"],
        courierEnd: json["courier_end"],
        courierStart: json["courier_start"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "end": end,
        "start": start,
        "title": title,
        "status": status,
        "courier": courier,
        "dayofweek": dayofweek,
        "courier_end": courierEnd,
        "courier_start": courierStart,
      };
}
