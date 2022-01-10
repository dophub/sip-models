import 'dart:convert';

List<PastOrdersModel> pastOrdersModelFromJson(String str) =>
    List<PastOrdersModel>.from(
        json.decode(str).map((x) => PastOrdersModel.fromJson(x)));


class PastOrdersModel {
  PastOrdersModel({
    this.id,
    this.orderNumber,
    this.recordDate,
    this.totalAmount,
    this.dealerName,
    this.dealerFullName,
    this.addressName,
    this.addressInfo,
  });

  int? id;
  String? orderNumber;
  DateTime? recordDate;
  double? totalAmount;
  String? dealerName;
  String? dealerFullName;
  String? addressName;
  AddressInfo? addressInfo;

  factory PastOrdersModel.fromJson(Map<String, dynamic> json) =>
      PastOrdersModel(
        id: json["id"],
        orderNumber: json["order_number"],
        recordDate: DateTime.parse(json["record_date"]),
        totalAmount: json["total_amount"].toDouble(),
        dealerName: json["dealer_name"],
        dealerFullName: json["dealer_full_name"],
        addressName: json["address_name"],
        addressInfo: AddressInfo.fromJson(json["address_info"]),
      );


}

class AddressInfo {
  AddressInfo({
    this.type,
    this.name,
    this.icon,
  });

  String? type;
  String? name;
  String? icon;

  factory AddressInfo.fromJson(Map<String, dynamic> json) => AddressInfo(
        type: json["type"],
        name: json["name"],
        icon: json["icon"],
      );
}
