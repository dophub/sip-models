import 'package:background_json_parser/background_json_parser.dart';

class DataByPageModel<T extends IBaseModel> {
  int? page;
  final int? limit;
  final List<T>? data;
  final int? totalCount;
  final int? prevPage;

  DataByPageModel({
    this.page,
    this.limit,
    this.data,
    this.totalCount,
    this.prevPage,
  });

  factory DataByPageModel.fromJson(T modelType, Map<String, dynamic> json) => DataByPageModel(
        page: json["page"],
        limit: json["limit"],
        data: json["data"]?.map((e) => modelType.fromJson(e)).toList().cast<T>(),
        totalCount: json["total_count"],
        prevPage: json["prev_page"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "limit": limit,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "total_count": totalCount,
        "prev_page": prevPage,
      };
}
