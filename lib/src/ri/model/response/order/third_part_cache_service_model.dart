import 'package:background_json_parser/background_json_parser.dart';

class ThirdPartCacheServiceModel extends IBaseModel<ThirdPartCacheServiceModel> {
  final int? sequence; /// Number of service
  final List<ThirdPartCacheServiceOrderModel>? orders;
  final double? serviceTotalAmount;

  ThirdPartCacheServiceModel({
    this.sequence,
    this.orders,
    this.serviceTotalAmount,
  });

  @override
  fromJson(Map<String, dynamic> json) => ThirdPartCacheServiceModel(
    sequence: json["sequence"],
        orders: List<ThirdPartCacheServiceOrderModel>.from(
            json["orders"].map((x) => ThirdPartCacheServiceOrderModel.fromJson(x))),
        serviceTotalAmount: json["service_total_amount"].toDouble(),
      );

  @override
  Map<String, dynamic> toJson() => {
        "sequence": sequence,
        "orders": List<dynamic>.from(orders!.map((x) => x.toJson())),
        "service_total_amount": serviceTotalAmount,
      };
}

class ThirdPartCacheServiceOrderModel {
  final List<ThirdPartCacheServiceOrderItemModel>? items;
  final String? title;
  final String? lastName;
  final String? firstName;
  final DateTime? recordDate;

  ThirdPartCacheServiceOrderModel({
    this.items,
    this.title,
    this.lastName,
    this.firstName,
    this.recordDate,
  });

  factory ThirdPartCacheServiceOrderModel.fromJson(Map<String, dynamic> json) => ThirdPartCacheServiceOrderModel(
        items: List<ThirdPartCacheServiceOrderItemModel>.from(
            json["items"].map((x) => ThirdPartCacheServiceOrderItemModel.fromJson(x))),
        title: json["title"],
        lastName: json["last_name"],
        firstName: json["first_name"],
        recordDate: DateTime.parse(json["record_date"]),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "last_name": lastName,
        "first_name": firstName,
        "record_date": recordDate!.toIso8601String(),
      };
}

class ThirdPartCacheServiceOrderItemModel {
  final int? count;
  final List<ThirdPartCacheServiceOptionModel>? options;
  final double? totalPrice;
  final String? productName;

  ThirdPartCacheServiceOrderItemModel({
    this.count,
    this.options,
    this.totalPrice,
    this.productName,
  });

  factory ThirdPartCacheServiceOrderItemModel.fromJson(Map<String, dynamic> json) =>
      ThirdPartCacheServiceOrderItemModel(
        count: json["count"],
        options: List<ThirdPartCacheServiceOptionModel>.from(
            json["options"].map((x) => ThirdPartCacheServiceOptionModel.fromJson(x))),
        totalPrice: json["total_price"].toDouble(),
        productName: json["product_name"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "options": List<dynamic>.from(options!.map((x) => x.toJson())),
        "total_price": totalPrice,
        "product_name": productName,
      };
}

class ThirdPartCacheServiceLocalOptionModel {
  String? groupCode;
  String? groupName;
  String? optionCode;
  String? optionName;
  _IntegrationAdditionalDataModel? integrationAdditionalData;

  ThirdPartCacheServiceLocalOptionModel({
    this.groupCode,
    this.groupName,
    this.optionCode,
    this.optionName,
    this.integrationAdditionalData,
  });

  factory ThirdPartCacheServiceLocalOptionModel.fromJson(Map<String, dynamic> json) =>
      ThirdPartCacheServiceLocalOptionModel(
        groupCode: json["group_code"],
        groupName: json["group_name"],
        optionCode: json["option_code"],
        optionName: json["option_name"],
        integrationAdditionalData: _IntegrationAdditionalDataModel.fromJson(json["integration_additional_data"]),
      );

  Map<String, dynamic> toJson() => {
        "group_code": groupCode,
        "group_name": groupName,
        "option_code": optionCode,
        "option_name": optionName,
        "integration_additional_data": integrationAdditionalData!.toJson(),
      };
}

class _IntegrationAdditionalDataModel {
  _IntegrationAdditionalDataModel();

  factory _IntegrationAdditionalDataModel.fromJson(Map<String, dynamic> json) => _IntegrationAdditionalDataModel();

  Map<String, dynamic> toJson() => {};
}

class ThirdPartCacheServiceOptionModel {
  int? id;
  List<ThirdPartCacheServiceOptionItemModel>? items;
  String? title;
  String? addingType;
  String? optionType;

  ThirdPartCacheServiceOptionModel({
    this.id,
    this.items,
    this.title,
    this.addingType,
    this.optionType,
  });

  factory ThirdPartCacheServiceOptionModel.fromJson(Map<String, dynamic> json) => ThirdPartCacheServiceOptionModel(
        id: json["id"],
        items: List<ThirdPartCacheServiceOptionItemModel>.from(
            json["items"].map((x) => ThirdPartCacheServiceOptionItemModel.fromJson(x))),
        title: json["title"],
        addingType: json["adding_type"],
        optionType: json["option_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "adding_type": addingType,
        "option_type": optionType,
      };
}

class ThirdPartCacheServiceOptionItemModel {
  final int? id;
  final String? title;
  final int? productId;

  ThirdPartCacheServiceOptionItemModel({
    this.id,
    this.title,
    this.productId,
  });

  factory ThirdPartCacheServiceOptionItemModel.fromJson(Map<String, dynamic> json) =>
      ThirdPartCacheServiceOptionItemModel(
        id: json["id"],
        title: json["title"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "product_id": productId,
      };
}
