import 'package:background_json_parser/background_json_parser.dart';

class PaginationModel<T extends IBaseModel> extends IBaseModel {
  final T? data;
  final int? page;
  final int? limit;
  final int? totalCount;
  final int? totalPage;
  final int? lastPage;
  final int? nextPage;
  final int? prevPage;

  PaginationModel({
    required this.data,
    this.page,
    this.limit,
    this.totalCount,
    this.totalPage,
    this.lastPage,
    this.nextPage,
    this.prevPage,
  });

  @override
  fromJson(Map<String, dynamic> json) => PaginationModel<T>(
        data: json["data"] == null ? null : data?.fromJson(json["data"]),
        page: json["page"],
        limit: json["limit"],
        totalCount: json["total_count"],
        totalPage: json["total_page"],
        lastPage: json["last_page"],
        nextPage: json["next_page"],
        prevPage: json["prev_page"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "page": page,
        "limit": limit,
        "total_count": totalCount,
        "total_page": totalPage,
        "last_page": lastPage,
        "next_page": nextPage,
        "prev_page": prevPage,
      };
}
