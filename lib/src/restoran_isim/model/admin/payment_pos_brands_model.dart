import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class PaymentPosBrandsModel extends IBaseModel<PaymentPosBrandsModel> implements IMultiItemPickerWidgetModel {
  String? brandCode;
  String? brandName;
  bool? isActive;

  PaymentPosBrandsModel({
    this.brandCode,
    this.brandName,
    this.isActive,
  });

  @override
  fromJson(Map<String, dynamic> json) => PaymentPosBrandsModel(
        brandCode: json["brand_code"],
        brandName: json["brand_name"],
        isActive: json["is_active"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "brand_code": brandCode,
        "brand_name": brandName,
        "is_active": isActive,
      };

  PaymentPosBrandsModel copyWith({
    String? brandCode,
    String? brandName,
    bool? isActive,
  }) =>
      PaymentPosBrandsModel(
        brandCode: brandCode ?? this.brandCode,
        brandName: brandName ?? this.brandName,
        isActive: isActive ?? this.isActive,
      );
  @override
  bool selectedValue = false;

  @override
  String get title => brandName ?? brandCode ?? '';
}
