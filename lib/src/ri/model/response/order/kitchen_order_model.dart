import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/enum/id_enum.dart';
import 'package:sip_models/src/model/request/order_model.dart';
import '../other/printer_queue_response_model.dart';

class KitchenOrderModel extends IBaseModel<KitchenOrderModel> {
  int? orderId;
  String? kitchenId;
  String? firstName;
  String? lastName;
  DateTime? orderDate;
  List<KitchenOrderProductModel>? products;
  KitchenOrderInfoModel? orderInfo;
  int counter = 0; // Siparişin üstüne geçen süreyi belirtir
  String? serviceDeliveryTypeId;

  KitchenOrderModel({
    this.orderId,
    this.kitchenId,
    this.firstName,
    this.lastName,
    this.orderDate,
    this.products,
    this.orderInfo,
    this.serviceDeliveryTypeId,
  });

  @override
  fromJson(Map<String, dynamic> json) => KitchenOrderModel(
        orderId: json["order_id"],
        kitchenId: json["kitchen_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        orderDate: DateTime.parse(json["order_date"]),
        orderInfo: KitchenOrderInfoModel.fromJson(json["order_info"]),
        products: json["products"] == null
            ? []
            : List<KitchenOrderProductModel>.from(
                json["products"].map(
                  (x) => KitchenOrderProductModel.fromJson(x),
                ),
              ),
        serviceDeliveryTypeId: json["service_delivery_type_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "kitchen_id": kitchenId,
        "first_name": firstName,
        "last_name": lastName,
        "order_date": orderDate?.toIso8601String(),
        "order_info": orderInfo?.toJson(),
        "products": List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class KitchenOrderInfoModel {
  int? numberOfService;
  String? tableName;
  String? orderPointId;
  String? paymentModelId;

  KitchenOrderInfoModel({
    this.numberOfService,
    this.tableName,
    this.orderPointId,
    this.paymentModelId,
  });

  factory KitchenOrderInfoModel.fromJson(Map<String, dynamic> json) => KitchenOrderInfoModel(
        numberOfService: json["number_of_service"],
        tableName: json["table_name"],
        orderPointId: json["order_point_id"],
        paymentModelId: json["payment_model_id"],
      );

  Map<String, dynamic> toJson() => {
        "number_of_service": numberOfService,
        "table_name": tableName,
        "order_point_id": orderPointId,
        "payment_model_id": paymentModelId,
      };
}

class KitchenOrderProductModel {
  String? productName;
  int? productId;
  String? itemTypeId;
  int? count;
  String? itemNote;
  String? statusId;
  List<OrderOption>? options;

  KitchenOrderProductModel({
    this.productName,
    this.productId,
    this.itemTypeId,
    this.count,
    this.itemNote,
    this.options,
    this.statusId,
  });

  PrinterQueueResponseOrderOrderItemModel toPrinterQueueResponseOrderOrderItemModel() =>
      PrinterQueueResponseOrderOrderItemModel(
        id: productId,
        count: count,
        status: PrinterQueueResponseOrderOrderItemStatusModel(
          statusCode: OrderItemStatusId.INKITCHEN.name,
          statusName: 'Hazırlanıyor',
        ),
        options: options,
        itemNote: itemNote,
        itemTitle: productName,
        totalPrice: null,
        itemTypeId: itemTypeId,
      );

  factory KitchenOrderProductModel.fromJson(Map<String, dynamic> json) {
    return KitchenOrderProductModel(
      productName: json["product_name"],
      productId: json["product_id"],
      itemTypeId: json["item_type_id"],
      count: json["count"],
      itemNote: json["item_note"],
      statusId: json["status_id"],
      options: List<OrderOption>.from(json["options"].map((x) => OrderOption.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_id": productId,
        "item_type_id": itemTypeId,
        "count": count,
        "item_note": itemNote,
        "status_id": statusId,
        "options": options != null ? List<dynamic>.from(options!.map((x) => x.toJson())) : null,
      };
}
