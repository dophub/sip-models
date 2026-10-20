abstract class IDashboardBarsCardModel {
  String? get id;
  String? get name;
  double? get amount;
  int? get count;
  double? get amountPercent;
  double? get countPercent;
  List<IDashboardBarsCardModel>? get items;
}