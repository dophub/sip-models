import '../../../response.dart';

class RatingAndCommentModel extends IBaseModel<RatingAndCommentModel> {
  RatingAndCommentModel({
    this.subject,
    this.comment,
    this.ratings,
    this.createDate,
  });

  String? subject;
  String? comment;
  DateTime? createDate;
  List<Rating>? ratings;

  @override
  fromJson(Map<dynamic, dynamic> json) => RatingAndCommentModel(
        ratings: json["ratings"] == null
            ? null
            : List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
        subject: json["subject"],
        createDate: json["create_date"] == null
            ? null
            : DateTime.parse(json["create_date"]),
        comment: json["comment"],
      );
}

class Rating {
  Rating({
    this.ratingCategory,
    this.ratingValue,
  });

  String? ratingCategory;
  int? ratingValue;
  
  factory Rating.fromJson(Map<dynamic, dynamic> json) => Rating(
        ratingCategory: json["rating_category"],
        ratingValue: json["rating_value"],
      );
}
