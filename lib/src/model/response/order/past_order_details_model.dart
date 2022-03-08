import 'package:sip_models/src/model/request/order_model.dart';
import 'package:sip_models/src/model/response/parameters/parameters_Model.dart';
import '../abstract_base_model.dart';
import '../dealer/dealer_model.dart';
import '../images_model.dart';

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
  StatusModel? status;
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
        status: json["status"] == null ? StatusModel():StatusModel.fromJson(json["status"]),
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
        isDefault: json["is_default"] ?? false,
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
