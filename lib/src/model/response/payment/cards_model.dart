import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

abstract class IPaymentType {
  String get getName;
  String? get getPaymentType;
}

/// Paycell kullanıcı kayıtlı kartları çekmek için kullanılmakta
class CardsModel {
  CardsModel({
    this.eulaId,
    this.cardList,
    this.payeCard,
  });

  String? eulaId;
  List<CardModel>? cardList;
  CardModel? payeCard;

  factory CardsModel.fromJson(Map<String, dynamic> json) => CardsModel(
        eulaId: json["eulaId"],
        cardList: json["cardList"] == null ? null : CardModel().jsonParser(json['cardList']),
        payeCard: json['payeCard'] == null ? null : CardModel().jsonParser(json['payeCard']),
      );
}

class NewCard implements IPaymentType {
  final PaymentTypesModel paymentType;

  NewCard(this.paymentType);

  @override
  String get getName => paymentType.getName;

  @override
  String? get getPaymentType => paymentType.paymentTypeCode;
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

  @override
  String? get getPaymentType => virtualType;
}

