import 'package:sip_models/src/model/request/order_model.dart';
import 'package:sip_models/src/model/response/parameters_Model.dart';
import 'abstract_base_model.dart';
import 'dealer_model.dart';
import 'images_model.dart';

/// Dealer model id => dealer_id
class PastOrderDetailsModel extends IBaseModel<PastOrderDetailsModel> {
  PastOrderDetailsModel({
    this.id,
    this.orderNumber,
    this.totalAmount,
    this.recordDate,
    this.deliveryDate,
    this.orderPointId,
    this.deliveryTypeId,
    this.sessionPointId,
    this.dealer,
    this.payment,
    this.status,
    this.items,
  });

  int? id;
  String? orderNumber;
  double? totalAmount;
  DateTime? recordDate;
  DateTime? deliveryDate;
  String? orderPointId;
  String? deliveryTypeId;
  String? sessionPointId;
  DealerModel? dealer;
  PaymentDetailModel? payment;
  Status? status;
  List<OrderItem>? items;

  @override
  fromJson(Map<dynamic, dynamic> json) => PastOrderDetailsModel(
        id: json["id"],
        orderNumber: json["order_number"],
        totalAmount: json["total_amount"].toDouble(),
        recordDate: DateTime.parse(json["record_date"]),
        deliveryDate: json["delivery_date"] == null ? null : DateTime.parse(json["delivery_date"]),
        orderPointId: json["order_point_id"],
        deliveryTypeId: json["delivery_type_id"],
        sessionPointId: json["session_point_id"],
        dealer: DealerModel().fromJson(json["dealer"]),
        payment: json["payment"] == null ? PaymentDetailModel(): PaymentDetailModel.fromJson(json["payment"]),
        status: json["status"] == null ? Status():Status.fromJson(json["status"]),
        items:json["items"] == null ? []: List<OrderItem>.from(json["items"].map((x) => OrderItem.fromJson(x))),
      );
}

class FoodCategory {
  FoodCategory({
    this.image,
    this.isDefault,
    this.categoryName,
    this.categoryCode,
  });

  ImagesModel? image;
  bool? isDefault;
  String? categoryName;
  String? categoryCode;

  factory FoodCategory.fromJson(Map<String, dynamic> json) => FoodCategory(
        image: json["image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["image"]),
        isDefault: json["is_default"],
        categoryName: json["category_name"],
        categoryCode: json['category_code'],
      );
}

class PaymentDetailModel {
  PaymentDetailModel({
    this.code,
    this.title,
  });

  String? code;
  String? title;

