
/// Türkcell Hızlı Girişte OTP kodu doğru girildiğinde çekilen kullanıcı bilgileri
/// [complete] Kullanıcı kayıdını önceden tamamlamışmı tamamlamamış mı
class UserInfoModel {
  UserInfoModel({
    this.complete,
    this.data,
    this.token,
  });

  bool? complete;
  UserInfo? data;
  String? token;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        complete: json["complete"],
        data: UserInfo.fromJson(json["data"]),
        token: json["token"],
      );
}

class UserInfo {
  UserInfo({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.mobilePhone,
    this.ssoId,
    this.customerStatusId,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? mobilePhone;
  String? ssoId;
  String? customerStatusId;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        mobilePhone: json["mobile_phone"],
        ssoId: json["sso_id"],
        customerStatusId: json["customer_status_id"],
      );
}
