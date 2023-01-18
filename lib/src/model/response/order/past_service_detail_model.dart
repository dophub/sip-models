import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/order/past_order_details_model.dart';

class PastServiceDetailModel extends IBaseModel<PastServiceDetailModel> {
  PastServiceDetailModel({
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
  List<PastOrderDetailsModel>? orders;

  @override
  PastServiceDetailModel fromJson(Map<String, dynamic> json) {
    return PastServiceDetailModel(
      id: json["id"],
      serviceTotalAmount: json["service_total_amount"].toDouble(),
      numberOfService: json["number_of_service"],
      totalTipAmount: json["total_tip_amount"] == null ? 0.0 : json["total_tip_amount"]!.toDouble(),
      serviceStatusId: json["service_status_id"],
      orders: List<PastOrderDetailsModel>.from(json["orders"].map((x) => PastOrderDetailsModel().fromJson(x))),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
