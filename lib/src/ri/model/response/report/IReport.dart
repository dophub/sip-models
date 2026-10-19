interface class IReport {
  ReportDateRangeModel? dateRange;
  String? printHtml;
}

class ReportDateRangeModel {
  DateTime? start;
  DateTime? end;

  ReportDateRangeModel({this.start, this.end});

  factory ReportDateRangeModel.fromJson(Map<String, dynamic> json) => ReportDateRangeModel(
    start: json["start"] == null ? null : DateTime.parse(json["start"]),
    end: json["end"] == null ? null : DateTime.parse(json["end"]),
  );

  Map<String, dynamic> toJson() => {
    "start":
        "${start!.year.toString().padLeft(4, '0')}-${start!.month.toString().padLeft(2, '0')}-${start!.day.toString().padLeft(2, '0')}",
    "end":
        "${end!.year.toString().padLeft(4, '0')}-${end!.month.toString().padLeft(2, '0')}-${end!.day.toString().padLeft(2, '0')}",
  };
}
