
/// Iyzico endpointinde kullanılan Ödeme id sini çekmek için kullanılmakta
class GetPaymentIdModel {
  GetPaymentIdModel({
    this.orderId,
    this.userId,
  });

  int? orderId;
  int? userId;

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "user_id": userId,
      };
}
