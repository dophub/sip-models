class UpdateProductRequest {
  UpdateProductRequest({
    required this.productName,
    required this.productId,
    required this.isActive,
    required this.isSell,
    required this.itemTypeId,
    required this.price,
  });

  String productName;
  int productId;
  bool isActive;
  bool isSell;
  String itemTypeId;
  double price;

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "is_active": isActive,
        "is_sell": isSell,
        "item_type_id": itemTypeId,
        "price": price,
      };
}
