import '../../../../model/request/order_model.dart';

class OrderItemsModel {
  List<OrderItem>? orderItems;
  List<OrderItem>? serviceItems;

  OrderItemsModel({
    this.orderItems,
    this.serviceItems,
  });

  factory OrderItemsModel.fromJson(Map<String, dynamic> json) => OrderItemsModel(
        orderItems: json["orderItems"] == null
            ? []
            : List<OrderItem>.from(json["orderItems"]!.map((x) => OrderItem.fromJson(x))),
        serviceItems: json["serviceItems"] == null
            ? []
            : List<OrderItem>.from(json["serviceItems"]!.map((x) => OrderItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "orderItems": orderItems == null ? [] : List<dynamic>.from(orderItems!.map((x) => x.toJson())),
        "serviceItems": serviceItems == null ? [] : List<dynamic>.from(serviceItems!.map((x) => x)),
      };
}
