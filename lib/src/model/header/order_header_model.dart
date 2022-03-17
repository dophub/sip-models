import 'package:sip_models/enum.dart';
import '../../../response.dart';
import 'session_header_model.dart';

class OrderHeaderModel extends SessionHeaderModel {
  OrderHeaderModel(
    String token,
    this.sessionId,
    this.dealerId,
    OrderPoint _orderPoint,
    SessionPoint sessionPoint, {
    this.tableId,
    CustomerAddress? customerAddress,
  }) : super(
          token: token,
          orderPoint: _orderPoint,
          sessionPoint: sessionPoint,
          customerAddress: customerAddress,
        );

  String? tableId;
  int dealerId;
  late String sessionId;
  late DeliveryType deliveryType;

  Map<String, String> _toJson() => {
        "sessionid": sessionId,
        "dealerid": dealerId.toString(),
        "tableid": tableId ?? '',
        "deliverytype": deliveryType.name,
      };

  @override
  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    return super.createHeader(addMap: _toJson());
  }

  OrderHeaderModel _setDealer() {
    deliveryType = DeliveryType.TABLE;
    return this;
  }

  OrderHeaderModel _setMarketPlace(DeliveryType _deliveryType) {
    deliveryType = _deliveryType;
    return this;
  }

  factory OrderHeaderModel.toDealer(
    String token,
    String sessionId,
    int dealerId,
    SessionPoint sessionPoint,
    String tableId,
  ) =>
      OrderHeaderModel(
        token,
        sessionId,
        dealerId,
        OrderPoint.TABLE,
        sessionPoint,
        tableId: tableId,
      )._setDealer();

  factory OrderHeaderModel.toMarketPlace(
    String token,
    String sessionId,
    int dealerId,
    OrderPoint _orderPoint,
    DeliveryType _deliveryType,
    CustomerAddress? customerAddress,
  ) =>
      OrderHeaderModel(
        token,
        sessionId,
        dealerId,
        _orderPoint,
        SessionPoint.MARKETPLACE,
        customerAddress: customerAddress,
      )._setMarketPlace(_deliveryType);
}
