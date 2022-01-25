class RatingAndComment {
  RatingAndComment({
    this.subject,
    this.comment,
    this.ratings,
    this.createDate,
  });

  String? subject;
  String? comment;
  DateTime? createDate;
  List<Rating>? ratings;

  Map<String, dynamic> toJson() => {
        "subject": subject,
        "comment": comment,
        "create_date":
            createDate == null ? null : createDate!.toIso8601String(),
        "ratings": List<dynamic>.from(ratings!.map((x) => x.toJson())),
      };

  factory RatingAndComment.fromJson(Map<dynamic, dynamic> json) =>
      RatingAndComment(
        ratings: json["ratings"] == null ? null: List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
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

  Map<String, dynamic> toJson() => {
        "rating_category": ratingCategory,
        "rating_value": ratingValue,
      };

  factory Rating.fromJson(Map<dynamic, dynamic> json) => Rating(
        ratingCategory: json["rating_category"],
        ratingValue: json["rating_value"],
      );
}
