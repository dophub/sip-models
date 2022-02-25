import 'package:sip_models/response.dart';
import 'package:sip_models/src/enum/id_enum.dart';

///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  const SessionHeaderModel({
    required this.token,
    this.orderPoint,
    this.customerAddress,
  });

  final String token;
  final String lang = 'tr';
  final OrderPoint? orderPoint;
  final CustomerAddress? customerAddress;

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final address = customerAddress ?? CustomerAddress();
    final Map<String, String> _map = {
      "content-type": "application/json",
      "authorization": 'Bearer $token',
      "lang": lang,
      "order-point": orderPoint == null ? '' : orderPoint!.name,
      "neighborhood-id": (address.neighborhoodId ?? 0).toString(),
      "address-id": (address.id ?? 0).toString(),
      "latlng": address.latlng ?? '0,0',
    };
    _map.addAll(addMap);
    return _map;
  }
}
