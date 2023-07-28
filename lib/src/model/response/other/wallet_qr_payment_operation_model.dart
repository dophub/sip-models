import 'package:background_json_parser/background_json_parser.dart';

class WalletQrPaymentOperationModel extends IBaseModel<WalletQrPaymentOperationModel> {
  double? amount;
  String? payTransactionId;
  String? qrWalletId;
  String? phoneNumber;
  String? logs;
  bool? isSuccess;

  WalletQrPaymentOperationModel({
    this.amount,
    this.payTransactionId,
    this.qrWalletId,
    this.phoneNumber,
    this.logs,
    this.isSuccess,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletQrPaymentOperationModel(
        amount: json["amount"]?.toDouble() ?? 0.0,
        payTransactionId: json["pay_transaction_id"],
        qrWalletId: json["qr_wallet_id"],
        phoneNumber: json["phone_number"],
        logs: json["logs"],
        isSuccess: json["is_success"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "amount": amount,
        "pay_transaction_id": payTransactionId,
        "qr_wallet_id": qrWalletId,
        "phone_number": phoneNumber,
        "logs": logs,
        "is_success": isSuccess,
      };
}
