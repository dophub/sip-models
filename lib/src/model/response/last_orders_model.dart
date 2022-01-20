
import 'dart:convert';

import 'images_model.dart';
import 'past_order_details_model.dart';

List<LastOrdersModel> lastOrdersModelFromJson(String str) => List<LastOrdersModel>.from(json.decode(str).map((x) => LastOrdersModel.fromJson(x)));

class LastOrdersModel {
  LastOrdersModel({
    this.id,
    this.orderNumber,
    this.totalAmount,
    this.recordDate,
    this.updateDate,
    this.revisionNumber,
    this.orderNote,
    this.deliveryDate,
    this.tipAmount,
    this.clientPointId,
    this.customerId,
    this.customerAddressId,
    this.dealerId,
    this.deliveryTimeId,
    this.deliveryTypeId,
    this.orderPointId,
    this.orderStatusId,
    this.paymentTypeId,
    this.sessionPointId,
    this.tableServiceId,
    this.cancelCodeId,
    this.sessionId,
    this.title,
    this.tipAmountWithoutKdv,
    this.totalAmountWithoutKdv,
    this.dealer,
    this.items,
  });

  int? id;
  String? orderNumber;
  double? totalAmount;
  DateTime? recordDate;
  DateTime? updateDate;
  String? revisionNumber;
  String? orderNote;
  dynamic deliveryDate;
  dynamic tipAmount;
  String? clientPointId;
  int? customerId;
  int? customerAddressId;
  int? dealerId;
  String? deliveryTimeId;
  String? deliveryTypeId;
  String? orderPointId;
  String? orderStatusId;
  dynamic paymentTypeId;
  String? sessionPointId;
  int? tableServiceId;
  dynamic cancelCodeId;
  String? sessionId;
  String? title;
  dynamic tipAmountWithoutKdv;
  double? totalAmountWithoutKdv;
  LastOrderDealer? dealer;
  List<LastOrdersModelItem>? items;

  factory LastOrdersModel.fromJson(Map<String, dynamic> json) =>
      LastOrdersModel(
        id: json["id"],
        orderNumber: json["order_number"],
        totalAmount: json["total_amount"].toDouble(),
        recordDate: DateTime.parse(json["record_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        revisionNumber: json["revision_number"],
        orderNote: json["order_note"],
        deliveryDate: json["delivery_date"],
        tipAmount: json["tip_amount"],
        clientPointId: json["client_point_id"],
        customerId: json["customer_id"],
        customerAddressId: json["customer_address_id"],
        dealerId: json["dealer_id"],
        deliveryTimeId: json["delivery_time_id"],
        deliveryTypeId: json["delivery_type_id"],
        orderPointId: json["order_point_id"],
        orderStatusId: json["order_status_id"],
        paymentTypeId: json["payment_type_id"],
        sessionPointId: json["session_point_id"],
        tableServiceId: json["table_service_id"],
        cancelCodeId: json["cancel_code_id"],
        sessionId: json["sessionId"],
        title: json["title"],
        tipAmountWithoutKdv: json["tip_amount_without_kdv"],
        totalAmountWithoutKdv: json["total_amount_without_kdv"].toDouble(),
        dealer: LastOrderDealer.fromJson(json["dealer"]),
        items: List<LastOrdersModelItem>.from(
            json["items"].map((x) => LastOrdersModelItem.fromJson(x))),
      );

}

class LastOrderDealer {
  LastOrderDealer({
    this.dealerId,
    this.dealerName,
    this.rating,
    this.rating2,
    this.commentCount,
    this.logoImage,
    this.listImage,
    this.mobileCoverImage,
  });

  int? dealerId;
  String? dealerName;
  int? rating;
  double? rating2;
  int? commentCount;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;

  factory LastOrderDealer.fromJson(Map<String, dynamic> json) => LastOrderDealer(
        dealerId: json["dealer_id"],
        dealerName: json["dealer_name"],
        rating: json["rating"],
        rating2: json["rating2"].toDouble(),
        commentCount: json["comment_count"],
        logoImage: ImagesModel.fromJson(json["logo_image"]),
        listImage: ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: ImagesModel.fromJson(json["mobile_cover_image"]),
      );
}

class LastOrdersModelItem {
  LastOrdersModelItem({
    this.id,
    this.count,
    this.itemId,
    this.options,
    this.itemName,
    this.itemType,
    this.itemPrice,
    this.totalPrice,
  });

  int? id;
  int? count;
  int? itemId;
  List<Option>? options;
  String? itemName;
  String? itemType;
  double? itemPrice;
  double? totalPrice;

  factory LastOrdersModelItem.fromJson(Map<String, dynamic> json) =>
      LastOrdersModelItem(
        id: json["id"],
        count: json["count"],
        itemId: json["item_id"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        itemName: json["item_name"],
        itemType: json["item_type"],
        itemPrice: json["item_price"].toDouble(),
        totalPrice: json["total_price"].toDouble(),
      );
}

class Option {
  Option({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
    this.totalPrice,
  });

  int? id;
  List<OptionItem>? items;
  String? title;
  String? addingType;
  String? optionType;
  int? totalPrice;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        items: List<OptionItem>.from(
            json["items"].map((x) => OptionItem.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
        totalPrice: json["total_price"],
      );
}

