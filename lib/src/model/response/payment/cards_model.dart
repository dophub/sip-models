import 'package:sip_models/src/model/widget/sections_widget_model.dart';

abstract class PaymentModel {}

/// Paycell kullanıcı kayıtlı kartları çekmek için kullanılmakta
class CardsModel {
  CardsModel({
    this.eulaId,
    this.cardList,
    this.turkcellMobilePayment,
    this.payeCard,
  });

  String? eulaId;
  List<CardModel>? cardList;
  CardModel? payeCard;
  TurkcellMobilePayment? turkcellMobilePayment;

  factory CardsModel.fromJson(Map<String, dynamic> json) => CardsModel(
        eulaId: json["eulaId"],
        cardList: List<CardModel>.from(json["cardList"].map((x) => CardModel.fromJson(x))),
        turkcellMobilePayment:
            json['mobilePayment'] == null ? null : TurkcellMobilePayment.fromJson(json['mobilePayment']),
        payeCard: json['payeCard'] == null ? null : CardModel.fromJson(json['payeCard']),
      );
}

class CardModel extends ISectionsWidgetModel with PaymentModel {
  CardModel({
    this.cardId,
    this.maskedCardNo,
    this.alias,
    this.cardBrand,
    this.isDefault,
    this.isExpired,
    this.showEulaId,
    this.isThreeDValidated,
    this.isOtpValidated,
    this.activationDate,
    this.cardType,
    this.cardLogo,
  });

  String? cardId;
  String? maskedCardNo;
  String? alias;
  String? cardBrand;
  bool? isDefault;
  bool? isExpired;
  bool? showEulaId;
  bool? isThreeDValidated;
  bool? isOtpValidated;
  DateTime? activationDate;
  String? cardType;
  String? cardLogo;

  factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        cardId: json["cardId"],
        maskedCardNo: json["maskedCardNo"],
        alias: json["alias"],
        cardBrand: json["cardBrand"],
        isDefault: json["isDefault"],
        isExpired: json["isExpired"],
        showEulaId: json["showEulaId"],
        isThreeDValidated: json["isThreeDValidated"],
        isOtpValidated: json["isOTPValidated"],
        activationDate: DateTime.parse(json["activationDate"]),
        cardType: json["cardType"],
        cardLogo: json["card_logo"],
      );

  @override
  String get getId => throw UnimplementedError();

  @override
  String get getName => alias! + ' - ' + maskedCardNo!;

  @override
  double? get getPrice => null;

  @override
  bool get getStatus => throw UnimplementedError();

  @override
  set setStatus(bool value) {
    throw UnimplementedError();
  }
}

class TurkcellMobilePayment with PaymentModel {
  TurkcellMobilePayment({
    this.cardLogo,
    this.cardLimit,
    this.isAvailable,
    this.eulaId,
    this.contractShow,
    this.contractUrl,
  });

  String? cardLogo;
  double? cardLimit;
  bool? isAvailable;
  String? eulaId;
  bool? contractShow;
  String? contractUrl;

  factory TurkcellMobilePayment.fromJson(Map<String, dynamic> json) => TurkcellMobilePayment(
        cardLogo: json["card_logo"],
        cardLimit: json["card_limit"].toDouble(),
        isAvailable: json["is_available"],
        eulaId: json["eulaId"],
        contractShow: json["contract_show"],
        contractUrl: json["contract_url"],
      );

  Map<String, dynamic> toJson() => {
        "card_logo": cardLogo,
        "card_limit": cardLimit,
        "is_available": isAvailable,
        "eulaId": eulaId,
        "contract_show": contractShow,
        "contract_url": contractUrl,
      };
}
