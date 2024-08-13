import 'package:background_json_parser/background_json_parser.dart';

class TipSystemDetailResponseModel extends IBaseModel<TipSystemDetailResponseModel> {
  TipSystemDetailResponseModel({
    this.shareTipPercent,
    this.minTipPercent,
    this.isTipsActive,
    this.dealerTipShowTypeId,
    this.tips,
  });

  int? shareTipPercent;
  int? minTipPercent;
  bool? isTipsActive;
  String? dealerTipShowTypeId;
  List<TipSystemDetailResponseTipModel>? tips;

  @override
  TipSystemDetailResponseModel fromJson(Map<String, dynamic> json) => TipSystemDetailResponseModel(
        shareTipPercent: json["share_tip_percent"],
        minTipPercent: json["min_tip_percent"],
        isTipsActive: json["is_tips_active"],
        dealerTipShowTypeId: json["dealer_tip_show_type_id"],
        tips: json["tips"] == null ? [] : List<TipSystemDetailResponseTipModel>.from(json["tips"]!.map((x) => TipSystemDetailResponseTipModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class TipSystemDetailResponseTipModel {
    TipSystemDetailResponseTipModel({
        this.id,
        this.amount,
        this.listOrder,
    });

    int? id;
    int? amount;
    int? listOrder;

    factory TipSystemDetailResponseTipModel.fromJson(Map<String, dynamic> json) => TipSystemDetailResponseTipModel(
        id: json["id"],
        amount: json["amount"],
        listOrder: json["list_order"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "amount": amount,
        "list_order": listOrder,
    };
}
