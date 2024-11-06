import 'package:background_json_parser/background_json_parser.dart';

class WalletGroupModel extends IBaseModel<WalletGroupModel> {
  final int? id;
  final String? title;
  final String? type;
  final List<CustomerGroupMatch>? customerGroupMatch;

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
            : List<CustomerGroupMatch>.from(json["customer_group_match"].map((x) => CustomerGroupMatch.fromJson(x))),
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

class CustomerGroupMatch {
  final MainBrand? mainBrand;
  final Dealer? dealer;

  CustomerGroupMatch({
    this.mainBrand,
    this.dealer,
  });

  factory CustomerGroupMatch.fromJson(Map<String, dynamic> json) => CustomerGroupMatch(
        mainBrand: json["main_brand"] == null ? null : MainBrand.fromJson(json["main_brand"]),
        dealer: json["dealer"] == null ? null : Dealer.fromJson(json["dealer"]),
      );

  Map<String, dynamic> toJson() => {
        "main_brand": mainBrand?.toJson(),
        "dealer": dealer?.toJson(),
      };
}

class Dealer {
  final int? id;
  final String? dealerName;

  Dealer({
    this.id,
    this.dealerName,
  });

  factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
        id: json["id"],
        dealerName: json["dealer_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "dealer_name": dealerName,
      };
}

class MainBrand {
  final int? id;
  final String? brandName;

  MainBrand({
    this.id,
    this.brandName,
  });

  factory MainBrand.fromJson(Map<String, dynamic> json) => MainBrand(
        id: json["id"],
        brandName: json["brand_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_name": brandName,
      };
}
