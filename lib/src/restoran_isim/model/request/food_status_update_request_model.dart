class FoodStatusUpdateRequestModel {
  FoodStatusUpdateRequestModel({
    required this.products,
  });

  List<Product> products;

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.productId,
    required this.isActive,
    required this.isSell,
    required this.itemTypeId,
    required this.selfService,
  });

  int productId;
  bool isActive;
  bool isSell;
  bool selfService;
  String itemTypeId;

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "is_active": isActive,
        "is_sell": isSell,
        "item_type_id": itemTypeId,
        "self_service":selfService,
      };
}
