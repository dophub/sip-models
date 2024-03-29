import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/request/post_rating_and_comment.dart';

class OrderRatingAndCommentModel extends IBaseModel<OrderRatingAndCommentModel> {
  OrderRatingAndCommentModel({
    this.dealerId,
    this.totalCommentCount,
    this.categoriesRating,
    this.comments,
  });

  int? dealerId;
  int? totalCommentCount;
  List<RatingModel>? categoriesRating;
  List<RatingAndCommentModel>? comments;

  @override
  fromJson(Map<dynamic, dynamic> json) => OrderRatingAndCommentModel(
        dealerId: json["dealer_id"],
        totalCommentCount: json["total_comment_count"],
        categoriesRating: json["categories_rating"] == null
            ? []
            : List<RatingModel>.from(json["categories_rating"].map((x) => RatingModel.fromJson(x))),
        comments: json["comments"] == null
            ? []
            : List<RatingAndCommentModel>.from(
                json["comments"].map((x) => RatingAndCommentModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
