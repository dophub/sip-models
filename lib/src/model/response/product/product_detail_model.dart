import 'package:background_json_parser/json_parser.dart';
import 'package:sip_models/src/model/widget/sections_widget_model.dart';
import '../other/images_model.dart';
import '../other/price_model.dart';

/// ProductProfileScreende kullanılam ürün detay modelidir
class ProductDetailModel extends IBaseModel<ProductDetailModel> with ISectionsWidgetModel {
  ProductDetailModel({
    this.id,
    this.productName,
    this.shortDescription,
    this.description,
    this.productCode,
    this.tags,
    this.makeTime,
    this.calorie,
    this.price,
    this.images,
    this.optionGroups,
    this.features,
    this.isSelected = false,
    this.itemType,
  });

  int? id;
  String? productName;
  String? shortDescription;
  String? description;
  String? productCode;
  List<String>? tags;
  int? makeTime;
  int? calorie;
  List<PriceModel>? price;
  List<ImagesModel>? images;
  List<OptionGroupModel>? optionGroups;
  List<FeatureModel>? features;
  bool isSelected;
  String? itemType;

  @override
  fromJson(Map<dynamic, dynamic> json) => ProductDetailModel(
        id: json["id"],
        productName: json["product_name"],
        shortDescription: json["short_description"],
        description: json["description"],
        productCode: json["product_code"],
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"].map((x) => x)),
        makeTime: json["make_time"],
        calorie: json["calorie"],
        price: json["price"] == null ? [] : List<PriceModel>.from(json["price"].map((x) => PriceModel.fromJson(x))),
        images:
            json["images"] == null ? [] : List<ImagesModel>.from(json["images"].map((x) => ImagesModel.fromJson(x))),
        optionGroups: json["option_groups"] == null
            ? []
            : List<OptionGroupModel>.from(json["option_groups"].map((x) => OptionGroupModel.fromJson(x))),
        features: json["features"] == null
            ? []
            : List<FeatureModel>.from(json["features"].map((x) => FeatureModel.fromJson(x))),
        itemType: json["item_type"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "short_description": shortDescription,
        "description": description,
        "product_code": productCode,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "make_time": makeTime,
        "calorie": calorie,
        "price": price == null ? [] : List<dynamic>.from(price!.map((x) => x.toJson())),
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "option_groups": optionGroups == null ? [] : List<dynamic>.from(optionGroups!.map((x) => x.toJson())),
        "features": features == null ? [] : List<dynamic>.from(features!.map((x) => x.toJson())),
        "item_type": itemType,
      };

  @override
  String get getId => throw UnimplementedError();

  @override
  String get getName => productName!;

  @override
  double? get getPrice => null;

  @override
  bool get getStatus => throw UnimplementedError();

  @override
  set setStatus(bool value) {}
}

/// Ürün özelikleri her biri bi üründür
class FeatureModel {
  FeatureModel(
      {this.id,
      this.items,
      this.maxCount,
      this.listOrder,
      this.description,
      this.featureName,
      this.addingTypeId,
      this.chooseTypeId,
      this.maxFreeCount,
      this.isSelected = false});

  int? id;
  List<ItemModel>? items;
  int? maxCount;
  int? listOrder;
  String? description;
  String? featureName;
  String? addingTypeId;
  String? chooseTypeId;
  int? maxFreeCount;
  bool isSelected;

  factory FeatureModel.fromJson(Map<String, dynamic> json) => FeatureModel(
        id: json["id"],
        items: json["items"] == null ? [] : List<ItemModel>.from(json["items"].map((x) => ItemModel.fromJson(x))),
        maxCount: json["max_count"],
        listOrder: json["list_order"],
        description: json["description"],
        featureName: json["feature_name"],
        addingTypeId: json["adding_type_id"],
        chooseTypeId: json["choose_type_id"],
        maxFreeCount: json["max_free_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "items": items == null ? [] : List<dynamic>.from(items!.map((x) => x.toJson())),
        "max_count": maxCount,
        "list_order": listOrder,
        "description": description,
        "feature_name": featureName,
        "adding_type_id": addingTypeId,
        "choose_type_id": chooseTypeId,
        "max_free_count": maxFreeCount,
      };
}

class ItemModel extends ISectionsWidgetModel {
  ItemModel({
    this.id,
    this.isFree,
    this.addPrice,
    this.isDefault,
    this.listOrder,
    this.productName,
    this.isSelected = false,
  });

  int? id;
  bool? isFree;
  double? addPrice;
  bool? isDefault;
  int? listOrder;
  String? productName;
  bool isSelected;

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        id: json["id"],
        isFree: json["is_free"],
        addPrice: json["add_price"].toDouble(),
        isDefault: json["is_default"],
        listOrder: json["list_order"],
        productName: json["product_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_free": isFree,
        "add_price": addPrice,
        "is_default": isDefault,
        "list_order": listOrder,
        "product_name": productName,
      };

  @override
  String get getId => throw UnimplementedError();

  @override
  String get getName => productName!;

  @override
  double? get getPrice => isFree! ? null : addPrice;

  @override
  bool get getStatus => isSelected;

  @override
  set setStatus(bool value) {
    isSelected = value;
  }
}

/// Ürün opsiyonlarını temsil etmekte
class OptionGroupModel {
  OptionGroupModel(
      {this.id,
      this.options,
      this.maxCount,
      this.listOrder,
      this.description,
      this.addingTypeId,
      this.chooseTypeId,
      this.optionGroupName,
      this.isSelected = false});

  int? id;
  List<OptionModel>? options;
  int? maxCount;
  int? listOrder;
  String? description;
  String? addingTypeId;
  String? chooseTypeId;
  String? optionGroupName;
  bool isSelected;

  factory OptionGroupModel.fromJson(Map<String, dynamic> json) => OptionGroupModel(
        id: json["id"],
        options:
            json["options"] == null ? [] : List<OptionModel>.from(json["options"].map((x) => OptionModel.fromJson(x))),
        maxCount: json["max_count"],
        listOrder: json["list_order"],
        description: json["description"],
        addingTypeId: json["adding_type_id"],
        chooseTypeId: json["choose_type_id"],
        optionGroupName: json["option_group_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
        "max_count": maxCount,
        "list_order": listOrder,
        "description": description,
        "adding_type_id": addingTypeId,
        "choose_type_id": chooseTypeId,
        "option_group_name": optionGroupName,
      };
}

class OptionModel extends ISectionsWidgetModel {
  OptionModel(
      {this.id,
      this.isFree,
      this.addPrice,
      this.isDefault,
      this.listOrder,
      this.optionCode,
      this.optionName,
      this.isSelected = false});

  int? id;
  bool? isFree;
  double? addPrice;
  bool? isDefault;
  int? listOrder;
  String? optionCode;
  String? optionName;
  bool isSelected;

  factory OptionModel.fromJson(Map<String, dynamic> json) => OptionModel(
        id: json["id"],
        isFree: json["is_free"],
        addPrice: json["add_price"].toDouble(),
        isDefault: json["is_default"],
        listOrder: json["list_order"],
        optionCode: json["option_code"],
        optionName: json["option_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_free": isFree,
        "add_price": addPrice,
        "is_default": isDefault,
        "list_order": listOrder,
        "option_code": optionCode,
        "option_name": optionName,
      };

  @override
  String get getId => throw UnimplementedError();

  @override
  String get getName => optionName!;

  /// Çoklu Çıkarma da price 0 girimişti
  @override
  double? get getPrice => isFree! ? null : addPrice;

  @override
  bool get getStatus => isSelected;

  @override
  set setStatus(bool value) {
    isSelected = value;
  }
}
