import 'package:background_json_parser/background_json_parser.dart';

import '../other/multi_item_picker_widget_model.dart';

class BrandParameterModel extends IBaseModel<BrandParameterModel> {
  List<BrandParameterCatalogsModel>? catalogsAndPriceList;
  List<BrandParameterAuthorizedInfoModel>? authorizedInfo;
  int? mainBrandId;
  String? franchiseTypeId;

  BrandParameterModel({
    this.catalogsAndPriceList,
    this.authorizedInfo,
    this.mainBrandId,
    this.franchiseTypeId,
  });

  @override
  fromJson(Map<String, dynamic> json) => BrandParameterModel(
        catalogsAndPriceList: List<BrandParameterCatalogsModel>.from(
            json["catalogs_and_price_lists"].map((x) => BrandParameterCatalogsModel.fromJson(x))),
        authorizedInfo: List<BrandParameterAuthorizedInfoModel>.from(
            json["authorized_info"].map((x) => BrandParameterAuthorizedInfoModel.fromJson(x))),
        mainBrandId: json["main_brand_id"],
        franchiseTypeId: json["franchise_type_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "catalogs_and_price_lists": List<dynamic>.from(catalogsAndPriceList!.map((x) => x.toJson())),
        "authorized_info": List<dynamic>.from(authorizedInfo!.map((x) => x.toJson())),
        "main_brand_id": mainBrandId,
        "franchise_type_id": franchiseTypeId,
      };
}

class BrandParameterAuthorizedInfoModel {
  List<BrandParameterPersonInfoModel>? personInfo;
  int? mainBrandId;

  BrandParameterAuthorizedInfoModel({
    this.personInfo,
    this.mainBrandId,
  });

  factory BrandParameterAuthorizedInfoModel.fromJson(Map<String, dynamic> json) => BrandParameterAuthorizedInfoModel(
        personInfo: List<BrandParameterPersonInfoModel>.from(
            json["person_info"].map((x) => BrandParameterPersonInfoModel.fromJson(x))),
        mainBrandId: json["main_brand_id"],
      );

  Map<String, dynamic> toJson() => {
        "person_info": List<dynamic>.from(personInfo!.map((x) => x.toJson())),
        "main_brand_id": mainBrandId,
      };
}

class BrandParameterPersonInfoModel {
  String? email;
  String? mobilePhone;
  String? authorizedPerson;

  BrandParameterPersonInfoModel({
    this.email,
    this.mobilePhone,
    this.authorizedPerson,
  });

  factory BrandParameterPersonInfoModel.fromJson(Map<String, dynamic> json) => BrandParameterPersonInfoModel(
        email: json["email"],
        mobilePhone: json["mobile_phone"],
        authorizedPerson: json["authorized_person"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "mobile_phone": mobilePhone,
        "authorized_person": authorizedPerson,
      };
}

class BrandParameterCatalogsModel {
  int? mainBrandId;
  List<BrandParameterCatalogAndPricesModel>? catalogsAndPriceLists;

  BrandParameterCatalogsModel({
    this.mainBrandId,
    this.catalogsAndPriceLists,
  });

  factory BrandParameterCatalogsModel.fromJson(Map<String, dynamic> json) => BrandParameterCatalogsModel(
        mainBrandId: json["main_brand_id"],
        catalogsAndPriceLists: List<BrandParameterCatalogAndPricesModel>.from(
            json["catalogs_and_price_lists"].map((x) => BrandParameterCatalogAndPricesModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "main_brand_id": mainBrandId,
        "catalogs_and_price_lists": List<dynamic>.from(catalogsAndPriceLists!.map((x) => x.toJson())),
      };
}

class BrandParameterCatalogAndPricesModel implements IMultiItemPickerWidgetModel {
  BrandParameterCatalogModel? catalogs;
  List<BrandParameterPriceListModel>? priceLists;

  BrandParameterCatalogAndPricesModel({
    this.catalogs,
    this.priceLists,
  });

  factory BrandParameterCatalogAndPricesModel.fromJson(Map<String, dynamic> json) =>
      BrandParameterCatalogAndPricesModel(
        catalogs: BrandParameterCatalogModel.fromJson(json["catalogs"]),
        priceLists: List<BrandParameterPriceListModel>.from(
            json["price_lists"].map((x) => BrandParameterPriceListModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "catalogs": catalogs!.toJson(),
        "price_lists": List<dynamic>.from(priceLists!.map((x) => x.toJson())),
      };

  @override
  bool selectedValue = false;

  @override
  String get title => catalogs!.catalogName ?? '';
}

class BrandParameterCatalogModel {
  int? catalogId;
  String? catalogName;

  BrandParameterCatalogModel({
    this.catalogId,
    this.catalogName,
  });

  factory BrandParameterCatalogModel.fromJson(Map<String, dynamic> json) => BrandParameterCatalogModel(
        catalogId: json["catalog_id"],
        catalogName: json["catalog_name"],
      );

  Map<String, dynamic> toJson() => {
        "catalog_id": catalogId,
        "catalog_name": catalogName,
      };
}

class BrandParameterPriceListModel implements IMultiItemPickerWidgetModel {
  int? catalogId;
  int? priceListId;
  String? priceListName;

  BrandParameterPriceListModel({
    this.catalogId,
    this.priceListId,
    this.priceListName,
  });

  factory BrandParameterPriceListModel.fromJson(Map<String, dynamic> json) => BrandParameterPriceListModel(
        catalogId: json["catalog_id"],
        priceListId: json["price_list_id"],
        priceListName: json["price_list_name"],
      );

  Map<String, dynamic> toJson() => {
        "catalog_id": catalogId,
        "price_list_id": priceListId,
        "price_list_name": priceListName,
      };

  @override
  bool selectedValue = false;

  @override
  String get title => priceListName ?? '';
}
