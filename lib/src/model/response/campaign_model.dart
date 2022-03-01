import 'package:sip_models/response.dart';

class CampaignModel extends IBaseModel<CampaignModel> {
  CampaignModel({
    this.id,
    this.banners,
    this.dealerId,
    this.spotTitle,
    this.description,
    this.campaignName,
    this.campaignTypeId,
    this.isCopyCampaign,
    this.mainCampaignId,
    this.campaignProductResult,
    this.campaignDiscountPercent,
    this.notUseBannerForTemplate,
    this.limitNumberOfOrderTypeId,
  });

  int? id;
  List<ImagesModel>? banners;
  int? dealerId;
  String? spotTitle;
  String? description;
  String? campaignName;
  String? campaignTypeId;
  bool? isCopyCampaign;
  int? mainCampaignId;
  CampaignProductResultModel? campaignProductResult;
  double? campaignDiscountPercent;
  bool? notUseBannerForTemplate;
  String? limitNumberOfOrderTypeId;

  @override
  CampaignModel fromJson(Map<dynamic, dynamic> json) {
    return CampaignModel.fromJson(json);
  }

  factory CampaignModel.fromJson(Map<dynamic, dynamic> json) => CampaignModel(
        id: json["id"],
        banners: json["banners"] == null
            ? []
            : List<ImagesModel>.from(
                json["banners"].map((x) => ImagesModel.fromJson(x))),
        dealerId: json["dealer_id"],
        spotTitle: json["spot_title"],
        description: json["description"],
        campaignName: json["campaign_name"],
        campaignTypeId: json["campaign_type_id"],
        isCopyCampaign: json["is_copy_campaign"],
        mainCampaignId: json["main_campaign_id"],
        campaignProductResult: CampaignProductResultModel.fromJson(
            json["campaign_product_result"]),
        campaignDiscountPercent: json["campaign_discount_percent"].toDouble(),
        notUseBannerForTemplate: json["not_use_banner_for_template"],
        limitNumberOfOrderTypeId: json["limit_number_of_order_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "banners": banners == null
            ? []
            : List<dynamic>.from(banners!.map((x) => x.toJson())),
        "dealer_id": dealerId,
        "spot_title": spotTitle,
        "description": description,
        "campaign_name": campaignName,
        "campaign_type_id": campaignTypeId,
        "is_copy_campaign": isCopyCampaign,
        "main_campaign_id": mainCampaignId,
        "campaign_product_result": campaignProductResult?.toJson(),
        "campaign_discount_percent": campaignDiscountPercent,
        "not_use_banner_for_template": notUseBannerForTemplate,
        "limit_number_of_order_type_id": limitNumberOfOrderTypeId,
      };

}

class CampaignProductResultModel {
  CampaignProductResultModel({
    this.newPrice,
    this.productId,
    this.campaignDiscountPercent,
  });

  double? newPrice;
  int? productId;
  int? campaignDiscountPercent;

  factory CampaignProductResultModel.fromJson(Map<String, dynamic> json) =>
      CampaignProductResultModel(
        newPrice:
            json['new_price'] == null ? null : json["new_price"].toDouble(),
        productId: json["product_id"],
        campaignDiscountPercent: json["campaign_discount_percent"],
      );

  Map<String, dynamic> toJson() => {
        "new_price": newPrice,
        "product_id": productId,
        "campaign_discount_percent": campaignDiscountPercent,
      };
}
