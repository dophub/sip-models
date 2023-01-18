
/// Iyzico yeni kartla ödeme
class PostPaymentByNewCardIyzicoModel {
  PostPaymentByNewCardIyzicoModel({
    this.name,
    this.cardNumber,
    this.month,
    this.year,
    this.cvv,
    this.saveCard,
    this.useThreeD,
    this.title,
  });

  String? name;
  String? cardNumber;
  String? month;
  String? year;
  String? cvv;
  int? saveCard;
  bool? useThreeD;
  String? title;

  Map<String, dynamic> toJson() => {
        "name": name,
        "card_number": cardNumber,
        "month": month,
        "year": year,
        "cvv": cvv,
        "save_card": saveCard,
        "useThreeD": useThreeD,
        "title": title,
      };
}

/// Paycell yeni kartla ödeme
class PostPaymentByNewCardModel {
  PostPaymentByNewCardModel({
    this.orderId,
    this.serviceId,
    this.payDeskAmount,
    this.title,
    this.cardNumber,
    this.month,
    this.year,
    this.cvv,
  });

  int? orderId;
  int? serviceId;
  bool? payDeskAmount;
  String? title;
  String? cardNumber;
  String? month;
  String? year;
  String? cvv;

  factory PostPaymentByNewCardModel.fromJson(Map<String, dynamic> json) =>
      PostPaymentByNewCardModel(
        orderId: json["order_id"],
        serviceId: json["service_id"],
        payDeskAmount: json["pay_desk_amount"],
        title: json["title"],
        cardNumber: json["cardNumber"],
        month: json["month"],
        year: json["year"],
        cvv: json["cvv"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "service_id": serviceId,
        "pay_desk_amount": payDeskAmount,
        "title": title,
        "cardNumber": cardNumber,
        "month": month,
        "year": year,
        "cvv": cvv,
      };
}
