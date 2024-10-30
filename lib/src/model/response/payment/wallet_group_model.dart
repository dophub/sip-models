import 'package:background_json_parser/background_json_parser.dart';

class WalletGroupModel extends IBaseModel<WalletGroupModel> {
  final int? id;
  final String? title;
  final String? type;

  WalletGroupModel({
    this.id,
    this.title,
    this.type,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
      };
}
