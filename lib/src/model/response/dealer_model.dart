import '../../../response.dart';

class DealerModel extends IBaseModel<DealerModel> {
  int? dealerId;
  String? dealerName;
  int? rating;
  int? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  int? minPackageAmount;
  int? distance;
  LogoImage? logoImage;
  LogoImage? listImage;
  LogoImage? mobileCoverImage;
  String? latlng;
  WorkingHours? workingHours;
  List<FoodCategories>? foodCategories;

  DealerModel(
      {this.dealerId,
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
      this.foodCategories});

  @override
  fromJson(Map<dynamic, dynamic> json) => DealerModel(
    dealerId : json['dealer_id'],
    dealerName : json['dealer_name'],
    rating : json['rating'],
    rating2 : json['rating2'],
    commentCount : json['comment_count'],
    avgServiceTime : json['avg_service_time'],
    avgServiceTimeMin : json['avg_service_time_min'],
    avgServiceTimeMax : json['avg_service_time_max'],
    minPackageAmount : json['min_package_amount'],
    distance : json['distance'],
    logoImage : json['logo_image'] != null ? LogoImage.fromJson(json['logo_image']) : null,
    listImage : json['list_image'] != null ? LogoImage.fromJson(json['list_image']) : null,
    mobileCoverImage : json['mobile_cover_image'] != null ? LogoImage.fromJson(json['mobile_cover_image']) : null,
    latlng : json['latlng'],
    workingHours : json['working_hours'] != null ? WorkingHours.fromJson(json['working_hours']) : null,
      foodCategories: json["food_categories"] == null ? null : List<FoodCategories>.from(json["food_categories"].map((x) => FoodCategories.fromJson(x))),

 /* if (json['food_categories'] != null) {
      foodCategories : <FoodCategories>[],
      json['food_categories'].forEach((v) {foodCategories!.add(FoodCategories.fromJson(v)),
      }),
    }*/
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dealer_id'] = dealerId;
    data['dealer_name'] = dealerName;
    data['rating'] = rating;
    data['rating2'] = rating2;
    data['comment_count'] = commentCount;
    data['avg_service_time'] = avgServiceTime;
    data['avg_service_time_min'] = avgServiceTimeMin;
    data['avg_service_time_max'] = avgServiceTimeMax;
    data['min_package_amount'] = minPackageAmount;
    data['distance'] = distance;
    if (logoImage != null) {
      data['logo_image'] = logoImage!.toJson();
    }
    if (listImage != null) {
      data['list_image'] = listImage!.toJson();
    }
    if (mobileCoverImage != null) {
      data['mobile_cover_image'] = mobileCoverImage!.toJson();
    }
    data['latlng'] = latlng;
    if (workingHours != null) {
      data['working_hours'] = workingHours!.toJson();
    }
    if (foodCategories != null) {
      data['food_categories'] =
          foodCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}

class LogoImage {
  String? url;
  String? sizeCode;

  LogoImage({this.url, this.sizeCode});

  LogoImage.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    sizeCode = json['size_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['size_code'] = sizeCode;
    return data;
  }
}

class WorkingHours {
  String? end;
  String? start;
  String? title;
  bool? status;
  bool? courier;
  String? dayofweek;
  String? courierEnd;
  String? courierStart;

  WorkingHours(
      {this.end,
      this.start,
      this.title,
      this.status,
      this.courier,
      this.dayofweek,
      this.courierEnd,
      this.courierStart});

  WorkingHours.fromJson(Map<String, dynamic> json) {
    end = json['end'];
    start = json['start'];
    title = json['title'];
    status = json['status'];
    courier = json['courier'];
    dayofweek = json['dayofweek'];
    courierEnd = json['courier_end'];
    courierStart = json['courier_start'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['end'] = end;
    data['start'] = start;
    data['title'] = title;
    data['status'] = status;
    data['courier'] = courier;
    data['dayofweek'] = dayofweek;
    data['courier_end'] = courierEnd;
    data['courier_start'] = courierStart;
    return data;
  }
}

class FoodCategories {
  LogoImage? image;
  bool? isDefault;
  String? categoryName;

  FoodCategories({this.image, this.isDefault, this.categoryName});

  FoodCategories.fromJson(Map<String, dynamic> json) {
    image =
        json['image'] != null ? LogoImage.fromJson(json['image']) : null;
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
