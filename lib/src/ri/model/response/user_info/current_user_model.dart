import 'package:background_json_parser/background_json_parser.dart';

class CurrentUserModel extends IBaseModel<CurrentUserModel> {
  int? id;
  String? name;
  String? email;
  String? mobilePhone;
  String? ssoId;
  int? brandId;
  String? brandName;
  int? dealerId;
  String? dealerName;
  CurrentUserImageModel? profilePhoto;
  List<String>? roles;

  CurrentUserModel({
    this.id,
    this.name,
    this.email,
    this.mobilePhone,
    this.ssoId,
    this.brandId,
    this.brandName,
    this.dealerId,
    this.dealerName,
    this.profilePhoto,
    this.roles,
  });

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile_phone'] = mobilePhone;
    data['sso_id'] = ssoId;
    data['brand_id'] = brandId;
    data['brand_name'] = brandName;
    data['dealer_id'] = dealerId;
    data['dealer_name'] = dealerName;
    if (profilePhoto != null) {
      data['profile_photo'] = profilePhoto!.toJson();
    }
    data['roles'] = roles;
    return data;
  }

  @override
  CurrentUserModel fromJson(Map json) => CurrentUserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        mobilePhone: json['mobile_phone'],
        ssoId: json['sso_id'],
        brandId: json['brand_id'],
        brandName: json['brand_name'],
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
        profilePhoto: json['profile_photo'] != null ? CurrentUserImageModel.fromJson(json['profile_photo']) : null,
        roles: json['roles'].cast<String>(),
      );
}

class CurrentUserImageModel {
  String? imageUrl;

  CurrentUserImageModel({this.imageUrl});

  CurrentUserImageModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    return data;
  }
}
