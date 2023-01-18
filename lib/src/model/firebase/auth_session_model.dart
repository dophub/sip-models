/// Hızlı giriş FireStorde dinlediğimiz beli [sessionId] Documenttı
class AuthSessionModel {
  AuthSessionModel({
    this.status,
    this.userHash,
    this.reqDate,
    this.sessionId,
    this.types,
    this.error,
  });

  String? status;
  String? userHash;
  DateTime? reqDate;
  String? sessionId;
  String? types;
  AuthErrorModel? error;

  factory AuthSessionModel.fromJson(Map<String, dynamic> json) => AuthSessionModel(
        status: json["status"],
        userHash: json["user_hash"],
        reqDate: DateTime.parse(json["req_date"]),
        sessionId: json["sessionId"],
        types: json["type"],
        error: json["error"] != null ? AuthErrorModel.fromJson(json["error"]) : AuthErrorModel(),
      );
}

class AuthErrorModel {
  AuthErrorModel({
    this.code,
    this.message,
  });

  int? code;
  String? message;

  factory AuthErrorModel.fromJson(Map<String, dynamic> json) => AuthErrorModel(
        code: json["code"],
        message: json["message"],
      );
}
