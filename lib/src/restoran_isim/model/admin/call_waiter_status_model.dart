import 'package:background_json_parser/background_json_parser.dart';

class CallWaiterStatusModel extends IBaseModel<CallWaiterStatusModel> {
  String? waiterSubjectCode;
  String? waiterSubjectName;
  int? imageUrl;
  bool? isActive;
  int? listOrder;
  int? dealerId;

  CallWaiterStatusModel({
    this.waiterSubjectCode,
    this.waiterSubjectName,
    this.imageUrl,
    this.isActive,
    this.listOrder,
    this.dealerId,
  });

  @override
  fromJson(Map<String, dynamic> json) => CallWaiterStatusModel(
        waiterSubjectCode: json["waiter_subject_code"],
        waiterSubjectName: json["waiter_subject_name"],
        imageUrl: json["image_url"],
        isActive: json["is_active"],
        listOrder: json["list_order"],
        dealerId: json["dealer_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "waiter_subject_code": waiterSubjectCode,
        "waiter_subject_name": waiterSubjectName,
        "image_url": imageUrl,
        "is_active": isActive,
        "list_order": listOrder,
        "dealer_id": dealerId,
      };
}
