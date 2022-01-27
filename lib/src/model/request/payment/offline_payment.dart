class OfflinePayment {
  OfflinePayment({
    this.paymentMethod,
    this.orderId,
    this.payDeskAmount,
    this.orderNote,
  });

  String? paymentMethod;
  int? orderId;
  bool? payDeskAmount;
  String? orderNote;

  Map<String, dynamic> toJson() => {
        "payment_method": paymentMethod,
        "order_id": orderId,
        "pay_desk_amount": payDeskAmount,
        "order_note": orderNote,
      };
}
