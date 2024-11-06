import 'package:background_json_parser/background_json_parser.dart';

class WalletGroupModel extends IBaseModel<WalletGroupModel> {
  final WalletGroupCustomerModel customerGroup;
  final WalletGroupBrandModel mainBrand;
  final int id;

  WalletGroupModel({
    required this.customerGroup,
    required this.mainBrand,
    required this.id,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletGroupModel(
        customerGroup: WalletGroupCustomerModel.fromJson(json["customer_group"]),
        mainBrand: WalletGroupBrandModel.fromJson(json["main_brand"]),
        id: json["id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "customer_group": customerGroup.toJson(),
        "main_brand": mainBrand.toJson(),
        "id": id,
      };
}

class WalletGroupCustomerModel {
  final int id;
  final String title;
  final String type;

  WalletGroupCustomerModel({
    required this.id,
    required this.title,
    required this.type,
  });

  factory WalletGroupCustomerModel.fromJson(Map<String, dynamic> json) => WalletGroupCustomerModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
      };
}

class WalletGroupBrandModel {
  final int id;
  final String brandName;

  WalletGroupBrandModel({
    required this.id,
    required this.brandName,
  });

  factory WalletGroupBrandModel.fromJson(Map<String, dynamic> json) => WalletGroupBrandModel(
        id: json["id"],
        brandName: json["brand_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_name": brandName,
      };
}
