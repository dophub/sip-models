/// Rİ DashboardBarsCard için kullanılmakta
abstract class IDashboardBarsCardModel<T extends IDashboardBarsCardModel<T>> {
  String? get id;

  String? get name;

  double? get amount;

  int? get count;

  double? get amountPercent;

  double? get countPercent;

  List<T>? get items;
}
