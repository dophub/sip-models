import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';

class PastServiceDetail extends IBaseModel<PastServiceDetail> {
  PastServiceDetail({
    this.id,
    this.serviceTotalAmount,
    this.numberOfService,
    this.totalTipAmount,
    this.serviceStatusId,
    this.orders,
  });

  int? id;
  double? serviceTotalAmount;
  int? numberOfService;
  double? totalTipAmount;
  String? serviceStatusId;
  PastOrderDetailsModel? orders;

  @override
  PastServiceDetail fromJson(Map<String, dynamic> json) {
    return PastServiceDetail(
      id: json["id"],
      serviceTotalAmount: json["service_total_amount"].toDouble(),
      numberOfService: json["number_of_service"],
      totalTipAmount: json["total_tip_amount"]==null ? null : json["total_tip_amount"]!.toDouble(),
      serviceStatusId: json["service_status_id"],
      orders: PastOrderDetailsModel().fromJson(json["orders"]),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
