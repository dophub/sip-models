import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class GetPaymentTypeStatusModel extends IBaseModel<GetPaymentTypeStatusModel> implements IMultiItemPickerWidgetModel {
  String? paymentTypeCode;
  String? paymentType;
  bool? isActive;
  int? listOrder;
  bool? isOnlinePayment;
  String? imageUrl;
  String? orderPointId;
  int? dealerId;
  bool? isWriteSlip;

  GetPaymentTypeStatusModel({
    this.paymentTypeCode,
    this.paymentType,
    this.isActive,
    this.listOrder,
    this.isOnlinePayment,
    this.imageUrl,
    this.orderPointId,
    this.dealerId,
    this.isWriteSlip,
  });

  GetPaymentTypeStatusModel copyWith({
    String? paymentTypeCode,
    String? paymentType,
    bool? isActive,
    int? listOrder,
    bool? isOnlinePayment,
    String? imageUrl,
    String? orderPointId,
    int? dealerId,
    bool? isWriteSlip,
  }) =>
      GetPaymentTypeStatusModel(
        paymentTypeCode: paymentTypeCode ?? this.paymentTypeCode,
        paymentType: paymentType ?? this.paymentType,
        isActive: isActive ?? this.isActive,
        listOrder: listOrder ?? this.listOrder,
        isOnlinePayment: isOnlinePayment ?? this.isOnlinePayment,
        imageUrl: imageUrl ?? this.imageUrl,
        orderPointId: orderPointId ?? this.orderPointId,
        dealerId: dealerId ?? this.dealerId,
        isWriteSlip: isWriteSlip ?? this.isWriteSlip,
      );

  @override
  fromJson(Map<String, dynamic> json) => GetPaymentTypeStatusModel(
        paymentTypeCode: json["payment_type_code"],
        paymentType: json["payment_type"],
        isActive: json["is_active"],
        listOrder: json["list_order"],
        isOnlinePayment: json["is_online_payment"],
        imageUrl: json["image_url"],
        orderPointId: json["order_point_id"],
        dealerId: json["dealer_id"],
        isWriteSlip: json["is_write_slip"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "payment_type_code": paymentTypeCode,
        "payment_type": paymentType,
        "is_active": isActive,
        "list_order": listOrder,
        "is_online_payment": isOnlinePayment,
        "image_url": imageUrl,
        "order_point_id": orderPointId,
        "dealer_id": dealerId,
        "is_write_slip": isWriteSlip,
      };

  @override
  bool get selectedValue => isActive ?? false;

  @override
  String get title => paymentType ?? '-';

  @override
  set selectedValue(bool value) {
    isActive = value;
  }
}
