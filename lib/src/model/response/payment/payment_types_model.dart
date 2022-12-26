import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/widget/sections_widget_model.dart';

import '../../../../response.dart';

class PaymentTypesModel extends IBaseModel<PaymentTypesModel> with ISectionsWidgetModel, IPaymentType {
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

  @override
  String get getId => throw UnimplementedError();

  @override
  String get getName => paymentType!;

  @override
  double? get getPrice => null;

  @override
  bool get getStatus => throw UnimplementedError();

  @override
  set setStatus(bool value) {
    throw UnimplementedError();
  }
}
