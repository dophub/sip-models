// To parse this JSON data, do
//
//     final parametersModel = parametersModelFromJson(jsonString);

import 'dart:convert';

ParametersModel parametersModelFromJson(String str) =>
    ParametersModel.fromJson(json.decode(str));

String parametersModelToJson(ParametersModel data) =>
    json.encode(data.toJson());

class ParametersModel {
  ParametersModel({
    this.addressType,
    this.foodCategories,
    this.paymentTypes,
    this.orderBy,
  });

  List<AddressType>? addressType;
  List<FoodCategory>? foodCategories;
  List<PaymentType>? paymentTypes;
  List<OrderBy>? orderBy;

  factory ParametersModel.fromJson(Map<String, dynamic> json) =>
      ParametersModel(
        addressType: List<AddressType>.from(
            json["address_type"].map((x) => AddressType.fromJson(x))),
        foodCategories: List<FoodCategory>.from(
            json["food_categories"].map((x) => FoodCategory.fromJson(x))),
        paymentTypes: List<PaymentType>.from(
            json["payment_types"].map((x) => PaymentType.fromJson(x))),
        orderBy: List<OrderBy>.from(
            json["order_by"].map((x) => OrderBy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "address_type": List<dynamic>.from(addressType!.map((x) => x.toJson())),
        "food_categories":
            List<dynamic>.from(foodCategories!.map((x) => x.toJson())),
        "payment_types":
            List<dynamic>.from(paymentTypes!.map((x) => x.toJson())),
        "order_by": List<dynamic>.from(orderBy!.map((x) => x.toJson())),
      };
}

class AddressType {
  AddressType({
    required this.addressTypeCode,
    required this.addressTypeName,
    required this.icon,
  });

  String addressTypeCode;
  String addressTypeName;
  String icon;

  factory AddressType.fromJson(Map<String, dynamic> json) => AddressType(
        addressTypeCode: json["address_type_code"],
        addressTypeName: json["address_type_name"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "address_type_code": addressTypeCode,
        "address_type_name": addressTypeName,
        "icon": icon,
      };
}

class FoodCategory {
  FoodCategory(
      {required this.categoryCode,
      required this.categoryName,
      required this.images,
      this.isSelected});

  String categoryCode;
  String categoryName;
  bool? isSelected;
  Images images;

  factory FoodCategory.fromJson(Map<String, dynamic> json) => FoodCategory(
        categoryCode: json["category_code"],
        categoryName: json["category_name"],
        images: Images.fromJson(json["images"]),
        isSelected: false,
      );

  Map<String, dynamic> toJson() => {
        "category_code": categoryCode,
        "category_name": categoryName,
        "images": images.toJson(),
        'is_selected': isSelected,
      };
}

class Images {
  Images({
    required this.imageUrl,
    required this.imageSizeId,
  });

  String imageUrl;
  ImageSizeId? imageSizeId;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        imageSizeId: json["image_size_id"] == null
            ? null
            : imageSizeIdValues.map[json["image_size_id"]],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl == null ? null : imageUrl,
        "image_size_id":
            imageSizeId == null ? null : imageSizeIdValues.reverse[imageSizeId],
      };
}

enum ImageSizeId { MOBILE_KITCHEN }

final imageSizeIdValues =
    EnumValues({"mobile_kitchen": ImageSizeId.MOBILE_KITCHEN});

class OrderBy {
  OrderBy({
    required this.title,
    required this.code,
  });

  String title;
  String code;

  factory OrderBy.fromJson(Map<String, dynamic> json) => OrderBy(
        title: json["title"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "code": code,
      };
}

class PaymentType {
  PaymentType(
      {required this.paymentTypeCode,
      required this.paymentType,
      required this.isActive,
      required this.isOnlinePayment,
      required this.isSelected});

  String paymentTypeCode;
  String paymentType;
  bool isActive;
  bool isOnlinePayment;
  bool isSelected;

  factory PaymentType.fromJson(Map<String, dynamic> json) => PaymentType(
        paymentTypeCode: json["payment_type_code"],
        paymentType: json["payment_type"],
        isActive: json["is_active"],
        isOnlinePayment: json["is_online_payment"],
        isSelected: false,
      );

  Map<String, dynamic> toJson() => {
        "payment_type_code": paymentTypeCode,
        "payment_type": paymentType,
        "is_active": isActive,
        "is_online_payment": isOnlinePayment,
        'is_selected': isSelected,
      };
}

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
