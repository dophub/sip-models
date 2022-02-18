import 'package:sip_models/response.dart';

class PastOrdersModel extends IBaseModel<PastOrdersModel> {
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
  AddressType? addressInfo;

  @override
  fromJson(Map<dynamic, dynamic> json) =>
      PastOrdersModel(
        id: json["id"],
        orderNumber: json["order_number"],
        recordDate: DateTime.parse(json["record_date"]),
        totalAmount: json["total_amount"].toDouble(),
        dealerName: json["dealer_name"],
        dealerFullName: json["dealer_full_name"],
        addressName: json["address_name"],
        addressInfo: AddressType.fromJson(json["address_info"]),
      );
}
