import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

abstract class IPaymentType {
  String get getName;
}

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
        cardList: json["cardList"] == null ? null : CardModel().jsonParser(json['cardList']),
        turkcellMobilePayment:
            json['mobilePayment'] == null ? null : TurkcellMobilePayment.fromJson(json['mobilePayment']),
        payeCard: json['payeCard'] == null ? null : CardModel().jsonParser(json['payeCard']),
      );
}

class NewCard implements IPaymentType {
  final PaymentTypesModel paymentType;

  NewCard(this.paymentType);

  @override
  String get getName => paymentType.getName;
}

class CardModel extends IBaseModel<CardModel> implements IPaymentType {
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
    this.cardType,
    this.cardLogo,
    this.virtualType,
    this.virtualTypeName,
    this.virtualId,
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
  String? cardType;
  String? cardLogo;
  String? virtualType;
  String? virtualTypeName;
  String? virtualId;

  @override
  fromJson(Map<String, dynamic> json) => CardModel(
        cardId: json["cardId"],
        maskedCardNo: json["maskedCardNo"],
        alias: json["alias"],
        cardBrand: json["cardBrand"],
        isDefault: json["isDefault"],
        isExpired: json["isExpired"],
        showEulaId: json["showEulaId"],
        isThreeDValidated: json["isThreeDValidated"],
        isOtpValidated: json["isOTPValidated"],
        cardType: json["cardType"],
        cardLogo: json["card_logo"],
        virtualType: json["virtual_type"],
        virtualTypeName: json["virtual_type_name"],
        virtualId: json["virtual_id"],
      );

  @override
  String get getName => '${alias!} - ${maskedCardNo!}';

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class TurkcellMobilePayment implements IPaymentType {
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

  @override
  String get getName => '';
}
