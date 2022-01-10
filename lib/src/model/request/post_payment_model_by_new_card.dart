
class PostPaymentByNewCardModel {
  PostPaymentByNewCardModel({
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
