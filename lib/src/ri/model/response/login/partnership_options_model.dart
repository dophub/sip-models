import 'package:background_json_parser/background_json_parser.dart';

class PartnershipOptionsModel extends IBaseModel<PartnershipOptionsModel> {
  PartnershipOptionsModel({
    this.categories,
    this.kitchens,
  });

  List<PartnershipOptionsCategoryModel>? categories;
  List<PartnershipOptionsKitchenModel>? kitchens;

  @override
  PartnershipOptionsModel fromJson(Map json) => PartnershipOptionsModel(
        categories: List<PartnershipOptionsCategoryModel>.from(
            json['categories'].map((x) => PartnershipOptionsCategoryModel.fromMap(x))),
        kitchens: List<PartnershipOptionsKitchenModel>.from(
            json['kitchens'].map((x) => PartnershipOptionsKitchenModel.fromMap(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        'categories': List<dynamic>.from(categories!.map((x) => x.toMap())),
        'kitchens': List<dynamic>.from(kitchens!.map((x) => x.toMap())),
      };
}

class PartnershipOptionsCategoryModel {
  PartnershipOptionsCategoryModel({this.categoryCode, this.categoryName, this.isSelected});

  String? categoryCode;
  String? categoryName;
  bool? isSelected;

  factory PartnershipOptionsCategoryModel.fromMap(Map<String, dynamic> json) => PartnershipOptionsCategoryModel(
        categoryCode: json['category_code'],
        categoryName: json['category_name'],
        isSelected: false,
      );

  Map<String, dynamic> toMap() => {
        'category_code': categoryCode,
        'category_name': categoryName,
        'is_selected': isSelected,
      };
}

class PartnershipOptionsKitchenModel {
  PartnershipOptionsKitchenModel({
    this.id,
    this.categoryCode,
    this.categoryName,
  });

  int? id;
  String? categoryCode;
  String? categoryName;

  factory PartnershipOptionsKitchenModel.fromMap(Map<String, dynamic> json) => PartnershipOptionsKitchenModel(
        id: json['id'],
        categoryCode: json['category_code'],
        categoryName: json['category_name'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'category_code': categoryCode,
        'category_name': categoryName,
      };
}
