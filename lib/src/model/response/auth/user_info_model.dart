import 'package:background_json_parser/background_json_parser.dart';

/// Türkcell Hızlı Girişte OTP kodu doğru girildiğinde çekilen kullanıcı bilgileri
/// [complete] Kullanıcı kayıdını önceden tamamlamışmı tamamlamamış mı
class GetUserInfoModel {
  GetUserInfoModel({
    this.complete,
    this.data,
    this.token,
  });

  bool? complete;
  UserInfoModel? data;
  String? token;

  factory GetUserInfoModel.fromJson(Map<String, dynamic> json) => GetUserInfoModel(
        complete: json["complete"],
        data: UserInfoModel().fromJson(json["data"]),
        token: json["token"],
      );
}

class UserInfoModel extends IBaseModel<UserInfoModel> {
  UserInfoModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.mobilePhone,
    this.ssoId,
    this.customerStatusId,
    this.contractStatus,
    this.dealerId,
    this.password,
    this.ssoTypeId,
    this.userSsoId,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? mobilePhone;
  String? ssoId;
  String? customerStatusId;
  bool? contractStatus;
  int? dealerId;
  String? password;
  String? ssoTypeId;
  String? userSsoId;

  @override
  fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    email = json["email"];
    mobilePhone = json["mobile_phone"];
    ssoId = json["sso_id"];
    customerStatusId = json["customer_status_id"];
    contractStatus = json["contract_status"];
    dealerId = json["dealer_id"];
    password = json["password"];
    ssoTypeId = json["SSO_type_id"];
    userSsoId = json["user_sso_id"];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "mobile_phone": mobilePhone,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "customer_status_id": customerStatusId,
        "contract_status": contractStatus,
        "sso_id": ssoId,
        "dealer_id": dealerId,
        "password": password,
        "SSO_type_id": ssoTypeId,
        "user_sso_id": userSsoId,
      };
}
