import 'package:sip_models/response.dart';
import 'package:sip_models/src/model/request/order_model.dart';


class LastOrdersModel  extends IBaseModel{
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
  DateTime? deliveryDate;
  double? tipAmount;
  String? clientPointId;
  int? customerId;
  int? customerAddressId;
  int? dealerId;
  String? deliveryTimeId;
  String? deliveryTypeId;
  String? orderPointId;
  String? orderStatusId;
  String? paymentTypeId;
  String? sessionPointId;
  int? tableServiceId;
  String? cancelCodeId;
  String? sessionId;
  String? title;
  double? tipAmountWithoutKdv;
  double? totalAmountWithoutKdv;
  DealerModel? dealer;
  List<LastOrdersModelItem>? items;

  @override
  fromJson(Map<dynamic, dynamic> json) =>
      LastOrdersModel(
        id: json["id"],
        orderNumber: json["order_number"],
        totalAmount: json["total_amount"] == null ? 0 :json["total_amount"].toDouble(),
        recordDate: DateTime.parse(json["record_date"]),
        updateDate: DateTime.parse(json["update_date"]),
        revisionNumber: json["revision_number"],
        orderNote: json["order_note"],
        deliveryDate: DateTime.parse(json["delivery_date"]),
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
        totalAmountWithoutKdv: json["total_amount_without_kdv"] == null ? 0 :json["total_amount_without_kdv"].toDouble(),
        dealer: DealerModel().fromJson(json["dealer"]),
        items: List<LastOrdersModelItem>.from(
            json["items"].map((x) => LastOrdersModelItem.fromJson(x))),
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
  List<OrderOption>? options;
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
            List<OrderOption>.from(json["options"].map((x) => OrderOption.fromJson(x))),
        itemName: json["item_name"],
        itemType: json["item_type"],
        itemPrice: json["item_price"] == null ? 0 :json["item_price"].toDouble(),
        totalPrice: json["total_price"] == null ? 0 : json["total_price"].toDouble(),
      );
}