  factory PaymentDetailModel.fromJson(Map<String, dynamic> json) =>
      PaymentDetailModel(
        code: json["code"],
        title: json["title"],
      );
}

/*
class PastOrderDealer {
  PastOrderDealer({
    this.id,
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
    this.foodCategories,
  });

  int? id;
  String? dealerName;
  num? rating;
  num? rating2;
  int? commentCount;
  int? avgServiceTime;
  int? avgServiceTimeMin;
  int? avgServiceTimeMax;
  int? minPackageAmount;
  int? distance;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;
  String? latlng;
  List<FoodCategory>? foodCategories;

  factory PastOrderDealer.fromJson(Map<String, dynamic> json) =>
      PastOrderDealer(
        id: json["id"],
        dealerName: json["dealer_name"],
        rating: json["rating"],
        rating2: json["rating2"],
        commentCount: json["comment_count"],
        avgServiceTime: json["avg_service_time"],
        avgServiceTimeMin: json["avg_service_time_min"],
        avgServiceTimeMax: json["avg_service_time_max"],
        minPackageAmount: json["min_package_amount"],
        distance: json["distance"],
        logoImage: json["logo_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["logo_image"]),
        listImage: json["list_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: json["mobile_cover_image"] == null
            ? ImagesModel()
            : ImagesModel.fromJson(json["mobile_cover_image"]),
        latlng: json["latlng"],
        foodCategories: List<FoodCategory>.from(
            json["food_categories"].map((x) => FoodCategory.fromJson(x))),
      );
}
*/

/*
class PastOrderDetailsModelItem {
  PastOrderDetailsModelItem({
    this.id,
    this.count,
    this.itemPrice,
    this.totalPrice,
    this.itemNote,
    this.orderMainId,
    this.productId,
    this.promotionMenuId,
    this.statusId,
    this.options,
    this.itemTitle,
    this.itemTypeId,
    this.itemPriceWithoutKdv,
    this.totalPriceWithoutKdv,
    this.taxPercent,
    this.itemCode,
  });

  int? id;
  int? count;
  double? itemPrice;
  double? totalPrice;
  String? itemNote;
  int? orderMainId;
  int? productId;
  int? promotionMenuId;
  String? statusId;
  List<ItemOption>? options;
  String? itemTitle;
  String? itemTypeId;
  double? itemPriceWithoutKdv;
  double? totalPriceWithoutKdv;
  int? taxPercent;
  String? itemCode;

  factory PastOrderDetailsModelItem.fromJson(Map<String, dynamic> json) =>
      PastOrderDetailsModelItem(
        id: json["id"],
        count: json["count"],
        itemPrice: json["item_price"].toDouble(),
        totalPrice: json["total_price"].toDouble(),
        itemNote: json["item_note"],
        orderMainId: json["order_main_id"],
        productId: json["product_id"],
        promotionMenuId: json["promotion_menu_id"],
        statusId: json["status_id"],
        options: List<ItemOption>.from(json["options"].map((x) => ItemOption.fromJson(x))),
        itemTitle: json["item_title"],
        itemTypeId: json["item_type_id"],
        itemPriceWithoutKdv: json["item_price_without_kdv"].toDouble(),
        totalPriceWithoutKdv: json["total_price_without_kdv"].toDouble(),
        taxPercent: json["tax_percent"],
        itemCode: json["item_code"],
      );
}
*/

/*
class ItemOption {
  ItemOption({
    this.sectionId,
    this.sectionItem,
    this.sectionTitle,
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
  });

  int? sectionId;
  SectionItem? sectionItem;
  String? sectionTitle;
  int? id;
  List<OrderOptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  int? totalPrice;

  factory ItemOption.fromJson(Map<String, dynamic> json) => ItemOption(
        sectionId: json["section_id"],
        sectionItem: json["section_item"] == null
            ? null
            : SectionItem.fromJson(json["section_item"]),
        sectionTitle: json["section_title"],
        id: json["id"],
        items: json["items"] == null ? null : List<OrderOptionItem>.from(json["items"].map((x) => OrderOptionItem.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
        totalPrice: json["total_price"],
      );
}
*/

/*
class OptionItem {
  OptionItem({
    this.id,
    this.price,
    this.title,
    this.productId,
  });

  int? id;
  double? price;
  String? title;
  int? productId;

  factory OptionItem.fromJson(Map<String, dynamic> json) => OptionItem(
        id: json["id"],
        price: json["price"].toDouble(),
        title: json["title"],
        productId: json["product_id"],
      );
}
*/


/*
class SectionItem {
  SectionItem({
    this.itemId,
    this.options,
    this.productName,
  });

  int? itemId;
  List<OrderOption>? options;
  String? productName;

  factory SectionItem.fromJson(Map<String, dynamic> json) => SectionItem(
        itemId: json["item_id"],
        options: List<OrderOption>.from(
            json["options"].map((x) => OrderOption.fromJson(x))),
        productName: json["product_name"],
      );
}
*/

/*class SectionItemOption {
  SectionItemOption({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
  });

  int? id;
  List<OrderOptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  int? totalPrice;

  factory SectionItemOption.fromJson(Map<String, dynamic> json) =>
      SectionItemOption(
        id: json["id"],
        items: List<OrderOptionItem>.from(
            json["items"].map((x) => OrderOptionItem.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
        totalPrice: json["total_price"],
      );
}*/

