///  Business Logic'teki client class ları bu modelden extends edilecek.
///  Business Logic'teki Class türetildiği zaman bu modelin Constructor headerin gerekli parametrelerini dolduracak
///  daha sonra headere eklemek istediğimiz default parametreler hariç başka parametre eklemek istiyorsak
///  map paramtersine ekleyip [createHeader] metodunu çağırıyoruz.
class SessionHeaderModel {
  //final sessionService = Get.find<SessionService>();

  SessionHeaderModel(String token) {
    authorization = 'Bearer $token';
    lang = 'tr';
  }

  final String? contentType = "application/json";
  String? authorization;
  String? lang;

  Map<String, String> createHeader({Map<String, String> addMap = const {}}) {
    final Map<String, String> _map = {
      "content-type": contentType!,
      "authorization": authorization!,
      "lang": lang!,
    };
    _map.addAll(addMap);
    return _map;
  }
}
