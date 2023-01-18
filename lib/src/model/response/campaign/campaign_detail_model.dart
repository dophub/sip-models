import 'package:background_json_parser/background_json_parser.dart';

class CampaignDetailModel extends IBaseModel<CampaignDetailModel> {
  CampaignDetailModel({
    this.id,
    this.spotTitle,
    this.spotDescription,
    this.limitNumberOfOrderTypeId,
  });

  int? id;
  String? spotTitle;
  String? spotDescription;
  String? limitNumberOfOrderTypeId;

  @override
  fromJson(Map<dynamic, dynamic> json) => CampaignDetailModel(
        id: json["id"],
        spotTitle: json["spot_title"],
        spotDescription: json["spot_description"],
        limitNumberOfOrderTypeId: json["limit_number_of_order_type_id"],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
