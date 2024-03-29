import 'package:background_json_parser/background_json_parser.dart';

import '../other/images_model.dart';
import '../other/menu_detail_model.dart';
import '../other/price_model.dart';
import 'product_detail_model.dart';

/// PromotionProfileScreende kullanılam promosyonlu ürün detay modelidir
class PromotionMenuDetailModel extends IBaseModel<PromotionMenuDetailModel> {
  PromotionMenuDetailModel({
    this.id,
    this.totalCalorie,
    this.totalTime,
    this.promotionMenuName,
    this.shortDescription,
    this.description,
    this.images,
    this.price,
    this.sections,
  });

  int? id;
  int? totalCalorie;
  int? totalTime;
  String? promotionMenuName;
  String? shortDescription;
  String? description;
  List<ImagesModel>? images;
  List<PriceModel>? price;
  List<SectionModel>? sections;

  @override
  fromJson(Map<dynamic, dynamic> json) => PromotionMenuDetailModel(
        id: json["id"],
        totalCalorie: json["total_calorie"],
        totalTime: json["total_time"],
        promotionMenuName: json["promotion_menu_name"],
        shortDescription: json["short_description"],
        description: json["description"],
        images: json["images"] == null
            ? []
            : List<ImagesModel>.from(json["images"].map((x) => ImagesModel.fromJson(x))),
        price: json["price"] == null
            ? []
            : List<PriceModel>.from(json["price"].map((x) => PriceModel.fromJson(x))),
        sections: json["sections"] == null
            ? []
            : List<SectionModel>.from(json["sections"].map((x) => SectionModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

/// Promosyon ürünleri Sectionidir
class SectionModel {
  SectionModel({
    this.id,
    this.products,
    this.listOrder,
    this.description,
    this.sectionName,
    this.chooseRequired,
    this.isSelected = false,
  });

  int? id;
  List<ProductDetailModel>? products;
  int? listOrder;
  String? description;
  String? sectionName;
  bool? chooseRequired;
  bool isSelected;

  factory SectionModel.fromJson(Map<String, dynamic> json) => SectionModel(
        id: json["id"],
        products: json["products"] == null
            ? []
            : List<ProductDetailModel>.from(
                json["products"].map((x) => ProductDetailModel().fromJson(x))),
        listOrder: json["list_order"],
        description: json["description"],
        sectionName: json["section_name"],
        chooseRequired: json["choose_required"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "products": List<ProductModel>.from(products!.map((x) => x.toJson())),
        "list_order": listOrder,
        "description": description,
        "section_name": sectionName,
        "choose_required": chooseRequired,
      };
}
