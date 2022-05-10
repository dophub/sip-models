import 'package:background_json_parser/json_parser.dart';

class RatingGroup extends IBaseModel<RatingGroup> {
  RatingGroup({
    this.ratingCategoryName,
    this.ratingCategoryCode,
    this.rating = 0,
  });

  String? ratingCategoryName;
  String? ratingCategoryCode;
  int rating; // değerlendirme için eklendi

  @override
  RatingGroup fromJson(Map<dynamic, dynamic> json) => RatingGroup(
        ratingCategoryName: json['rating_category_name'],
        ratingCategoryCode: json['rating_category_code'],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
