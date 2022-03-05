class VerificationOtpForRegisterModel {
  VerificationOtpForRegisterModel({
    this.mobilePhone,
    this.ssoId,
    this.verificationCode,
  });

  String? mobilePhone;
  String? ssoId;
  String? verificationCode;

  factory VerificationOtpForRegisterModel.fromJson(Map<String, dynamic> json) => VerificationOtpForRegisterModel(
    mobilePhone: json["mobile_phone"],
    ssoId: json["sso_id"],
    verificationCode: json["verification_code"],
  );

  Map<String, dynamic> toJson() => {
    "mobile_phone": mobilePhone,
    "sso_id": ssoId,
    "verification_code": verificationCode,
  };
}


class VerificationOtpForLoginModel {
  VerificationOtpForLoginModel({
    this.transactionId,
    this.otpCode,
  });

  String? transactionId;
  String? otpCode;

  factory VerificationOtpForLoginModel.fromJson(Map<String, dynamic> json) => VerificationOtpForLoginModel(
    transactionId: json["transaction_id"],
    otpCode: json["otp_code"],
  );

  Map<String, dynamic> toJson() => {
    "transaction_id": transactionId,
    "otp_code": otpCode,
  };
}
