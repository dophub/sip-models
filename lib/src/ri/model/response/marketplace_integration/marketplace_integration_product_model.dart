import 'package:background_json_parser/background_json_parser.dart';

class MarketplaceIntegrationProductModel extends IBaseModel<MarketplaceIntegrationProductModel> {
  final String? id;
  final String? title;
  final double? price;

  MarketplaceIntegrationProductModel({
    this.id,
    this.title,
    this.price,
  });

  @override
  fromJson(Map<String, dynamic> json) => MarketplaceIntegrationProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
      };
}
