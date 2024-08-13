import 'package:background_json_parser/background_json_parser.dart';

class BrandModel extends IBaseModel<BrandModel> {
  final int? id;
  final String? brandCode;
  final String? brandName;
  final int? brandId;
  final int? companyId;
  final String? title;

  BrandModel({
    this.id,
    this.brandCode,
    this.brandName,
    this.brandId,
    this.companyId,
    this.title,
  });

  @override
  fromJson(Map<String, dynamic> json) => BrandModel(
        id: json["id"],
        brandCode: json["brand_code"],
        brandName: json["brand_name"],
        brandId: json["brand_id"],
        companyId: json["company_id"],
        title: json["title"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "brand_code": brandCode,
        "brand_name": brandName,
        "brand_id": brandId,
        "company_id": companyId,
        "title": title,
      };
}

class _BrandCompanyModel {
  final int? id;
  final String? title;
  final String? taxNumber;

  _BrandCompanyModel({
    this.id,
    this.title,
    this.taxNumber,
  });

  factory _BrandCompanyModel.fromJson(Map<String, dynamic> json) => _BrandCompanyModel(
        id: json["id"],
        title: json["title"],
        taxNumber: json["tax_number"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "tax_number": taxNumber,
      };
}
