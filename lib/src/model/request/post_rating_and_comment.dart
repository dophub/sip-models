import '../../../response.dart';

class RatingAndCommentModel extends IBaseModel<RatingAndCommentModel> {
  RatingAndCommentModel(
      {this.subject,
      this.comment,
      this.ratings,
      this.createDate,
      this.orderId,
      this.fullName});

  String? subject;
  String? comment;
  DateTime? createDate;
  List<RatingModel>? ratings;
  int? orderId;
  String? fullName;

  Map<String, dynamic> toJson() => {
        "subject": subject,
        "comment": comment,
        "create_date":
            createDate == null ? null : createDate!.toIso8601String(),
        "ratings": List<dynamic>.from(ratings!.map((x) => x.toJson())),
        "order_id": orderId,
        "full_name": fullName,
      };

  @override
  fromJson(Map<dynamic, dynamic> json) => RatingAndCommentModel(
        ratings: json["ratings"] == null
            ? null
            : List<RatingModel>.from(json["ratings"].map((x) => RatingModel.fromJson(x))),
        subject: json["subject"],
        createDate: json["create_date"] == null
            ? null
            : DateTime.parse(json["create_date"]),
        comment: json["comment"],
        orderId: json["order_id"],
        fullName: json["full_name"],
      );
}

class RatingModel {
  RatingModel({
    this.ratingCategory,
    this.ratingValue,
  });

  String? ratingCategory;
  int? ratingValue;

  Map<String, dynamic> toJson() => {
        "rating_category": ratingCategory,
        "rating_value": ratingValue,
      };

  factory RatingModel.fromJson(Map<dynamic, dynamic> json) => RatingModel(
        ratingCategory: json["rating_category"],
        ratingValue: json["rating_value"],
      );
}
