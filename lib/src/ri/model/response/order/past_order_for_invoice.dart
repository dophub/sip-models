import 'package:background_json_parser/background_json_parser.dart';

class PastOrderForInvoiceModel extends IBaseModel<PastOrderForInvoiceModel> {
  PastOrderForInvoiceModel({
    this.id,
    this.customerName,
    this.totalAmount,
    this.orderNumber,
    this.revisionNumber,
    this.orderPointId,
    this.recordDate,
    this.title,
    this.deliveryDate,
    this.status,
    this.address,
    this.tableInfo,
  });

  int? id;
  String? customerName;
  double? totalAmount;
  String? orderNumber;
  String? revisionNumber;
  String? orderPointId;
  String? recordDate;
  String? title;
  String? deliveryDate;
  Status? status;
  PastOrderForInvoiceAddressModel? address;
  TableInfo? tableInfo;

  @override
  PastOrderForInvoiceModel fromJson(Map<String, dynamic> json) {
    return PastOrderForInvoiceModel(
      id: json['id'],
      customerName: json['customer_name'],
      totalAmount: json['total_amount'].toDouble(),
      orderNumber: json['order_number'],
      revisionNumber: json['revision_number'],
      orderPointId: json['order_point_id'],
      recordDate: json['record_date'],
      title: json['title'],
      deliveryDate: json['delivery_date'],
      status: Status.fromJson(json['status']),
      address: PastOrderForInvoiceAddressModel.fromJson(json['address']),
      tableInfo: TableInfo.fromJson(json['table_info']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class PastOrderForInvoiceAddressModel {
  PastOrderForInvoiceAddressModel({
    this.districtName,
    this.neighborhoodName,
  });

  String? districtName;
  String? neighborhoodName;

  factory PastOrderForInvoiceAddressModel.fromJson(Map<String, dynamic> json) => PastOrderForInvoiceAddressModel(
    districtName: json['district_name'],
    neighborhoodName: json['neighborhood_name'],
  );

  Map<String, dynamic> toJson() => {
    'district_name': districtName,
    'neighborhood_name': neighborhoodName,
  };
}

class Status {
  Status({
    this.orderStatusCode,
    this.orderStatusName,
    this.orderStatusGroupId,
  });

  String? orderStatusCode;
  String? orderStatusName;
  String? orderStatusGroupId;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    orderStatusCode: json['order_status_code'],
    orderStatusName: json['order_status_name'],
    orderStatusGroupId: json['order_status_group_id'],
  );

  Map<String, dynamic> toJson() => {
    'order_status_code': orderStatusCode,
    'order_status_name': orderStatusName,
    'order_status_group_id': orderStatusGroupId,
  };
}

class TableInfo {
  TableInfo({
    this.stationCode,
    this.stationName,
    this.tableCode,
    this.tableName,
  });

  dynamic stationCode;
  dynamic stationName;
  dynamic tableCode;
  dynamic tableName;

  factory TableInfo.fromJson(Map<String, dynamic> json) => TableInfo(
    stationCode: json['station_code'],
    stationName: json['station_name'],
    tableCode: json['table_code'],
    tableName: json['table_name'],
  );

  Map<String, dynamic> toJson() => {
    'station_code': stationCode,
    'station_name': stationName,
    'table_code': tableCode,
    'table_name': tableName,
  };
}
