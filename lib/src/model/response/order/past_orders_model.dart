import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';

class PastOrdersModel extends IBaseModel<PastOrdersModel> {
  PastOrdersModel({
    this.id,
    this.orderNumber,
    this.recordDate,
    this.numberOfService,
    this.totalAmount,
    this.dealerName,
    this.dealerFullName,
    this.addressName,
    this.addressInfo,
    this.status,
    this.dealerId,
    this.orderPointId,
    this.paymentModelID,
    this.serviceId,
    this.logoImage,
    this.serviceDeliveryTypeId,
  });

  String? paymentModelID;
  int? serviceId;
  int? id;
  String? orderNumber;
  int? numberOfService;
  DateTime? recordDate;
  double? totalAmount;
  String? dealerName;
  String? dealerFullName;
  String? addressName;
  AddressType? addressInfo;
  StatusModel? status;
  int? dealerId;
  String? orderPointId;
  ImagesModel? logoImage;
  String? serviceDeliveryTypeId;

  @override
  fromJson(Map<dynamic, dynamic> json) => PastOrdersModel(
        paymentModelID: json['payment_model_id'],
        serviceId: json['service_id'],
        id: json["id"],
        numberOfService: json['number_of_service'],
        orderNumber: json["order_number"],
        recordDate: DateTime.parse(json["record_date"]),
        totalAmount: json["total_amount"].toDouble(),
        dealerName: json["dealer_name"],
        dealerFullName: json["dealer_full_name"],
        addressName: json["address_name"],
        addressInfo: AddressType.fromJson(json["address_info"]),
        status: json["status"] == null ? StatusModel() : StatusModel.fromJson(json["status"]),
        dealerId: json["dealer_id"],
        orderPointId: json["order_point_id"],
        logoImage: json["logo_image"] == null ? ImagesModel() : ImagesModel.fromJson(json["logo_image"]),
        serviceDeliveryTypeId: json["service_delivery_type_id"],
      );

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
