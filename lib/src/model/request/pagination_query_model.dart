class PaginationQueryModel {
  PaginationQueryModel({this.page, this.limit = 30, this.keyword, this.startDate, this.endDate, this.sort});

  int? page;
  int limit;
  String? keyword;
  DateTime? startDate;
  DateTime? endDate;
  String? sort;

  Map<String, String> toJson() => {
    'page': page.toString(),
    'limit': limit.toString(),
    if (keyword != null && keyword!.trim().isNotEmpty) 'keyword': keyword!.trim(),
    if (startDate != null) 'startDate': startDate!.toUtc().toIso8601String(),
    if (endDate != null) 'endDate': endDate!.toUtc().toIso8601String(),
    if (sort != null && sort!.isNotEmpty) 'sort': sort!,
  };
}
