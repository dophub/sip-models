
/// Kullanıcı Bilgilerini Güncelleme Modeli
class UpdateUserModel {
  UpdateUserModel({
    this.firstName,
    this.lastName,
    this.email,
    this.contractStatus,
  });

  String? firstName;
  String? lastName;
  String? email;
  bool? contractStatus;

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "contract_status": contractStatus,
      };
}
