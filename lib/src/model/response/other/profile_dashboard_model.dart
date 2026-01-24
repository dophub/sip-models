import 'package:background_json_parser/background_json_parser.dart';

class ProfileDashboardModel extends IBaseModel<ProfileDashboardModel> {
  int? campaignCount;
  int? cuponCount;
  List<ProfileDashboardWalletModel>? walletData;
  List<ProfileDashboardWalletModel>? loyaltyPointsData;

  ProfileDashboardModel({
    this.campaignCount,
    this.cuponCount,
    this.walletData,
    this.loyaltyPointsData,
  });

  @override
  fromJson(Map<String, dynamic> json) => ProfileDashboardModel(
        campaignCount: json["campaignCount"],
        cuponCount: json["cuponCount"],
        walletData: json["walletData"] == null
            ? []
            : List<ProfileDashboardWalletModel>.from(
                json["walletData"]!.map((x) => ProfileDashboardWalletModel.fromJson(x))),
        loyaltyPointsData: json["loyaltyPointsData"] == null
            ? []
            : List<ProfileDashboardWalletModel>.from(
                json["loyaltyPointsData"]!.map((x) => ProfileDashboardWalletModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "campaignCount": campaignCount,
        "cuponCount": cuponCount,
        "walletData": walletData == null ? [] : List<dynamic>.from(walletData!.map((x) => x.toJson())),
        "loyaltyPointsData":
            loyaltyPointsData == null ? [] : List<dynamic>.from(loyaltyPointsData!.map((x) => x.toJson())),
      };
}

class ProfileDashboardWalletModel {
  String? id;
  String? title;
  double? balance;
  bool? isActive;
  String? typeId;

  ProfileDashboardWalletModel({
    this.id,
    this.title,
    this.balance,
    this.isActive,
    this.typeId,
  });

  factory ProfileDashboardWalletModel.fromJson(Map<String, dynamic> json) => ProfileDashboardWalletModel(
        id: json["id"],
        title: json["title"],
        balance: json["balance"]?.toDouble(),
        isActive: json["is_active"],
        typeId: json["type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "balance": balance,
        "is_active": isActive,
        "type_id": typeId,
      };
}
