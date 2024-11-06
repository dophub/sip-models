import 'package:background_json_parser/background_json_parser.dart';

class WalletGroupModel extends IBaseModel<WalletGroupModel> {
  final int? id;
  final String? title;
  final String? type;
  final List<WalletGroupGroupMatchModel>? customerGroupMatch;

  WalletGroupModel({
    this.id,
    this.title,
    this.type,
    this.customerGroupMatch,
  });

  @override
  fromJson(Map<String, dynamic> json) => WalletGroupModel(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        customerGroupMatch: json["customer_group_match"] == null
            ? null
            : List<WalletGroupGroupMatchModel>.from(json["customer_group_match"].map((x) => WalletGroupGroupMatchModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "customer_group_match":
            customerGroupMatch == null ? null : List<dynamic>.from(customerGroupMatch!.map((x) => x.toJson())),
      };
}

class WalletGroupGroupMatchModel {
  final WalletGroupBrandModel? mainBrand;
  final WalletGroupDealerModel? dealer;

  WalletGroupGroupMatchModel({
    this.mainBrand,
    this.dealer,
  });

  factory WalletGroupGroupMatchModel.fromJson(Map<String, dynamic> json) => WalletGroupGroupMatchModel(
        mainBrand: json["main_brand"] == null ? null : WalletGroupBrandModel.fromJson(json["main_brand"]),
        dealer: json["dealer"] == null ? null : WalletGroupDealerModel.fromJson(json["dealer"]),
      );

  Map<String, dynamic> toJson() => {
        "main_brand": mainBrand?.toJson(),
        "dealer": dealer?.toJson(),
      };
}

class WalletGroupDealerModel {
  final int? id;
  final String? dealerName;

  WalletGroupDealerModel({
    this.id,
    this.dealerName,
  });

  factory WalletGroupDealerModel.fromJson(Map<String, dynamic> json) => WalletGroupDealerModel(
        id: json["id"],
        dealerName: json["dealer_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_name": dealerName,
      };
}

class WalletGroupBrandModel {
  final int? id;
  final String? brandName;

  WalletGroupBrandModel({
    this.id,
    this.brandName,
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
