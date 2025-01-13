import 'package:background_json_parser/background_json_parser.dart';

class UserDiscountCardModel extends IBaseModel<UserDiscountCardModel> {
  String? title;
  String? number;
  DateTime? expiredDate;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserDiscountCardModel({
    this.title,
    this.number,
    this.expiredDate,
    this.createdAt,
    this.updatedAt,
  });

  @override
  fromJson(Map<String, dynamic> json) => UserDiscountCardModel(
        title: json["title"],
        number: json["number"],
        expiredDate: json["expired_date"] == null ? null : DateTime.tryParse(json["expired_date"]),
        createdAt: json["created_at"] == null ? null : DateTime.tryParse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.tryParse(json["updated_at"]),
      );

  @override
  Map<String, dynamic> toJson() => {
        "title": title,
        "number": number,
        "expired_date": expiredDate?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
