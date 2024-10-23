import 'package:background_json_parser/background_json_parser.dart';

class PayByWalletModel extends IBaseModel<PayByWalletModel> {
  final String? orderType;
  final int? orderId;
  final int? orderAmount;
  final String? walletId;
  final String? currencyId;
  final String? orderPoint;

  PayByWalletModel({
    this.orderType,
    this.orderId,
    this.orderAmount,
    this.walletId,
    this.currencyId,
    this.orderPoint,
  });

  @override
  fromJson(Map<String, dynamic> json) => PayByWalletModel(
        orderType: json["order_type"],
        orderId: json["order_id"],
        orderAmount: json["order_amount"],
        walletId: json["wallet_id"],
        currencyId: json["currency_id"],
        orderPoint: json["orderpoint"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "order_type": orderType,
        "order_id": orderId,
        "order_amount": orderAmount,
        "wallet_id": walletId,
        "currency_id": currencyId,
        "orderpoint": orderPoint,
      };
}
