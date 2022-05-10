/// Section widgetlarda kullanılmakta

@Deprecated("Use ISectionsWidgetModel instead SectionsWidgetModel")
class SectionsWidgetModel {
  late String? id;
  late String name;
  late bool? status;
  late double? price;

  SectionsWidgetModel({this.id, required this.name, this.status, this.price});
}

abstract class ISectionsWidgetModel {
  String get getId;

  String get getName;

  bool get getStatus;

  double? get getPrice;

  set setStatus(bool value);
}
