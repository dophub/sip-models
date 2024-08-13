import 'package:background_json_parser/background_json_parser.dart';

class BrandUserModel extends IBaseModel<BrandUserModel> {
  int? id;
  String? name;
  String? surname;
  String? email;
  String? mobilePhone;
  String? ssoId;
  String? statusId;
  bool? isActive;
  bool? isBrandUser;
  int? mainBrandId;
  List<int>? dealerIds;
  String? username;
  String? password;
  List<String>? roles;

  BrandUserModel({
    this.id,
    this.name,
    this.surname,
    this.email,
    this.mobilePhone,
    this.ssoId,
    this.statusId,
    this.isActive,
    this.isBrandUser,
    this.mainBrandId,
    this.dealerIds,
    this.username,
    this.password,
    this.roles,
  });

  @override
  fromJson(Map<String, dynamic> json) => BrandUserModel(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        email: json["email"],
        mobilePhone: json["mobile_phone"],
        ssoId: json["sso_id"],
        statusId: json["status_id"],
        isActive: json["is_active"],
        isBrandUser: json["is_brand_user"],
        mainBrandId: json["main_brand_id"],
        dealerIds: json["dealer_ids"] == null ? [] : List<int>.from(json["dealer_ids"].map((x) => x)),
        username: json["username"],
        password: json["password"],
        roles: json["roles"] == null ? [] : List<String>.from(json["roles"].map((x) => x)),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "surname": surname,
        "email": email,
        "mobile_phone": mobilePhone,
        "sso_id": ssoId,
        "status_id": statusId,
        "is_active": isActive,
        "is_brand_user": isBrandUser,
        "main_brand_id": mainBrandId,
        "dealer_ids": List<dynamic>.from(dealerIds!.map((x) => x)),
        "username": username,
        "password": password,
        "roles": List<dynamic>.from(roles!.map((x) => x)),
      };
}
