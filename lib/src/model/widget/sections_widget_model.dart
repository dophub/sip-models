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
  String get id;

  String get name;

  bool get status;

  double get price;
}
