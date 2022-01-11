
import 'dart:convert';

import '../../../sip_general_models.dart';
import 'past_order_details_model.dart';

List<LastOrdersModel> lastOrdersModelFromJson(String str) => List<LastOrdersModel>.from(json.decode(str).map((x) => LastOrdersModel.fromJson(x)));

/*String lastOrdersModelToJson(List<LastOrdersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));*/

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
  Dealer? dealer;
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
        dealer: Dealer.fromJson(json["dealer"]),
        items: List<LastOrdersModelItem>.from(
            json["items"].map((x) => LastOrdersModelItem.fromJson(x))),
      );
/*
  Map<String, dynamic> toJson() => {
        "id": id,
        "order_number": orderNumber,
        "total_amount": totalAmount,
        "record_date": recordDate?.toIso8601String(),
        "update_date": updateDate?.toIso8601String(),
        "revision_number": revisionNumber,
        "order_note": orderNote,
        "delivery_date": deliveryDate,
        "tip_amount": tipAmount,
        "client_point_id": clientPointId,
        "customer_id": customerId,
        "customer_address_id": customerAddressId,
        "dealer_id": dealerId,
        "delivery_time_id": deliveryTimeId,
        "delivery_type_id": deliveryTypeId,
        "order_point_id": orderPointId,
        "order_status_id": orderStatusId,
        "payment_type_id": paymentTypeId,
        "session_point_id": sessionPointId,
        "table_service_id": tableServiceId,
        "cancel_code_id": cancelCodeId,
        "sessionId": sessionId,
        "title": title,
        "tip_amount_without_kdv": tipAmountWithoutKdv,
        "total_amount_without_kdv": totalAmountWithoutKdv,
        "dealer": dealer?.toJson(),
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
      };*/
}

class Dealer {
  Dealer({
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
  int? rating2;
  int? commentCount;
  ImagesModel? logoImage;
  ImagesModel? listImage;
  ImagesModel? mobileCoverImage;

  factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
        dealerId: json["dealer_id"],
        dealerName: json["dealer_name"],
        rating: json["rating"],
        rating2: json["rating2"],
        commentCount: json["comment_count"],
        logoImage: ImagesModel.fromJson(json["logo_image"]),
        listImage: ImagesModel.fromJson(json["list_image"]),
        mobileCoverImage: ImagesModel.fromJson(json["mobile_cover_image"]),
      );
/*
  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "dealer_name": dealerName,
        "rating": rating,
        "rating2": rating2,
        "comment_count": commentCount,
        "logo_image": logoImage?.toJson(),
        "list_image": listImage?.toJson(),
        "mobile_cover_image": mobileCoverImage?.toJson(),
      };*/
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
/*
  Map<String, dynamic> toJson() => {
        "id": id,
        "count": count,
        "item_id": itemId,
        "options": List<dynamic>.from(options!.map((x) => x.toJson())),
        "item_name": itemName,
        "item_type": itemType,
        "item_price": itemPrice,
        "total_price": totalPrice,
      };*/
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
/*
  Map<String, dynamic> toJson() => {
        "id": id,
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "adding_type": addingType,
        "option_type": optionType,
        "total_price": totalPrice,
      };*/
}

