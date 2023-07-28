import 'dart:convert';

import 'package:background_json_parser/background_json_parser.dart';

class FastSaleCloseTableModel extends IBaseModel<FastSaleCloseTableModel> {
  int? orderId;
  String? paymentTypeCode;
  Map<String, dynamic>? logs;
  String? qrWalletCode;

  FastSaleCloseTableModel({
    this.orderId,
    this.paymentTypeCode,
    this.logs,
    this.qrWalletCode,
  });

  @override
  fromJson(Map<String, dynamic> json) => FastSaleCloseTableModel(
        orderId: json["order_id"],
        paymentTypeCode: json["payment_type_code"],
        logs: jsonDecode(json["logs"]),
        qrWalletCode: json["qr_wallet_code"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "payment_type_code": paymentTypeCode,
        "logs": json.encode(logs ?? {}),
        "qr_wallet_code": qrWalletCode,
      };
}
