import 'package:background_json_parser/json_parser.dart';

/// Iyzico kullanıcı kayıtlı kartları çekmek için kullanılmakta
class CardsIyzicoModel extends IBaseModel<CardsIyzicoModel> {
  CardsIyzicoModel({
    this.id,
    this.title,
    this.cardNo,
    this.family,
    this.association,
  });

  String? id;
  String? title;
  String? cardNo;
  String? family;
  String? association;

  @override
  fromJson(Map<String, dynamic> json) => CardsIyzicoModel(
        id: json["id"],
        title: json["title"],
        cardNo: json["cardno"],
        family: json["family"],
        association: json["association"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

/// Paycell kullanıcı kayıtlı kartları çekmek için kullanılmakta

class CardsModel {
  CardsModel({
    this.eulaId,
    this.cardList,
  });

  String? eulaId;
  List<CardList>? cardList;

  factory CardsModel.fromJson(Map<String, dynamic> json) => CardsModel(
        eulaId: json["eulaId"],
        cardList: List<CardList>.from(json["cardList"].map((x) => CardList.fromJson(x))),
      );
}

class CardList {
  CardList({
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

  factory CardList.fromJson(Map<String, dynamic> json) => CardList(
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
      );
}
