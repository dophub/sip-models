import 'package:background_json_parser/background_json_parser.dart';

class UserDiscountCardModel extends IBaseModel<UserDiscountCardModel> {
  String? title;
  String? number;
  UserDiscountCardDealerModel? dealer;
  UserDiscountCardDealerModel? brand;
  DateTime? expiredDate;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserDiscountCardModel({
    this.title,
    this.number,
    this.dealer,
    this.brand,
    this.expiredDate,
    this.createdAt,
    this.updatedAt,
  });

  @override
  fromJson(Map<String, dynamic> json) => UserDiscountCardModel(
        title: json["title"],
        number: json["number"],
        dealer: json["dealer"] == null ? null : UserDiscountCardDealerModel.fromJson(json["dealer"]),
        brand: json["brand"] == null ? null : UserDiscountCardDealerModel.fromJson(json["brand"]),
        expiredDate: json["expired_date"] == null ? null : DateTime.tryParse(json["expired_date"]),
        createdAt: json["created_at"] == null ? null : DateTime.tryParse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.tryParse(json["updated_at"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "title": title,
        "number": number,
        "dealer": dealer?.toJson(),
        "brand": brand?.toJson(),
        "expired_date": expiredDate?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class UserDiscountCardDealerModel {
  int? id;
  String? name;

  UserDiscountCardDealerModel({
    this.id,
    this.name,
  });

  factory UserDiscountCardDealerModel.fromJson(Map<String, dynamic> json) => UserDiscountCardDealerModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
