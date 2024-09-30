class OrderDealerInfoModel {
  OrderDealerInfoModel({
    this.dealerId,
    this.dealerName,
  });

  final int? dealerId;
  final String? dealerName;

  factory OrderDealerInfoModel.fromJson(Map<String, dynamic> json) => OrderDealerInfoModel(
    dealerId: json['dealer_id'],
    dealerName: json['dealer_name'],
  );

  Map<String, dynamic> toJson() => {
    'dealer_id': dealerId,
    'dealer_name': dealerName,
  };
}
