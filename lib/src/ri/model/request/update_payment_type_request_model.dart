import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/parameters/parameters_Model.dart';

class UpdatePaymentTypeRequestModel extends IBaseModel<UpdatePaymentTypeRequestModel> {
  UpdatePaymentTypeRequestModel({
    this.orderPoint,
    this.payments,
  });

  String? orderPoint;
  List<PaymentType>? payments;

  @override
  fromJson(Map<String, dynamic> json) => UpdatePaymentTypeRequestModel(
        orderPoint: json["order_point"],
        payments: List<PaymentType>.from(json["payment_types"].map((x) => PaymentType.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "order_point": orderPoint,
        "payment_types": List<dynamic>.from(payments!.map((x) => x.toJson())),
      };
}
