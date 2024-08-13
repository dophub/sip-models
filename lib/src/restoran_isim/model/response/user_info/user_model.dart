import 'package:background_json_parser/background_json_parser.dart';

import 'current_user_model.dart';

class UserModel extends IBaseModel<UserModel> {
  /// Türkcell Hızlı Girişte OTP kodu doğru girildiğinde çekilen kullanıcı bilgileri
  /// [complete] Kullanıcı kayıdını önceden tamamlamışmı tamamlamamış mı
  final bool? complete;
  final CurrentUserModel? data;
  final String? token;

  UserModel({this.complete, this.data, this.token});

  @override
  fromJson(Map<String, dynamic> json) => UserModel(
        complete: json['complete'] as bool?,
        data: json['data'] == null ? null : CurrentUserModel().fromJson(json['data'] as Map<String, dynamic>),
        token: json['token'] as String?,
      );

  @override
  Map<String, dynamic> toJson() => {
        'complete': complete,
        'data': data?.toJson(),
        'token': token,
      };
}
