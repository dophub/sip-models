import 'package:background_json_parser/background_json_parser.dart';

class CustomerReviewsListModel extends IBaseModel<CustomerReviewsListModel> {
  CustomerReviewsListModel({
    this.customerReviews,
    this.totalCount,
    this.totalPage,
  });

  List<CustomerReview>? customerReviews;
  int? totalCount;
  int? totalPage;

  @override
  CustomerReviewsListModel fromJson(Map json) => CustomerReviewsListModel(
        customerReviews: json['customer_reviews'] == null
            ? []
            : List<CustomerReview>.from(json['customer_reviews'].map((x) => CustomerReview.fromMap(x))),
        totalCount: json['total_count'],
        totalPage: json['total_page'],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class CustomerReview {
  CustomerReview({
    this.recordedDate,
    this.isRead,
    this.tableId,
    this.reviewId,
    this.tableName,
  });

  String? recordedDate;
  bool? isRead;
  String? tableId;
  int? reviewId;
  String? tableName;

  factory CustomerReview.fromMap(Map<String, dynamic> json) => CustomerReview(
        recordedDate: json['record_date'],
        isRead: json['is_read'],
        tableId: json['table_id'],
        reviewId: json['review_id'],
        tableName: json['table_name'],
      );

  Map<String, dynamic> toMap() => {
        'record_date': recordedDate,
        'is_read': isRead,
        'table_id': tableId,
        'review_id': reviewId,
        'table_name': tableName,
      };
}
