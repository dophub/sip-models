import 'package:background_json_parser/json_parser.dart';

/// payment_type_code : "CARD"
/// payment_type : "Kredi kartı"
/// is_active : true
/// is_online_payment : false
class PaymentTypesModel extends IBaseModel<PaymentTypesModel> {
  PaymentTypesModel({
    this.paymentTypeCode,
    this.paymentType,
    this.isActive,
    this.isOnlinePayment,
  });

  String? paymentTypeCode;
  String? paymentType;

  bool? isActive;
  bool? isOnlinePayment;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payment_type_code'] = paymentTypeCode;
    map['payment_type'] = paymentType;
    map['is_active'] = isActive;
    map['is_online_payment'] = isOnlinePayment;
    return map;
  }

  @override
  PaymentTypesModel fromJson(Map<String, dynamic> json) {
    return PaymentTypesModel(
      paymentTypeCode: json['payment_type_code'],
      paymentType: json['payment_type'],
      isActive: json['is_active'],
      isOnlinePayment: json['is_online_payment'],
    );
  }
}
