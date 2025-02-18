import 'package:background_json_parser/background_json_parser.dart';

class MyDeviceStatusModel extends IBaseModel<MyDeviceStatusModel> implements IFilter {
  final int? brandId;
  final String? brandName;
  final List<MyDeviceStatusDataModel>? data;

  MyDeviceStatusModel({
    this.brandId,
    this.brandName,
    this.data,
  });

  @override
  fromJson(Map<String, dynamic> json) => MyDeviceStatusModel(
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        data: json["data"] == null
            ? []
            : List<MyDeviceStatusDataModel>.from(json["data"]!.map((x) => MyDeviceStatusDataModel.fromJson(x))),
      );

  @override
  Map<String, dynamic> toJson() => {
        "brand_id": brandId,
        "brand_name": brandName,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  late Map<String, MapEntry<String, bool>> filter = {'Marka': MapEntry(brandName!, false)};
}

abstract class IFilter {
  late Map<String, MapEntry<String, bool>> filter;
}

class MyDeviceStatusDataModel implements IFilter {
  final bool? status;
  final String? type;
  final int? dealerId;
  final String? id;
  final String? createdAt;
  final String? dealerName;
  final int? brandId;
  final String? brandName;
  final String? title;
  final MyDeviceStatusOptionsModel? options;

  MyDeviceStatusDataModel({
    this.status,
    this.type,
    this.dealerId,
    this.id,
    this.createdAt,
    this.dealerName,
    this.brandId,
    this.brandName,
    this.title,
    this.options,
  });

  factory MyDeviceStatusDataModel.fromJson(Map<String, dynamic> json) => MyDeviceStatusDataModel(
        status: json["status"],
        type: json["type"],
        dealerId: json["dealer_id"],
        id: json["id"],
        createdAt: json["created_at"],
        dealerName: json["dealer_name"],
        brandId: json["brand_id"],
        brandName: json["brand_name"],
        title: json["title"],
        options: json["options"] == null ? null : MyDeviceStatusOptionsModel.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "type": type,
        "dealer_id": dealerId,
        "id": id,
        "created_at": createdAt,
        "dealer_name": dealerName,
        "brand_id": brandId,
        "brand_name": brandName,
        "title": title,
        "options": options?.toJson(),
      };

  @override
  late Map<String, MapEntry<String, bool>> filter = {
    'Marka': MapEntry(brandName!, false),
    'Cihaz Tipi': MapEntry(type!, false),
    'Durum': MapEntry(status == true ? 'Açık' : 'Kapalı', false),
    'Bağlı Cihaz (Tip)': MapEntry(options?.type ?? '', false),
    'Bağlı Cihaz (Durum)': MapEntry(options?.status == true ? 'Açık' : 'Kapalı', false),
  };
}

class MyDeviceStatusOptionsModel {
  final bool? status;
  final String? type;
  final int? dealerId;
  final String? id;
  final String? createdAt;
  final String? dealerName;
  final String? title;

  MyDeviceStatusOptionsModel({
    this.status,
    this.type,
    this.dealerId,
    this.id,
    this.createdAt,
    this.dealerName,
    this.title,
  });

  factory MyDeviceStatusOptionsModel.fromJson(Map<String, dynamic> json) => MyDeviceStatusOptionsModel(
        status: json["status"],
        type: json["type"],
        dealerId: json["dealer_id"],
        id: json["id"],
        createdAt: json["created_at"],
        dealerName: json["dealer_name"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "type": type,
        "dealer_id": dealerId,
        "id": id,
        "created_at": createdAt,
        "dealer_name": dealerName,
        "title": title,
      };
}
