class UpdatePriceRequestModel {
  UpdatePriceRequestModel({
    required this.productId,
    required this.prices,
    required this.itemTypeId,
  });

  int productId;
  List<UpdatePriceListRequestModel> prices;
  String itemTypeId;

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "prices": prices.map((e) => e.toJson()),
        "item_type_id": itemTypeId,
      };
}

class UpdatePriceListRequestModel {
  UpdatePriceListRequestModel({
    required this.price,
    required this.orderDeliveryTypeId,
  });

  double price;
  String orderDeliveryTypeId;

  Map<String, dynamic> toJson() => {
        "price": price,
        "order_delivery_type_id": orderDeliveryTypeId,
      };
}
