import 'package:background_json_parser/background_json_parser.dart';

import '../other/menu_detail_model.dart';

class NearDealerDetailsModel extends IBaseModel<NearDealerDetailsModel> {
  NearDealerDetailsModel({
    this.id,
    this.menuName,
    this.menuImage,
    this.menuOrder,
    this.categories,
    this.menuListType,
  });

  int? id;
  String? menuName;
  String? menuImage;
  int? menuOrder;
  List<CategoryModel>? categories;
  String? menuListType;

  @override
  fromJson(Map<dynamic, dynamic> json) => NearDealerDetailsModel(
        id: json["id"],
        menuName: json["menu_name"],
        menuImage: json["menu_image"],
        menuOrder: json["menu_order"],
        menuListType: json['menu_list_type'] as String?,
        categories: json["categories"] == null
            ? []
            : List<CategoryModel>.from(json["categories"].map((x) => CategoryModel().fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
