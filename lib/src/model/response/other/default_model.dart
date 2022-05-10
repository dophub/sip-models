class FastLoginErrorModel {
  FastLoginErrorModel({
    this.loc,
    this.message,
    this.type,
  });

  List<String>? loc;
  String? message;
  String? type;

  factory FastLoginErrorModel.fromJson(Map<String, dynamic> json) => FastLoginErrorModel(
        loc: List<String>.from(json["loc"].map((x) => x)),
        message: json["message"],
        type: json["type"],
      );
}
