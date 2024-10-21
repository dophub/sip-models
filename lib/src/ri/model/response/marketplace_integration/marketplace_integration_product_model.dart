import 'package:background_json_parser/background_json_parser.dart';
import 'package:sip_models/src/ri/model/other/multi_item_picker_widget_model.dart';

class MarketplaceIntegrationProductModel extends IBaseModel<MarketplaceIntegrationProductModel>
    implements IMultiItemPickerWidgetModel {
  final String? id;
  late final String? _title;
  final double? price;

  MarketplaceIntegrationProductModel({
    this.id,
    this.price,
    String? title,
  }) {
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
