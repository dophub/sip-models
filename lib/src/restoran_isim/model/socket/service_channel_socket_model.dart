import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/restoran_isim/model/response/station/status_model.dart';

class ServiceChannelSocketModel extends IBaseModel<ServiceChannelSocketModel> {
  ServiceChannelSocketModel({
    this.count,
    this.id,
    this.tableId,
    this.total,
    this.status,
    this.dealerId,
    this.customerId,
    this.updateDate,
    this.sessionId,
    this.numberOfService,
    this.paymentModelId,
  });

  int? count;
  int? id;
  String? tableId;
  double? total;
  TableOrderStatusModel? status;
  int? dealerId;
  int? customerId;
  String? updateDate;
  String? sessionId;
  int? numberOfService;
  String? paymentModelId;

  @override
  fromJson(Map<String, dynamic> json) => ServiceChannelSocketModel(
        count: json["count"],
        id: json["id"],
        tableId: json["table_id"],
        total: json["total"].toDouble(),
        status: json["status"] == null ? null : TableOrderStatusModel.fromJson(json["status"]),
        dealerId: json["dealer_id"],
        customerId: json["customer_id"],
        updateDate: json["update_date"],
        sessionId: json["session_id"],
        numberOfService: json["number_of_service"],
        paymentModelId: json["payment_model_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "count": count,
        "id": id,
        "table_id": tableId,
        "total": total,
        "status": status?.toJson(),
        "dealer_id": dealerId,
        "customer_id": customerId,
        "update_date": updateDate,
        "session_id": sessionId,
        "number_of_service": numberOfService,
        "payment_model_id": paymentModelId,
      };
}
