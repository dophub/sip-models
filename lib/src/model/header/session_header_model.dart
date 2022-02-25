import 'package:sip_models/src/enum/id_enum.dart';

///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  SessionHeaderModel({
    required this.token,
    required this.orderPoint,
    this.neighborhoodId = 0,
    this.addressId = 0,
    this.latlng = '0.0',
  });


  final String token;
  final String contentType = "application/json";
  final String lang = 'tr';
  final OrderPoint orderPoint;
  final int neighborhoodId;
  final int addressId;
  final String latlng;

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final Map<String, String> _map = {
      "content-type": contentType,
      "authorization": 'Bearer $token',
      "lang": lang,
      "order-point": orderPoint.name,
      "neighborhood-id": neighborhoodId.toString(),
      "address-id": addressId.toString(),
      "latlng": latlng,
    };
    _map.addAll(addMap);
    return _map;
  }
}
