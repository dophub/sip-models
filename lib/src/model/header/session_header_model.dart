import 'package:sip_models/response.dart';
import 'package:sip_models/src/enum/id_enum.dart';

import '../response/address/customer_address.dart';

///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  const SessionHeaderModel({
    required this.token,
    this.orderPoint,
    this.customerAddress,
    this.sessionPoint,
  });

  final String token;
  final String lang = 'tr';
  final OrderPoint? orderPoint;
  final SessionPoint? sessionPoint;
  final CustomerAddress? customerAddress;

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final address = customerAddress ?? CustomerAddress();
    final Map<String, String> _map = {
      "content-type": "application/json",
      "clientpoint": ClientPointId.MOBILE_APP.name,
      "authorization": 'Bearer $token',
      "lang": lang,
      "orderpoint": orderPoint == null ? '' : orderPoint!.name,
      "neighborhoodid": (address.neighborhoodId ?? 0).toString(),
      "addressid": (address.id ?? 0).toString(),
      "latlng": address.latlng ?? '0,0',
      "sessionpoint": sessionPoint == null ? '' : sessionPoint!.name,
    };
    _map.addAll(addMap);
    return _map;
  }
}
