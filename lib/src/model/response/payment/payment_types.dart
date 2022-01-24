

/// payment_type_code : "CARD"
/// payment_type : "Kredi kartı"
/// is_active : true
/// is_online_payment : false

class PaymentTypes {
  PaymentTypes({
    this.paymentTypeCode,
    this.paymentType,
    this.isActive,
    this.isOnlinePayment,
  });

  PaymentTypes.fromJson(dynamic json) {
    paymentTypeCode = json['payment_type_code'];
    paymentType = json['payment_type'];
    isActive = json['is_active'];
    isOnlinePayment = json['is_online_payment'];
  }
  String? paymentTypeCode;
  String? paymentType;
  bool? isActive;
  bool? isOnlinePayment;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payment_type_code'] = paymentTypeCode;
    map['payment_type'] = paymentType;
    map['is_active'] = isActive;
    map['is_online_payment'] = isOnlinePayment;
    return map;
  }
}