import 'package:background_json_parser/background_json_parser.dart';

class PaginationModel<T extends IBaseModel> extends IBaseModel<PaginationModel> {
  late final T _modelParser;
  List<T>? dataList;
  T? data;
  int? page;
  int? limit;
  int? totalCount;
  int? totalPage;
  int? lastPage;
  int? nextPage;
  int? prevPage;

  PaginationModel(T modelParser) {
    _modelParser = modelParser;
  }

  @override
  PaginationModel<T> fromJson(Map<String, dynamic> json) {
    if (json["data"] is List) {
      dataList = _modelParser.jsonParserByMap(json["data"]);
    } else {
      data = _modelParser.jsonParserByMap(json["data"]);
    }
    page = json["page"];
    limit = json["limit"];
    totalCount = json["total_count"];
    totalPage = json["total_page"];
    lastPage = json["last_page"];
    nextPage = json["next_page"];
    prevPage = json["prev_page"];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "data": _modelParser.convertToJson(data ?? []),
        "page": page,
        "limit": limit,
        "total_count": totalCount,
        "total_page": totalPage,
        "last_page": lastPage,
        "next_page": nextPage,
        "prev_page": prevPage,
      };
}
