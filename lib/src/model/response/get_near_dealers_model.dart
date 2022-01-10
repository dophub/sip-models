import 'dart:convert';

List<GetNearDealersModel> getNearDealersModelFromJson(String str) =>
    List<GetNearDealersModel>.from(
        json.decode(str).map((x) => GetNearDealersModel.fromJson(x)));

String getNearDealersModelToJson(List<GetNearDealersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetNearDealersModel {
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

  GetNearDealersModel(
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

  GetNearDealersModel.fromJson(Map<String, dynamic> json) {
    dealerId = json['dealer_id'];
    dealerName = json['dealer_name'];
    rating = json['rating'];
    rating2 = json['rating2'];
    commentCount = json['comment_count'];
    avgServiceTime = json['avg_service_time'];
    avgServiceTimeMin = json['avg_service_time_min'];
    avgServiceTimeMax = json['avg_service_time_max'];
    minPackageAmount = json['min_package_amount'];
    distance = json['distance'];
    logoImage = json['logo_image'] != null
        ? new LogoImage.fromJson(json['logo_image'])
        : null;
    listImage = json['list_image'] != null
        ? new LogoImage.fromJson(json['list_image'])
        : null;
    mobileCoverImage = json['mobile_cover_image'] != null
        ? new LogoImage.fromJson(json['mobile_cover_image'])
        : null;
    latlng = json['latlng'];
    workingHours = json['working_hours'] != null
        ? new WorkingHours.fromJson(json['working_hours'])
        : null;
    if (json['food_categories'] != null) {
      foodCategories = <FoodCategories>[];
      json['food_categories'].forEach((v) {
        foodCategories!.add(new FoodCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealer_id'] = this.dealerId;
    data['dealer_name'] = this.dealerName;
    data['rating'] = this.rating;
    data['rating2'] = this.rating2;
    data['comment_count'] = this.commentCount;
    data['avg_service_time'] = this.avgServiceTime;
    data['avg_service_time_min'] = this.avgServiceTimeMin;
    data['avg_service_time_max'] = this.avgServiceTimeMax;
    data['min_package_amount'] = this.minPackageAmount;
    data['distance'] = this.distance;
    if (this.logoImage != null) {
      data['logo_image'] = this.logoImage!.toJson();
    }
    if (this.listImage != null) {
      data['list_image'] = this.listImage!.toJson();
    }
    if (this.mobileCoverImage != null) {
      data['mobile_cover_image'] = this.mobileCoverImage!.toJson();
    }
    data['latlng'] = this.latlng;
    if (this.workingHours != null) {
      data['working_hours'] = this.workingHours!.toJson();
    }
    if (this.foodCategories != null) {
      data['food_categories'] =
          this.foodCategories!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['size_code'] = this.sizeCode;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['end'] = this.end;
    data['start'] = this.start;
    data['title'] = this.title;
    data['status'] = this.status;
    data['courier'] = this.courier;
    data['dayofweek'] = this.dayofweek;
    data['courier_end'] = this.courierEnd;
    data['courier_start'] = this.courierStart;
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
        json['image'] != null ? new LogoImage.fromJson(json['image']) : null;
    isDefault = json['is_default'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['is_default'] = this.isDefault;
    data['category_name'] = this.categoryName;
    return data;
  }
}
