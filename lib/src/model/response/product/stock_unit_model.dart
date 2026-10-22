class StockUnitModel {
  String? id;
  String? code;
  String? name;
  dynamic barcode;
  String? unitId;
  int? multiplier;
  bool? hasDecimal;
  bool? isBaseUnit;

  StockUnitModel({
    this.id,
    this.code,
    this.name,
    this.barcode,
    this.unitId,
    this.multiplier,
    this.hasDecimal,
    this.isBaseUnit,
  });

  factory StockUnitModel.fromJson(Map<String, dynamic> json) => StockUnitModel(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    barcode: json["barcode"],
    unitId: json["unit_id"],
    multiplier: json["multiplier"],
    hasDecimal: json["has_decimal"],
    isBaseUnit: json["is_base_unit"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "barcode": barcode,
    "unit_id": unitId,
    "multiplier": multiplier,
    "has_decimal": hasDecimal,
    "is_base_unit": isBaseUnit,
  };
}
