import 'dart:convert';

/// payment_type_code : "CARD"
/// payment_type : "Kredi kartı"
/// is_active : true
/// is_online_payment : false
List<PaymentTypesModel> paymentTypesModelFromJson(String str) =>
    List<PaymentTypesModel>.from(
        json.decode(str).map((x) => PaymentTypesModel.fromJson(x)));

class PaymentTypesModel {
  PaymentTypesModel({
    this.paymentTypeCode,
    this.paymentType,
    this.isActive,
    this.isOnlinePayment,
    this.imageUrl,
  });

  PaymentTypesModel.fromJson(dynamic json) {
    paymentTypeCode = json['payment_type_code'];
    paymentType = json['payment_type'];
    isActive = json['is_active'];
    isOnlinePayment = json['is_online_payment'];
    imageUrl = json['image_url'];
  }

  String? paymentTypeCode;
  String? paymentType;
  String? imageUrl;
  bool? isActive;
  bool? isOnlinePayment;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payment_type_code'] = paymentTypeCode;
    map['payment_type'] = paymentType;
    map['is_active'] = isActive;
    map['image_url'] = imageUrl;
    map['is_online_payment'] = isOnlinePayment;
    return map;
  }
}
