import 'package:background_json_parser/background_json_parser.dart';
import '../campaign/campaign_model.dart';
import 'images_model.dart';
import 'price_model.dart';

/// Menü ye tılandığı zaman Api den gelen response için kullanılmakta
class MenuDetailModel {
  MenuDetailModel({
    this.id,
    this.menuName,
    this.categories,
  });

  int? id;
  String? menuName;
  List<CategoryModel>? categories;

  factory MenuDetailModel.fromJson(Map<String, dynamic> json) => MenuDetailModel(
        id: json["id"],
        menuName: json["menu_name"],
        categories: List<CategoryModel>.from(json["categories"].map((x) => CategoryModel().fromJson(x))),
      );
}

class CategoryModel extends IBaseModel<CategoryModel> {
  CategoryModel({
    this.id,
    this.categoryName,
    this.menuListTypeId,
    this.listOrder,
    this.products,
  });

  CategoryModel.clone(CategoryModel obj)
      : this(
          id: obj.id,
          categoryName: obj.categoryName,
          menuListTypeId: obj.menuListTypeId,
          listOrder: obj.listOrder,
          products: obj.products,
        );

  int? id;
  String? categoryName;
  String? menuListTypeId;
  int? listOrder;
  List<ProductModel>? products;

  @override
  CategoryModel fromJson(Map<dynamic, dynamic> json) => CategoryModel(
        id: json["id"],
        categoryName: json["category_name"],
        menuListTypeId: json["menu_list_type_id"],
        listOrder: json["list_order"],
        products: json["products"] == null
            ? []
            : List<ProductModel>.from(json["products"].map((x) => ProductModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

/// Menu va kategori modelerde olan ürün biligileri
class ProductModel extends IBaseModel<ProductModel> {
  ProductModel({
    this.id,
    this.dealerId,
    this.price,
    this.images,
    this.calorie,
    this.itemType,
    this.makeTime,
    this.listOrder,
    this.optionCount,
    this.productName,
    this.addedOrderNumber = 0,
    this.orderCount = 0,
    this.shortDescription,
    this.count = 0,
    this.campaigns,
    this.isSell,
  });

  int? id;
  int? dealerId; // sadece bannerlarda dolu gelir
  int? addedOrderNumber;
  List<PriceModel>? price;
  List<ImagesModel>? images;
  int? calorie;
  String? itemType;
  int? makeTime;
  int? listOrder;
  int? optionCount;
  int? orderCount;
  String? productName;
  String? shortDescription;
  int? count; // Marketplace kullanıcı tarafından seçilen fix menunun adedini tutmak için kullanılmakta
  List<CampaignModel>? campaigns;
  bool? isSell;

  @override
  fromJson(Map<dynamic, dynamic> json) => ProductModel(
        id: json["id"],
        dealerId: json["dealer_id"],
        price: List<PriceModel>.from(json["price"].map((x) => PriceModel.fromJson(x))),
        images:
            json["images"] == null ? [] : List<ImagesModel>.from(json["images"].map((x) => ImagesModel.fromJson(x))),
        calorie: json["calorie"] ?? 0,
        itemType: json["item_type"],
        makeTime: json["make_time"] ?? 0,
        listOrder: json["list_order"],
        optionCount: json["option_count"],
        productName: json["product_name"],
        shortDescription: json["short_description"],
        count: json["count"] ?? 0,
        campaigns: json["campaigns"] == null
            ? []
            : List<CampaignModel>.from(json["campaigns"].map((x) => CampaignModel.fromJson(x))),
        isSell: json["is_sell"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_id": dealerId,
        "price": List<dynamic>.from(price!.map((x) => x.toJson())),
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "calorie": calorie,
        "item_type": itemType,
        "make_time": makeTime,
        "list_order": listOrder,
        "option_count": optionCount,
        "product_name": productName,
        "short_description": shortDescription,
        "campaigns": campaigns == null ? null : List<dynamic>.from(campaigns!.map((x) => x.toJson())),
        "count": count,
        "is_sell": isSell,
      };
}
