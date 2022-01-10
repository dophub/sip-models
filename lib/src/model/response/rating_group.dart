import 'dart:convert';

List<RatingGroup> ratingGroupFromJson(String str) => List<RatingGroup>.from(
    json.decode(str).map((x) => RatingGroup.fromJson(x)));

class RatingGroup {
  RatingGroup(
      {this.ratingCategoryName, this.ratingCategoryCode, this.rating = 0});

  String? ratingCategoryName;
  String? ratingCategoryCode;
  int rating; // değerlendirme için eklendi

  factory RatingGroup.fromJson(Map<String, dynamic> json) => RatingGroup(
        ratingCategoryName: json['rating_category_name'],
        ratingCategoryCode: json['rating_category_code'],
      );
}
