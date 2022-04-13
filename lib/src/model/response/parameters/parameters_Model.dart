import '../abstract_base_model.dart';
import '../order/past_order_details_model.dart';
import '../payment/payment_types_model.dart';

class ParametersModel extends IBaseModel<ParametersModel> {
  ParametersModel({
    this.addressType,
    this.foodCategories,
    this.paymentTypes,
    this.orderBy,
  });

  List<AddressType>? addressType;
  List<FoodCategory>? foodCategories;
  List<PaymentTypesModel>? paymentTypes;
  List<OrderBy>? orderBy;

  @override
  fromJson(Map<dynamic, dynamic> json) => ParametersModel(
        addressType: json["address_type"] == null
            ? []
            : List<AddressType>.from(
                json["address_type"].map((x) => AddressType.fromJson(x))),
        foodCategories: json["food_categories"] == null
            ? []
            : List<FoodCategory>.from(
                json["food_categories"].map((x) => FoodCategory.fromJson(x))),
        paymentTypes: json["payment_types"] == null
            ? []
            : List<PaymentTypesModel>.from(json["payment_types"]
                .map((x) => PaymentTypesModel.fromJson(x))),
        orderBy: json["order_by"] == null
            ? []
            : List<OrderBy>.from(
                json["order_by"].map((x) => OrderBy.fromJson(x))),
      );
}

class AddressType {
  AddressType({
    this.addressTypeCode,
    this.addressTypeName,
    this.icon,
  });

  String? addressTypeCode;
  String? addressTypeName;
  String? icon;

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

class OrderBy {
  OrderBy({
    this.title,
    this.code,
  });

  String? title;
  String? code;

  factory OrderBy.fromJson(Map<String, dynamic> json) => OrderBy(
        title: json["title"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "code": code,
      };
}

class StatusModel {
  StatusModel({
    this.code,
    this.title,
    this.orderStatusGroupId,
    this.isStartLevel,
    this.isCompleteOrder,
  });

  String? code;
  String? title;
  String? orderStatusGroupId;
  bool? isStartLevel;
  bool? isCompleteOrder;

  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
        code: json["code"],
        title: json["title"],
        orderStatusGroupId: json["order_status_group_id"],
        isStartLevel: json["is_start_level"],
        isCompleteOrder: json["is_complete_order"],
      );
}

class PaymentType {
  PaymentType(
      {required this.paymentTypeCode,
      required this.paymentType,
      required this.isActive,
      required this.isOnlinePayment,
      this.imageUrl,
      required this.isSelected});

  String paymentTypeCode;
  String paymentType;
  String? imageUrl;
  bool isActive;
  bool isOnlinePayment;
  bool isSelected;

  factory PaymentType.fromJson(Map<String, dynamic> json) => PaymentType(
        paymentTypeCode: json["payment_type_code"],
        paymentType: json["payment_type"],
        isActive: json["is_active"],
        isOnlinePayment: json["is_online_payment"],
        imageUrl: json['image_url'],
        isSelected: false,
      );

  Map<String, dynamic> toJson() => {
        "payment_type_code": paymentTypeCode,
        "payment_type": paymentType,
        "is_active": isActive,
        'image_url': imageUrl,
        "is_online_payment": isOnlinePayment,
        'is_selected': isSelected,
      };
}
