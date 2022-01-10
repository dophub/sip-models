
class PostRecommendationsModel {
  PostRecommendationsModel({
    this.dealerId,
    this.sessionId,
    this.latlng,
    this.orderId,
    this.tableServiceId,
  });

  int? dealerId;
  String? sessionId;
  String? latlng;
  String? orderId;
  String? tableServiceId;

  Map<String, dynamic> toJson() => {
        "dealer_id": dealerId,
        "session_id": sessionId,
        "latlng": latlng,
        "order_id": orderId,
        "table_service_id": tableServiceId,
      };
}
