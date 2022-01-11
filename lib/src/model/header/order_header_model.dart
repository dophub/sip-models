import 'package:flutter/foundation.dart';
import 'package:sip_models/enum.dart';
import 'session_header_model.dart';

class OrderHeaderModel extends SessionHeaderModel {
  OrderHeaderModel(String token, this.sessionId, this.dealerId, {this.tableId})
      : super(token);

  /*{
    //final sessionService = Get.find<SessionService>();
    //sessionId = sessionService.getSessionId()!;
  }*/

  String? tableId;
  int dealerId;
  late String sessionId;
  late DeliveryType? deliveryType;
  late OrderPoint? orderPoint;
  late SessionPoint sessionPoint;

  Map<String, String> _toJson() => {
        "sessionid": sessionId,
        "dealerid": dealerId.toString(),
        "tableid": tableId ?? '',
        "orderpoint": orderPoint == null ? '' : describeEnum(orderPoint!),
        "deliverytype": deliveryType == null ? '' : describeEnum(deliveryType!),
        "sessionpoint": describeEnum(sessionPoint),
      };

  @override
  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    return super.createHeader(addMap: _toJson());
  }

  OrderHeaderModel _setDealer() {
    sessionPoint = SessionPoint.RESTIN;
    orderPoint = OrderPoint.TABLE;
    deliveryType = DeliveryType.TABLE;
    return this;
  }

  OrderHeaderModel _setMarketPlace(
      OrderPoint? _orderPoint, DeliveryType? _deliveryType) {
    sessionPoint = SessionPoint.MARKETPLACE;
    orderPoint = _orderPoint;
    deliveryType = _deliveryType;
    return this;
  }

  factory OrderHeaderModel.toDealer(
          String token, String sessionId, int dealerId, String tableId) =>
      OrderHeaderModel(token, sessionId, dealerId, tableId: tableId)
          ._setDealer();

  factory OrderHeaderModel.toMarketPlace(String token, String sessionId,
          int dealerId, OrderPoint? _orderPoint, DeliveryType? _deliveryType) =>
      OrderHeaderModel(token, sessionId, dealerId)
          ._setMarketPlace(_orderPoint, _deliveryType);
}
