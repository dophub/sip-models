import 'package:background_json_parser/background_json_parser.dart';

class WalletBalanceOperationReqModel extends IBaseModel<WalletBalanceOperationReqModel> {
  double? balance;
  String? currencyId;
  String? walletId;
  String? notes;
  bool? increase;
  String? paymentTags;

  WalletBalanceOperationReqModel({
    this.balance,
    this.currencyId,
    this.walletId,
    this.notes,
    this.increase,
    this.paymentTags,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletBalanceOperationReqModel(
        balance: json["balance"]?.toDouble(),
        currencyId: json["currencyId"],
        walletId: json["walletId"],
        notes: json["notes"],
        increase: json["increase"],
    paymentTags: json["payment_tags"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "balance": balance,
        "currencyId": currencyId,
        "walletId": walletId,
        "notes": notes,
        "increase": increase,
        "payment_tags": paymentTags,
      };
}
