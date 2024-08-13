import 'package:background_json_parser/background_json_parser.dart';

class OrderRejectReqModel extends IBaseModel<OrderRejectReqModel> {
  String? cancelCode;
  String? orderStatus;

  OrderRejectReqModel({this.cancelCode, this.orderStatus});

  @override
  fromJson(Map<String, dynamic> json) {
    return OrderRejectReqModel(
      cancelCode: json['cancel_code'] as String?,
      orderStatus: json['order_status'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'cancel_code': cancelCode,
        'order_status': orderStatus,
      };
}
