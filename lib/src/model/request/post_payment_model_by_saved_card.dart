 
class PostPaymentBySavedCardModel {
  PostPaymentBySavedCardModel({
    this.cardId,
    this.useThreeD,
  });

  String? cardId;
  bool? useThreeD;


  Map<String, dynamic> toJson() => {
        "card_id": cardId,
        "useThreeD": useThreeD,
      };
}
