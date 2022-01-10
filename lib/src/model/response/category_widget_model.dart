import 'dart:convert';

List<CategoryWidgetModel> categoryWidgetModelFromJson(String str) =>
    List<CategoryWidgetModel>.from(
        json.decode(str).map((x) => CategoryWidgetModel.fromJson(x)));

///Dealer(Kategori) ve MarketPlace(Mutfaklar) modüllerinde kullanılan model
class CategoryWidgetModel {
  CategoryWidgetModel({
    this.id,
    this.image,
    this.listOrder,
    this.categoryName,
  });

  dynamic id;
  String? image;
  int? listOrder;
  String? categoryName;

  factory CategoryWidgetModel.fromJson(Map<String, dynamic> jsonData) =>
      CategoryWidgetModel(
        id: jsonData["id"],
        image: jsonData["icon_file"]["url"] ?? "",
        listOrder: jsonData["list_order"],
        categoryName: jsonData["category_name"],
      );
}
