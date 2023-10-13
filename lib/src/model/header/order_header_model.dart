import 'package:sip_models/enum.dart';
import '../../../response.dart';
import 'session_header_model.dart';

class OrderHeaderModel extends SessionHeaderModel {
  String? tableId;
  int dealerId;
  String sessionId;
  late DeliveryType deliveryType;

  OrderHeaderModel(
    String token,
    this.sessionId,
    this.dealerId,
    AppId appId,
    OrderPoint _orderPoint,
    SessionPoint sessionPoint, {
    this.tableId,
    CustomerAddressModel? customerAddress,
    ClientType? clientType,
    required int? masterBrandId,
    required String appCode,
  }) : super(
          appId: appId,
          token: token,
          orderPoint: _orderPoint,
          sessionPoint: sessionPoint,
          customerAddress: customerAddress,
          clientType: clientType,
          masterBrandId: masterBrandId,
          appCode: appCode,
        );

  factory OrderHeaderModel.toDealer(
    String token,
    String sessionId,
    int dealerId,
    SessionPoint sessionPoint,
    String tableId,
    AppId appId, {
    ClientType? clientType,
    OrderPoint? orderPoint,
    required int? masterBrandId,
    required String appCode,
  }) =>
      OrderHeaderModel(
        token,
        sessionId,
        dealerId,
        appId,
        orderPoint ?? OrderPoint.TABLE,
        sessionPoint,
        tableId: tableId,
        clientType: clientType,
        masterBrandId: masterBrandId,
        appCode: appCode,
      )._setDealer();

  factory OrderHeaderModel.toMarketPlace(
    String token,
    String sessionId,
    int dealerId,
    OrderPoint _orderPoint,
    DeliveryType _deliveryType,
    CustomerAddressModel? customerAddress,
    AppId appId, {
    ClientType? clientType,
    required int? masterBrandId,
    required String appCode,
  }) =>
      OrderHeaderModel(
        token,
        sessionId,
        dealerId,
        appId,
        _orderPoint,
        SessionPoint.MARKETPLACE,
        customerAddress: customerAddress,
        clientType: clientType,
        masterBrandId: masterBrandId,
        appCode: appCode,
      )._setMarketPlace(_deliveryType);

  Map<String, String> _toMap() => {
        "sessionid": sessionId,
        "dealerid": dealerId.toString(),
        "tableid": tableId ?? '',
        "deliverytype": deliveryType.name,
      };

  @override
  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final map = _toMap();
    map.addAll(addMap);
    return super.createHeader(addMap: map);
  }

  OrderHeaderModel _setDealer() {
    deliveryType = DeliveryType.TABLE;
    return this;
  }

  OrderHeaderModel _setMarketPlace(DeliveryType _deliveryType) {
    deliveryType = _deliveryType;
    return this;
  }
}
