import 'package:background_json_parser/background_json_parser.dart';

class WalletMovementModel extends IBaseModel<WalletMovementModel> {
  final int? id;
  final String? transactionId;
  final String? sourceId;
  final int? amount;
  final String? paymentMethod;
  final String? status;
  final int? trackId;
  final int? cardId;
  final String? bin;
  final int? serialNo;
  final String? ip;
  final int? errorCode;
  final int? reportDate;
  final int? createdAt;
  final int? updatedAt;
  final int? deletedAt;
  final String? currencyId;
  final int? customerId;
  final int? dealerId;
  final int? mainBrandId;
  final int? paymentTypeId;
  final String? sourceTypeId;
  final int? walletId;
  final bool? invoiceStatus;
  final String? paymentCodeId;

  WalletMovementModel({
    this.id,
    this.transactionId,
    this.sourceId,
    this.amount,
    this.paymentMethod,
    this.status,
    this.trackId,
    this.cardId,
    this.bin,
    this.serialNo,
    this.ip,
    this.errorCode,
    this.reportDate,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.currencyId,
    this.customerId,
    this.dealerId,
    this.mainBrandId,
    this.paymentTypeId,
    this.sourceTypeId,
    this.walletId,
    this.invoiceStatus,
    this.paymentCodeId,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletMovementModel(
        id: json["id"],
        transactionId: json["transaction_id"],
        sourceId: json["source_id"],
        amount: json["amount"],
        paymentMethod: json["payment_method"],
        status: json["status"],
        trackId: json["track_id"],
        cardId: json["card_id"],
        bin: json["bin"],
        serialNo: json["serial_no"],
        ip: json["ip"],
        errorCode: json["error_code"],
        reportDate: json["report_date"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        currencyId: json["currency_id"],
        customerId: json["customer_id"],
        dealerId: json["dealer_id"],
        mainBrandId: json["main_brand_id"],
        paymentTypeId: json["payment_type_id"],
        sourceTypeId: json["source_type_id"],
        walletId: json["wallet_id"],
        invoiceStatus: json["invoicestatus"],
        paymentCodeId: json["payment_code_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "transaction_id": transactionId,
        "source_id": sourceId,
        "amount": amount,
        "payment_method": paymentMethod,
        "status": status,
        "track_id": trackId,
        "card_id": cardId,
        "bin": bin,
        "serial_no": serialNo,
        "ip": ip,
        "error_code": errorCode,
        "report_date": reportDate,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "currency_id": currencyId,
        "customer_id": customerId,
        "dealer_id": dealerId,
        "main_brand_id": mainBrandId,
        "payment_type_id": paymentTypeId,
        "source_type_id": sourceTypeId,
        "wallet_id": walletId,
        "invoicestatus": invoiceStatus,
        "payment_code_id": paymentCodeId,
      };
}
