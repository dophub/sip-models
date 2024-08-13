import 'package:background_json_parser/background_json_parser.dart';

class CustomerReviewDetailModel extends IBaseModel<CustomerReviewDetailModel> {
  CustomerReviewDetailModel({
    this.tableName,
    this.nameSurname,
    this.phone,
    this.adviceStatusId,
    this.satisfactionStatusId,
    this.tableId,
    this.review,
    this.date,
  });

  String? tableName;
  String? nameSurname;
  String? phone;
  String? adviceStatusId;
  String? satisfactionStatusId;
  String? tableId;
  String? review;
  String? date;

  @override
  CustomerReviewDetailModel fromJson(Map json) => CustomerReviewDetailModel(
      tableName: json['table_name'],
      nameSurname: json['name_surname'],
      phone: json['phone'],
      adviceStatusId: json['advice_status_id'],
      satisfactionStatusId: json['satisfaction_status_id'],
      tableId: json['table_id'],
      review: json['review'],
      date: json['record_date']);

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
