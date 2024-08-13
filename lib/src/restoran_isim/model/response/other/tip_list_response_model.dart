import 'package:background_json_parser/background_json_parser.dart';

class TipListResponseModel extends IBaseModel<TipListResponseModel> {
    TipListResponseModel({
        this.orderNumber,
        this.tipAmount,
        this.orderId,
    });

    String? orderNumber;
    double? tipAmount;
    int? orderId;

    
      @override
      TipListResponseModel fromJson(Map<String, dynamic> json) =>TipListResponseModel(
        orderNumber: json["order_number"],
        tipAmount: json["tip_amount"]?.toDouble(),
        orderId: json["order_id"],
    );
    
      @override
      Map<String, dynamic> toJson() {
    throw UnimplementedError();
      }
}
