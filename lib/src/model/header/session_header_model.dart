import 'package:sip_models/src/enum/id_enum.dart';

import '../response/address/customer_address_model.dart';

///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  const SessionHeaderModel({
    required this.token,
    required this.appId,
    this.orderPoint,
    this.customerAddress,
    this.sessionPoint,
    this.clientType,
    required this.masterBrandId,
    required this.appCode,
    this.externalHeader = const {},
    this.lang,
  });

  final String token;
  final AppId appId;
  final String? lang;
  final OrderPoint? orderPoint;
  final SessionPoint? sessionPoint;
  final CustomerAddressModel? customerAddress;
  final ClientType? clientType;
  final int? masterBrandId;
  final Map<String, String> externalHeader;
  final String appCode;

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final address = customerAddress ?? CustomerAddressModel();
    final Map<String, String> _map = {
      "content-type": "application/json",
      "clientpoint": ClientPointId.MOBILE_APP.name,
      "clienttype": clientType?.name ?? ClientType.APP.name,
      "applicationname": appId.name,
      "authorization": 'Bearer $token',
      "lang": lang ?? 'tr',
      "orderpoint": orderPoint == null ? '' : orderPoint!.name,
      "neighborhoodid": (address.neighborhoodId ?? 0).toString(),
      "addressid": (address.id ?? 0).toString(),
      "latlng": address.latlng ?? '0,0',
      "panel": "d",
      "sessionpoint": sessionPoint == null ? '' : sessionPoint!.name,
      "masterbrandid": masterBrandId?.toString() ?? '0',
      "appcode": appCode,
    };
    _map.addAll(addMap);
    _map.addAll(externalHeader);
    return _map;
  }
}
