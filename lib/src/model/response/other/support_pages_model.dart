class SupportPagesModel {
  int? id;
  int? mainBrandId;
  Map<String, dynamic>? pages;
  DateTime? createdAt;
  DateTime? updatedAt;

  SupportPagesModel({
    this.id,
    this.mainBrandId,
    this.pages,
    this.createdAt,
    this.updatedAt,
  });

  factory SupportPagesModel.fromJson(Map<String, dynamic> json) => SupportPagesModel(
        id: json["id"],
        mainBrandId: json["main_brand_id"],
        pages: json["pages"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main_brand_id": mainBrandId,
        "pages": pages,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class En {
  String? tag;
  String? slug;
  String? image;
  String? title;
  String? content;
  String? metaTitle;
  String? metaKeywords;
  String? metaDescription;

  En({
    this.tag,
    this.slug,
    this.image,
    this.title,
    this.content,
    this.metaTitle,
    this.metaKeywords,
    this.metaDescription,
  });

  factory En.fromJson(Map<String, dynamic> json) => En(
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
