import 'package:background_json_parser/background_json_parser.dart';

import '../../../../response.dart';

class PaymentTypesModel extends IBaseModel<PaymentTypesModel> implements IPaymentType {
  PaymentTypesModel({
    this.paymentTypeCode,
    this.paymentType,
    this.isActive,
    this.isOnlinePayment,
    this.imageUrl,
    this.virtualId,
  });

  String? paymentTypeCode;
  String? paymentType;
  String? imageUrl;
  bool? isActive;
  bool? isOnlinePayment;
  String? virtualId;

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payment_type_code'] = paymentTypeCode;
    map['payment_type'] = paymentType;
    map['is_active'] = isActive;
    map['is_online_payment'] = isOnlinePayment;
    map['image_url'] = imageUrl;
    map['virtual_id'] = virtualId;
    return map;
  }

  @override
  PaymentTypesModel fromJson(Map<String, dynamic> json) {
    return PaymentTypesModel(
      paymentTypeCode: json['payment_type_code'],
      paymentType: json['payment_type'],
      isActive: json['is_active'],
      isOnlinePayment: json['is_online_payment'],
      imageUrl: json['image_url'],
      virtualId: json['virtual_id'],
    );
  }

  @override
  String get getName => paymentType!;

  @override
  String? get getPaymentType => paymentTypeCode;
}
