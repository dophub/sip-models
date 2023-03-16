import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/request/order_model.dart';

/// Dealer de adisyon için kullanılmakta
class ServiceModel extends IBaseModel<ServiceModel> {
  ServiceModel({
    this.serviceId,
    this.tableId,
    this.serviceNumber,
    this.personCount,
    this.revisionNumber,
    this.totalTipAmount,
    this.dealerId,
    this.payCustomerId,
    this.paymentTypeId,
    this.servicePayTypeId,
    this.serviceTotalAmount,
    this.serviceTotalAmountWithoutKdv,
    this.orders,
    this.serviceStatusId,
    this.tableServiceStatusId,
    this.serviceOrderAmount,
  });

  int? serviceId;
  String? tableId;
  String? serviceNumber;
  int? personCount;
  String? revisionNumber;
  double? totalTipAmount;
  int? dealerId;
  int? payCustomerId;
  String? paymentTypeId;
  String? servicePayTypeId;
  double? serviceTotalAmount;
  String? serviceStatusId;
  double? serviceTotalAmountWithoutKdv;
  double? serviceOrderAmount;
  String? tableServiceStatusId;
  List<OrderModel>? orders;

  @override
  ServiceModel fromJson(Map<dynamic, dynamic> json) => ServiceModel(
        serviceId: json["service_id"],
        tableId: json["table_id"],
        serviceNumber: json["service_number"],
        personCount: json["person_count"],
        revisionNumber: json["revision_number"],
        totalTipAmount: json["total_tip_amount"] == null ? 0.0 : json["total_tip_amount"].toDouble(),
        dealerId: json["dealer_id"],
        payCustomerId: json["pay_customer_id"],
        paymentTypeId: json["payment_type_id"],
        servicePayTypeId: json["service_pay_type_id"],
        serviceTotalAmount: json["service_total_amount"].toDouble(),
        serviceStatusId: json["service_status_id"],
        serviceTotalAmountWithoutKdv: json["service_total_amount_without_kdv"].toDouble(),
        tableServiceStatusId: json["table_service_status_id"],
        serviceOrderAmount: json["service_order_amount"],
        orders:
            json["orders"] == null ? [] : List<OrderModel>.from(json["orders"].map((x) => OrderModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
