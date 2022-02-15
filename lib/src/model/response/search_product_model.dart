import 'dart:convert';
import 'menu_detail_model.dart';
import 'past_order_details_model.dart';
import 'images_model.dart';

List<SearchProductModel> searchProductModelFromJson(String str) =>
    List<SearchProductModel>.from(
        json.decode(str).map((x) => SearchProductModel.fromJson(x)));

class SearchProductModel {
  SearchProductModel({
    this.dealerId,
    this.dealerCode,
    this.dealerName,
    this.rating,
    this.rating2,
    this.commentCount,
    this.mainBrandId,
    this.latlng,
    this.avgServiceTime,
    this.avgServiceTimeMin,
    this.avgServiceTimeMax,
    this.minPackageAmount,
    this.logoImage,
    this.openMarketplace,
    this.openReservation,
    this.openTable,
    this.openVale,
    this.listImage,
    this.foodCategories,
    this.products,
  });

  int? dealerId;
  String? dealerCode;
  String? dealerName;
  num? rating;
  num? rating2;
  int? commentCount;
  int? mainBrandId;
  String? latlng;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  int? minPackageAmount;
  ImagesModel? logoImage;
  bool? openMarketplace;
  bool? openReservation;
  bool? openTable;
  bool? openVale;
  ImagesModel? listImage;
  List<FoodCategory>? foodCategories;
  List<ProductModel>? products;

  factory SearchProductModel.fromJson(Map<String, dynamic> json) =>
      SearchProductModel(
        dealerId: json["dealer_id"],
        dealerCode: json["dealer_code"],
        dealerName: json["dealer_name"],
        rating: json["rating"] == null ? '' : json["rating"].toDouble(),
        rating2: json["rating2"] == null ? '' : json["rating2"].toDouble(),
        commentCount: json["comment_count"],
        mainBrandId: json["main_brand_id"],
        latlng: json["latlng"],
        avgServiceTime: json["avg_service_time"],
        avgServiceTimeMin: json["avg_service_time_min"],
        avgServiceTimeMax: json["avg_service_time_max"],
        minPackageAmount: json["min_package_amount"],
        logoImage: json["logo_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["logo_image"]),
        openMarketplace: json["open_marketplace"],
        openReservation: json["open_reservation"],
        openTable: json["open_table"],
        openVale: json["open_vale"],
        listImage: json["list_image"] == null
            ? ImagesModel()
            :  ImagesModel.fromJson(json["list_image"]),
        foodCategories: List<FoodCategory>.from(
            json["food_categories"].map((x) => FoodCategory.fromJson(x))),
        products: List<ProductModel>.from(
            json["products"].map((x) => ProductModel().fromJson(x))),
      );
}
