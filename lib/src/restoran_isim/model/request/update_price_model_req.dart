class UpdatePriceRequestModel {
  UpdatePriceRequestModel({
    required this.productId,
    required this.price,
    required this.itemTypeId,
  });

  int productId;
  double price;
  String itemTypeId;

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "price": price,
        "item_type_id": itemTypeId,
      };
}
