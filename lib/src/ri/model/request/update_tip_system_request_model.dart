class UpdateTipSystemDetailRequestModel {
  UpdateTipSystemDetailRequestModel({
    required this.amounts,
    required this.tipShowType,
    required this.minTipPercent,
    required this.shareTipPercent,
    required this.isTipsActive,
  });

  List<UpdateTipSystemDetailRequestAmountModel> amounts;
  String tipShowType;
  int minTipPercent;
  int shareTipPercent;
  bool isTipsActive;

  Map<String, dynamic> toJson() => {
        "amounts": List<dynamic>.from(amounts.map((x) => x.toJson())),
        "tip_show_type": tipShowType,
        "min_tip_percent": minTipPercent,
        "share_tip_percent": shareTipPercent,
        "is_tips_active": isTipsActive,
      };
}

class UpdateTipSystemDetailRequestAmountModel {
  UpdateTipSystemDetailRequestAmountModel({
    required this.amount,
    required this.listOrder,
  });

  int amount;
  int listOrder;

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "list_order": listOrder,
      };
}
