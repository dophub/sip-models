/// Section widgetlarda kullanılmakta

@Deprecated("Use ISectionsWidgetModel instead SectionsWidgetModel")
class SectionsWidgetModel {
  late String? id;
  late String name;
  late bool? status;
  late double? price;

  SectionsWidgetModel({this.id, required this.name, this.status, this.price});
}

class SectionsWidgetModels extends ISectionsWidgetModel {
  late String? id;
  String? imageUrl;
  late String name;
  bool status = false;
  late double? price;

  SectionsWidgetModels({
    this.id,
    required this.name,
    this.price,
    this.imageUrl,
  });

  @override
  bool get getStatus => status;

  @override
  String get getId => id!;

  @override
  String get getName => name;

  @override
  double? get getPrice => price;

  @override
  set setStatus(bool value) {
    status = value;
  }

  @override
  String? get getImage => imageUrl;
}

abstract class ISectionsWidgetModel {
  String get getId;

  String get getName;

  bool get getStatus;

  String? get getImage;

  double? get getPrice;

  set setStatus(bool value);
}
