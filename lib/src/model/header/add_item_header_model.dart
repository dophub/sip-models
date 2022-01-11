/*
import 'session_header_model.dart';

class AddItemHeaderModel extends SessionHeaderModel {
  AddItemHeaderModel({
    required this.sessionId,
    required this.dealerId,
    required this.tableId,
    required this.orderPoint,
    required this.deliveryType,
    required this.sessionPoint,
  }) : super('');

  String sessionId;
  String dealerId;
  String tableId;
  String orderPoint;
  String deliveryType;
  String sessionPoint;

  Map<String, String> toJson() => {
        "sessionid": sessionId,
        "dealerid": dealerId,
        "tableid": tableId,
        "orderpoint": orderPoint,
        "deliverytype": deliveryType,
        "sessionpoint": sessionPoint,
      };

  @override
  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    return super.createHeader(addMap: toJson());
  }
}
*/
