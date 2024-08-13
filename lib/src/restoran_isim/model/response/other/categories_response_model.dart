import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/response.dart';

class CategoriesResponseModel extends IBaseModel<CategoriesResponseModel> {
  CategoriesResponseModel({
    this.id,
    this.menuName,
    this.categories,
  });

  int? id;
  String? menuName;
  List<CategoriesResponseCategoryModel>? categories;

  @override
  CategoriesResponseModel fromJson(Map<String, dynamic> json) => CategoriesResponseModel(
        id: json["id"],
        menuName: json["menu_name"],
        categories: json["categories"] == null
            ? []
            : List<CategoriesResponseCategoryModel>.from(
                json["categories"]!.map((x) => CategoriesResponseCategoryModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class CategoriesResponseCategoryModel {
  CategoriesResponseCategoryModel({
    this.id,
    this.image,
    this.listOrder,
    this.categoryName,
    this.menuListTypeId,
  });

  int? id;
  CategoriesResponseImageModel? image;
  int? listOrder;
  String? categoryName;
  String? menuListTypeId;

  factory CategoriesResponseCategoryModel.fromJson(Map<String, dynamic> json) => CategoriesResponseCategoryModel(
        id: json["id"],
        image: json["image"] == null ? null : CategoriesResponseImageModel.fromJson(json["image"]),
        listOrder: json["list_order"],
        categoryName: json["category_name"],
        menuListTypeId: json["menu_list_type_id"],
      );
}

class CategoriesResponseImageModel {
  CategoriesResponseImageModel({
    this.iconFile,
    this.webFiles,
  });

  ImagesModel? iconFile;
  ImagesModel? webFiles;

  factory CategoriesResponseImageModel.fromJson(Map<String, dynamic> json) => CategoriesResponseImageModel(
        iconFile: json["icon_file"] == null ? null : ImagesModel.fromJson(json["icon_file"]),
        webFiles: json["web_files"] == null ? null : ImagesModel.fromJson(json["web_files"]),
      );
}
