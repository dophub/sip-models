class SendOTpForLoginResponseModel {
  SendOTpForLoginResponseModel({
    this.transactionId,
    this.completed,
  });

  String? transactionId;
  bool? completed;

  factory SendOTpForLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      SendOTpForLoginResponseModel(
        transactionId: json["transaction_id"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "transaction_id": transactionId,
        "completed": completed,
      };
}
