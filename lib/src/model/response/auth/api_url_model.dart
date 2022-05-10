/// Hızlı giriş için yazıldı
/// Hızlı giriş te Turkcell frontent Url yi çekerken kullanılan model
/// [apiUrl] Frontent Url
/// [sessionId] request atarken oluşturduğumuz Guid
class ApiUrlModel {
  ApiUrlModel({
    this.apiUrl,
    this.sessionId,
  });

  String? apiUrl;
  String? sessionId;

  factory ApiUrlModel.fromJson(Map<String, dynamic> json) => ApiUrlModel(
        apiUrl: json["apiurl"],
        sessionId: json["sessionId"],
      );
}
