
class CampaignDetailModel {
  CampaignDetailModel({
    this.id,
    this.title,
    this.description,
    this.dealerDescription,
    this.isActive,
    this.createDate,
    this.isTemplateCampaign,
    this.isLimitedTime,
    this.startDate,
    this.endDate,
    this.limitMinBasketAmount,
    this.limitMaxUseCustomer,
    this.limitMaxDiscountAmount,
    this.limitNumberOfOrder,
    this.isRepeat,
    this.frequency,
    this.spotTitle,
    this.spotDescription,
    this.campaignDiscountPercent,
    this.isCopyCampaign,
    this.registerDate,
    this.maxBudgetAmount,
    this.isRequireDealerApproved,
    this.thirdPartyApi,
    this.isAllDealer,
    this.budgetSideId,
    this.campaignTypeId,
    this.categoryId,
    this.dealerId,
    this.limitNumberOfOrderTypeId,
    this.mainCampaignId,
    this.campaignActivation,
    this.campaignBeforeActivation,
    this.campaignJoinAmount,
    this.notUseBannerForTemplate,
    this.thirdPartyApiKey,
    this.thirdPartyCampaignCode,
    this.thirdPartyClientId,
    this.thirdPartyEventCode,
    this.thirdPartySecretKey,
    this.isCompleteAnalysis,
    this.usedBudgetAmount,
  });

  int? id;
  String? title;
  String? description;
  String? dealerDescription;
  bool? isActive;
  DateTime? createDate;
  bool? isTemplateCampaign;
  bool? isLimitedTime;
  DateTime? startDate;
  DateTime? endDate;
  String? limitMinBasketAmount;
  int? limitMaxUseCustomer;
  String? limitMaxDiscountAmount;
  List<int>? limitNumberOfOrder;
  bool? isRepeat;
  List<Frequency>? frequency;
  String? spotTitle;
  String? spotDescription;
  int? campaignDiscountPercent;
  bool? isCopyCampaign;
  DateTime? registerDate;
  String? maxBudgetAmount;
  bool? isRequireDealerApproved;
  dynamic thirdPartyApi;
  bool? isAllDealer;
  String? budgetSideId;
  String? campaignTypeId;
  int? categoryId;
  int? dealerId;
  String? limitNumberOfOrderTypeId;
  int? mainCampaignId;
  bool? campaignActivation;
  bool? campaignBeforeActivation;
  String? campaignJoinAmount;
  bool? notUseBannerForTemplate;
  dynamic thirdPartyApiKey;
  dynamic thirdPartyCampaignCode;
  dynamic thirdPartyClientId;
  dynamic thirdPartyEventCode;
  dynamic thirdPartySecretKey;
  bool? isCompleteAnalysis;
  String? usedBudgetAmount;

  factory CampaignDetailModel.fromJson(Map<String, dynamic> json) => CampaignDetailModel(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    dealerDescription: json["dealer_description"],
    isActive: json["is_active"],
    createDate: DateTime.parse(json["create_date"]),
    isTemplateCampaign: json["is_template_campaign"],
    isLimitedTime: json["is_limited_time"],
    startDate: DateTime.parse(json["start_date"]),
    endDate: DateTime.parse(json["end_date"]),
    limitMinBasketAmount: json["limit_min_basket_amount"],
    limitMaxUseCustomer: json["limit_max_use_customer"],
    limitMaxDiscountAmount: json["limit_max_discount_amount"],
    limitNumberOfOrder: json["limit_number_of_order"] == null ? [] : List<int>.from(json["limit_number_of_order"].map((x) => x)),
    isRepeat: json["is_repeat"],
    frequency: json["frequency"] == null ? []: List<Frequency>.from(json["frequency"].map((x) => Frequency.fromJson(x))),
    spotTitle: json["spot_title"],
    spotDescription: json["spot_description"],
    campaignDiscountPercent: json["campaign_discount_percent"],
    isCopyCampaign: json["is_copy_campaign"],
    registerDate: DateTime.parse(json["register_date"]),
    maxBudgetAmount: json["max_budget_amount"],
    isRequireDealerApproved: json["is_require_dealer_approved"],
    thirdPartyApi: json["third_party_API"],
    isAllDealer: json["is_all_dealer"],
    budgetSideId: json["budget_side_id"],
    campaignTypeId: json["campaign_type_id"],
    categoryId: json["category_id"],
    dealerId: json["dealer_id"],
    limitNumberOfOrderTypeId: json["limit_number_of_order_type_id"],
    mainCampaignId: json["main_campaign_id"],
    campaignActivation: json["campaign_activation"],
    campaignBeforeActivation: json["campaign_before_activation"],
    campaignJoinAmount: json["campaign_join_amount"],
    notUseBannerForTemplate: json["not_use_banner_for_template"],
    thirdPartyApiKey: json["third_party_api_key"],
    thirdPartyCampaignCode: json["third_party_campaign_code"],
    thirdPartyClientId: json["third_party_client_id"],
    thirdPartyEventCode: json["third_party_event_code"],
    thirdPartySecretKey: json["third_party_secret_key"],
    isCompleteAnalysis: json["is_complete_analysis"],
    usedBudgetAmount: json["used_budget_amount"],
  );
}

class Frequency {
  Frequency({
    this.main,
    this.timeRange,
  });

  String? main;
  TimeRange? timeRange;

  factory Frequency.fromJson(Map<String, dynamic> json) => Frequency(
    main: json["main"],
    timeRange: json["time_range"] == null ? TimeRange() : TimeRange.fromJson(json["time_range"]),
      );
}

class TimeRange {
  TimeRange({
    this.end,
    this.start,
  });

  String? end;
  String? start;

  factory TimeRange.fromJson(Map<String, dynamic> json) => TimeRange(
    end: json["end"],
    start: json["start"],
  );
}
