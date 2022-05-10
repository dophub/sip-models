
/// response Error Model
class ResponseErrorModel {
  ResponseErrorModel({
    this.detail,
  });

  List<Detail>? detail;

  factory ResponseErrorModel.fromJson(Map<String, dynamic> json) => ResponseErrorModel(
        detail: List<Detail>.from(json["detail"].map((x) => Detail.fromJson(x))),
      );
}

class Detail {
  Detail({
    this.loc,
    this.msg,
    this.type,
  });

  List<String>? loc;
  String? msg;
  String? type;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        loc: List<String>.from(json["loc"].map((x) => x)),
        msg: json["msg"],
        type: json["type"],
      );
}
