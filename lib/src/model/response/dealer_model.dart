import '../../../response.dart';

class DealerModel extends IBaseModel<DealerModel> {
  int? dealerId;
  String? dealerName;
  num? rating;
  num? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  double? minPackageAmount;
  int? distance;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  String? latlng;
  WorkingHourModel? workingHours;
  List<FoodCategories>? foodCategories;

  DealerModel({
    this.dealerId,
    this.dealerName,
    this.rating,
    this.rating2,
    this.commentCount,
    this.avgServiceTime,
    this.avgServiceTimeMin,
    this.avgServiceTimeMax,
    this.minPackageAmount,
    this.distance,
    this.logoImage,
    this.listImage,
    this.mobileCoverImage,
    this.latlng,
    this.workingHours,
    this.foodCategories,
  });

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerModel(
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
        rating: json['rating'],
        rating2: json['rating2'],
        commentCount: json['comment_count'],
        avgServiceTime: json['avg_service_time'],
        avgServiceTimeMin: json['avg_service_time_min'],
        avgServiceTimeMax: json['avg_service_time_max'],
        minPackageAmount: json['min_package_amount'].toDouble() ?? 0.0,
        distance: json['distance'],
        logoImage: json['logo_image'] != null
            ? ImagesModel.fromJson(json['logo_image'])
            : ImagesModel(),
        listImage: json['list_image'] != null
            ? ImagesModel.fromJson(json['list_image'])
            : ImagesModel(),
        mobileCoverImage: json['mobile_cover_image'] != null
            ? ImagesModel.fromJson(json['mobile_cover_image'])
            : ImagesModel(),
        latlng: json['latlng'],
        workingHours: json['working_hours'] != null
            ? WorkingHourModel.fromJson(json['working_hours'])
            : null,
        foodCategories: json["food_categories"] == null
            ? null
            : List<FoodCategories>.from(
                json["food_categories"].map((x) => FoodCategories.fromJson(x))),
      );
}

class FoodCategories {
  ImagesModel? image;
  bool? isDefault;
  String? categoryName;

  FoodCategories({this.image, this.isDefault, this.categoryName});

  FoodCategories.fromJson(Map<String, dynamic> json) {
    image = json['image'] != null ? ImagesModel.fromJson(json['image']) : null;
    isDefault = json['is_default'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['is_default'] = isDefault;
    data['category_name'] = categoryName;
    return data;
  }
}
