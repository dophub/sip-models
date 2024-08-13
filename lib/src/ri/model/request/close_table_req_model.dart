class CloseTableReqModel {
  CloseTableReqModel({
    required this.paymentType,
    this.bankRefNo,
    this.provisionNo,
    this.rrn,
    this.amount,
    this.bin,
    this.cardNumber,
    this.deviceid,
    this.paycellResponse,
  });

  String paymentType;
  String? bankRefNo;
  String? provisionNo;
  String? rrn;
  int? amount;
  String? bin;
  String? cardNumber;
  String? deviceid;
  String? paycellResponse;

  CloseTableReqModel copyWith({
    String? paymentType,
    String? bankRefNo,
    String? provisionNo,
    String? rrn,
    int? amount,
    String? bin,
    String? cardNumber,
    String? deviceid,
    String? paycellResponse,
  }) =>
      CloseTableReqModel(
        paymentType: paymentType ?? this.paymentType,
        bankRefNo: bankRefNo ?? this.bankRefNo,
        provisionNo: provisionNo ?? this.provisionNo,
        rrn: rrn ?? this.rrn,
        amount: amount ?? this.amount,
        bin: bin ?? this.bin,
        cardNumber: cardNumber ?? this.cardNumber,
        deviceid: deviceid ?? this.deviceid,
        paycellResponse: paycellResponse ?? this.paycellResponse,
      );

  factory CloseTableReqModel.fromJson(Map<String, dynamic> json) => CloseTableReqModel(
        paymentType: json["payment_type"],
        bankRefNo: json["bank_ref_no"],
        provisionNo: json["provision_no"],
        rrn: json["rrn"],
        amount: json["amount"],
        bin: json["bin"],
        cardNumber: json["card_number"],
        deviceid: json["deviceid"],
        paycellResponse: json["paycell_response"],
      );

  Map<String, dynamic> toJson() => {
        "payment_type": paymentType,
        "bank_ref_no": bankRefNo,
        "provision_no": provisionNo,
        "rrn": rrn,
        "amount": amount,
        "bin": bin,
        "card_number": cardNumber,
        "deviceid": deviceid,
        "paycell_response": paycellResponse,
      };
}
