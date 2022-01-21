
class PaycellContractModel {
  PaycellContractModel({
    this.eulaId,
    this.content,
  });

  int? eulaId;
  String? content;

  factory PaycellContractModel.fromJson(Map<String, dynamic> json) => PaycellContractModel(
    eulaId: json["eulaId"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "eulaId": eulaId,
    "content": content,
  };
}
