import 'package:background_json_parser/background_json_parser.dart';

class DealerSettingModel extends IBaseModel<DealerSettingModel> {
  List<DealerSettingSchemaModel>? schema;
  Map<String, dynamic>? data;

  DealerSettingModel({
    this.schema,
    this.data,
  });

  @override
  fromJson(Map<String, dynamic> json) => DealerSettingModel(
        schema: json["schema"] == null
            ? []
            : List<DealerSettingSchemaModel>.from(json["schema"].map((x) => DealerSettingSchemaModel.fromJson(x))),
        data: json['data'],
      );

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

class DealerSettingSchemaModel {
  String? groupName;
  List<DealerSettingGroupItemModel>? groupItems;
  String? groupDescription;

  DealerSettingSchemaModel({
    this.groupName,
    this.groupItems,
    this.groupDescription,
  });

  factory DealerSettingSchemaModel.fromJson(Map<String, dynamic> json) => DealerSettingSchemaModel(
        groupName: json["group_name"],
        groupItems: List<DealerSettingGroupItemModel>.from(
            json["group_items"].map((x) => DealerSettingGroupItemModel.fromJson(x))),
        groupDescription: json["group_description"],
      );

  Map<String, dynamic> toJson() => {
        "group_name": groupName,
        "group_items": List<dynamic>.from(groupItems!.map((x) => x.toJson())),
        "group_description": groupDescription,
      };
}

class DealerSettingGroupItemModel {
  String? name;
  String? type;
  String? label;
  String? description;
  List<DealerSettingItemModel>? items;
  dynamic groupItemDefault;

  DealerSettingGroupItemModel({
    this.name,
    this.type,
    this.label,
    this.description,
    this.items,
    this.groupItemDefault,
  });

  factory DealerSettingGroupItemModel.fromJson(Map<String, dynamic> json) => DealerSettingGroupItemModel(
        name: json["name"],
        type: json["type"],
        label: json["label"],
        description: json["description"],
        items: json["items"] == null
            ? []
            : List<DealerSettingItemModel>.from(json["items"].map((x) => DealerSettingItemModel.fromJson(x))),
        groupItemDefault: json["default"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "label": label,
        "description": description,
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "default": groupItemDefault,
      };
}

class DealerSettingItemModel {
  String? title;
  String? value;

  DealerSettingItemModel({
    this.title,
    this.value,
  });

  factory DealerSettingItemModel.fromJson(Map<String, dynamic> json) => DealerSettingItemModel(
        title: json["title"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
      };
}
