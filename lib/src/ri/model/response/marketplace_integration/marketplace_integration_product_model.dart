import 'package:background_json_parser/background_json_parser.dart';
import '../other/multi_item_picker_widget_model.dart';

class MarketplaceIntegrationProductModel extends IBaseModel<MarketplaceIntegrationProductModel>
    implements IMultiItemPickerWidgetModel {
  final String? id;
  final String? _title;
  final double? price;

  MarketplaceIntegrationProductModel({
    this.id,
    String title,
    this.price,
  }){
    _title = title;
  }

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

  @override
  bool selectedValue = false;

  @override
  String get title => _title ?? '';
}
