import 'package:background_json_parser/background_json_parser.dart';

class UserFormContractModel extends IBaseModel<UserFormContractModel> {
  UserFormContractModel({
    this.id,
    this.title,
    this.slug,
    this.typeId,
    this.required,
    this.contractDetail,
    this.url,
    this.version,
    this.status = false,
  });

  int? id;
  String? title;
  String? slug;
  String? typeId;
  bool? required;
  bool? contractDetail;
  String? url;
  String? version;
  bool status; // check box için yazıldı

  @override
  fromJson(Map<dynamic, dynamic> json) => UserFormContractModel(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        typeId: json["type_id"],
        required: json["required"],
        contractDetail: json["contract_detail"],
        url: json["url"],
        version: json["version"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "type_id": typeId,
        "required": required,
        "contract_detail": contractDetail,
        "url": url,
        "version": version,
      };
}
