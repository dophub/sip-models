import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/model/request/order_model.dart';
import 'package:sip_models/src/model/response/other/images_model.dart';
import 'package:sip_models/src/model/response/product/product_detail_model.dart';
import '../../../../enum/id_enum.dart';
import 'marketplace_order_model.dart';

class TableOrderModel extends IBaseModel<TableOrderModel> with ActiveOrderModelExtent {
  TableOrderModel({
    int? id,
    this.infoPhoneNumber,
    this.numberOfService,
    this.status,
    this.items,
    this.serviceId,
    this.customer,
    this.serviceDeliveryTypeId,
    this.updateDate,
    this.isSync,
    this.orderPointId,
    this.sessionPoint,
    this.tableDetail,
    this.paymentModelId,
    this.clientPointId,
    this.totalAmount,
    this.addressName,
    this.dealer,
  }) {
    super.id = id;
  }

  int? serviceId;
  DateTime? updateDate;
  String? infoPhoneNumber;
  int? numberOfService;
  TableOrderCustomerModel? customer;
  ItemStatus? status;
  List<TableOrderItemModel>? items;
  String? serviceDeliveryTypeId;
  bool? isSync;
  String? orderPointId;
  MarketplaceOrderOrderPointModel? sessionPoint;
  _TableDetailModel? tableDetail;
  String? paymentModelId;
  String? clientPointId;
  double? totalAmount; // sadece RI depo kullanılmakta
  String? addressName; // sadece RI depo kullanılmakta
  _DealerModel? dealer; // hangi işletmeye sipariş verilmiş

  @override
  Map<String, dynamic> toJson() => throw UnimplementedError();

  @override
  TableOrderModel fromJson(Map<String, dynamic> json) => TableOrderModel(
        id: json["id"],
        serviceId: json["service_id"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
        infoPhoneNumber: json["info_phone_number"],
        numberOfService: json["number_of_service"],
        status: json["status"] == null ? null : ItemStatus.fromJson(json["status"]),
        customer: json["customer"] == null ? null : TableOrderCustomerModel.fromJson(json["customer"]),
        items: json["items"] == null
            ? []
            : List<TableOrderItemModel>.from(json["items"]!.map((x) => TableOrderItemModel.fromJson(x))),
        serviceDeliveryTypeId: json["service_delivery_type_id"],
        isSync: json["is_sync"],
        orderPointId: OrderPoint.TABLE.name,
        sessionPoint:
            json["session_point"] == null ? null : MarketplaceOrderOrderPointModel.fromJson(json["session_point"]),
        tableDetail: json["tabledetail"] == null ? null : _TableDetailModel.fromJson(json["tabledetail"]),
        paymentModelId: json["payment_model_id"],
        clientPointId: json["client_point_id"],
        dealer: json['dealer'] == null ? null : _DealerModel.fromMap(json['dealer']),
      );
}

class TableOrderItemModel {
  TableOrderItemModel({
    this.id,
    this.productId,
    this.count,
    this.itemNote,
    this.itemTitle,
    this.itemTypeId,
    this.kitchenId,
    this.makeTime,
    this.calorie,
    this.status,
    this.options,
    this.images,
  });

  int? id;
  int? productId;
  int? count;
  String? itemNote;
  String? itemTitle;
  String? itemTypeId;
  String? kitchenId;
  int? makeTime;
  int? calorie;
  ItemStatus? status;
  List<OptionModel>? options;
  List<ImagesModel>? images;

  factory TableOrderItemModel.fromJson(Map<String, dynamic> json) => TableOrderItemModel(
        id: json["id"],
        productId: json["product_id"],
        count: json["count"],
        itemNote: json["item_note"],
        itemTitle: json["item_title"],
        itemTypeId: json["item_type_id"],
        kitchenId: json["kitchen_id"],
        makeTime: json["make_time"],
        calorie: json["calorie"],
        status: json["status"] == null ? null : ItemStatus.fromJson(json["status"]),
        options:
            json["options"] == null ? [] : List<OptionModel>.from(json["options"]!.map((x) => OptionModel.fromJson(x))),
        images:
            json["images"] == null ? [] : List<ImagesModel>.from(json["images"]!.map((x) => ImagesModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "count": count,
        "item_note": itemNote,
        "item_title": itemTitle,
        "item_type_id": itemTypeId,
        "kitchen_id": kitchenId,
        "make_time": makeTime,
        "calorie": calorie,
        "status": status?.toJson(),
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
        "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x.toJson())),
      };
}

class TableOrderCustomerModel {
  TableOrderCustomerModel({
    this.nameSurname,
  });

  String? nameSurname;

  factory TableOrderCustomerModel.fromJson(Map<String, dynamic> json) => TableOrderCustomerModel(
        nameSurname: json["name_surname"],
      );

  Map<String, dynamic> toJson() => {
        "name_surname": nameSurname,
      };
}

mixin class ActiveOrderModelExtent {
  int counter = 0; // Siparişin üstüne geçen süreyi belirtir
  bool? isGettingReadyLocalStatus; // local de kullanılmakte eğer sipariş 3 part pos a iletilmemiş ise
  bool? tempUnSync; // local de kullanılmakte
  int? id;

  ActiveOrderModelExtent();
}

class _TableDetailModel {
  int? id;
  String? tableCode;
  String? tableName;
  String? serviceNumber;
  String? paymentModelId;

  _TableDetailModel({
    this.id,
    this.tableCode,
    this.tableName,
    this.serviceNumber,
    this.paymentModelId,
  });

  factory _TableDetailModel.fromJson(Map<String, dynamic> json) => _TableDetailModel(
        id: json["id"],
        tableCode: json["table_code"],
        tableName: json["table_name"],
        serviceNumber: json["service_number"],
        paymentModelId: json["payment_model_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "table_code": tableCode,
        "table_name": tableName,
        "service_number": serviceNumber,
        "payment_model_id": paymentModelId,
      };
}

class _DealerModel {
  _DealerModel({
    this.dealerId,
    this.dealerName,
  });

  final int? dealerId;
  final String? dealerName;

  factory _DealerModel.fromMap(Map<String, dynamic> json) => _DealerModel(
        dealerId: json['dealer_id'],
        dealerName: json['dealer_name'],
      );

  Map<String, dynamic> toJson() => {
        'dealer_id': dealerId,
        'dealer_name': dealerName,
      };
}
