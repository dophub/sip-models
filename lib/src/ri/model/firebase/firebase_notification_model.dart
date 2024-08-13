class FirebaseNotificationModel {
  String? notificationKey;
  String? actionType;
  String? message;
  int? orderId;
  String? tableId;
  String? orderType;
  double? total;
  String? type;
  String? updateDate;

  FirebaseNotificationModel({
    this.notificationKey,
    this.actionType,
    this.message,
    this.orderId,
    this.tableId,
    this.orderType,
    this.total,
    this.type,
    this.updateDate,
  });

  factory FirebaseNotificationModel.fromJson(Map<String, dynamic> json) {
    return FirebaseNotificationModel(
      notificationKey: json['notification_key'] as String?,
      actionType: json['action_type'] as String?,
      message: json['message'] as String?,
      orderId: json['order_id'] as int?,
      tableId: json['table_id'] as String?,
      orderType: json['order_type'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      type: json['type'] as String?,
      updateDate: json['update_date'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'notification_key': notificationKey,
        'action_type': actionType,
        'message': message,
        'order_id': orderId,
        'table_id': tableId,
        'order_type': orderType,
        'total': total,
        'type': type,
        'update_date': updateDate,
      };
}
