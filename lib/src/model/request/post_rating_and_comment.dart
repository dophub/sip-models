


class PostRatingAndComment {
  PostRatingAndComment({
    required this.subject,
    required this.comment,
    required this.ratings,
  });

  String subject;
  String comment;
  List<Rating> ratings;

  Map<String, dynamic> toJson() => {
    "subject": subject,
    "comment": comment,
    "ratings": List<dynamic>.from(ratings.map((x) => x.toJson())),
  };
}

class Rating {
  Rating({
    required this.ratingCategory,
    required this.ratingValue,
  });

  String ratingCategory;
  int ratingValue;

  Map<String, dynamic> toJson() => {
    "rating_category": ratingCategory,
    "rating_value": ratingValue,
  };
}
