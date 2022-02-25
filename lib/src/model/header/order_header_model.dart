import 'package:flutter/foundation.dart';
import 'package:sip_models/enum.dart';
import 'session_header_model.dart';

class OrderHeaderModel extends SessionHeaderModel {
  OrderHeaderModel(
      String token, this.sessionId, this.dealerId, this._orderPoint,
      {this.tableId})
      : super(token: token, orderPoint: _orderPoint);

  String? tableId;
  int dealerId;
  late String sessionId;
  late DeliveryType deliveryType;
  late OrderPoint _orderPoint;
  late SessionPoint sessionPoint;

  Map<String, String> _toJson() => {
        "sessionid": sessionId,
        "dealerid": dealerId.toString(),
        "tableid": tableId ?? '',
        "orderpoint": _orderPoint.name,
        "deliverytype": deliveryType.name,
        "sessionpoint": describeEnum(sessionPoint),
      };

  @override
  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    return super.createHeader(addMap: _toJson());
  }

  OrderHeaderModel _setDealer() {
    sessionPoint = SessionPoint.RESTIN;
    //_orderPoint = OrderPoint.TABLE;
    deliveryType = DeliveryType.TABLE;
    return this;
  }

  OrderHeaderModel _setMarketPlace(DeliveryType _deliveryType) {
    sessionPoint = SessionPoint.MARKETPLACE;
    //_orderPoint = _orderPointt;
    deliveryType = _deliveryType;
    return this;
  }

  factory OrderHeaderModel.toDealer(
          String token, String sessionId, int dealerId, String tableId) =>
      OrderHeaderModel(token, sessionId, dealerId, OrderPoint.TABLE, tableId: tableId)._setDealer();

  factory OrderHeaderModel.toMarketPlace(String token, String sessionId, int dealerId, OrderPoint _orderPoint, DeliveryType _deliveryType) =>
      OrderHeaderModel(token, sessionId, dealerId, _orderPoint)._setMarketPlace(_deliveryType);
}
