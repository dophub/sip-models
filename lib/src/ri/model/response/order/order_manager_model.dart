import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/response/address/address_by_location.dart';


class OrderManagerModel extends IBaseModel<OrderManagerModel> {
  int? id;
  String? customerName;
  double? totalAmount;
  String? orderNumber;
  String? revisionNumber;
  String? orderPointId;
  DateTime? recordDate;
  DateTime? deliveryDate;
  String? title;
  OrderManagerStatusModel? status;
  AddressByLocation? address;

  OrderManagerModel({
    this.id,
    this.customerName,
    this.totalAmount,
    this.orderNumber,
    this.revisionNumber,
    this.orderPointId,
    this.recordDate,
    this.deliveryDate,
    this.title,
    this.status,
    this.address,
  });

  @override
  fromJson(Map<String, dynamic> json) => OrderManagerModel(
        id: json['id'] as int?,
        customerName: json['customer_name'] as String? ?? 'Diğer Misafir',
        totalAmount: json['total_amount'] as double?,
        orderNumber: json['order_number'] as String?,
        revisionNumber: json['revision_number'] as String?,
        orderPointId: json['order_point_id'] as String?,
        recordDate: json['record_date'] == null ? null : DateTime.parse(json['record_date'] as String),
        deliveryDate: json['delivery_date'] == null ? null : DateTime.parse(json['record_date'] as String),
        title: json['title'] as String?,
        status: json['status'] == null ? null : OrderManagerStatusModel.fromJson(json['status'] as Map<String, dynamic>),
        address: json['address'] == null ? null : AddressByLocation.fromJson(json['address'] as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'customer_name': customerName,
        'total_amount': totalAmount,
        'order_number': orderNumber,
        'revision_number': revisionNumber,
        'order_point_id': orderPointId,
        'record_date': recordDate?.toIso8601String(),
        'delivery_date': recordDate?.toIso8601String(),
        'title': title,
        'status': status?.toJson(),
        'address': address?.toJson(),
      };
}


class OrderManagerStatusModel {
  String? orderStatusCode;
  String? orderStatusName;
  String? orderStatusGroupId;

  OrderManagerStatusModel({
    this.orderStatusCode,
    this.orderStatusName,
    this.orderStatusGroupId,
  });

  factory OrderManagerStatusModel.fromJson(Map<String, dynamic> json) => OrderManagerStatusModel(
    orderStatusCode: json['order_status_code'] as String?,
    orderStatusName: json['order_status_name'] as String?,
    orderStatusGroupId: json['order_status_group_id'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'order_status_code': orderStatusCode,
    'order_status_name': orderStatusName,
    'order_status_group_id': orderStatusGroupId,
  };
}
