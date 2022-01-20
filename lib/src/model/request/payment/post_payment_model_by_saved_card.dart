
/// Iyzico eski kartla ödeme
class PostPaymentBySavedCardIyzicoModel {
  PostPaymentBySavedCardIyzicoModel({
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

/// Paycell eski kartla ödeme
class PostPaymentBySavedCardModel {
  PostPaymentBySavedCardModel({
    this.orderId,
    this.payDeskAmount,
    this.cardId,
  });

  int? orderId;
  bool? payDeskAmount;
  String? cardId;

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "pay_desk_amount": payDeskAmount,
        "cardId": cardId,
      };
}
