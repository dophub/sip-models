class OrderCountModel {
  int? getinCount;
  int? tableCount;
  int? totalCount;
  double? totalAmount;
  double? tipAmount;
  int? takeOutCount;
  int? selfServiceCount;
  int? orderPendingCount;

  OrderCountModel({
    this.getinCount,
    this.tableCount,
    this.totalCount,
    this.totalAmount,
    this.takeOutCount,
    this.selfServiceCount,
    this.tipAmount,
    this.orderPendingCount,
  });

  factory OrderCountModel.fromJson(Map<String, dynamic> json) {
    return OrderCountModel(
      getinCount: json['getin_count'],
      tableCount: json['table_count'],
      totalCount: json['total_count'],
      tipAmount: json['total_tip_amount']?.toDouble(),
      totalAmount: json['total_amount']?.toDouble(),
      takeOutCount: json['take_out_count'],
      selfServiceCount: json['self_service_count'],
      orderPendingCount: json['order_pending_count'],
    );
  }

  Map<String, dynamic> toJson() => {
        'getin_count': getinCount,
        'table_count': tableCount,
        'total_count': totalCount,
        'total_amount': totalAmount,
        'take_out_count': takeOutCount,
        "self_service_count": selfServiceCount,
        "order_pending_count": orderPendingCount
      };
}
