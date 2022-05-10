import 'package:background_json_parser/json_parser.dart';

class FastLoginErrorModel extends IBaseModel<FastLoginErrorModel> {
  FastLoginErrorModel({
    this.loc,
    this.message,
    this.type,
  });

  List<String>? loc;
  String? message;
  String? type;

  @override
  fromJson(Map<String, dynamic> json) => FastLoginErrorModel(
        loc: List<String>.from(json["loc"].map((x) => x)),
        message: json["message"],
        type: json["type"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
