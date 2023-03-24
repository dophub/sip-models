/// Iyzico eski kartla ödeme
class PostPaymentBySavedCardIyzicoModel {
  PostPaymentBySavedCardIyzicoModel({
    this.cardId,
    this.useThreeD,
  });

  String? cardId;
  bool? useThreeD;

  Map<String, dynamic> toJson() =>
      {
        "card_id": cardId,
        "useThreeD": useThreeD,
      };
}

/// Paycell eski kartla ödeme
class PostPayModel {
  PostPayModel({
    this.orderId,
    this.payDeskAmount,
    this.cardId,
    this.paymentMethod,
    this.orderNote
    this.useThreeD
  });

  int? orderId;
  bool? payDeskAmount;
  String? cardId;
  String? paymentMethod;
  String? orderNote;
  bool? useThreeD;

  Map<String, dynamic> toJson() =>
      {
        "payment_method": paymentMethod,
        "order_note": orderNote,
        "order_id": orderId,
        "pay_desk_amount": payDeskAmount,
        "cardId": cardId,
        "use_three_d": useThreeD,
      };
}
