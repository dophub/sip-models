
/// Kullanıcı bilgileri olmadan ilk açılışta Get ettiğimiz token için kullanılmakta
class TokenModel {
  TokenModel({
    this.accessToken,
  });

  String? accessToken;

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        accessToken: json["access_token"],
      );
}
