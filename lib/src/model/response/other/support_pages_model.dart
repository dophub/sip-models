import 'package:background_json_parser/background_json_parser.dart';

class SupportPagesModel extends IBaseModel<SupportPagesModel> {
  int? id;
  int? mainBrandId;
  Map<String, List<SupportPageModel>>? pages;
  DateTime? createdAt;
  DateTime? updatedAt;

  SupportPagesModel({
    this.id,
    this.mainBrandId,
    this.pages,
    this.createdAt,
    this.updatedAt,
  });

  @override
  fromJson(Map<String, dynamic> json) {
    return SupportPagesModel(
      id: json["id"],
      mainBrandId: json["main_brand_id"],
      pages: (json["pages"] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          value == null ? [] : List<SupportPageModel>.from((value as List).map((e) => SupportPageModel.fromJson(e))),
        ),
      ),
      createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "main_brand_id": mainBrandId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class SupportPageModel {
  String? tag;
  String? slug;
  String? image;
  String? title;
  String? content;
  String? metaTitle;
  String? metaKeywords;
  String? metaDescription;

  SupportPageModel({
    this.tag,
    this.slug,
    this.image,
    this.title,
    this.content,
    this.metaTitle,
    this.metaKeywords,
    this.metaDescription,
  });

  factory SupportPageModel.fromJson(Map<String, dynamic> json) => SupportPageModel(
        tag: json["tag"],
        slug: json["slug"],
        image: json["image"],
        title: json["title"],
        content: json["content"],
        metaTitle: json["meta_title"],
        metaKeywords: json["meta_keywords"],
        metaDescription: json["meta_description"],
      );

  Map<String, dynamic> toJson() => {
        "tag": tag,
        "slug": slug,
        "image": image,
        "title": title,
        "content": content,
        "meta_title": metaTitle,
        "meta_keywords": metaKeywords,
        "meta_description": metaDescription,
      };
}
