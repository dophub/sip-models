import 'package:background_json_parser/background_json_parser.dart';

class PayByWalletModel extends IBaseModel<PayByWalletModel> {
  final String? orderType;
  final int? orderId;
  final double? orderAmount;
  final String? walletId;
  final String? currencyId;
  final String? orderPoint;
  final String? orderNote;
  final String? transactionId;
  final String? otpCode;

  PayByWalletModel({
    this.orderType,
    this.orderId,
    this.orderAmount,
    this.walletId,
    this.currencyId,
    this.orderPoint,
    this.orderNote,
    this.transactionId,
    this.otpCode,
  });

  @override
  fromJson(Map<String, dynamic> json) => PayByWalletModel(
        orderType: json["order_type"],
        orderId: json["order_id"],
        orderAmount: json["order_amount"]?.toDouble(),
        walletId: json["wallet_id"],
        currencyId: json["currency_id"],
        orderPoint: json["orderpoint"],
        orderNote: json["order_note"],
        transactionId: json["transaction_id"],
        otpCode: json["otp_code"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "order_type": orderType,
        "order_id": orderId,
        "order_amount": orderAmount,
        "wallet_id": walletId,
        "currency_id": currencyId,
        "orderpoint": orderPoint,
        "order_note": orderNote,
        "transaction_id": transactionId,
        "otp_code": otpCode,
      };
}
